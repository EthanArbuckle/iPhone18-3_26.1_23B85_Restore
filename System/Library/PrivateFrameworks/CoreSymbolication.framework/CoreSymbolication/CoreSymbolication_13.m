uint64_t *CSInitializeAotSymbolicationSession(uint64_t *result, uint64_t a2, uint64_t a3, const CFUUIDBytes *a4, const CFUUIDBytes *a5)
{
  if (MEMORY[0x1EEE987E8] && MEMORY[0x1EEE987E0] && result && a4 && a2 && a3)
  {
    if (a5)
    {
      *result = aot_symbolication_session_create();
      return aot_init_shared_cache_info();
    }
  }

  return result;
}

unint64_t __create_sampling_context_for_task_pid_symbolicator_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = CSSymbolOwnerGetPath(a2, a3);
  v8[1] = strlen(v8[0]);
  result = std::string_view::find[abi:ne200100](v8, *(a1 + 40), 0);
  if (!result || (result = std::string_view::find[abi:ne200100](v8, "/usr/local/libexec/rosetta/runtime", 0)) == 0)
  {
    v7 = *(*(a1 + 32) + 8);
    *(v7 + 40) = a2;
    *(v7 + 48) = a3;
  }

  return result;
}

unint64_t __create_sampling_context_for_task_pid_symbolicator_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Name = CSRegionGetName(a2, a3);
  result = strncmp(Name, "__TEXT", 6uLL);
  if (!result)
  {
    result = CSRegionGetRange(a2, a3);
    v8 = *(a1 + 32);
    *(v8 + 192) = result;
    *(v8 + 200) = v9;
  }

  return result;
}

uint64_t CSDestroyAotSymbolicationSession(uint64_t result)
{
  if (MEMORY[0x1EEE987F0])
  {
    if (result)
    {
      return aot_symbolication_session_destroy();
    }
  }

  return result;
}

uint64_t CSSymbolicatorTranslateFromNativeAddress(char a1, uint64_t a2, unint64_t a3)
{
  if ((a1 & 7 | (8 * (a2 & 3))) != 2)
  {
    return 0;
  }

  v8[1] = v3;
  v8[2] = v4;
  v5 = 0;
  v8[0] = 0;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 32);
  if (*(v6 + 16) == 1)
  {
    translate_aot_frame(a1, a2, *(v6 + 8), a3, v8);
    return v8[0];
  }

  return v5;
}

uint64_t translate_aot_frame(char a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = CSIsNull(a1, a2);
  v10 = 0;
  if (a3)
  {
    if (!v9)
    {
      v10 = 0;
      if (MEMORY[0x1EEE987D0])
      {
        if (MEMORY[0x1EEE987C0] && MEMORY[0x1EEE987D8])
        {
          v13 = 0;
          v14 = &v13;
          v15 = 0x2000000000;
          v16 = 0;
          if (aot_address_in_shared_cache() && aot_get_x86_address_shared_cache())
          {
            goto LABEL_10;
          }

          CSCppSymbolicator::get_aot_image_info_for_address(a2 & 0xFFFFFFFFFFFFFFFCLL, a4, &v17);
          v30 = v23;
          v28 = v21;
          v29 = v22;
          v24 = v17;
          v25 = v18;
          v26 = v19;
          v27 = v20;
          if ((v23 & 1) == 0)
          {
            goto LABEL_11;
          }

          if (aot_get_x86_address())
          {
LABEL_10:
            *a5 = v14[3];
            v10 = 1;
          }

          else
          {
LABEL_11:
            *&v17 = 0;
            *(&v17 + 1) = &v17;
            *&v18 = 0x2000000000;
            BYTE8(v18) = 0;
            CSSymbolicatorForEachAotImage();
            v10 = *(*(&v17 + 1) + 24);
            _Block_object_dispose(&v17, 8);
          }

          _Block_object_dispose(&v13, 8);
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

void sub_1D97A9EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t create_sampling_context_for_task(mach_port_name_t a1)
{
  x = 0;
  if (!pid_for_task(a1, &x))
  {
    create_sampling_context_for_task_pid_symbolicator();
  }

  return 0;
}

void sampling_context_clear_cache(uint64_t a1)
{
  if (a1)
  {
    clear_mapped_memory(*(a1 + 8));
  }
}

uint64_t destroy_sampling_context(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (MEMORY[0x1EEE987F0] && (*(result + 168) & 1) != 0)
    {
      v2 = *(result + 184);
      aot_symbolication_session_destroy();
    }

    task_release_mapped_memory_cache(*v1);
    *(v1 + 8) = 0;
    v3 = *(v1 + 16);
    if (v3)
    {
      v6 = *(v1 + 16);
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v6);
      MEMORY[0x1DA736760](v3, 0x20C40960023A9);
      *(v1 + 16) = 0;
    }

    v4 = *(v1 + 104);
    if (v4)
    {
      free(v4);
      *(v1 + 104) = 0;
    }

    CSRelease(*(v1 + 24), *(v1 + 32));
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    std::__tree<std::__value_type<unsigned int,thread_name_info>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,thread_name_info>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,thread_name_info>>>::destroy(v1 + 136, *(v1 + 144));
    std::__tree<std::__value_type<unsigned int,thread_name_info>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,thread_name_info>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,thread_name_info>>>::destroy(v1 + 112, *(v1 + 120));
    v5 = *(v1 + 80);
    if (v5)
    {
      *(v1 + 88) = v5;
      operator delete(v5);
    }

    return MEMORY[0x1DA736760](v1, 0x10A0C409B837E7ALL);
  }

  return result;
}

uint64_t get_remote_thread_dispatch_queue(uint64_t a1, thread_inspect_t a2, const char **a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (CSGetForceSafeMachVMReads())
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __get_remote_thread_dispatch_queue_block_invoke;
    v12[3] = &unk_1E85849F8;
    v12[4] = &v14;
    v12[5] = a1;
    v13 = a2;
    v12[6] = a3;
    v6 = CSExceptionSafeThreadRunBlock(v12);
    if (v6 != 4096 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 4);
      *buf = 67109376;
      v19 = v7;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Missing page in pid %d, sampling of thread failed, err code %d\n", buf, 0xEu);
    }
  }

  else
  {
    remote_thread_dispatch_queue2 = get_remote_thread_dispatch_queue2(a1, a2, a3);
    *(v15 + 6) = remote_thread_dispatch_queue2;
  }

  v9 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1D97AA1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __get_remote_thread_dispatch_queue_block_invoke(uint64_t a1)
{
  result = get_remote_thread_dispatch_queue2(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t get_remote_thread_dispatch_queue2(const char **a1, thread_inspect_t target_act, const char **a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v42 = target_act;
  if (a1)
  {
    if (a3)
    {
      *a3 = 0;
      if (!a1[13] && (a1[20] & 8) == 0)
      {
        init_sampling_context_from_symbols(a1, 0);
      }

      thread_info_outCnt = 6;
      v6 = thread_info(target_act, 4u, thread_info_out, &thread_info_outCnt);
      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v7 = *(a1 + 1);
          *buf = 67109632;
          v48 = v7;
          v49 = 1024;
          v50 = target_act;
          v51 = 1024;
          v52 = v6;
          _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "get_remote_thread_dispatch_queue2 thread_info(THREAD_IDENTIFIER_INFO) call failed for pid %u thread %u, err %d", buf, 0x14u);
        }

        fprintf(*MEMORY[0x1E69E9848], "get_remote_thread_dispatch_queue2 thread_info(THREAD_IDENTIFIER_INFO) call failed for pid %u thread %u, err %d", *(a1 + 1), target_act, v6);
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v9 = a1[13];
        if (v9)
        {
          if (v41)
          {
            if (!mapped_memory_read_pointer(a1[1], v41, &v38))
            {
              if (v38)
              {
                if (!mapped_memory_read_pointer(a1[1], v38 + *(v9 + 5), &v37))
                {
                  if (v37)
                  {
                    *a3 = v37;
                    *v36 = 0;
                    if (!mapped_memory_read_ignoring_extra_bits(a1[1], v38 + *(v9 + 7), *(v9 + 8), v36))
                    {
                      v23 = *(v9 + 8);
                      if (v23 == 2)
                      {
                        v24 = **v36;
                      }

                      else if (v23 == 4)
                      {
                        v24 = **v36;
                      }

                      else
                      {
                        v24 = 0;
                      }

                      v25 = a1[15];
                      if (!v25)
                      {
                        goto LABEL_54;
                      }

                      v26 = a1 + 15;
                      do
                      {
                        v27 = *(v25 + 4);
                        v13 = v27 >= v37;
                        v28 = v27 < v37;
                        if (v13)
                        {
                          v26 = v25;
                        }

                        v25 = *&v25[8 * v28];
                      }

                      while (v25);
                      if (v26 != a1 + 15 && v37 >= v26[4])
                      {
                        if (v26[9] != *thread_info_out)
                        {
                          v26[9] = 0;
                        }

                        if (v24 > *(v26 + 16))
                        {
                          *(v26 + 16) = v24;
                        }
                      }

                      else
                      {
LABEL_54:
                        v34 = 0;
                        __src = 0;
                        if (*v9 == 3)
                        {
                          v34 = (v38 + *(v9 + 1));
                          v29 = mapped_memory_read(a1[1], v34, 128, &__src);
                        }

                        else
                        {
                          v29 = mapped_memory_read_pointer(a1[1], v38 + *(v9 + 1), &v34);
                          if (v29)
                          {
                            v30 = 1;
                          }

                          else
                          {
                            v30 = v34 == 0;
                          }

                          if (!v30)
                          {
                            v29 = mapped_memory_read_ignoring_extra_bits(a1[1], v34, 128, &__src);
                          }
                        }

                        if (v29)
                        {
                          v31 = 1;
                        }

                        else
                        {
                          v31 = __src == 0;
                        }

                        if (!v31)
                        {
                          strncpy(buf, __src, 0x7FuLL);
                          v53[79] = 0;
                          v32 = *thread_info_out;
                          std::string::basic_string[abi:ne200100]<0>(&v44, buf);
                          LODWORD(v45) = v24;
                          *(&v45 + 1) = v32;
                          v43 = &v37;
                          v33 = std::__tree<std::__value_type<unsigned long long,dispatch_queue_info>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,dispatch_queue_info>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,dispatch_queue_info>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 14), &v37);
                          std::string::operator=((v33 + 5), &v44);
                          *(v33 + 4) = v45;
                          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v44.__r_.__value_.__l.__data_);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v10 = a1[18];
        if (!v10)
        {
          goto LABEL_26;
        }

        v11 = a1 + 18;
        do
        {
          v12 = *(v10 + 8);
          v13 = v12 >= target_act;
          v14 = v12 < target_act;
          if (v13)
          {
            v11 = v10;
          }

          v10 = *&v10[8 * v14];
        }

        while (v10);
        if (v11 != a1 + 18 && *(v11 + 8) <= target_act)
        {
          v22 = v37;
          if (*(v11 + 72) == 1)
          {
            if (v37 != v11[10])
            {
              v11[10] = 0;
            }
          }

          else if (v37)
          {
            *(v11 + 72) = 1;
            v11[10] = v22;
          }
        }

        else
        {
LABEL_26:
          v36[0] = 28;
          v15 = thread_info(target_act, 5u, buf, v36);
          if (v15 || !v36[0])
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v17 = *(a1 + 1);
              LODWORD(v44.__r_.__value_.__l.__data_) = 67109632;
              HIDWORD(v44.__r_.__value_.__r.__words[0]) = v17;
              LOWORD(v44.__r_.__value_.__r.__words[1]) = 1024;
              *(&v44.__r_.__value_.__r.__words[1] + 2) = target_act;
              HIWORD(v44.__r_.__value_.__r.__words[1]) = 1024;
              LODWORD(v44.__r_.__value_.__r.__words[2]) = v15;
              _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "get_remote_thread_dispatch_queue2 thread_info(THREAD_EXTENDED_INFO) call failed for pid %u thread %u, err %d", &v44, 0x14u);
            }

            fprintf(*MEMORY[0x1E69E9848], "get_remote_thread_dispatch_queue2 thread_info(THREAD_EXTENDED_INFO) call failed for pid %u thread %u, err %d", *(a1 + 1), target_act, v15);
            v16 = "";
          }

          else
          {
            v16 = v53;
          }

          v18 = *thread_info_out;
          v19 = v37;
          std::string::basic_string[abi:ne200100]<0>(&v44, v16);
          *&v45 = v18;
          v46 = v19;
          BYTE8(v45) = v19 != 0;
          v43 = &v42;
          v20 = std::__tree<std::__value_type<unsigned int,thread_name_info>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,thread_name_info>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,thread_name_info>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 17), &v42);
          std::string::operator=((v20 + 5), &v44);
          *(v20 + 4) = v45;
          v20[10] = v46;
          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    result = 0;
  }

  else
  {
    result = 4;
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

size_t debug_print_backtrace(size_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = result;
    v8 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "\nFrame count is %d:\n", a2);
    v9 = 0;
    do
    {
      SymbolOwnerWithAddressAtTime = CSSymbolicatorGetSymbolOwnerWithAddressAtTime(*(v7 + 24), *(v7 + 32), *(a3 + 8 * v9), 0x8000000000000000);
      CSSymbolOwnerGetName(SymbolOwnerWithAddressAtTime, v11);
      SymbolWithAddressAtTime = CSSymbolicatorGetSymbolWithAddressAtTime(*(v7 + 24), *(v7 + 32), *(a3 + 8 * v9), 0x8000000000000000);
      CSSymbolGetName(SymbolWithAddressAtTime, v13);
      v14 = *v8;
      v15 = *(a3 + 8 * v9);
      if (a4)
      {
        v17 = *(a4 + 8 * v9);
        fprintf(v14, "[%3d] %#8.8llx fp:%#8.8llx %s %s\n");
      }

      else
      {
        fprintf(v14, "[%3d] %#8.8llx %s %s\n");
      }

      ++v9;
    }

    while (a2 != v9);
    v16 = *v8;

    return fwrite("\n\n", 2uLL, 1uLL, v16);
  }

  return result;
}

uint64_t sample_remote_thread_with_dispatch_queue(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v11 = __sample_remote_thread_with_dispatch_queue_block_invoke;
  v12 = &unk_1E8584A20;
  v13 = &v18;
  v14 = a1;
  v16 = a2;
  v17 = a3;
  v15 = a4;
  if (CSGetForceSafeMachVMReads())
  {
    v5 = CSExceptionSafeThreadRunBlock(v10);
    if (v5 != 4096 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 4);
      *buf = 67109376;
      v23 = v6;
      v24 = 1024;
      v25 = v5;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Missing page in pid %d, sampling of thread failed, err code %d\n", buf, 0xEu);
    }
  }

  else
  {
    v11(v10);
  }

  v7 = *(v19 + 6);
  _Block_object_dispose(&v18, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1D97AAB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

size_t __sample_remote_thread_with_dispatch_queue_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 60);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (mach_task_is_self(*v4) && MEMORY[0x1DA736E10]() == v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Sampling current thread of current analysis process is not safe - ignoring requesting to do so\n", buf, 2u);
    }

    result = fwrite("Sampling current thread of current analysis process is not safe - ignoring requesting to do so\n", 0x5FuLL, 1uLL, *MEMORY[0x1E69E9848]);
    v7 = 5;
  }

  else
  {
    if (!*(v4 + 48) && !CSIsNull(*(v4 + 24), *(v4 + 32)))
    {
      init_sampling_context_from_symbols(v4, 1);
      v8 = *(v4 + 72);
      if (*(v4 + 48))
      {
        if (v8)
        {
          fprintf(*MEMORY[0x1E69E9848], "Found _sigtramp symbol after %u tries\n", *(v4 + 72));
        }
      }

      else
      {
        if (!v8)
        {
          fwrite("Couldn't find _sigtramp symbol in expected dylibs\n", 0x32uLL, 1uLL, *MEMORY[0x1E69E9848]);
          v8 = *(v4 + 72);
        }

        *(v4 + 72) = v8 + 1;
      }
    }

    result = get_remote_thread_dispatch_queue2(v4, v2, (v5 + 32));
    if (!result)
    {
      if (*(v4 + 161))
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        operator new();
      }

      result = allocate_frames(v4, v5, *(v5 + 16));
      if (!result)
      {
        result = sample_remote_thread_with_frame_filter(v4, v2, v3, v5);
      }
    }

    v7 = result;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
  return result;
}

void sub_1D97AB664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50)
{
  _Block_object_dispose((v50 - 224), 8);
  v52 = *(v50 - 192);
  if (v52)
  {
    *(v50 - 184) = v52;
    operator delete(v52);
  }

  v53 = *(v50 - 168);
  if (v53)
  {
    operator delete(v53);
  }

  _Unwind_Resume(a1);
}

uint64_t sample_remote_thread_with_dispatch_queue_regular_and_swift_async(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  if (sample_should_capture_swift_async(a1, &v12))
  {
    result = sample_remote_thread_with_dispatch_queue(a1, a2, 1, a4);
    if (result)
    {
      return result;
    }

    if ((*(a4 + 40) & 1) == 0)
    {
      result = 0;
      v9 = *a4;
      v10 = *(a4 + 16);
      v11 = *(a4 + 32);
      *(a3 + 48) = *(a4 + 48);
      *(a3 + 16) = v10;
      *(a3 + 32) = v11;
      *a3 = v9;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0;
      *a4 = 0u;
      return result;
    }
  }

  else
  {
    result = sample_remote_thread_with_dispatch_queue(a1, a2, 0, a3);
    if (result)
    {
      return result;
    }
  }

  if (!v12 || *(a4 + 40) != 1)
  {
    return 0;
  }

  return sample_remote_thread_with_dispatch_queue(a1, a2, 0, a3);
}

BOOL sample_should_capture_swift_async(uint64_t a1, BOOL *a2)
{
  v3 = *(a1 + 160);
  if ((v3 & 0x60) == 0x60 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SAMPLING_SAMPLE_BOTH_REGULAR_AND_SWIFT_ASYNC will override SAMPLING_IGNORE_SWIFT_ASYNC", v5, 2u);
  }

  *a2 = (v3 & 0x40) != 0;
  return (v3 & 0x60) != 32;
}

uint64_t sample_remote_thread(uint64_t a1, int a2, uint64_t a3)
{
  should_capture_swift_async = sample_should_capture_swift_async(a1, &v8);

  return sample_remote_thread_with_dispatch_queue(a1, a2, should_capture_swift_async, a3);
}

uint64_t thread_name_for_thread_port(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 144);
  v4 = a1 + 144;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 != v4 && *(v7 + 32) <= a2)
  {
    if (a3)
    {
      *a3 = *(v7 + 64);
    }

    if (a4)
    {
      *a4 = *(v7 + 80);
    }

    result = v7 + 40;
    if (*(v7 + 63) < 0)
    {
      return *result;
    }
  }

  else
  {
LABEL_11:
    if (a3)
    {
      *a3 = 0;
    }

    result = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return result;
}

uint64_t dispatch_queue_name_for_serial_number(uint64_t a1, unint64_t a2, BOOL *a3, void *a4)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 120);
  v4 = a1 + 120;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 != v4 && *(v7 + 32) <= a2)
  {
    if (a3)
    {
      *a3 = *(v7 + 64) > 1u;
    }

    if (a4)
    {
      *a4 = *(v7 + 72);
    }

    result = v7 + 40;
    if (*(v7 + 63) < 0)
    {
      return *result;
    }
  }

  else
  {
LABEL_10:
    if (a3)
    {
      *a3 = 0;
    }

    result = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return result;
}

void CSSymbolicatorFixupFrames(char a1, uint64_t a2, tree **a3, unsigned int *a4, unsigned int a5, _DWORD *a6, uint64_t a7, int a8, uint64_t a9)
{
  if (!a3 || !a4 || !a6)
  {
    return;
  }

  v16 = *a4;
  if (a7)
  {
    v17 = a7;
  }

  else
  {
    v17 = 0x8000000000000000;
  }

  if (*a6 == 65)
  {
    v64[0] = 0;
    v64[1] = 0;
    v63 = v64;
    if (v16)
    {
      if (a5)
      {
        v20 = v16 - a5;
        v62 = a3[v16 - a5];
      }

      else
      {
        v62 = -1;
        v20 = v16;
      }

      Architecture = CSSymbolicatorGetArchitecture(a1, a2);
      *a6 = 64;
      if (!v20)
      {
        goto LABEL_70;
      }

      v31 = Architecture;
      if (a9)
      {
        v32 = *(a9 + 8);
      }

      else
      {
        v32 = 0;
      }

      IsValidPC = _IsValidPC(v32, *a3);
      if (v20 != 1)
      {
        if (v62)
        {
          if (v20 + 1 <= v16)
          {
            SymbolWithAddressAtTime = CSSymbolicatorGetSymbolWithAddressAtTime(a1, a2, *a3, v17);
            v36 = v35;
            if (!CSIsNull(SymbolWithAddressAtTime, v35))
            {
              Range = CSSymbolGetRange(SymbolWithAddressAtTime, v36);
              if (Range)
              {
                if (_IsValidLinkRegister(Range, v38, *a3, SymbolWithAddressAtTime, v36, v31 != 12))
                {
                  memmove(a3 + 2, a3 + 1, 8 * (v20 - 1));
                  a3[1] = v62;
                  ++v20;
                  if (!IsValidPC)
                  {
                    goto LABEL_70;
                  }

LABEL_41:
                  v39 = v20 - 1;
                  if (v20 - 1 >= 2)
                  {
                    v40 = v20;
                    do
                    {
                      v41 = &a3[v39];
                      if (!*v41)
                      {
                        if (v39 < v20 - 1)
                        {
                          memmove(v41, &a3[v40], 8 * (v20 - v40));
                        }

                        v39 = v40 - 2;
                        --v20;
                      }

                      v40 = v39--;
                    }

                    while (v39 > 1);
                  }

                  if (v31 == 12 && v20 >= 2)
                  {
                    v42 = a3 + 1;
                    v43 = v20 - 1;
                    do
                    {
                      *v42++ &= ~1uLL;
                      --v43;
                    }

                    while (v43);
                  }

                  if (a8 && v20 >= 2)
                  {
                    v44 = (a3 + 1);
                    v45 = v20 - 1;
                    v46 = a9;
                    do
                    {
                      v47 = *v44;
                      if (*v44 != -1)
                      {
                        if (v31 == 12 && (v47 & 1) != 0)
                        {
                          if (v46)
                          {
                            v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
                            ThumbInstruction = _GetThumbInstruction(*(v46 + 8), &v63, ((v47 & 0xFFFFFFFFFFFFFFFELL) - 4));
                            v50 = v46;
                            v51 = ThumbInstruction;
                            if ((_GetThumbInstruction(*(v50 + 8), &v63, (v48 - 2)) >> 14) > 2u && v51 >> 12 > 0xE)
                            {
                              v53 = -4;
                            }

                            else
                            {
                              v53 = -2;
                            }

                            v54 = *v44 + v53;
                            v46 = a9;
                          }

                          else
                          {
                            v54 = v47 - 2;
                          }
                        }

                        else
                        {
                          v54 = v47 - 4;
                        }

                        *v44 = v54;
                      }

                      ++v44;
                      --v45;
                    }

                    while (v45);
                  }

                  goto LABEL_70;
                }
              }
            }
          }
        }
      }

      if (IsValidPC)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_70:
    std::__tree<TRange<Pointer64>>::destroy(&v63, v64[0]);
    v16 = v20;
    goto LABEL_80;
  }

  if (*a6 == 33 && v16)
  {
    if (a5)
    {
      v18 = v16 - a5;
      v19 = a3[v16 - a5] != 0;
    }

    else
    {
      v19 = 1;
      v18 = *a4;
    }

    *a6 = 32;
    if (v18 >= 2 && v19 && v18 + 1 <= v16)
    {
      v21 = CSSymbolicatorGetSymbolWithAddressAtTime(a1, a2, *a3, v17);
      v23 = v22;
      if (!CSIsNull(v21, v22))
      {
        v24 = CSSymbolGetRange(v21, v23);
        v61 = v25;
        InstructionData = CSSymbolGetInstructionData(v21, v23);
        if (InstructionData)
        {
          v60 = InstructionData;
          v27 = CSSymbolicatorGetArchitecture(a1, a2);
          v63 = 0;
          v28 = a9;
          if (a9)
          {
            v28 = *(a9 + 8);
          }

          if (ScanInstructionsForMissingSecondFrameLocation_Intel(a1, a2, v27 == 16777223, *a3, v60, v61, *a3 - v24, &v63, &v65, v21, SHIDWORD(v21), v23, v28))
          {
            if (v63 >= a5)
            {
              v29 = -1;
            }

            else
            {
              v29 = *(&a3[v63] + *a4 - a5);
            }

            memmove(a3 + 2, a3 + 1, 8 * (v18 - 1));
            a3[1] = v29;
            ++v18;
          }
        }
      }
    }

    if (v18 >= 2 && a8)
    {
      v55 = a3 + 1;
      v56 = v18 - 1;
      do
      {
        if (*v55 != -1)
        {
          --*v55;
        }

        ++v55;
        --v56;
      }

      while (v56);
    }

    v16 = v18;
  }

LABEL_80:
  v57 = v16 + 1;
  v58 = v16;
  while (v58 * 8)
  {
    v59 = a3[v58 - 1];
    --v57;
    --v58;
    if (v59)
    {
      goto LABEL_85;
    }
  }

  v57 = 0;
LABEL_85:
  *a4 = v57;
}

uint64_t ScanInstructionsForMissingSecondFrameLocation_Intel(char a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, void *a8, void *a9, char a10, int a11, char a12, const char *a13)
{
  v21 = CSIsNull(a1, a2);
  result = 0;
  if (a7 < a6)
  {
    v23 = !a9 || a8 == 0;
    if (!v23 && !v21)
    {
      v24 = a7;
      if (a3)
      {
        v24 = a7;
        if (*(a5 + a7) == 72)
        {
          v24 = a7 + 1;
          if (a7 + 1 >= a6)
          {
            return 0;
          }
        }
      }

      result = 0;
      v25 = *(a5 + v24);
      if (v25 <= 0x8A)
      {
        if (v25 == 85)
        {
LABEL_42:
          *a8 = 0;
          result = 1;
          *a9 = 1;
          return result;
        }

        if (v25 != 115)
        {
          if (v25 != 137)
          {
            return result;
          }

          v26 = v24 + 1;
          if (v26 >= a6 || *(a5 + v26) != 229)
          {
            return 0;
          }

LABEL_23:
          result = 1;
          *a8 = 1;
          *a9 = 2;
          return result;
        }

        if (a3)
        {
          v41 = 0;
          if (a7 < 2)
          {
            if (!a13)
            {
              return 0;
            }

            if (mapped_memory_read(a13, (a4 - 2), 2, &v41))
            {
              return 0;
            }

            v28 = v41;
            if (!v41)
            {
              return 0;
            }
          }

          else
          {
            v28 = (a5 + a7 - 2);
            v41 = v28;
            if (a5 + a7 == 2)
            {
              return 0;
            }
          }

          if (*v28 != 15 || v28[1] != 5)
          {
            return 0;
          }

          SymbolWithAddressAtTime = a10;
          v29 = a12;
          if (CSIsNull(a10, a12))
          {
            SymbolWithAddressAtTime = CSSymbolicatorGetSymbolWithAddressAtTime(a1, a2, a4, 0x8000000000000000);
            v29 = v31;
          }

          if (CSIsNull(SymbolWithAddressAtTime, v29))
          {
            return 0;
          }

          SymbolOwner = CSSymbolGetSymbolOwner(SymbolWithAddressAtTime, v29);
          v34 = v33;
          if (CSIsNull(SymbolOwner, v33))
          {
            return 0;
          }

          Name = CSSymbolOwnerGetName(SymbolOwner, v34);
          v36 = "libsystem_kernel.dylib";
        }

        else
        {
          v41 = 0;
          if (a7 < 5)
          {
            if (!a13)
            {
              return 0;
            }

            if (mapped_memory_read(a13, (a4 - 5), 5, &v41))
            {
              return 0;
            }

            v37 = v41;
            if (!v41)
            {
              return 0;
            }
          }

          else
          {
            v37 = (a5 + a7 - 5);
            v41 = v37;
            if (a5 + a7 == 5)
            {
              return 0;
            }
          }

          if (*v37 != 232)
          {
            return 0;
          }

          v38 = *(v37 + 1);
          if (v38 < 0)
          {
            v38 |= 0xFFFFFFFF00000000;
          }

          v39 = CSSymbolicatorGetSymbolWithAddressAtTime(a1, a2, v38 + a4, 0x8000000000000000);
          Name = CSSymbolGetName(v39, v40);
          if (!Name)
          {
            return 0;
          }

          v36 = "_sysenter_trap";
        }

        if (!strcmp(Name, v36))
        {
          goto LABEL_42;
        }

        return 0;
      }

      if (v25 == 139)
      {
        v27 = v24 + 1;
        if (v27 < a6 && *(a5 + v27) == 236)
        {
          goto LABEL_23;
        }

        return 0;
      }

      if (v25 == 195 || v25 == 203)
      {
        *a8 = 0;
        result = 1;
        *a9 = 1;
      }
    }
  }

  return result;
}

BOOL _IsValidPC(const char *a1, tree *a2)
{
  result = 0;
  if (a2 >= 0x800)
  {
    if (!a1)
    {
      return 1;
    }

    v5[1] = v2;
    v5[2] = v3;
    v5[0] = 0;
    if (!mapped_memory_read(a1, a2, 4, v5))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _IsValidLinkRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  InstructionData = CSSymbolGetInstructionData(a4, a5);
  if (InstructionData)
  {
    v12 = InstructionData;
    MangledName = CSSymbolGetMangledName(a4, a5);
    if (MangledName && !strcmp(MangledName, "_objc_msgSend"))
    {
      v15 = 1;
    }

    else
    {
      v14 = (a3 & 0xFFFFFFFFFFFFFFFELL) - a1;
      v15 = 1;
      if (a3)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      v17 = v14 >> v16;
      if (v14 >> v16)
      {
        v18 = 0;
        v19 = 0;
        if (v17 >= 8)
        {
          v17 = 8;
        }

        if (a3)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        v21 = a1 + (v17 << v20);
        do
        {
          if (a6)
          {
            v22 = *(v12 + 4 * v18);
            v19 |= (v22 & 0xFE407FFF) == -1476363267;
            v23 = (v22 & 0x1C000000) == 0x10000000 || (v22 & 0xE000000) == 167772160;
            if (!v23 || (*(v12 + 4 * v18) & 0x1Fu) - 29 >= 2)
            {
              goto LABEL_46;
            }

            v15 = 0;
          }

          else
          {
            if (a3)
            {
              v32 = *(v12 + 2 * v18);
              v19 |= (~v32 & 0xB500) == 0;
              v31 = v32 == 18031 || (v32 & 0xFF00) == 44800 || (v32 & 0xFD87) == 17542;
              goto LABEL_42;
            }

            v24 = *(v12 + 4 * v18);
            if (v24 >> 28 != 15)
            {
              v26 = (v24 & 0xE5F4000) == 0x80D4000 || (v24 & 0xC5FF000) == 69066752;
              v19 |= v26;
              v27 = v24 & 0xC00F000;
              v28 = v24 & 0xC0FF000;
              v29 = v24 & 0xFFFFFFF;
              v31 = v28 == 880640 || v29 == 27291661 || v27 == 57344;
LABEL_42:
              v34 = !v31;
              v15 &= v34;
LABEL_46:
              if (v19 & v15)
              {
                v15 &= v21 >= (a3 & 0xFFFFFFFFFFFFFFFELL);
              }
            }
          }

          ++v18;
        }

        while (v17 != v18);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t _GetThumbInstruction(const char *a1, uint64_t a2, tree *a3)
{
  v5 = *(a2 + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a2 + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a2 + 8 && *(v6 + 32) <= a3)
  {
    return *(v6 + 40);
  }

  else
  {
LABEL_9:
    v15 = 0;
    if (mapped_memory_read(a1, a3, 2, &v15))
    {
      LOWORD(v10) = 0;
    }

    else
    {
      v11 = *v15;
      v13 = a3;
      v14 = v11;
      std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned int>>(a2, &v13);
      LOWORD(v10) = *v15;
    }
  }

  return v10;
}

void sampling_context_t::~sampling_context_t(char **this)
{
  std::__tree<std::__value_type<unsigned int,thread_name_info>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,thread_name_info>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,thread_name_info>>>::destroy((this + 17), this[18]);
  std::__tree<std::__value_type<unsigned int,thread_name_info>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,thread_name_info>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,thread_name_info>>>::destroy((this + 14), this[15]);
  v2 = this[10];
  if (v2)
  {
    this[11] = v2;
    operator delete(v2);
  }
}

void std::__tree<std::__value_type<unsigned int,thread_name_info>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,thread_name_info>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,thread_name_info>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,thread_name_info>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,thread_name_info>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,thread_name_info>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,thread_name_info>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,thread_name_info>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,thread_name_info>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<unsigned long long,dispatch_queue_info>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,dispatch_queue_info>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,dispatch_queue_info>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,thread_name_info>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,thread_name_info>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,thread_name_info>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t ___ZL19translate_aot_frame10_CSTypeRefPvyPy_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 48);
  v5 = v4 < a3 || v4 >= a4 + a3;
  v6 = v5;
  if (!v5)
  {
    v8 = *(a1 + 56);
    v9 = *(*(a1 + 32) + 8);
    if (aot_get_x86_address())
    {
      **(a1 + 64) = *(*(*(a1 + 32) + 8) + 24);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return v6;
}

uint64_t allocate_frames(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*a2)
  {
    free(*a2);
  }

  v6 = 8 * a3;
  v7 = malloc_type_malloc(v6, 0x100004000313F17uLL);
  *a2 = v7;
  if (v7)
  {
    if ((*(a1 + 160) & 0x80) == 0)
    {
      return 0;
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      free(v8);
    }

    v9 = malloc_type_malloc(v6, 0x100004000313F17uLL);
    *(a2 + 8) = v9;
    if (v9)
    {
      return 0;
    }

    free(*a2);
    *a2 = 0;
  }

  return 6;
}

uint64_t sample_remote_thread_with_frame_filter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 && a4)
  {
    v7 = *(a4 + 8);
    v8 = *a4;
    v6 = *(a4 + 16);
    *(a4 + 40) = 0;
    _ZNSt3__115allocate_sharedB8ne200100I11CSThreadArmNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v4 = *MEMORY[0x1E69E9840];
  return 4;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  v5 = *(a2 + 56);
  v3 = a2 + 56;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 56) = v5;
  *(result + 48) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 64) = v7;
  *(result + 72) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 48);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 56;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t std::unordered_map<unsigned long long,std::shared_ptr<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t ___ZL36sample_remote_thread_elide_recursionP18sampling_context_tjbP18CSThreadSampleArgs_block_invoke(uint64_t a1, unsigned int a2, unint64_t a3, _BYTE *a4)
{
  v22 = a2;
  if (*(a1 + 64) > a2)
  {
    return 0;
  }

  if (*(a1 + 68) > a2)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = v6[6];
    if (!*&v7)
    {
      goto LABEL_21;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = a3;
      if (*&v7 <= a3)
      {
        v9 = a3 % *&v7;
      }
    }

    else
    {
      v9 = (*&v7 - 1) & a3;
    }

    v10 = *(*&v6[5] + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_21:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == a3)
      {
        if (v11[2] == a3)
        {
          v21 = v11[3];
          v20 = v11[4];
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = *v21 + 1;
          *v21 = v13;
          v14 = *(*(a1 + 40) + 8);
          if (v13 > *(v14 + 24))
          {
            *(v14 + 24) = v13;
          }

          v15 = (v21 + 8);
          if (*(v21 + 16) - *(v21 + 8) > 8uLL)
          {
            v17 = *(v21 + 32);
            v16 = *(v21 + 40);
            v15 = (v21 + 32);
            if (v16 - v17 == 16)
            {
              v18 = v16 - (v17 + 4);
              if (v16 != v17 + 4)
              {
                memmove(*(v21 + 32), (v17 + 4), v16 - (v17 + 4));
              }

              *(v21 + 40) = v17 + v18;
              if (*v21 == *(*(*(a1 + 40) + 8) + 24))
              {
                *(*(*(a1 + 48) + 8) + 24) = a3;
              }
            }
          }

          std::vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>>::push_back[abi:ne200100](v15, &v22);
          if (*(a1 + 72) == 1)
          {
            ++*(*(*(a1 + 56) + 8) + 24);
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          return 0;
        }
      }

      else
      {
        if (v8.u32[0] > 1uLL)
        {
          if (v12 >= *&v7)
          {
            v12 %= *&v7;
          }
        }

        else
        {
          v12 &= *&v7 - 1;
        }

        if (v12 != v9)
        {
          goto LABEL_21;
        }
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_21;
      }
    }
  }

  if (a4)
  {
    *a4 = 1;
  }

  return 0;
}

void sub_1D97ADE98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__48(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

BOOL ___ZL36sample_remote_thread_elide_recursionP18sampling_context_tjbP18CSThreadSampleArgs_block_invoke_50(void *a1, unsigned int a2)
{
  v2 = *(a1[4] + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (v4 && *(*(a1[4] + 8) + 52) < a2)
  {
    v5 = a1[6];
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 24);
    if (0xAAAAAAAAAAAAAAABLL * ((a1[7] - v5) >> 3) <= v7)
    {
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
    }

    else
    {
      *(v6 + 24) = v7 + 1;
      v8 = (v5 + 24 * v7);
      v9 = *(a1[4] + 8);
      v10 = *v8;
      *(v9 + 56) = *(v8 + 2);
      *(v9 + 40) = v10;
    }
  }

  v11 = *(a1[4] + 8);
  return !*(v11 + 40) || *(v11 + 48) > a2 || *(v11 + 52) < a2;
}

void *std::vector<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo,std::allocator<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo>>::vector[abi:ne200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3);
    if (v3 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo>>(v3);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1D97AE03C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_48c140_ZTSNSt3__16vectorIZL36sample_remote_thread_elide_recursionP18sampling_context_tjbP18CSThreadSampleArgsE13RecursionInfoNS_9allocatorIS5_EEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo,std::allocator<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5508668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA736760);
}

void std::__shared_ptr_emplace<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo,std::allocator<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo>>>>::__rehash_unique[abi:ne200100](uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::PCInfo>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[4];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  v230 = *MEMORY[0x1E69E9840];
LABEL_2:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      goto LABEL_196;
    }

    if (v14 == 2)
    {
      if (*(a2 - 16) < *(v12 + 8))
      {
        v222 = *(v12 + 16);
        v189 = *v12;
        v90 = *(a2 - 24);
        *(v12 + 16) = *(a2 - 8);
        *v12 = v90;
        *(a2 - 8) = v222;
        *(a2 - 24) = v189;
      }

      goto LABEL_196;
    }

LABEL_10:
    if (v13 <= 575)
    {
      v99 = (v12 + 24);
      v101 = v12 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v12;
          do
          {
            v104 = v99;
            v105 = *(v103 + 8);
            if (v105 < *(v103 + 2))
            {
              v106 = *v104;
              v192 = *(v103 + 36);
              v200 = *(v103 + 11);
              v107 = v102;
              while (1)
              {
                v108 = v12 + v107;
                *(v108 + 24) = *(v12 + v107);
                *(v108 + 40) = *(v12 + v107 + 16);
                if (!v107)
                {
                  break;
                }

                v107 -= 24;
                if (v105 >= *(v108 - 16))
                {
                  v109 = v12 + v107 + 24;
                  goto LABEL_130;
                }
              }

              v109 = v12;
LABEL_130:
              *v109 = v106;
              *(v109 + 8) = v105;
              *(v109 + 12) = v192;
              *(v109 + 20) = v200;
            }

            v99 = v104 + 3;
            v102 += 24;
            v103 = v104;
          }

          while (v104 + 3 != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v151 = v99;
          v152 = *(a1 + 32);
          if (v152 < *(a1 + 8))
          {
            v153 = *v99;
            v196 = *(a1 + 36);
            v202 = *(a1 + 44);
            v154 = v151;
            do
            {
              *v154 = *(v154 - 3);
              v154[2] = *(v154 - 1);
              v155 = *(v154 - 10);
              v154 -= 3;
            }

            while (v152 < v155);
            *v154 = v153;
            *(v154 + 2) = v152;
            *(v154 + 5) = v202;
            *(v154 + 12) = v196;
          }

          v99 = v151 + 3;
          a1 = v151;
        }

        while (v151 + 3 != a2);
      }

      goto LABEL_196;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v110 = (v14 - 2) >> 1;
        v111 = v110;
        do
        {
          v112 = v111;
          if (v110 >= v111)
          {
            v113 = (2 * v111) | 1;
            v114 = v12 + 24 * v113;
            if (2 * v112 + 2 < v14)
            {
              v115 = *(v114 + 8);
              v116 = *(v114 + 32);
              v117 = v115 >= v116;
              v118 = v115 >= v116 ? 0 : 24;
              v114 += v118;
              if (!v117)
              {
                v113 = 2 * v112 + 2;
              }
            }

            v119 = v12 + 24 * v112;
            v120 = *(v119 + 8);
            if (*(v114 + 8) >= v120)
            {
              v121 = *v119;
              v201 = *(v119 + 20);
              v193 = *(v119 + 12);
              do
              {
                v122 = v119;
                v119 = v114;
                v123 = *v114;
                *(v122 + 16) = *(v114 + 16);
                *v122 = v123;
                if (v110 < v113)
                {
                  break;
                }

                v124 = (2 * v113) | 1;
                v114 = v12 + 24 * v124;
                v125 = 2 * v113 + 2;
                if (v125 < v14)
                {
                  v126 = *(v114 + 8);
                  v127 = *(v114 + 32);
                  v128 = v126 >= v127;
                  v129 = v126 >= v127 ? 0 : 24;
                  v114 += v129;
                  if (!v128)
                  {
                    v124 = v125;
                  }
                }

                v113 = v124;
              }

              while (*(v114 + 8) >= v120);
              *v119 = v121;
              *(v119 + 8) = v120;
              *(v119 + 12) = v193;
              *(v119 + 20) = v201;
            }
          }

          v111 = v112 - 1;
        }

        while (v112);
        v130 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v131 = 0;
          v225 = *(v12 + 16);
          v194 = *v12;
          v132 = v12;
          do
          {
            v133 = v132 + 24 * v131;
            v134 = v133 + 24;
            v135 = (2 * v131) | 1;
            v131 = 2 * v131 + 2;
            if (v131 >= v130)
            {
              v131 = v135;
            }

            else if (*(v133 + 32) >= *(v133 + 56))
            {
              v131 = v135;
            }

            else
            {
              v134 = v133 + 48;
            }

            v136 = *v134;
            *(v132 + 16) = *(v134 + 16);
            *v132 = v136;
            v132 = v134;
          }

          while (v131 <= ((v130 - 2) >> 1));
          a2 -= 24;
          if (v134 == a2)
          {
            *(v134 + 16) = v225;
            *v134 = v194;
          }

          else
          {
            v137 = *a2;
            *(v134 + 16) = *(a2 + 16);
            *v134 = v137;
            *(a2 + 16) = v225;
            *a2 = v194;
            v138 = v134 - v12 + 24;
            if (v138 >= 25)
            {
              v139 = (-2 - 0x5555555555555555 * (v138 >> 3)) >> 1;
              v140 = v12 + 24 * v139;
              v141 = *(v134 + 8);
              if (*(v140 + 8) < v141)
              {
                v142 = *v134;
                v166 = *(v134 + 12);
                v169 = *(v134 + 20);
                do
                {
                  v143 = v134;
                  v134 = v140;
                  v144 = *v140;
                  *(v143 + 16) = *(v140 + 16);
                  *v143 = v144;
                  if (!v139)
                  {
                    break;
                  }

                  v139 = (v139 - 1) >> 1;
                  v140 = v12 + 24 * v139;
                }

                while (*(v140 + 8) < v141);
                *v134 = v142;
                *(v134 + 8) = v141;
                *(v134 + 12) = v166;
                *(v134 + 20) = v169;
              }
            }
          }
        }

        while (v130-- > 2);
      }

      goto LABEL_196;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *(a2 - 16);
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_u32[2];
      if (v18 >= *(v12 + 8))
      {
        if (v17 < v18)
        {
          v205 = v16[1].n128_u64[0];
          v172 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v205;
          *v9 = v172;
          if (v16->n128_u32[2] < *(v12 + 8))
          {
            v206 = *(v12 + 16);
            v173 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v206;
            *v16 = v173;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v203 = *(v12 + 16);
          v170 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_27;
        }

        v209 = *(v12 + 16);
        v176 = *v12;
        v26 = *v16;
        *(v12 + 16) = v16[1].n128_u64[0];
        *v12 = v26;
        v16[1].n128_u64[0] = v209;
        *v16 = v176;
        if (*(a2 - 16) < v16->n128_u32[2])
        {
          v203 = v16[1].n128_u64[0];
          v170 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v27;
LABEL_27:
          *(a2 - 8) = v203;
          *v9 = v170;
        }
      }

      v28 = v12 + 24 * v15;
      v29 = v28 - 24;
      v30 = *(v28 - 16);
      v31 = *(a2 - 40);
      if (v30 >= *(v12 + 32))
      {
        if (v31 < v30)
        {
          v210 = *(v29 + 16);
          v177 = *v29;
          v35 = *v10;
          *(v29 + 16) = *(a2 - 32);
          *v29 = v35;
          *(a2 - 32) = v210;
          *v10 = v177;
          if (*(v29 + 8) < *(v12 + 32))
          {
            v36 = *(v12 + 24);
            v37 = *(v12 + 40);
            v38 = *(v29 + 16);
            *(v12 + 24) = *v29;
            *(v12 + 40) = v38;
            *(v29 + 16) = v37;
            *v29 = v36;
          }
        }
      }

      else
      {
        if (v31 < v30)
        {
          v32 = *(v12 + 24);
          v33 = *(v12 + 40);
          v34 = *(a2 - 32);
          *(v12 + 24) = *v10;
          *(v12 + 40) = v34;
          goto LABEL_39;
        }

        v41 = *(v12 + 24);
        v42 = *(v12 + 40);
        v43 = *(v29 + 16);
        *(v12 + 24) = *v29;
        *(v12 + 40) = v43;
        *(v29 + 16) = v42;
        *v29 = v41;
        if (*(a2 - 40) < *(v29 + 8))
        {
          v212 = *(v29 + 16);
          v179 = *v29;
          v44 = *v10;
          *(v29 + 16) = *(a2 - 32);
          *v29 = v44;
          v32 = v179;
          v33 = v212;
LABEL_39:
          *(a2 - 32) = v33;
          *v10 = v32;
        }
      }

      v45 = v12 + 24 * v15;
      v46 = *(v45 + 32);
      v47 = *(a2 - 64);
      if (v46 >= *(v12 + 56))
      {
        if (v47 < v46)
        {
          v213 = *(v45 + 40);
          v180 = *(v45 + 24);
          v51 = *v11;
          *(v45 + 40) = *(a2 - 56);
          *(v45 + 24) = v51;
          *(a2 - 56) = v213;
          *v11 = v180;
          if (*(v45 + 32) < *(v12 + 56))
          {
            v52 = *(v12 + 48);
            v53 = *(v12 + 64);
            v54 = *(v45 + 40);
            *(v12 + 48) = *(v45 + 24);
            *(v12 + 64) = v54;
            *(v45 + 40) = v53;
            *(v45 + 24) = v52;
          }
        }
      }

      else
      {
        if (v47 < v46)
        {
          v48 = *(v12 + 48);
          v49 = *(v12 + 64);
          v50 = *(a2 - 56);
          *(v12 + 48) = *v11;
          *(v12 + 64) = v50;
          goto LABEL_48;
        }

        v55 = *(v12 + 48);
        v56 = *(v12 + 64);
        v57 = *(v45 + 40);
        *(v12 + 48) = *(v45 + 24);
        *(v12 + 64) = v57;
        *(v45 + 40) = v56;
        *(v45 + 24) = v55;
        if (*(a2 - 64) < *(v45 + 32))
        {
          v214 = *(v45 + 40);
          v181 = *(v45 + 24);
          v58 = *v11;
          *(v45 + 40) = *(a2 - 56);
          *(v45 + 24) = v58;
          v48 = v181;
          v49 = v214;
LABEL_48:
          *(a2 - 56) = v49;
          *v11 = v48;
        }
      }

      v59 = v16->n128_u32[2];
      v60 = *(v45 + 32);
      if (v59 >= *(v29 + 8))
      {
        if (v60 < v59)
        {
          v216 = v16[1].n128_u64[0];
          v183 = *v16;
          *v16 = *(v45 + 24);
          v16[1].n128_u64[0] = *(v45 + 40);
          *(v45 + 40) = v216;
          *(v45 + 24) = v183;
          if (v16->n128_u32[2] < *(v29 + 8))
          {
            v217 = *(v29 + 16);
            v184 = *v29;
            *v29 = *v16;
            *(v29 + 16) = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v217;
            *v16 = v184;
          }
        }
      }

      else
      {
        if (v60 < v59)
        {
          v215 = *(v29 + 16);
          v182 = *v29;
          *v29 = *(v45 + 24);
          *(v29 + 16) = *(v45 + 40);
          goto LABEL_57;
        }

        v218 = *(v29 + 16);
        v185 = *v29;
        *v29 = *v16;
        *(v29 + 16) = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v218;
        *v16 = v185;
        if (*(v45 + 32) < v16->n128_u32[2])
        {
          v215 = v16[1].n128_u64[0];
          v182 = *v16;
          *v16 = *(v45 + 24);
          v16[1].n128_u64[0] = *(v45 + 40);
LABEL_57:
          *(v45 + 40) = v215;
          *(v45 + 24) = v182;
        }
      }

      v219 = *(v12 + 16);
      v186 = *v12;
      v61 = *v16;
      *(v12 + 16) = v16[1].n128_u64[0];
      *v12 = v61;
      a5 = v186;
      v16[1].n128_u64[0] = v219;
      *v16 = v186;
      goto LABEL_59;
    }

    v20 = *(v12 + 8);
    if (v20 >= v16->n128_u32[2])
    {
      if (v17 < v20)
      {
        v207 = *(v12 + 16);
        v174 = *v12;
        v24 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v24;
        a5 = v174;
        *(a2 - 8) = v207;
        *v9 = v174;
        if (*(v12 + 8) < v16->n128_u32[2])
        {
          v208 = v16[1].n128_u64[0];
          v175 = *v16;
          v25 = *v12;
          v16[1].n128_u64[0] = *(v12 + 16);
          *v16 = v25;
          a5 = v175;
          *(v12 + 16) = v208;
          *v12 = v175;
        }
      }

      goto LABEL_59;
    }

    if (v17 < v20)
    {
      v204 = v16[1].n128_u64[0];
      v171 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = *(a2 - 8);
      *v16 = v21;
LABEL_36:
      a5 = v171;
      *(a2 - 8) = v204;
      *v9 = v171;
      goto LABEL_59;
    }

    v211 = v16[1].n128_u64[0];
    v178 = *v16;
    v39 = *v12;
    v16[1].n128_u64[0] = *(v12 + 16);
    *v16 = v39;
    a5 = v178;
    *(v12 + 16) = v211;
    *v12 = v178;
    if (*(a2 - 16) < *(v12 + 8))
    {
      v204 = *(v12 + 16);
      v171 = *v12;
      v40 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v40;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v62 = *(v12 + 8);
LABEL_62:
      v63 = 0;
      v64 = *v12;
      v164 = *(v12 + 12);
      v167 = *(v12 + 20);
      do
      {
        v65 = *(v12 + v63 + 32);
        v63 += 24;
      }

      while (v65 < v62);
      v66 = v12 + v63;
      v67 = a2;
      if (v63 == 24)
      {
        v70 = a2;
        while (v66 < v70)
        {
          v68 = v70 - 24;
          v71 = *(v70 - 16);
          v70 -= 24;
          if (v71 < v62)
          {
            goto LABEL_72;
          }
        }

        v68 = v70;
      }

      else
      {
        do
        {
          v68 = v67 - 24;
          v69 = *(v67 - 16);
          v67 -= 24;
        }

        while (v69 >= v62);
      }

LABEL_72:
      v12 = v66;
      if (v66 < v68)
      {
        v72 = v68;
        do
        {
          v220 = *(v12 + 16);
          v187 = *v12;
          v73 = *v72;
          *(v12 + 16) = *(v72 + 16);
          *v12 = v73;
          a5 = v187;
          *(v72 + 16) = v220;
          *v72 = v187;
          do
          {
            v74 = *(v12 + 32);
            v12 += 24;
          }

          while (v74 < v62);
          do
          {
            v75 = *(v72 - 16);
            v72 -= 24;
          }

          while (v75 >= v62);
        }

        while (v12 < v72);
      }

      if (v12 - 24 != a1)
      {
        a5 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = a5;
      }

      *(v12 - 24) = v64;
      *(v12 - 16) = v62;
      *(v12 - 4) = v167;
      *(v12 - 12) = v164;
      if (v66 < v68)
      {
        goto LABEL_83;
      }

      v76 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *>(a1, v12 - 24, a5);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *>(v12, a2, v77))
      {
        a2 = v12 - 24;
        if (!v76)
        {
          goto LABEL_2;
        }

        goto LABEL_196;
      }

      if (!v76)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *,false>(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v62 = *(v12 + 8);
      if (*(v12 - 16) < v62)
      {
        goto LABEL_62;
      }

      v78 = *v12;
      v165 = *(v12 + 12);
      v168 = *(v12 + 20);
      if (v62 >= *(a2 - 16))
      {
        v81 = v12 + 24;
        do
        {
          v12 = v81;
          if (v81 >= a2)
          {
            break;
          }

          v82 = *(v81 + 8);
          v81 += 24;
        }

        while (v62 >= v82);
      }

      else
      {
        v79 = v12;
        do
        {
          v12 = v79 + 24;
          v80 = *(v79 + 32);
          v79 += 24;
        }

        while (v62 >= v80);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v84 = a2;
        do
        {
          v83 = v84 - 24;
          v85 = *(v84 - 16);
          v84 -= 24;
        }

        while (v62 < v85);
      }

      while (v12 < v83)
      {
        v221 = *(v12 + 16);
        v188 = *v12;
        v86 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v86;
        a5 = v188;
        *(v83 + 16) = v221;
        *v83 = v188;
        do
        {
          v87 = *(v12 + 32);
          v12 += 24;
        }

        while (v62 >= v87);
        do
        {
          v88 = *(v83 - 16);
          v83 -= 24;
        }

        while (v62 < v88);
      }

      if (v12 - 24 != a1)
      {
        a5 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = a5;
      }

      a4 = 0;
      *(v12 - 24) = v78;
      *(v12 - 16) = v62;
      *(v12 - 4) = v168;
      *(v12 - 12) = v165;
    }
  }

  if (v14 == 3)
  {
    v91 = *(v12 + 32);
    v92 = *(a2 - 16);
    if (v91 >= *(v12 + 8))
    {
      if (v92 < v91)
      {
        v146 = *(v12 + 24);
        v147 = *(v12 + 40);
        v148 = *(a2 - 8);
        *(v12 + 24) = *v9;
        *(v12 + 40) = v148;
        *(a2 - 8) = v147;
        *v9 = v146;
        goto LABEL_194;
      }
    }

    else
    {
      if (v92 < v91)
      {
        v223 = *(v12 + 16);
        v190 = *v12;
        v93 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v93;
        v94 = v190;
        v95 = v223;
LABEL_187:
        *(a2 - 8) = v95;
        *v9 = v94;
        goto LABEL_196;
      }

      v227 = *(v12 + 16);
      v197 = *v12;
      *v12 = *(v12 + 24);
      *(v12 + 16) = *(v12 + 40);
      *(v12 + 24) = v197;
      *(v12 + 40) = v227;
      if (*(a2 - 16) < *(v12 + 32))
      {
        v94 = *(v12 + 24);
        v95 = *(v12 + 40);
        v156 = *(a2 - 8);
        *(v12 + 24) = *v9;
        *(v12 + 40) = v156;
        goto LABEL_187;
      }
    }

LABEL_196:
    v163 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v14 == 4)
  {
    v96 = *(v12 + 32);
    v97 = *(v12 + 56);
    if (v96 >= *(v12 + 8))
    {
      if (v97 < v96)
      {
        v149 = *(v12 + 40);
        v150 = *(v12 + 24);
        *(v12 + 24) = *(v12 + 48);
        *(v12 + 40) = *(v12 + 64);
        *(v12 + 48) = v150;
        *(v12 + 64) = v149;
        if (*(v12 + 32) < *(v12 + 8))
        {
          v226 = *(v12 + 16);
          v195 = *v12;
          *v12 = *(v12 + 24);
          *(v12 + 16) = *(v12 + 40);
          *(v12 + 24) = v195;
          *(v12 + 40) = v226;
        }
      }

      goto LABEL_191;
    }

    if (v97 >= v96)
    {
      v228 = *(v12 + 16);
      v198 = *v12;
      *v12 = *(v12 + 24);
      *(v12 + 16) = *(v12 + 40);
      *(v12 + 24) = v198;
      *(v12 + 40) = v228;
      if (v97 >= *(v12 + 32))
      {
        goto LABEL_191;
      }

      v98 = *(v12 + 40);
      v157 = *(v12 + 24);
      *(v12 + 24) = *(v12 + 48);
      *(v12 + 40) = *(v12 + 64);
      *(v12 + 48) = v157;
    }

    else
    {
      v224 = *(v12 + 16);
      v191 = *v12;
      *v12 = *(v12 + 48);
      *(v12 + 16) = *(v12 + 64);
      *(v12 + 48) = v191;
      v98 = v224;
    }

    *(v12 + 64) = v98;
LABEL_191:
    if (*(a2 - 16) >= *(v12 + 56))
    {
      goto LABEL_196;
    }

    v158 = *(v12 + 48);
    v159 = *(v12 + 64);
    v160 = *(a2 - 8);
    *(v12 + 48) = *v9;
    *(v12 + 64) = v160;
    *(a2 - 8) = v159;
    *v9 = v158;
    if (*(v12 + 56) >= *(v12 + 32))
    {
      goto LABEL_196;
    }

    v161 = *(v12 + 40);
    v162 = *(v12 + 24);
    *(v12 + 24) = *(v12 + 48);
    *(v12 + 40) = *(v12 + 64);
    *(v12 + 48) = v162;
    *(v12 + 64) = v161;
LABEL_194:
    if (*(v12 + 32) < *(v12 + 8))
    {
      v229 = *(v12 + 16);
      v199 = *v12;
      *v12 = *(v12 + 24);
      *(v12 + 16) = *(v12 + 40);
      *(v12 + 24) = v199;
      *(v12 + 40) = v229;
    }

    goto LABEL_196;
  }

  if (v14 != 5)
  {
    goto LABEL_10;
  }

  v89 = *MEMORY[0x1E69E9840];

  std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *,0>(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), a5);
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_u32[2];
  v7 = a3->n128_u32[2];
  if (v6 >= a1->n128_u32[2])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_u32[2] < a1->n128_u32[2])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_u32[2] < a2->n128_u32[2])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u32[2] < a3->n128_u32[2])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_u32[2] < a2->n128_u32[2])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_u32[2] < a1->n128_u32[2])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (a5->n128_u32[2] < a4->n128_u32[2])
  {
    v23 = a4[1].n128_i64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    if (a4->n128_u32[2] < a3->n128_u32[2])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      if (a3->n128_u32[2] < a2->n128_u32[2])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        if (a2->n128_u32[2] < a1->n128_u32[2])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 24);
      v8 = *(a1 + 32);
      v9 = *(a2 - 16);
      if (v8 < *(a1 + 8))
      {
        if (v9 >= v8)
        {
          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v36;
          *(a1 + 40) = v35;
          if (*(a2 - 16) >= *(a1 + 32))
          {
            goto LABEL_52;
          }

          v10 = *(a1 + 40);
          v11 = *(a1 + 24);
          v37 = *(a2 - 8);
          *(a1 + 24) = *v7;
          *(a1 + 40) = v37;
        }

        else
        {
          v10 = *(a1 + 16);
          v11 = *a1;
          v12 = *(a2 - 8);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *v7 = v11;
        *(a2 - 8) = v10;
        goto LABEL_52;
      }

      if (v9 >= v8)
      {
LABEL_52:
        result = 1;
        goto LABEL_53;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      v26 = *(a2 - 8);
      *(a1 + 24) = *v7;
      *(a1 + 40) = v26;
      *v7 = v25;
      *(a2 - 8) = v24;
LABEL_50:
      if (*(a1 + 32) < *(a1 + 8))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      goto LABEL_52;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      goto LABEL_52;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 8);
    v21 = *(a1 + 56);
    if (v19 >= v20)
    {
      if (v21 < v19)
      {
        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v32;
        *(a1 + 64) = v31;
        if (*(a1 + 32) < v20)
        {
          v33 = *(a1 + 16);
          v34 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v34;
          *(a1 + 40) = v33;
        }
      }

      goto LABEL_47;
    }

    if (v21 >= v19)
    {
      v48 = *(a1 + 16);
      v49 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v49;
      *(a1 + 40) = v48;
      if (v21 >= *(a1 + 32))
      {
        goto LABEL_47;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    *(a1 + 48) = v23;
    *(a1 + 64) = v22;
LABEL_47:
    if (*(a2 - 16) >= *(a1 + 56))
    {
      goto LABEL_52;
    }

    v50 = a2 - 24;
    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = *(a2 - 8);
    *(a1 + 48) = *(a2 - 24);
    *(a1 + 64) = v53;
    *v50 = v52;
    *(v50 + 16) = v51;
    if (*(a1 + 56) >= *(a1 + 32))
    {
      goto LABEL_52;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    goto LABEL_52;
  }

  if (v3 == 2)
  {
    if (*(a2 - 16) < *(a1 + 8))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 8);
      *a1 = *(a2 - 24);
      *(a1 + 16) = v6;
      *(a2 - 24) = v5;
      *(a2 - 8) = v4;
    }

    goto LABEL_52;
  }

LABEL_13:
  v13 = a1 + 48;
  v14 = *(a1 + 32);
  v15 = *(a1 + 8);
  v16 = *(a1 + 56);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v28;
      *(a1 + 64) = v27;
      if (*(a1 + 32) < v15)
      {
        v29 = *(a1 + 16);
        v30 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (v16 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 40);
      v18 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *a1 = *v13;
      *(a1 + 16) = *(a1 + 64);
    }

    *v13 = v18;
    *(a1 + 64) = v17;
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    goto LABEL_52;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *(v40 + 8);
    if (v43 < *(v13 + 8))
    {
      v44 = *v40;
      v60 = *(v40 + 12);
      v61 = *(v40 + 20);
      v45 = v41;
      while (1)
      {
        v46 = a1 + v45;
        *(v46 + 72) = *(a1 + v45 + 48);
        *(v46 + 88) = *(a1 + v45 + 64);
        if (v45 == -48)
        {
          break;
        }

        v45 -= 24;
        if (v43 >= *(v46 + 32))
        {
          v47 = a1 + v45 + 72;
          goto LABEL_41;
        }
      }

      v47 = a1;
LABEL_41:
      *v47 = v44;
      *(v47 + 8) = v43;
      *(v47 + 12) = v60;
      *(v47 + 20) = v61;
      if (++v42 == 8)
      {
        break;
      }
    }

    v13 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      goto LABEL_52;
    }
  }

  result = v40 + 24 == a2;
LABEL_53:
  v59 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sample_remote_thread_with_frame_filter(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *,BOOL({block_pointer})(unsigned int,unsigned long long,BOOL *))::$_0::operator()(unsigned int **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = **a1;
  if (v7 < *v6)
  {
    v9 = *a1[2];
    if (!v9 || (*(v9 + 16))())
    {
      v10 = *a1[3];
      if (v10)
      {
        *(v10 + 8 * *a1[4]) = a2;
      }

      v11 = a1[4];
      v12 = *a1[5];
      v13 = *v11;
      if (v12)
      {
        *(v12 + 8 * v13) = a3;
      }

      *v11 = v13 + 1;
    }

    v5 = *a1;
    v6 = a1[1];
    v7 = **a1;
  }

  *a1[6] = a2;
  *v5 = v7 + 1;
  return v7 + 1 < *v6;
}

void *_ZNSt3__120__shared_ptr_emplaceI11CSThreadArmNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F55086B8;
  CSThreadArm::CSThreadArm((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<CSThreadArm>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F55086B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA736760);
}

void ___ZL19CheckForSecondFrameP18sampling_context_tNSt3__110shared_ptrI8CSThreadEE_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[7];
  v4[0] = a1[6];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(*(a1[4] + 8) + 24) = CheckForSecondFrame2(v2, v4);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1D97AFE28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CheckForSecondFrame2(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  LR = CSThread::GetLR(*a2, 0);
  v37 = LR;
  Architecture = CSSymbolicatorGetArchitecture(*(v3 + 24), *(v3 + 32));
  IsX86_64 = CSArchitectureIsX86_64(Architecture);
  if (Architecture)
  {
    v7 = IsX86_64;
  }

  else
  {
    v7 = 1;
  }

  if (*(v3 + 168) == 1)
  {
    v8 = *a2;
    v9 = *(a2 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = ((CSThread::GetRegisterValue(v8, "x18", 0, 0) & 1) == 0) & v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (LR)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0;
    if (LR)
    {
      goto LABEL_16;
    }
  }

  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  PC = CSThread::GetPC(*a2, -1);
  if ((*(v3 + 160) & 8) != 0)
  {
    v12 = CSRangeOfDyldSharedCacheInCurrentProcess();
    if (PC - v12 >= v13)
    {
      return 0;
    }
  }

  result = _IsValidPC(*(v3 + 8), PC);
  if (!result)
  {
    return result;
  }

  if (v10)
  {
    v15 = *a2;
    v14 = *(a2 + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v40 = 0;
    v16 = CSThread::GetPC(v15, -1);
    v17 = "x21";
    v18 = 1;
    if (mapped_memory_read(*(v3 + 8), (v16 - 4), 8, &v40) || !v40)
    {
LABEL_53:
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if ((v18 & 1) == 0)
      {
        RegisterValue = CSThread::GetRegisterValue(*a2, v17, 0, 0);
        mapped_memory_read_pointer(*(v3 + 8), RegisterValue, &v37);
        if (v37 + 1 >= 2)
        {
          CSThread::SetPC(*a2, v37);
          v35 = *a2;
          SP = CSThread::GetSP(v35, 0);
          CSThread::SetSP(v35, SP - HIDWORD(v18));
          return 1;
        }

        return 0;
      }

      goto LABEL_56;
    }

    v18 = 0;
    v20 = *v40;
    v19 = v40[1];
    if (v19 <= -698416385)
    {
      if (v19 == -1463721289 || v19 == -1442577435)
      {
        goto LABEL_53;
      }

      if (v19 != -887684391)
      {
        goto LABEL_36;
      }

      if (v20 != -1463721289)
      {
LABEL_41:
        FP = CSThread::GetFP(v15, 0);
        if (CSThread::GetSP(v15, 0) - FP == 8)
        {
          v18 = 0x800000000;
        }

        else
        {
          v39 = -1;
          mapped_memory_read_pointer(*(v3 + 8), *(v15 + 2) + FP, &v39);
          v23 = CSThread::GetLR(v15, 0);
          v24 = CSThread::GetRegisterValue(v15, "x21", 0, 0);
          v38 = -1;
          mapped_memory_read_pointer(*(v3 + 8), v24, &v38);
          v18 = 0;
          if ((v38 + 1) < 2 || v38 == v23 || v38 == v39)
          {
            v25 = CSSymbolicatorTranslateFromNativeAddress(*(v3 + 24), *(v3 + 32), v16);
            if (!v25 || (RegionWithAddressAtTime = CSSymbolicatorGetRegionWithAddressAtTime(*(v3 + 24), *(v3 + 32), v25, 0x8000000000000000), Name = CSRegionGetName(RegionWithAddressAtTime, v27), (v29 = Name) == 0) || strncmp(Name, "__TEXT __stubs", 0xFuLL) && strncmp(v29, "__TEXT __stub_helper", 0x15uLL))
            {
              v18 = 1;
            }
          }
        }

        v17 = "x21";
        goto LABEL_53;
      }
    }

    else
    {
      if (v19 > -132150140)
      {
        if (v19 == -132150139)
        {
          goto LABEL_53;
        }

        v21 = -129989482;
LABEL_35:
        if (v19 == v21)
        {
          goto LABEL_53;
        }

LABEL_36:
        if (v20 == -698416384 && (v19 & 0x94000000) == 0x94000000 || v20 == -887684391 && (v19 & 0xB5000000) == 0xB5000000)
        {
          goto LABEL_40;
        }

        goto LABEL_41;
      }

      if (v19 != -698416384)
      {
        v21 = -132153211;
        goto LABEL_35;
      }
    }

LABEL_40:
    v18 = 0;
    v17 = "x23";
    goto LABEL_53;
  }

LABEL_56:
  if (CSIsNull(*(v3 + 24), *(v3 + 32)))
  {
    return 0;
  }

  SymbolWithAddressAtTime = CSSymbolicatorGetSymbolWithAddressAtTime(*(v3 + 24), *(v3 + 32), PC, 0x8000000000000000);
  v32 = v31;
  if (CSIsNull(SymbolWithAddressAtTime, v31))
  {
    return 0;
  }

  result = CSSymbolGetRange(SymbolWithAddressAtTime, v32);
  if (result)
  {
    result = _IsValidLinkRegister(result, v33, PC, SymbolWithAddressAtTime, v32, *(*a2 + 9));
    if (result)
    {
      CSThread::SetPC(*a2, LR);
      return 1;
    }
  }

  return result;
}

void sub_1D97B02A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_48c35_ZTSNSt3__110shared_ptrI8CSThreadEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c35_ZTSNSt3__110shared_ptrI8CSThreadEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned int>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void TMMapSymbolOwnerData::TMMapSymbolOwnerData(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, TMMapArchive *a3)
{
  *(this + 1) = 1;
  *(this + 2) = 850045863;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  *this = &unk_1F5508740;
  *(this + 11) = a3;
  *(this + 6) = 0u;
  v6 = this + 96;
  *(this + 9) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 10) = 0u;
  *(this + 44) = 1065353216;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 1065353216;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 64) = 1065353216;
  *(this + 33) = 850045863;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  *(this + 41) = 850045863;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 21) = 0u;
  v7 = *(a3 + 2);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<MMapSegment>::__init_with_size[abi:ne200100]<MMapSegment const*,MMapSegment const*>(&v14, a3 + 96, a3 + 32 * v7 + 96, v7);
  create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(a2 + 4, &v14, 1, &__p);
  v12 = 0uLL;
  v13 = 0;
  std::vector<TRangeValue<Pointer64,unsigned long long>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer64,unsigned long long>*,TRangeValue<Pointer64,unsigned long long>*>(&v12, __p, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - __p) >> 3));
  v8 = *v6;
  if (*v6)
  {
    *(this + 13) = v8;
    operator delete(v8);
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
  }

  *(this + 6) = v12;
  *(this + 14) = v13;
  v13 = 0;
  v12 = 0uLL;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  create_segment_relocation_deltas<Pointer64,MMapSegment,CSCppSegmentRange>(&v14, a2 + 4, 1, &__p);
  v12 = 0uLL;
  v13 = 0;
  std::vector<TRangeValue<Pointer64,unsigned long long>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer64,unsigned long long>*,TRangeValue<Pointer64,unsigned long long>*>(&v12, __p, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - __p) >> 3));
  v9 = *(this + 15);
  if (v9)
  {
    *(this + 16) = v9;
    operator delete(v9);
    *(this + 15) = 0;
    *(this + 16) = 0;
    *(this + 17) = 0;
  }

  *(this + 120) = v12;
  *(this + 17) = v13;
  v13 = 0;
  v12 = 0uLL;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  atomic_store(*(a3 + 7), this + 3);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_1D97B05DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  CSCppDeferredDemangler::~CSCppDeferredDemangler(v19);
  v22 = v17[15];
  if (v22)
  {
    v17[16] = v22;
    operator delete(v22);
  }

  v23 = *v20;
  if (*v20)
  {
    v17[13] = v23;
    operator delete(v23);
  }

  *v17 = &unk_1F5505060;
  std::mutex::~mutex(v18);
  _Unwind_Resume(a1);
}

void create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 - *a1;
  if (v8 != *a1 && a2[1] != *a2)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppSegmentRange const*>,std::__wrap_iter<CSCppSegmentRange const*>>(&v46, v7, v8, v9 >> 5);
    v11 = *a2;
    v12 = a2[1];
    v13 = (v12 - *a2) >> 5;
    v44 = 0;
    v45 = 0;
    __p = 0;
    std::vector<MMapSegment>::__init_with_size[abi:ne200100]<std::__wrap_iter<MMapSegment const*>,std::__wrap_iter<MMapSegment const*>>(&__p, v11, v12, v13);
    v14 = a1[1] - *a1;
    if (v14 != 32 && a2[1] - *a2 != 32)
    {
      v15 = 126 - 2 * __clz((v47 - v46) >> 5);
      if (v47 == v46)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,false>(v46, v47, &v49, v16, 1);
      v17 = 126 - 2 * __clz((v44 - __p) >> 5);
      if (v44 == __p)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,false>(__p, v44, &v49, v18, 1);
      v14 = a1[1] - *a1;
    }

    v19 = v46;
    v20 = __p;
    std::vector<TRangeValue<Pointer64,unsigned long long>>::reserve(a4, v14 >> 5);
    v22 = v47;
    if (v19 != v47)
    {
      while (2)
      {
        v23 = v44;
LABEL_14:
        if (v20 != v23)
        {
          while (1)
          {
            v24 = v19[3];
            if (!v24)
            {
              v24 = v19[2];
            }

            if (!strncmp(v20 + 16, v24, 0x10uLL))
            {
              break;
            }

            if (!is_relocation_skippable(v24))
            {
              if (is_relocation_skippable(v20 + 16))
              {
                v20 += 32;
                if (v19 != v22)
                {
                  goto LABEL_14;
                }

                goto LABEL_37;
              }

              break;
            }

            v19 += 4;
            if (v19 == v22)
            {
              goto LABEL_37;
            }
          }

          v25 = *v20;
          v27 = *v19;
          v26 = v19[1];
          v28 = *v20 - *v19;
          v30 = a4[1];
          v29 = a4[2];
          if (v30 >= v29)
          {
            v32 = *a4;
            v33 = v30 - *a4;
            v34 = 0xAAAAAAAAAAAAAAABLL * (v33 >> 3) + 1;
            if (v34 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
            }

            v35 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v32) >> 3);
            if (2 * v35 > v34)
            {
              v34 = 2 * v35;
            }

            if (v35 >= 0x555555555555555)
            {
              v36 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              std::allocator<TRangeValue<Pointer64,unsigned long long>>::allocate_at_least[abi:ne200100](a4, v36);
            }

            v37 = (8 * (v33 >> 3));
            *v37 = v27;
            v37[1] = v26;
            v37[2] = v28;
            v31 = (v37 + 3);
            v38 = (v37 - v33);
            memcpy(v37 - v33, v32, v33);
            v39 = *a4;
            *a4 = v38;
            a4[1] = v31;
            a4[2] = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v30 = v27;
            v30[1] = v26;
            v31 = (v30 + 3);
            v30[2] = v28;
          }

          a4[1] = v31;
          a3 |= v25 != v27;
          v19 += 4;
          v20 += 32;
          v22 = v47;
          if (v19 != v47)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_37:
    if (a3)
    {
      v40 = a4[1];
      v41 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v40 - *a4));
      if (v40 == *a4)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(*a4, v40, &v49, v42, 1, v21);
    }

    else
    {
      a4[1] = *a4;
    }

    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }
  }
}

void sub_1D97B0980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void create_segment_relocation_deltas<Pointer64,MMapSegment,CSCppSegmentRange>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 - *a1;
  if (v8 != *a1 && a2[1] != *a2)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    std::vector<MMapSegment>::__init_with_size[abi:ne200100]<std::__wrap_iter<MMapSegment const*>,std::__wrap_iter<MMapSegment const*>>(&v47, v7, v8, v9 >> 5);
    v11 = *a2;
    v12 = a2[1];
    v13 = (v12 - *a2) >> 5;
    v45 = 0;
    v46 = 0;
    __p = 0;
    std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppSegmentRange const*>,std::__wrap_iter<CSCppSegmentRange const*>>(&__p, v11, v12, v13);
    v14 = a1[1] - *a1;
    if (v14 != 32 && a2[1] - *a2 != 32)
    {
      v15 = 126 - 2 * __clz((v48 - v47) >> 5);
      if (v48 == v47)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,false>(v47, v48, &v50, v16, 1);
      v17 = 126 - 2 * __clz((v45 - __p) >> 5);
      if (v45 == __p)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,false>(__p, v45, &v50, v18, 1);
      v14 = a1[1] - *a1;
    }

    v19 = v47;
    v20 = __p;
    std::vector<TRangeValue<Pointer64,unsigned long long>>::reserve(a4, v14 >> 5);
    v22 = v48;
    if (v19 != v48)
    {
      while (2)
      {
        v23 = v45;
LABEL_14:
        if (v20 != v23)
        {
          v24 = *(v20 + 3);
          while (1)
          {
            v25 = v24;
            if (!v24)
            {
              v25 = *(v20 + 2);
            }

            if (!strncmp(v25, v19 + 16, 0x10uLL))
            {
              break;
            }

            if (!is_relocation_skippable(v19 + 16))
            {
              if (!v24)
              {
                v24 = *(v20 + 2);
              }

              if (is_relocation_skippable(v24))
              {
                v20 += 32;
                if (v19 != v22)
                {
                  goto LABEL_14;
                }

                goto LABEL_40;
              }

              break;
            }

            v19 += 32;
            if (v19 == v22)
            {
              goto LABEL_40;
            }
          }

          v26 = *v20;
          v28 = *v19;
          v27 = *(v19 + 1);
          v29 = *v20 - *v19;
          v31 = a4[1];
          v30 = a4[2];
          if (v31 >= v30)
          {
            v33 = *a4;
            v34 = v31 - *a4;
            v35 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 3) + 1;
            if (v35 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
            }

            v36 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v33) >> 3);
            if (2 * v36 > v35)
            {
              v35 = 2 * v36;
            }

            if (v36 >= 0x555555555555555)
            {
              v37 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v37 = v35;
            }

            if (v37)
            {
              std::allocator<TRangeValue<Pointer64,unsigned long long>>::allocate_at_least[abi:ne200100](a4, v37);
            }

            v38 = (8 * (v34 >> 3));
            *v38 = v28;
            v38[1] = v27;
            v38[2] = v29;
            v32 = v38 + 3;
            v39 = (v38 - v34);
            memcpy(v38 - v34, v33, v34);
            v40 = *a4;
            *a4 = v39;
            a4[1] = v32;
            a4[2] = 0;
            if (v40)
            {
              operator delete(v40);
            }
          }

          else
          {
            *v31 = v28;
            v31[1] = v27;
            v32 = v31 + 3;
            v31[2] = v29;
          }

          a4[1] = v32;
          a3 |= v26 != v28;
          v19 += 32;
          v20 += 32;
          v22 = v48;
          if (v19 != v48)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_40:
    if (a3)
    {
      v41 = a4[1];
      v42 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v41 - *a4));
      if (v41 == *a4)
      {
        v43 = 0;
      }

      else
      {
        v43 = v42;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(*a4, v41, &v50, v43, 1, v21);
    }

    else
    {
      a4[1] = *a4;
    }

    if (__p)
    {
      v45 = __p;
      operator delete(__p);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }
  }
}

void sub_1D97B0CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

BOOL TMMapArchive::is_pointer_within_strtab(TMMapArchive *this, char *a2)
{
  v2 = *(this + 2);
  v3.i64[0] = v2;
  v3.i64[1] = HIDWORD(v2);
  v4 = v3;
  v4.i32[1] = v3.i32[0];
  v4.i32[3] = *(this + 6);
  return this + *(this + 20) + vaddlvq_u32(vmulq_s32(v4, xmmword_1D97E0550)) + (32 * *(this + 2)) + (24 * *(this + 3)) + *(this + 22) + 96 <= a2 && TMMapArchive::strtab_end(this) > a2;
}

uint64_t TMMapSymbolOwnerData::regions_in_address_range(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1[11] + 12))
  {
    v5 = a3 == -1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v7 = a1[12];
  v8 = a1[13];
  if (v7 == v8)
  {
    return 0;
  }

  v12 = 0;
  if (__CFADD__(a4, a3))
  {
    v13 = -1;
  }

  else
  {
    v13 = a4 + a3;
  }

  do
  {
    v14 = *v7;
    if (*v7 < v13)
    {
      v15 = v7[1] + v14;
      if (a3 < v15)
      {
        if (v14 <= a3)
        {
          v16 = a3;
        }

        else
        {
          v16 = *v7;
        }

        if (v13 >= v15)
        {
          v17 = v7[1] + v14;
        }

        else
        {
          v17 = v13;
        }

        if (v17 != v16)
        {
          v12 += TMMapSymbolOwnerData::regions_in_real_address_range(a1, a2, v16, v17 - v16, a5);
        }
      }
    }

    v7 += 3;
  }

  while (v7 != v8);
  return v12;
}

unint64_t TMMapSymbolOwnerData::regions_in_real_address_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v9 = TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 96), a3, &v11);
  result = 0;
  if (v9)
  {
    return TMMapSymbolOwnerData::regions_in_archive_address_range(a1, a2, v11, a4, a5);
  }

  return result;
}

unint64_t TMMapSymbolOwnerData::regions_in_archive_address_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 88);
  v8 = *(v7 + 12);
  v12 = v7 + (32 * *(v7 + 8)) + 96;
  v11 = (v12 + 24 * v8);
  if (!find_lower_and_upper_bounds_of_range<TMMapRegionImpl<Pointer64>>(a3, a4, &v12, &v11))
  {
    return 0;
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * (&v11[-v12] >> 3);
  if (a5)
  {
    do
    {
      (*(a5 + 16))(a5, a2 | 4);
      v12 += 24;
    }

    while (v12 < v11);
  }

  return v9;
}

BOOL find_lower_and_upper_bounds_of_range<TMMapRegionImpl<Pointer64>>(unint64_t a1, uint64_t a2, void *a3, char **a4)
{
  v4 = *a3;
  v5 = *a4;
  if (*a4 == *a3)
  {
    v7 = *a3;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (&(*a4)[-*a3] >> 3);
    v7 = *a3;
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[24 * (v6 >> 1)];
      v11 = *v9;
      v10 = (v9 + 3);
      v6 += ~(v6 >> 1);
      if (a1 < v11)
      {
        v6 = v8;
      }

      else
      {
        v7 = v10;
      }
    }

    while (v6);
  }

  *a3 = v7;
  *a4 = v7;
  v12 = *a3;
  if (*a3 != v4)
  {
    v13 = v12 - 24;
    while (a1 - *v13 < *(v13 + 1))
    {
      *a3 = v13;
      v14 = v13 - 24;
      v16 = v13 == v4;
      v13 -= 24;
      if (v16)
      {
        v12 = v14 + 24;
        goto LABEL_16;
      }
    }

    v12 = v13 + 24;
  }

LABEL_16:
  v15 = a1 + a2 - 1;
  if (a1 == v15)
  {
    v16 = v12 == *a4;
  }

  else
  {
    v17 = v5 - v12;
    if (v17)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
      do
      {
        v19 = v18 >> 1;
        v20 = &v12[24 * (v18 >> 1)];
        v22 = *v20;
        v21 = (v20 + 3);
        v18 += ~(v18 >> 1);
        if (v15 < v22)
        {
          v18 = v19;
        }

        else
        {
          v12 = v21;
        }
      }

      while (v18);
    }

    *a4 = v12;
    v16 = *a3 == v12;
  }

  return !v16;
}

uint64_t TMMapSymbolOwnerData::symbols(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = v3[4];
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = v3 + 32 * v3[2] + (24 * v3[3]);
  v9 = v8 + 96;
  v10 = (v8 + 104);
  do
  {
    v11 = *v10;
    v10 += 6;
    v12 = v11 & 0x800;
    if (v11 == 2048 || v12 == 0)
    {
      if (a3)
      {
        (*(a3 + 16))(a3, a2 | 5, v9);
      }

      ++v7;
    }

    v9 += 24;
    --v4;
  }

  while (v4);
  return v7;
}

uint64_t TMMapSymbolOwnerData::symbols_for_name_in_archive(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5)
{
  __s2 = a3;
  v8 = *(a1 + 88);
  v9 = *(v8 + 4);
  v10 = (v8 + 32 * *(v8 + 2) + 24 * *(v8 + 3) + (24 * v9) + (36 * *(v8 + 5)) + (20 * *(v8 + 6)) + 96);
  v11 = (v10 + *(v8 + 22));
  v12 = (v11 + (4 * v9) + *(v8 + 20));
  v25[0] = v12;
  v25[1] = v8;
  v13 = std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByName &,unsigned int *,unsigned int *,char const*,std::__identity>(v10, v11, &__s2, v25);
  v15 = v13;
  v16 = v14;
  if (a5)
  {
    if (v14 != v13)
    {
      v17 = 0;
      v18 = 0;
      v19 = v13;
      do
      {
        v20 = v19 - *&v15[4 * v18];
        if (!TMMapArchive::is_pointer_within_strtab(*(a1 + 88), v12 + *(v20 + 3)) || strcmp(v12 + *(v20 + 3), __s2))
        {
          break;
        }

        if (a4)
        {
          (*(a4 + 16))(a4, a2 | 5, v20);
        }

        ++v18;
        ++v19;
        v17 += 4;
      }

      while (&v15[v17] != v16);
      return v18;
    }

    return 0;
  }

  if (v14 - v13 != 4)
  {
    return (v14 - v13) >> 2;
  }

  v21 = &v13[-*v13];
  if (!TMMapArchive::is_pointer_within_strtab(*(a1 + 88), v12 + *(v21 + 3)) || strcmp(v12 + *(v21 + 3), __s2))
  {
    return 0;
  }

  if (a4)
  {
    (*(a4 + 16))(a4, a2 | 5, v21);
  }

  return 1;
}

void sub_1D97B13BC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1D97B1360);
  }

  _Unwind_Resume(a1);
}

uint64_t TMMapSymbolOwnerData::symbols_for_name_with_deferred_demangling(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5)
{
  CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(a1 + 144, a1, a2);
  v10 = CSCppDeferredDemangler::mmapSymbolAddressesForDemangledName((a1 + 144), a3);
  if (v10 == v11)
  {
    return 0;
  }

  v14 = v10;
  v15 = v11;
  v12 = 0;
  v16 = v10;
  do
  {
    ++v12;
    v16 = *v16;
  }

  while (v16 != v11);
  if (a5)
  {
    if (v10 != v11)
    {
      do
      {
        if (a4)
        {
          (*(a4 + 16))(a4, a2 | 5, v14[4]);
        }

        v14 = *v14;
      }

      while (v14 != v15);
    }
  }

  else if (a4 && v12 == 1)
  {
    (*(a4 + 16))(a4, a2 | 5, v10[4]);
  }

  return v12;
}

uint64_t TMMapSymbolOwnerData::symbol_for_name(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  result = TMMapSymbolOwnerData::symbols_for_name_in_archive(a1, a2, a3, a4, 0);
  if (!result)
  {

    return TMMapSymbolOwnerData::symbols_for_name_with_deferred_demangling(a1, a2, a3, a4, 0);
  }

  return result;
}

uint64_t TMMapSymbolOwnerData::symbols_for_mangled_name_in_archive(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5)
{
  __s2 = a3;
  v8 = *(a1 + 88);
  v9 = *(v8 + 4);
  v10 = (v8 + 32 * *(v8 + 2) + 24 * *(v8 + 3) + (24 * v9) + (36 * *(v8 + 5)) + (20 * *(v8 + 6)) + *(v8 + 22) + 96);
  v11 = (v10 + (4 * v9));
  v12 = (v11 + *(v8 + 20));
  v24[0] = v12;
  v24[1] = v8;
  v13 = std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByMangledName &,unsigned int *,unsigned int *,char const*,std::__identity>(v10, v11, &__s2, v24);
  v15 = v13;
  if (a5)
  {
    if (v13 != v11)
    {
      v16 = 0;
      v17 = 0;
      v18 = v13;
      do
      {
        v19 = v18 - v15[v17];
        if (!TMMapArchive::is_pointer_within_strtab(*(a1 + 88), v12 + *(v19 + 4)) || strcmp(v12 + *(v19 + 4), __s2))
        {
          break;
        }

        if (a4)
        {
          (*(a4 + 16))(a4, a2 | 5, v19);
        }

        ++v17;
        ++v18;
        ++v16;
      }

      while (&v15[v16] != v11);
      return v17;
    }

    return 0;
  }

  if (v14 - v13 != 4)
  {
    return (v14 - v13) >> 2;
  }

  v20 = v13 - *v13;
  if (!TMMapArchive::is_pointer_within_strtab(*(a1 + 88), v12 + *(v20 + 4)) || strcmp(v12 + *(v20 + 4), __s2))
  {
    return 0;
  }

  if (a4)
  {
    (*(a4 + 16))(a4, a2 | 5, v20);
  }

  return 1;
}

void sub_1D97B1784(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1D97B1728);
  }

  _Unwind_Resume(a1);
}

uint64_t TMMapSymbolOwnerData::symbols_in_address_range(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1[11] + 16))
  {
    v5 = a3 == -1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v7 = a1[12];
  v8 = a1[13];
  if (v7 == v8)
  {
    return 0;
  }

  v12 = 0;
  if (__CFADD__(a4, a3))
  {
    v13 = -1;
  }

  else
  {
    v13 = a4 + a3;
  }

  do
  {
    v14 = *v7;
    if (*v7 < v13)
    {
      v15 = v7[1] + v14;
      if (a3 < v15)
      {
        if (v14 <= a3)
        {
          v16 = a3;
        }

        else
        {
          v16 = *v7;
        }

        if (v13 >= v15)
        {
          v17 = v7[1] + v14;
        }

        else
        {
          v17 = v13;
        }

        if (v17 != v16)
        {
          v12 += TMMapSymbolOwnerData::symbols_in_real_address_range(a1, a2, v16, v17 - v16, a5);
        }
      }
    }

    v7 += 3;
  }

  while (v7 != v8);
  return v12;
}

uint64_t TMMapSymbolOwnerData::symbols_in_real_address_range(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!*(*(a1 + 88) + 16))
  {
    return 0;
  }

  v11 = 0;
  if (!TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 96), a3, &v11) || v11 > 0xFFFFFFFE)
  {
    return 0;
  }

  v9 = 0xFFFFFFFF - v11;
  if (0xFFFFFFFF - v11 >= a4)
  {
    v9 = a4;
  }

  return TMMapSymbolOwnerData::symbols_in_archive_address_range(a1, a2, v11 | (v9 << 32), a5);
}

uint64_t TMMapSymbolOwnerData::symbols_in_archive_address_range(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 88);
  v5 = v4[4];
  if (!v5)
  {
    return 0;
  }

  v8 = v4 + 32 * v4[2] + (24 * v4[3]) + 96;
  v13 = (v8 + 24 * v5);
  v14 = v8;
  v9 = 0;
  if (find_lower_and_upper_bounds_of_range<CSCppMMapSymbol>(a3, &v14, &v13))
  {
    v10 = v14;
    do
    {
      if (*(v10 + 8) == 2048 || (*(v10 + 8) & 0x800) == 0)
      {
        if (a4)
        {
          (*(a4 + 16))(a4, a2 | 5);
          v10 = v14;
        }

        ++v9;
      }

      v10 += 24;
      v14 = v10;
    }

    while (v10 < v13);
  }

  return v9;
}

BOOL find_lower_and_upper_bounds_of_range<CSCppMMapSymbol>(uint64_t a1, void *a2, char **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a3 == *a2)
  {
    v6 = *a2;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (&(*a3)[-*a2] >> 3);
    v6 = *a2;
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[24 * (v5 >> 1)];
      v10 = *v8;
      v9 = (v8 + 6);
      v5 += ~(v5 >> 1);
      if (v10 > a1)
      {
        v5 = v7;
      }

      else
      {
        v6 = v9;
      }
    }

    while (v5);
  }

  *a2 = v6;
  *a3 = v6;
  v11 = *a2;
  if (*a2 != v3)
  {
    v12 = v11 - 24;
    while ((a1 - *v12) < *(v12 + 1))
    {
      *a2 = v12;
      v13 = v12 - 24;
      v15 = v12 == v3;
      v12 -= 24;
      if (v15)
      {
        v11 = v13 + 24;
        goto LABEL_16;
      }
    }

    v11 = v12 + 24;
  }

LABEL_16:
  v14 = a1 + HIDWORD(a1) - 1;
  if (v14 == a1)
  {
    v15 = v11 == *a3;
  }

  else
  {
    v16 = v4 - v11;
    if (v16)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
      do
      {
        v18 = v17 >> 1;
        v19 = &v11[24 * (v17 >> 1)];
        v21 = *v19;
        v20 = (v19 + 6);
        v17 += ~(v17 >> 1);
        if (v14 < v21)
        {
          v17 = v18;
        }

        else
        {
          v11 = v20;
        }
      }

      while (v17);
    }

    *a3 = v11;
    v15 = *a2 == v11;
  }

  return !v15;
}

uint64_t TMMapSymbolOwnerData::symbol_for_address(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, unint64_t a3)
{
  if (a3 == -1)
  {
    return 0;
  }

  else
  {
    return TMMapSymbolOwnerData::symbol_for_real_address(this, a2, a3);
  }
}

uint64_t TMMapSymbolOwnerData::symbol_for_real_address(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, unint64_t a3)
{
  *v6 = 0;
  if (TThreadsafeAddressRelocator<Pointer64>::relocate(this + 12, a3, v6) && *v6 <= 0xFFFFFFFEuLL)
  {
    return TMMapSymbolOwnerData::symbol_for_archive_address(this, a2, v6[0]);
  }

  else
  {
    return 0;
  }
}

uint64_t TMMapSymbolOwnerData::symbol_for_archive_address(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, unsigned int a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3802000000;
  v10 = __Block_byref_object_copy__15;
  v12 = 0;
  v13 = 0;
  v11 = __Block_byref_object_dispose__15;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN20TMMapSymbolOwnerData26symbol_for_archive_addressEP16CSCppSymbolOwnerj_block_invoke;
  v6[3] = &unk_1E8584A98;
  v6[4] = &v7;
  TMMapSymbolOwnerData::symbols_in_archive_address_range(this, a2, a3 | 0x100000000, v6);
  v3 = v8[5];
  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_1D97B1C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__15(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN20TMMapSymbolOwnerData26symbol_for_archive_addressEP16CSCppSymbolOwnerj_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*((a3 & 0xFFFFFFFFFFFFFFFCLL) + 9) & 2) == 0)
  {
    v3 = *(*(result + 32) + 8);
    *(v3 + 40) = a2;
    *(v3 + 48) = a3;
  }

  return result;
}

unint64_t TMMapSymbolOwnerData::child_for_archive_address(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 20);
  if (v3 != -1)
  {
    v4 = *(a1 + 88);
    v5 = v4[5];
    if (v3 < v5)
    {
      v6 = &v4[9 * v3 + 24 + 8 * v4[2] + 6 * v4[3] + 6 * v4[4]];
      v7 = ~v3 + v5;
      v8 = v6;
      while (v6 >= v4)
      {
        v9 = v7;
        if (v8 >= v4 + v4[1])
        {
          break;
        }

        if ((a3 - *v8) < *(v8 + 4))
        {
          return v8;
        }

        result = 0;
        if ((*(v8 + 11) & 0x40) == 0)
        {
          --v7;
          v8 += 36;
          if (v9)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return 0;
}

uint64_t TMMapSymbolOwnerData::for_each_child_symbol_with_parent_symbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 20);
  if (v3 == -1)
  {
    return 0;
  }

  v8 = *(a1 + 88);
  v9 = v8 + 32 * v8[2] + (24 * v8[3]);
  v11 = v8[4];
  v10 = v8[5];
  v12 = &v9[36 * v3 + 24 * v11];
  if (v3 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v3;
  }

  v14 = v13 - v3;
  v15 = v12 + 96;
  while (v14)
  {
    v16 = *(a1 + 88);
    if (v16 <= v15 && v15 < *(v16 + 4) + v16)
    {
      (*(a3 + 16))(a3, v15);
      LODWORD(v3) = v3 + 1;
      --v14;
      v17 = *(v15 + 11);
      v15 += 36;
      if ((v17 & 0x40) == 0)
      {
        continue;
      }
    }

    return (v3 - *(a2 + 20));
  }

  LODWORD(v3) = v13;
  return (v3 - *(a2 + 20));
}

uint64_t TMMapSymbolOwnerData::source_infos(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = v3[6];
  if (a3 && v4)
  {
    v7 = v3 + 36 * v3[5] + (32 * v3[2]) + (24 * v3[3]) + (24 * v3[4]) + 96;
    v8 = v3[6];
    do
    {
      (*(a3 + 16))(a3, a2 | 6, v7);
      v7 += 20;
      --v8;
    }

    while (v8);
  }

  return v4;
}

uint64_t TMMapSymbolOwnerData::source_infos_in_address_range(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1[11] + 24))
  {
    v5 = a3 == -1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v7 = a1[12];
  v8 = a1[13];
  if (v7 == v8)
  {
    return 0;
  }

  v12 = 0;
  if (__CFADD__(a4, a3))
  {
    v13 = -1;
  }

  else
  {
    v13 = a4 + a3;
  }

  do
  {
    v14 = *v7;
    if (*v7 < v13)
    {
      v15 = v7[1] + v14;
      if (a3 < v15)
      {
        if (v14 <= a3)
        {
          v16 = a3;
        }

        else
        {
          v16 = *v7;
        }

        if (v13 >= v15)
        {
          v17 = v7[1] + v14;
        }

        else
        {
          v17 = v13;
        }

        if (v17 != v16)
        {
          v12 += TMMapSymbolOwnerData::source_infos_in_real_address_range(a1, a2, v16, v17 - v16, a5);
        }
      }
    }

    v7 += 3;
  }

  while (v7 != v8);
  return v12;
}

unint64_t TMMapSymbolOwnerData::source_infos_in_real_address_range(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!*(*(a1 + 88) + 24))
  {
    return 0;
  }

  v11 = 0;
  if (!TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 96), a3, &v11) || v11 > 0xFFFFFFFE)
  {
    return 0;
  }

  v9 = 0xFFFFFFFF - v11;
  if (0xFFFFFFFF - v11 >= a4)
  {
    v9 = a4;
  }

  return TMMapSymbolOwnerData::source_infos_in_archive_address_range(a1, a2, v11 | (v9 << 32), a5);
}

unint64_t TMMapSymbolOwnerData::source_infos_in_archive_address_range(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 88);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v8 = v4 + vaddlvq_u32(vmulq_s32(*(v4 + 8), xmmword_1D97E09B0)) + 96;
  v11 = (v8 + 20 * v5);
  v12 = v8;
  if (!find_lower_and_upper_bounds_of_range<CSCppMMapSourceInfo>(a3, &v12, &v11))
  {
    return 0;
  }

  v9 = 0xCCCCCCCCCCCCCCCDLL * (&v11[-v12] >> 2);
  if (a4)
  {
    do
    {
      (*(a4 + 16))(a4, a2 | 6);
      v12 += 20;
    }

    while (v12 < v11);
  }

  return v9;
}

BOOL find_lower_and_upper_bounds_of_range<CSCppMMapSourceInfo>(uint64_t a1, void *a2, char **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a3 == *a2)
  {
    v6 = *a2;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * (&(*a3)[-*a2] >> 2);
    v6 = *a2;
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[20 * (v5 >> 1)];
      v10 = *v8;
      v9 = (v8 + 5);
      v5 += ~(v5 >> 1);
      if (v10 > a1)
      {
        v5 = v7;
      }

      else
      {
        v6 = v9;
      }
    }

    while (v5);
  }

  *a2 = v6;
  *a3 = v6;
  v11 = *a2;
  if (*a2 != v3)
  {
    v12 = v11 - 20;
    while ((a1 - *v12) < *(v12 + 1))
    {
      *a2 = v12;
      v13 = v12 - 20;
      v15 = v12 == v3;
      v12 -= 20;
      if (v15)
      {
        v11 = v13 + 20;
        goto LABEL_16;
      }
    }

    v11 = v12 + 20;
  }

LABEL_16:
  v14 = a1 + HIDWORD(a1) - 1;
  if (v14 == a1)
  {
    v15 = v11 == *a3;
  }

  else
  {
    v16 = v4 - v11;
    if (v16)
    {
      v17 = 0xCCCCCCCCCCCCCCCDLL * (v16 >> 2);
      do
      {
        v18 = v17 >> 1;
        v19 = &v11[20 * (v17 >> 1)];
        v21 = *v19;
        v20 = (v19 + 5);
        v17 += ~(v17 >> 1);
        if (v14 < v21)
        {
          v17 = v18;
        }

        else
        {
          v11 = v20;
        }
      }

      while (v17);
    }

    *a3 = v11;
    v15 = *a2 == v11;
  }

  return !v15;
}

unint64_t TMMapSymbolOwnerData::source_info_for_address(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, unint64_t a3)
{
  if (a3 == -1)
  {
    return 0;
  }

  else
  {
    return TMMapSymbolOwnerData::source_info_for_real_address(this, a2, a3);
  }
}

unint64_t TMMapSymbolOwnerData::source_info_for_real_address(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, unint64_t a3)
{
  *v7 = 0;
  v5 = TThreadsafeAddressRelocator<Pointer64>::relocate(this + 12, a3, v7);
  result = 0;
  if (v5)
  {
    if (*v7 <= 0xFFFFFFFEuLL)
    {
      return TMMapSymbolOwnerData::source_info_for_archive_address(this, a2, v7[0]);
    }
  }

  return result;
}

unint64_t TMMapSymbolOwnerData::source_info_for_archive_address(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, unsigned int a3)
{
  if (!*(*(this + 11) + 24))
  {
    return 0;
  }

  v6 = TMMapSymbolOwnerData::symbol_for_archive_address(this, a2, a3);
  v8 = v7;
  if (!CSIsNull(v6, v7) && TMMapSymbolOwnerData::child_for_archive_address(this, v8 & 0xFFFFFFFFFFFFFFFCLL, a3))
  {
    return a2 | 5;
  }

  if (TMMapSymbolOwnerData::do_source_info_lookup(this, a3))
  {
    return a2 | 6;
  }

  return 0;
}

_DWORD *TMMapSymbolOwnerData::do_source_info_lookup(TMMapSymbolOwnerData *this, unsigned int a2)
{
  v2 = *(this + 11);
  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = v2 + vaddlvq_u32(vmulq_s32(*(v2 + 8), xmmword_1D97E09B0)) + 96;
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v5 >> 1;
    v8 = (v6 + 20 * (v5 >> 1));
    v10 = *v8;
    v9 = v8 + 5;
    v5 += ~(v5 >> 1);
    if (v10 > a2)
    {
      v5 = v7;
    }

    else
    {
      v6 = v9;
    }
  }

  while (v5);
  v11 = v6 == v4;
  v12 = -20;
  if (v11)
  {
    v12 = 0;
  }

  v13 = (v6 + v12);
  if (a2 - *v13 >= v13[1])
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t TMMapSymbolOwnerData::for_each_stack_frame_at_address(TMMapSymbolOwnerData *a1, CSCppSymbolOwner *a2, unint64_t a3, uint64_t a4)
{
  if (a3 == -1)
  {
    return 0;
  }

  else
  {
    return TMMapSymbolOwnerData::for_each_stack_frame_at_real_address(a1, a2, a3, a4);
  }
}

uint64_t TMMapSymbolOwnerData::for_each_stack_frame_at_real_address(TMMapSymbolOwnerData *a1, CSCppSymbolOwner *a2, unint64_t a3, uint64_t a4)
{
  v8 = 0;
  if (TThreadsafeAddressRelocator<Pointer64>::relocate(a1 + 12, a3, &v8) && v8 <= 0xFFFFFFFE)
  {
    return TMMapSymbolOwnerData::for_each_stack_frame_at_archive_address(a1, a2, v8, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t TMMapSymbolOwnerData::for_each_stack_frame_at_archive_address(TMMapSymbolOwnerData *a1, CSCppSymbolOwner *a2, unsigned int a3, uint64_t a4)
{
  v8 = TMMapSymbolOwnerData::symbol_for_archive_address(a1, a2, a3);
  v10 = v9;
  if (CSIsNull(v8, v9))
  {
    return 0;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  if ((v10 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    return 0;
  }

  v12 = TMMapSymbolOwnerData::do_source_info_lookup(a1, a3);
  v13 = TMMapSymbolOwnerData::child_for_archive_address(a1, v10 & 0xFFFFFFFFFFFFFFFCLL, a3);
  if (v13)
  {
    v14 = v13;
    v15 = 1;
    do
    {
      if ((*(v14 + 8) & 0x80000000) != 0)
      {
        (*(a4 + 16))(a4, a2 | 5, v11, a2 | 5, v14);
      }

      else
      {
        (*(a4 + 16))(a4, a2 | 5, v11, 0, 0);
      }

      v11 = v14;
      ++v15;
      v14 = TMMapSymbolOwnerData::child_for_archive_address(a1, v14, a3);
    }

    while (v14);
  }

  else
  {
    v15 = 1;
  }

  if (v12)
  {
    v16 = a2 | 6;
  }

  else
  {
    v16 = 0;
  }

  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  (*(a4 + 16))(a4, a2 | 5, v11, v16, v17);
  return v15;
}

uint64_t TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v4 = *(a4 & 0xFFFFFFFFFFFFFFFCLL);
  if (TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 120), v4, v7))
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Symbol archive address 0x%x could not be relocated to real address\n", buf, 8u);
  }

  fprintf(*MEMORY[0x1E69E9848], "Symbol archive address 0x%x could not be relocated to real address\n", v4);
  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  std::__function::__value_func<void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::~__value_func[abi:ne200100](v11);
  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1D97B282C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  std::__function::__value_func<void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::~__value_func[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t TMMapSymbolOwnerData::for_each_deduplicated_variant_for_symbol(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1[11] + 16))
  {
    return 0;
  }

  Range = CSSymbolGetRange(a3, a4);
  if (Range == -1)
  {
    return 0;
  }

  v10 = a1[12];
  v11 = a1[13];
  if (v10 == v11)
  {
    return 0;
  }

  v12 = Range;
  v13 = 0;
  if (__CFADD__(v9, Range))
  {
    v14 = -1;
  }

  else
  {
    v14 = v9 + Range;
  }

  do
  {
    v15 = *v10;
    if (*v10 < v14)
    {
      v16 = v10[1] + v15;
      if (v12 < v16)
      {
        if (v15 <= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = *v10;
        }

        if (v14 >= v16)
        {
          v18 = v10[1] + v15;
        }

        else
        {
          v18 = v14;
        }

        if (v18 != v17)
        {
          v13 += TMMapSymbolOwnerData::deduplicated_variants_in_real_address_range(a1, a2, v17, v18 - v17, a5);
        }
      }
    }

    v10 += 3;
  }

  while (v10 != v11);
  return v13;
}

uint64_t TMMapSymbolOwnerData::deduplicated_variants_in_real_address_range(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!*(*(a1 + 88) + 16))
  {
    return 0;
  }

  v11 = 0;
  if (!TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 96), a3, &v11) || v11 > 0xFFFFFFFE)
  {
    return 0;
  }

  v9 = 0xFFFFFFFF - v11;
  if (0xFFFFFFFF - v11 >= a4)
  {
    v9 = a4;
  }

  return TMMapSymbolOwnerData::deduplicated_variants_in_archive_address_range(a1, a2, v11 | (v9 << 32), a5);
}

uint64_t TMMapSymbolOwnerData::deduplicated_variants_in_archive_address_range(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 88);
  v5 = v4[4];
  if (!v5)
  {
    return 0;
  }

  v8 = v4 + 32 * v4[2] + (24 * v4[3]) + 96;
  v13 = (v8 + 24 * v5);
  v14 = v8;
  v9 = 0;
  if (find_lower_and_upper_bounds_of_range<CSCppMMapSymbol>(a3, &v14, &v13))
  {
    v10 = v14;
    do
    {
      if (*(v10 + 8) != 2048 && (*(v10 + 8) & 0x800) != 0)
      {
        if (a4)
        {
          (*(a4 + 16))(a4, a2 | 5);
          v10 = v14;
        }

        ++v9;
      }

      v10 += 24;
      v14 = v10;
    }

    while (v10 < v13);
  }

  return v9;
}

unint64_t TMMapSymbolOwnerData::raw_bytes_for_range(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1[11] + 76) == 0;
  v5 = atomic_load((*(a2 + 8) + 40));
  v6 = (v5 >> 8) & 1;
  if (!v4)
  {
    LOBYTE(v6) = 0;
  }

  if (v6)
  {
    return 0;
  }

  if (a3 == -1)
  {
    return 0;
  }

  v7 = a1[12];
  v8 = a1[13];
  if (v7 == v8)
  {
    return 0;
  }

  if (__CFADD__(a4, a3))
  {
    v9 = -1;
  }

  else
  {
    v9 = a4 + a3;
  }

  while (1)
  {
    v10 = *v7;
    if (*v7 < v9)
    {
      v11 = v7[1] + v10;
      if (a3 < v11)
      {
        if (v10 <= a3)
        {
          v10 = a3;
        }

        if (v9 < v11)
        {
          v11 = v9;
        }

        if (v11 != v10)
        {
          break;
        }
      }
    }

    v7 += 3;
    if (v7 == v8)
    {
      return 0;
    }
  }

  return TMMapSymbolOwnerData::raw_bytes_for_real_range(a1, a2, v10, v11 - v10);
}

unint64_t TMMapSymbolOwnerData::raw_bytes_for_real_range(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v11 = 0;
  if (!TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 96), a3, &v11) || v11 > 0xFFFFFFFE)
  {
    return TMMapSymbolOwnerData::_raw_bytes_for_real_range_on_demand_fault(a1, a2, a3, a4);
  }

  v9 = 0xFFFFFFFF - v11;
  if (0xFFFFFFFF - v11 >= a4)
  {
    v9 = a4;
  }

  result = TMMapSymbolOwnerData::raw_bytes_for_archive_range(a1, v8, v11 | (v9 << 32));
  if (!result)
  {
    return TMMapSymbolOwnerData::_raw_bytes_for_real_range_on_demand_fault(a1, a2, a3, a4);
  }

  return result;
}

unint64_t TMMapSymbolOwnerData::raw_bytes_for_archive_range(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 76);
  if (a3 >= v4 && HIDWORD(a3) + a3 <= (HIDWORD(v4) + v4) && (v5 = *(v3 + 16), v6.i64[0] = v5, v6.i64[1] = HIDWORD(v5), v7 = v6, v7.i32[1] = v6.i32[0], v7.i32[3] = *(v3 + 24), (v8 = v3 + (24 * *(v3 + 12)) + *(v3 + 88) + vaddlvq_u32(vmulq_s32(v7, xmmword_1D97E0550)) + (32 * *(v3 + 8)) + 96) != 0))
  {
    return v8 + (a3 - v4);
  }

  else
  {
    return 0;
  }
}

unint64_t TMMapSymbolOwnerData::_raw_bytes_for_real_range_on_demand_fault(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 16));
  if (!*(a1 + 408))
  {
    operator new();
  }

  std::mutex::unlock((a1 + 16));
  section_descriptor_for_range = CSCppTextSectionDescriptorMap<Pointer64>::find_section_descriptor_for_range(*(a1 + 408), a3, a4);
  if (!section_descriptor_for_range)
  {
    v9 = *(a1 + 408);
    CSCppTextSectionDescriptorMap<Pointer64>::create_section_descriptor_for_range();
  }

  CSCppTextSectionDataDescriptor::get_text_section_for_range<Pointer64>(section_descriptor_for_range, a3, a4, a2, v12);
  if (a4 + a3 <= v12[0] + v12[1])
  {
    v10 = v12[2] + a3 - v12[0];
  }

  else
  {
    v10 = 0;
  }

  if (a3 >= v12[0])
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

TMMapSymbolOwnerData *TMMapSymbolOwnerData::_augment_data_to_include_text_section(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2)
{
  v3 = (this + 12);
  if ((atomic_load_explicit(this + 3, memory_order_acquire) & 0x1000) == 0)
  {
    std::mutex::lock((this + 16));
    if ((atomic_load_explicit(v3, memory_order_acquire) & 0x1000) == 0)
    {
      v6 = CSCppMMapArchiveCache::augment_mmap_archive_to_include_text_section(*(this + 11), a2, v5);
      if (v6)
      {
        if (v6 != *(this + 11))
        {
          operator new();
        }
      }
    }

    std::mutex::unlock((this + 16));
  }

  return this;
}

void sub_1D97B2EA4(_Unwind_Exception *a1)
{
  MEMORY[0x1DA736760](v2, 0x10A1C40F2B1C752);
  std::mutex::unlock((v1 + 16));
  _Unwind_Resume(a1);
}

const char *TMMapSymbolOwnerData::demangledNameForSymbol(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 16);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v5 = v4;
  v5.i32[1] = v4.i32[0];
  v5.i32[3] = *(v2 + 24);
  result = CSCppDeferredDemangler::demangledNameForSymbol(a1 + 144, a2, v2 + *(v2 + 80) + vaddlvq_u32(vmulq_s32(v5, xmmword_1D97E0550)) + (32 * *(v2 + 8)) + (24 * *(v2 + 12)) + *(v2 + 88) + 96);
  if (!v7)
  {
    return 0;
  }

  return result;
}

void TMMapSymbolOwnerData::~TMMapSymbolOwnerData(TMMapSymbolOwnerData *this, TMMapArchive *a2)
{
  *this = &unk_1F5508740;
  v3 = *(this + 51);
  if (v3)
  {
    v4 = CSCppTextSectionDescriptorMap<Pointer64>::~CSCppTextSectionDescriptorMap(v3);
    MEMORY[0x1DA736760](v4, 0x1020C40791C62A7);
  }

  CSCppMMapArchiveCache::release_archive(*(this + 11), a2);
  CSCppDeferredDemangler::~CSCppDeferredDemangler((this + 144));
  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  *this = &unk_1F5505060;
  std::mutex::~mutex((this + 16));
}

{
  TMMapSymbolOwnerData::~TMMapSymbolOwnerData(this, a2);

  JUMPOUT(0x1DA736760);
}

unint64_t TMMapSymbolOwnerData::dsym_path(TMMapSymbolOwnerData *this)
{
  v1 = *(this + 11);
  v2 = *(v1 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v5 = v4;
  v5.i32[1] = v4.i32[0];
  v5.i32[3] = *(v1 + 24);
  return v1 + *(v1 + 88) + *(v1 + 80) + vaddlvq_u32(vmulq_s32(v5, xmmword_1D97E0550)) + (32 * *(v1 + 8)) + (24 * *(v1 + 12)) + v2 + 96;
}

unint64_t TMMapSymbolOwnerData::version(TMMapSymbolOwnerData *this)
{
  v1 = *(this + 11);
  v2 = *(v1 + 44);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v5 = v4;
  v5.i32[1] = v4.i32[0];
  v5.i32[3] = *(v1 + 24);
  return v1 + *(v1 + 88) + *(v1 + 80) + vaddlvq_u32(vmulq_s32(v5, xmmword_1D97E0550)) + (32 * *(v1 + 8)) + (24 * *(v1 + 12)) + v2 + 96;
}

char *TMMapSymbolOwnerData::optional_symbolicator_flags(TMMapSymbolOwnerData *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TMMapArchive::optional_data(result);
    if (result)
    {
      if (*(result + 1))
      {
        if (*(result + 2) >= 0x14u)
        {
          result += 16;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::vector<MMapSegment>::__init_with_size[abi:ne200100]<MMapSegment const*,MMapSegment const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MMapSegment>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D97B320C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MMapSegment>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::allocator<MMapSegment>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<MMapSegment>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_DWORD *std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByName &,unsigned int *,unsigned int *,char const*,std::__identity>(_DWORD *a1, _DWORD *a2, const char **a3, TMMapArchive **this)
{
  v4 = a2;
  if (a2 != a1)
  {
    v7 = a1;
    v8 = a2 - a1;
    while (1)
    {
      v9 = v8 >> 1;
      v10 = &v7[v8 >> 1];
      v11 = *a3;
      v12 = *this;
      v13 = *(v10 - *v10 + 12);
      SearchSymbolByName::verify_string_pointer(this, *this + v13);
      if (strcmp(v12 + v13, v11) < 0)
      {
        v7 = v10 + 1;
        v9 = v8 + ~v9;
      }

      else
      {
        v14 = *a3;
        v15 = *this;
        v16 = *(v10 - *v10 + 12);
        SearchSymbolByName::verify_string_pointer(this, *this + v16);
        if ((strcmp(v14, v15 + v16) & 0x80000000) == 0)
        {
          v7 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,char const*,std::__identity,SearchSymbolByName>(v7, a3, v9, this);
          std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByName &,unsigned int *,unsigned int *,char const*,std::__identity &>(v10 + 1, v4, a3, this);
          return v7;
        }

        v4 = v10;
      }

      v8 = v9;
      if (!v9)
      {
        return v7;
      }
    }
  }

  return a2;
}

_DWORD *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByName &,unsigned int *,unsigned int *,char const*,std::__identity &>(_DWORD *a1, _DWORD *a2, const char **a3, TMMapArchive **this)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = a2 - a1;
    do
    {
      v8 = *a3;
      v9 = &v4[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = *this;
      v13 = *(&v4[(v7 >> 1) + 3] - v11);
      SearchSymbolByName::verify_string_pointer(this, *this + v13);
      if (strcmp(v8, v12 + v13) < 0)
      {
        v7 >>= 1;
      }

      else
      {
        v4 = v10;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

BOOL SearchSymbolByName::verify_string_pointer(TMMapArchive **this, char *a2)
{
  result = TMMapArchive::is_pointer_within_strtab(this[1], a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1DA7364C0](exception, "Encountered symbol with bad name reference during binary search");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

_DWORD *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,char const*,std::__identity,SearchSymbolByName>(_DWORD *a1, const char **a2, unint64_t a3, TMMapArchive **this)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = *a2;
      v9 = &a1[v6 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = *this;
      v13 = *(&a1[(v6 >> 1) + 3] - v11);
      SearchSymbolByName::verify_string_pointer(this, *this + v13);
      v14 = strcmp(v12 + v13, v8);
      if (v14 >= 0)
      {
        v6 >>= 1;
      }

      else
      {
        v6 += ~(v6 >> 1);
      }

      if (v14 < 0)
      {
        a1 = v10;
      }
    }

    while (v6);
  }

  return a1;
}

_DWORD *std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByMangledName &,unsigned int *,unsigned int *,char const*,std::__identity>(_DWORD *a1, _DWORD *a2, const char **a3, TMMapArchive **this)
{
  v4 = a2;
  if (a2 != a1)
  {
    v7 = a1;
    v8 = a2 - a1;
    while (1)
    {
      v9 = v8 >> 1;
      v10 = &v7[v8 >> 1];
      v11 = *a3;
      v12 = *this;
      v13 = *(v10 - *v10 + 16);
      SearchSymbolByMangledName::verify_string_pointer(this, *this + v13);
      if (strcmp(v12 + v13, v11) < 0)
      {
        v7 = v10 + 1;
        v9 = v8 + ~v9;
      }

      else
      {
        v14 = *a3;
        v15 = *this;
        v16 = *(v10 - *v10 + 16);
        SearchSymbolByMangledName::verify_string_pointer(this, *this + v16);
        if ((strcmp(v14, v15 + v16) & 0x80000000) == 0)
        {
          v7 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,char const*,std::__identity,SearchSymbolByMangledName>(v7, a3, v9, this);
          std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByMangledName &,unsigned int *,unsigned int *,char const*,std::__identity &>(v10 + 1, v4, a3, this);
          return v7;
        }

        v4 = v10;
      }

      v8 = v9;
      if (!v9)
      {
        return v7;
      }
    }
  }

  return a2;
}

_DWORD *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByMangledName &,unsigned int *,unsigned int *,char const*,std::__identity &>(_DWORD *a1, _DWORD *a2, const char **a3, TMMapArchive **this)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = a2 - a1;
    do
    {
      v8 = *a3;
      v9 = &v4[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = *this;
      v13 = *(&v4[(v7 >> 1) + 4] - v11);
      SearchSymbolByMangledName::verify_string_pointer(this, *this + v13);
      if (strcmp(v8, v12 + v13) < 0)
      {
        v7 >>= 1;
      }

      else
      {
        v4 = v10;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

BOOL SearchSymbolByMangledName::verify_string_pointer(TMMapArchive **this, char *a2)
{
  result = TMMapArchive::is_pointer_within_strtab(this[1], a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1DA7364C0](exception, "Encountered symbol with bad name reference during binary search");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

_DWORD *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,char const*,std::__identity,SearchSymbolByMangledName>(_DWORD *a1, const char **a2, unint64_t a3, TMMapArchive **this)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = *a2;
      v9 = &a1[v6 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = *this;
      v13 = *(&a1[(v6 >> 1) + 4] - v11);
      SearchSymbolByMangledName::verify_string_pointer(this, *this + v13);
      v14 = strcmp(v12 + v13, v8);
      if (v14 >= 0)
      {
        v6 >>= 1;
      }

      else
      {
        v6 += ~(v6 >> 1);
      }

      if (v14 < 0)
      {
        a1 = v10;
      }
    }

    while (v6);
  }

  return a1;
}

uint64_t std::vector<MMapSegment>::__init_with_size[abi:ne200100]<std::__wrap_iter<MMapSegment const*>,std::__wrap_iter<MMapSegment const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MMapSegment>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D97B390C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,false>(char *result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
  v49 = *MEMORY[0x1E69E9840];
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        goto LABEL_56;
      }

      if (v12 == 2)
      {
        result = strncmp(a2 - 16, (v9 + 16), 0x10uLL);
        v24 = *(a2 - 4);
        v23 = a2 - 2;
        v25 = v24 < *v9;
        if (result)
        {
          v25 = result < 0;
        }

        if (v25)
        {
          v44 = *v9;
          v47 = *(v9 + 16);
          v26 = v23[1];
          *v9 = *v23;
          *(v9 + 16) = v26;
          *v23 = v44;
          v23[1] = v47;
        }

        goto LABEL_56;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      v21 = *MEMORY[0x1E69E9840];

      return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(v9, (v9 + 32), a2 - 32);
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      v22 = *MEMORY[0x1E69E9840];

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(v9, (v9 + 32), (v9 + 64), (v9 + 96), a2 - 32);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {
        v39 = *MEMORY[0x1E69E9840];

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(v9, a2);
      }

      else
      {
        v42 = *MEMORY[0x1E69E9840];

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 == a2)
      {
        goto LABEL_56;
      }

      v40 = *MEMORY[0x1E69E9840];

      return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,MMapSegment*>(v9, a2, a2, a3);
    }

    v13 = v12 >> 1;
    v14 = v9 + 32 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>((v9 + 32 * (v12 >> 1)), v9, a2 - 32);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(v9, (v9 + 32 * (v12 >> 1)), a2 - 32);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>((v9 + 32), (v14 - 32), a2 - 64);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>((v9 + 64), (v9 + 32 + 32 * v13), a2 - 96);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>((v14 - 32), v14, (v9 + 32 + 32 * v13));
      v43 = *v9;
      v46 = *(v9 + 16);
      v15 = *(v14 + 16);
      *v9 = *v14;
      *(v9 + 16) = v15;
      *v14 = v43;
      *(v14 + 16) = v46;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v16 = strncmp((v9 - 16), (v9 + 16), 0x10uLL);
    v17 = *(v9 - 32) < *v9;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MMapSegment *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(v9, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MMapSegment *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(v9, v18);
    v9 = (v18 + 2);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(v18 + 2, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        goto LABEL_56;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,false>(v8, v18, a3, -v11, a5 & 1);
      v9 = (v18 + 2);
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(v9, (v9 + 32), (v9 + 64));
  result = strncmp(a2 - 16, (v9 + 80), 0x10uLL);
  v28 = *(a2 - 4);
  v27 = a2 - 2;
  v29 = v28 < *(v9 + 64);
  if (result)
  {
    v29 = result < 0;
  }

  if (v29)
  {
    v31 = *(v9 + 64);
    v30 = *(v9 + 80);
    v32 = v27[1];
    *(v9 + 64) = *v27;
    *(v9 + 80) = v32;
    *v27 = v31;
    v27[1] = v30;
    result = strncmp((v9 + 80), (v9 + 48), 0x10uLL);
    v33 = *(v9 + 64) < *(v9 + 32);
    if (result)
    {
      v33 = result < 0;
    }

    if (v33)
    {
      v35 = *(v9 + 32);
      v34 = *(v9 + 48);
      v36 = *(v9 + 80);
      *(v9 + 32) = *(v9 + 64);
      *(v9 + 48) = v36;
      *(v9 + 64) = v35;
      *(v9 + 80) = v34;
      result = strncmp((v9 + 48), (v9 + 16), 0x10uLL);
      v37 = *(v9 + 32) < *v9;
      if (result)
      {
        v37 = result < 0;
      }

      if (v37)
      {
        v45 = *v9;
        v48 = *(v9 + 16);
        v38 = *(v9 + 48);
        *v9 = *(v9 + 32);
        *(v9 + 16) = v38;
        *(v9 + 32) = v45;
        *(v9 + 48) = v48;
      }
    }
  }

LABEL_56:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(char *a1, char *a2, char *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = strncmp(a2 + 16, a1 + 16, 0x10uLL);
  v7 = *a2;
  if (v6)
  {
    v8 = v6 < 0;
  }

  else
  {
    v8 = *a2 < *a1;
  }

  v9 = strncmp(a3 + 16, a2 + 16, 0x10uLL);
  v10 = *a3 < v7;
  if (v9)
  {
    v10 = v9 < 0;
  }

  if (v8)
  {
    if (v10)
    {
      v12 = *a1;
      v11 = *(a1 + 1);
      v13 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v13;
    }

    else
    {
      v23 = *a1;
      v22 = *(a1 + 1);
      v24 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v24;
      *a2 = v23;
      *(a2 + 1) = v22;
      v25 = strncmp(a3 + 16, a2 + 16, 0x10uLL);
      v26 = *a3 < *a2;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (!v26)
      {
        goto LABEL_19;
      }

      v12 = *a2;
      v11 = *(a2 + 1);
      v27 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v27;
    }

    *a3 = v12;
    *(a3 + 1) = v11;
  }

  else
  {
    if (!v10)
    {
      result = 0;
      goto LABEL_21;
    }

    v15 = *a2;
    v14 = *(a2 + 1);
    v16 = *(a3 + 1);
    *a2 = *a3;
    *(a2 + 1) = v16;
    *a3 = v15;
    *(a3 + 1) = v14;
    v17 = strncmp(a2 + 16, a1 + 16, 0x10uLL);
    v18 = *a2 < *a1;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (v18)
    {
      v20 = *a1;
      v19 = *(a1 + 1);
      v21 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v21;
      *a2 = v20;
      *(a2 + 1) = v19;
    }
  }

LABEL_19:
  result = 1;
LABEL_21:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(__int128 *a1, __int128 *a2, __int128 *a3, char *a4, char *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(a1, a2, a3);
  v10 = strncmp(a4 + 16, a3 + 16, 0x10uLL);
  v11 = *a4 < *a3;
  if (v10)
  {
    v11 = v10 < 0;
  }

  if (v11)
  {
    v13 = *a3;
    v12 = a3[1];
    v14 = *(a4 + 1);
    *a3 = *a4;
    a3[1] = v14;
    *a4 = v13;
    *(a4 + 1) = v12;
    v15 = strncmp(a3 + 16, a2 + 16, 0x10uLL);
    v16 = *a3 < *a2;
    if (v15)
    {
      v16 = v15 < 0;
    }

    if (v16)
    {
      v18 = *a2;
      v17 = a2[1];
      v19 = a3[1];
      *a2 = *a3;
      a2[1] = v19;
      *a3 = v18;
      a3[1] = v17;
      v20 = strncmp(a2 + 16, a1 + 16, 0x10uLL);
      v21 = *a2 < *a1;
      if (v20)
      {
        v21 = v20 < 0;
      }

      if (v21)
      {
        v23 = *a1;
        v22 = a1[1];
        v24 = a2[1];
        *a1 = *a2;
        a1[1] = v24;
        *a2 = v23;
        a2[1] = v22;
      }
    }
  }

  result = strncmp(a5 + 16, a4 + 16, 0x10uLL);
  v26 = *a5 < *a4;
  if (result)
  {
    v26 = result < 0;
  }

  if (v26)
  {
    v28 = *a4;
    v27 = *(a4 + 1);
    v29 = *(a5 + 1);
    *a4 = *a5;
    *(a4 + 1) = v29;
    *a5 = v28;
    *(a5 + 1) = v27;
    result = strncmp(a4 + 16, a3 + 16, 0x10uLL);
    v30 = *a4 < *a3;
    if (result)
    {
      v30 = result < 0;
    }

    if (v30)
    {
      v32 = *a3;
      v31 = a3[1];
      v33 = *(a4 + 1);
      *a3 = *a4;
      a3[1] = v33;
      *a4 = v32;
      *(a4 + 1) = v31;
      result = strncmp(a3 + 16, a2 + 16, 0x10uLL);
      v34 = *a3 < *a2;
      if (result)
      {
        v34 = result < 0;
      }

      if (v34)
      {
        v36 = *a2;
        v35 = a2[1];
        v37 = a3[1];
        *a2 = *a3;
        a2[1] = v37;
        *a3 = v36;
        a3[1] = v35;
        result = strncmp(a2 + 16, a1 + 16, 0x10uLL);
        v38 = *a2 < *a1;
        if (result)
        {
          v38 = result < 0;
        }

        if (v38)
        {
          v40 = *a1;
          v39 = a1[1];
          v41 = a2[1];
          *a1 = *a2;
          a1[1] = v41;
          *a2 = v40;
          a2[1] = v39;
        }
      }
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return result;
}

_OWORD *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(_OWORD *result, _OWORD *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = result;
    v4 = result + 2;
    if (result + 2 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        result = strncmp(v7 + 48, v7 + 16, 0x10uLL);
        v8 = *(v7 + 4) < *v7;
        if (result)
        {
          v8 = result < 0;
        }

        if (v8)
        {
          v16 = *v6;
          v17 = v6[1];
          v9 = v5;
          while (1)
          {
            v10 = v3 + v9;
            v11 = *(v3 + v9 + 16);
            *(v10 + 2) = *(v3 + v9);
            *(v10 + 3) = v11;
            if (!v9)
            {
              break;
            }

            result = strncmp(&v17, v10 - 16, 0x10uLL);
            v12 = v16 < *(v10 - 4);
            if (result)
            {
              v12 = result < 0;
            }

            v9 -= 32;
            if (!v12)
            {
              v13 = (v3 + v9 + 32);
              goto LABEL_14;
            }
          }

          v13 = v3;
LABEL_14:
          v14 = v17;
          *v13 = v16;
          v13[1] = v14;
        }

        v4 = v6 + 2;
        v5 += 32;
      }

      while (v6 + 2 != a2);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

_OWORD *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(_OWORD *result, _OWORD *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = result;
    for (i = result + 2; v3 + 2 != a2; i = v3 + 2)
    {
      v5 = v3;
      v3 = i;
      result = strncmp(v5 + 48, v5 + 16, 0x10uLL);
      v6 = *(v5 + 4) < *v5;
      if (result)
      {
        v6 = result < 0;
      }

      if (v6)
      {
        v13 = *v3;
        v14 = v3[1];
        v7 = v3;
        do
        {
          v9 = *(v7 - 1);
          *v7 = *(v7 - 2);
          *(v7 + 1) = v9;
          result = strncmp(&v14, v7 - 48, 0x10uLL);
          v10 = v13 < *(v7 - 8);
          if (result)
          {
            v10 = result < 0;
          }

          v8 = v7 - 32;
          v7 -= 32;
        }

        while (v10);
        v11 = v14;
        *v8 = v13;
        *(v8 + 1) = v11;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

char *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MMapSegment *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(char *a1, _OWORD *a2)
{
  v2 = a2;
  v34 = *MEMORY[0x1E69E9840];
  v30 = *a1;
  v31 = *(a1 + 1);
  v4 = (a2 - 1);
  v5 = strncmp(&v31, a2 - 16, 0x10uLL);
  v6 = v30 < *(v2 - 4);
  if (v5)
  {
    v6 = v5 < 0;
  }

  if (v6)
  {
    v7 = a1 + 48;
    do
    {
      v8 = strncmp(&v31, v7, 0x10uLL);
      v9 = v30 < *(v7 - 2);
      if (v8)
      {
        v9 = v8 < 0;
      }

      v7 += 32;
    }

    while (!v9);
    v10 = (v7 - 48);
  }

  else
  {
    v11 = a1 + 32;
    do
    {
      v10 = v11;
      if (v11 >= v2)
      {
        break;
      }

      v12 = strncmp(&v31, v11 + 16, 0x10uLL);
      v11 = v10 + 32;
      v13 = v30 < *v10;
      if (v12)
      {
        v13 = v12 < 0;
      }
    }

    while (!v13);
  }

  if (v10 < v2)
  {
    do
    {
      v14 = strncmp(&v31, v4, 0x10uLL);
      v15 = v30 < *(v4 - 2);
      if (v14)
      {
        v15 = v14 < 0;
      }

      v4 -= 32;
    }

    while (v15);
    v2 = v4 + 16;
  }

  while (v10 < v2)
  {
    v16 = *(v10 + 1);
    v32 = *v10;
    v33 = v16;
    v17 = v2[1];
    *v10 = *v2;
    *(v10 + 1) = v17;
    v18 = v10 + 48;
    v19 = v33;
    *v2 = v32;
    v2[1] = v19;
    do
    {
      v20 = strncmp(&v31, v18, 0x10uLL);
      v21 = v30 < *(v18 - 2);
      if (v20)
      {
        v21 = v20 < 0;
      }

      v18 += 32;
    }

    while (!v21);
    v10 = (v18 - 48);
    v22 = (v2 - 1);
    do
    {
      v23 = strncmp(&v31, v22, 0x10uLL);
      v24 = v30 < *(v22 - 2);
      if (v23)
      {
        v24 = v23 < 0;
      }

      v22 -= 32;
    }

    while (v24);
    v2 = v22 + 16;
  }

  v25 = v10 - 32;
  if (v10 - 32 != a1)
  {
    v26 = *(v10 - 1);
    *a1 = *v25;
    *(a1 + 1) = v26;
  }

  v27 = v31;
  *v25 = v30;
  *(v10 - 1) = v27;
  v28 = *MEMORY[0x1E69E9840];
  return v10;
}

char *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MMapSegment *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(char *a1, uint64_t a2)
{
  v4 = 0;
  v34 = *MEMORY[0x1E69E9840];
  v30 = *a1;
  v31 = *(a1 + 1);
  do
  {
    v5 = strncmp(&a1[v4 + 48], &v31, 0x10uLL);
    v6 = *&a1[v4 + 32] < v30;
    if (v5)
    {
      v6 = v5 < 0;
    }

    v4 += 32;
  }

  while (v6);
  v7 = &a1[v4];
  v8 = &a1[v4 - 32];
  v9 = (a2 - 16);
  if (v4 == 32)
  {
    while (1)
    {
      v12 = v9 + 16;
      if (v7 >= (v9 + 16))
      {
        break;
      }

      v28 = strncmp(v9, &v31, 0x10uLL);
      v29 = *(v9 - 2) < v30;
      if (v28)
      {
        v29 = v28 < 0;
      }

      v9 -= 32;
      if (v29)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    do
    {
      v10 = strncmp(v9, &v31, 0x10uLL);
      v11 = *(v9 - 2) < v30;
      if (v10)
      {
        v11 = v10 < 0;
      }

      v9 -= 32;
    }

    while (!v11);
LABEL_9:
    v12 = v9 + 16;
  }

  if (v7 < v12)
  {
    v13 = v7;
    v14 = v12;
    do
    {
      v15 = *(v13 + 1);
      v32 = *v13;
      v33 = v15;
      v16 = *(v14 + 1);
      *v13 = *v14;
      *(v13 + 1) = v16;
      v17 = v33;
      *v14 = v32;
      *(v14 + 1) = v17;
      v18 = v13 + 48;
      do
      {
        v19 = strncmp(v18, &v31, 0x10uLL);
        v20 = *(v18 - 2) < v30;
        if (v19)
        {
          v20 = v19 < 0;
        }

        v18 += 32;
      }

      while (v20);
      v13 = (v18 - 48);
      v21 = v14 - 16;
      do
      {
        v22 = strncmp(v21, &v31, 0x10uLL);
        v23 = *(v21 - 2) < v30;
        if (v22)
        {
          v23 = v22 < 0;
        }

        v21 -= 32;
      }

      while (!v23);
      v14 = (v21 + 16);
    }

    while (v13 < v14);
    v8 = (v18 - 80);
  }

  if (v8 != a1)
  {
    v24 = *(v8 + 1);
    *a1 = *v8;
    *(a1 + 1) = v24;
  }

  v25 = v31;
  *v8 = v30;
  *(v8 + 1) = v25;
  v26 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(__int128 *a1, __int128 *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(a1, a1 + 32, a2 - 32);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(a1, a1 + 32, a1 + 64);
        v25 = strncmp(a2 - 16, a1 + 80, 0x10uLL);
        v27 = *(a2 - 4);
        v26 = a2 - 2;
        v28 = v27 < *(a1 + 8);
        if (v25)
        {
          v28 = v25 < 0;
        }

        if (v28)
        {
          v30 = a1[4];
          v29 = a1[5];
          v31 = v26[1];
          a1[4] = *v26;
          a1[5] = v31;
          *v26 = v30;
          v26[1] = v29;
          v32 = strncmp(a1 + 80, a1 + 48, 0x10uLL);
          v33 = *(a1 + 8) < *(a1 + 4);
          if (v32)
          {
            v33 = v32 < 0;
          }

          if (v33)
          {
            v35 = a1[2];
            v34 = a1[3];
            v36 = a1[5];
            a1[2] = a1[4];
            a1[3] = v36;
            a1[4] = v35;
            a1[5] = v34;
            v37 = strncmp(a1 + 48, a1 + 16, 0x10uLL);
            v38 = *(a1 + 4) < *a1;
            if (v37)
            {
              v38 = v37 < 0;
            }

            if (v38)
            {
              v40 = *a1;
              v39 = a1[1];
              v41 = a1[3];
              *a1 = a1[2];
              a1[1] = v41;
              a1[2] = v40;
              a1[3] = v39;
            }
          }
        }

        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(a1, a1 + 2, a1 + 4, a1 + 96, a2 - 32);
        break;
      default:
        goto LABEL_13;
    }

LABEL_38:
    result = 1;
    goto LABEL_39;
  }

  if (v4 < 2)
  {
    goto LABEL_38;
  }

  if (v4 == 2)
  {
    v5 = strncmp(a2 - 16, a1 + 16, 0x10uLL);
    v7 = *(a2 - 4);
    v6 = a2 - 2;
    v8 = v7 < *a1;
    if (v5)
    {
      v8 = v5 < 0;
    }

    if (v8)
    {
      v10 = *a1;
      v9 = a1[1];
      v11 = v6[1];
      *a1 = *v6;
      a1[1] = v11;
      *v6 = v10;
      v6[1] = v9;
    }

    goto LABEL_38;
  }

LABEL_13:
  v12 = (a1 + 4);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(a1, a1 + 32, a1 + 64);
  v13 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    goto LABEL_38;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = strncmp(v13 + 16, v12 + 16, 0x10uLL);
    v17 = *v13 < *v12;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (v17)
    {
      v44 = *v13;
      *v45 = *(v13 + 1);
      v18 = v14;
      while (1)
      {
        v19 = a1 + v18;
        v20 = *(a1 + v18 + 80);
        *(v19 + 96) = *(a1 + v18 + 64);
        *(v19 + 112) = v20;
        if (v18 == -64)
        {
          break;
        }

        v21 = strncmp(v45, (v19 + 48), 0x10uLL);
        v22 = v44 < *(v19 + 32);
        if (v21)
        {
          v22 = v21 < 0;
        }

        v18 -= 32;
        if (!v22)
        {
          v23 = (a1 + v18 + 96);
          goto LABEL_25;
        }
      }

      v23 = a1;
LABEL_25:
      v24 = *v45;
      *v23 = v44;
      v23[1] = v24;
      if (++v15 == 8)
      {
        break;
      }
    }

    v12 = v13;
    v14 += 32;
    v13 += 32;
    if (v13 == a2)
    {
      goto LABEL_38;
    }
  }

  result = v13 + 32 == a2;
LABEL_39:
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,MMapSegment*>(uint64_t a1, __int128 *a2, char *a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 32 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(a1, a4, v8, v11);
        v11 -= 32;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = strncmp(v12 + 16, (a1 + 16), 0x10uLL);
        v14 = *v12 < *a1;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (v14)
        {
          v16 = *v12;
          v15 = *(v12 + 1);
          v17 = *(a1 + 16);
          *v12 = *a1;
          *(v12 + 1) = v17;
          *a1 = v16;
          *(a1 + 16) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(a1, a4, v8, a1);
        }

        v12 += 32;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v18 = a2 - 2;
      do
      {
        v24 = *a1;
        v25 = *(a1 + 16);
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(a1, a4, v8);
        if (v18 == v19)
        {
          *v19 = v24;
          v19[1] = v25;
        }

        else
        {
          v20 = v18[1];
          *v19 = *v18;
          v19[1] = v20;
          *v18 = v24;
          v18[1] = v25;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(a1, (v19 + 2), a4, (v19 - a1 + 32) >> 5);
        }

        v18 -= 2;
      }

      while (v8-- > 2);
    }

    a3 = v12;
  }

  v22 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(uint64_t result, uint64_t a2, uint64_t a3, char *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= &a4[-result] >> 5)
    {
      v9 = &a4[-result] >> 4;
      v10 = v9 + 1;
      v11 = (result + 32 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 >= a3)
      {
        v15 = *v11;
      }

      else
      {
        v13 = strncmp(v11 + 16, v11 + 48, 0x10uLL);
        v14 = *v11 < v11[4];
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (v14)
        {
          v15 = v11[4];
        }

        else
        {
          v15 = *v11;
        }

        if (v14)
        {
          v11 += 4;
          v10 = v12;
        }
      }

      result = strncmp(v11 + 16, v5 + 16, 0x10uLL);
      v16 = v15 < *v5;
      if (result)
      {
        v16 = result < 0;
      }

      if (!v16)
      {
        v26 = *v5;
        v27 = *(v5 + 1);
        do
        {
          v17 = v11;
          v18 = *(v11 + 1);
          *v5 = *v11;
          *(v5 + 1) = v18;
          if (v7 < v10)
          {
            break;
          }

          v19 = (2 * v10) | 1;
          v11 = (v6 + 32 * v19);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v22 = *v11;
            v10 = v19;
          }

          else
          {
            v20 = strncmp(v11 + 16, v11 + 48, 0x10uLL);
            v21 = *v11 < v11[4];
            if (v20)
            {
              v21 = v20 < 0;
            }

            v22 = v21 ? v11[4] : *v11;
            if (v21)
            {
              v11 += 4;
            }

            else
            {
              v10 = v19;
            }
          }

          result = strncmp(v11 + 16, &v27, 0x10uLL);
          v23 = v22 < v26;
          if (result)
          {
            v23 = result < 0;
          }

          v5 = v17;
        }

        while (!v23);
        v24 = v27;
        *v17 = v26;
        *(v17 + 1) = v24;
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[2 * v5];
    v8 = v7 + 2;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v11 = strncmp(v7 + 48, v7 + 80, 0x10uLL);
      v13 = *(v7 + 8);
      v12 = v7 + 4;
      v14 = *(v12 - 4) < v13;
      if (v11)
      {
        v14 = v11 < 0;
      }

      if (v14)
      {
        v8 = v12;
        v5 = v10;
      }

      else
      {
        v5 = v9;
      }
    }

    v15 = v8[1];
    *a1 = *v8;
    a1[1] = v15;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = result + 32 * (v4 >> 1);
    result = strncmp((v8 + 16), (a2 - 16), 0x10uLL);
    v10 = *(a2 - 32);
    v9 = (a2 - 32);
    v11 = *v8 < v10;
    if (result)
    {
      v11 = result < 0;
    }

    if (v11)
    {
      v17 = *v9;
      v18 = v9[1];
      do
      {
        v12 = v8;
        v13 = *(v8 + 16);
        *v9 = *v8;
        v9[1] = v13;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = v6 + 32 * v7;
        result = strncmp((v8 + 16), &v18, 0x10uLL);
        v14 = *v8 < v17;
        if (result)
        {
          v14 = result < 0;
        }

        v9 = v12;
      }

      while (v14);
      v15 = v18;
      *v12 = v17;
      v12[1] = v15;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__value_func<void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(CSCppSymbolOwner *,_CSTypeRef,int,void({block_pointer})(_CSRange,_CSTypeRef*,_CSTypeRef*,unsigned long))::$_1,std::allocator<TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(CSCppSymbolOwner *,_CSTypeRef,int,void({block_pointer})(_CSRange,_CSTypeRef*,_CSTypeRef*,unsigned long))::$_1>,void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5508860;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(CSCppSymbolOwner *,_CSTypeRef,int,void({block_pointer})(_CSRange,_CSTypeRef*,_CSTypeRef*,unsigned long))::$_1,std::allocator<TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(CSCppSymbolOwner *,_CSTypeRef,int,void({block_pointer})(_CSRange,_CSTypeRef*,_CSTypeRef*,unsigned long))::$_1>,void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::operator()(uint64_t a1, unint64_t **a2, uint64_t *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 64);
  v7 = **a2;
  v33 = 0;
  if ((TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 120), v7, &v33) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Symbol archive address 0x%x could not be relocated to real address\n", buf, 8u);
    }

    fprintf(*MEMORY[0x1E69E9848], "Symbol archive address 0x%x could not be relocated to real address\n");
    goto LABEL_29;
  }

  v8 = v33;
  if (*(a1 + 56) == -1 && v33 > **(a1 + 48))
  {
    v9 = *(a1 + 40);
    v10 = **(a1 + 24);
    v11 = (*(*(a1 + 16) + 8) - **(a1 + 16)) >> 4;
    (*(*(v9 + 8) + 16))();
    ++**v9;
    **(a1 + 48) = v33;
  }

  v12 = *(a1 + 16);
  *buf = *(a1 + 32) | 5;
  *&buf[8] = v4;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](v12, buf);
  v13 = *(a1 + 24);
  if (v5)
  {
    *buf = *(a1 + 32) | 5;
    *&buf[8] = v5;
  }

  else
  {
    *buf = *(a1 + 32);
    *&buf[8] = v4;
  }

  std::vector<_CSTypeRef>::push_back[abi:ne200100](v13, buf);
  if (*(a1 + 56) + 1 == (*(*(a1 + 16) + 8) - **(a1 + 16)) >> 4)
  {
    v14 = *(a1 + 40);
    CSSymbolGetRange(*(a1 + 32) | 5, v4);
    v15 = **(a1 + 24);
    v16 = (*(*(a1 + 16) + 8) - **(a1 + 16)) >> 4;
    (*(*(v14 + 8) + 16))();
    ++**v14;
  }

  v17 = v8 + HIDWORD(v7);
  v18 = *(v4 + 5);
  v19 = v17;
  if (v18 == -1)
  {
LABEL_27:
    if (*(a1 + 56) != -1)
    {
LABEL_28:
      *(*(a1 + 16) + 8) -= 16;
      *(*(a1 + 24) + 8) -= 16;
      goto LABEL_29;
    }

    if (v19 <= **(a1 + 48))
    {
      v19 = **(a1 + 48);
    }

    else
    {
      v27 = *(a1 + 40);
      v28 = **(a1 + 24);
      v29 = (*(*(a1 + 16) + 8) - **(a1 + 16)) >> 4;
      (*(*(v27 + 8) + 16))();
      ++**v27;
      **(a1 + 48) = v19;
      if (*(a1 + 56) != -1)
      {
        goto LABEL_28;
      }
    }

    if (v17 > v19)
    {
      v30 = *(a1 + 40);
      v31 = **(a1 + 24);
      v32 = (*(*(a1 + 16) + 8) - **(a1 + 16)) >> 4;
      (*(*(v30 + 8) + 16))();
      ++**v30;
      **(a1 + 48) = v17;
    }

    goto LABEL_28;
  }

  v20 = *(v6 + 88);
  v21 = v20[5];
  v19 = v17;
  if (v18 >= v21 || (v22 = &v20[9 * v18 + 24 + 8 * v20[2] + 6 * v20[3] + 6 * v20[4]], v19 = v17, v20 > v22) || (v19 = v17, v22 >= v20 + v20[1]))
  {
LABEL_24:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Out of bounds children index iterating inline ranges", buf, 2u);
    }

    fwrite("Out of bounds children index iterating inline ranges", 0x34uLL, 1uLL, *MEMORY[0x1E69E9848]);
    goto LABEL_27;
  }

  v23 = v21 - v18;
  while (1)
  {
    std::function<void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::operator()(*(a1 + 8), v22, v22);
    *buf = 0;
    v24 = *v22;
    if ((TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 120), *v22, buf) & 1) == 0)
    {
      break;
    }

    if ((*(v22 + 11) & 0x40) != 0)
    {
      v19 = *buf + HIDWORD(v24);
      goto LABEL_27;
    }

    if (--v23)
    {
      v25 = *(v6 + 88);
      v22 += 36;
      if (v25 <= v22 && v22 < *(v25 + 4) + v25)
      {
        continue;
      }
    }

    v19 = *buf + HIDWORD(v24);
    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v34 = 67109120;
    v35 = v24;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Child symbol archive address 0x%x could not be relocated to real address\n", v34, 8u);
  }

  fprintf(*MEMORY[0x1E69E9848], "Child symbol archive address 0x%x could not be relocated to real address\n");
LABEL_29:
  v26 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__func<TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(CSCppSymbolOwner *,_CSTypeRef,int,void({block_pointer})(_CSRange,_CSTypeRef*,_CSTypeRef*,unsigned long))::$_1,std::allocator<TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(CSCppSymbolOwner *,_CSTypeRef,int,void({block_pointer})(_CSRange,_CSTypeRef*,_CSTypeRef*,unsigned long))::$_1>,void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D97B5A40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t task_get_mapped_memory_cache_with_label(mach_port_name_t a1)
{
  v6 = a1;
  std::mutex::lock(&_task_to_mapped_memory_lock(void)::lock);
  if (!task_to_mapped_memory)
  {
    operator new();
  }

  v7 = a1;
  v2 = std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::find<unsigned int>(task_to_mapped_memory, &v7);
  if (v2 && (v3 = v2[3]) != 0)
  {
    std::mutex::lock((v3 + 128));
    ++*(v3 + 104);
    std::mutex::unlock((v3 + 128));
  }

  else
  {
    mapped_memory_cache_for_task_with_label = create_mapped_memory_cache_for_task_with_label(a1);
    std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::__emplace_unique_key_args<unsigned int,unsigned int &,mapped_memory_t *&>(task_to_mapped_memory, &v6);
    v3 = mapped_memory_cache_for_task_with_label;
  }

  std::mutex::unlock(&_task_to_mapped_memory_lock(void)::lock);
  return v3;
}

uint64_t create_mapped_memory_cache_for_task_with_label(mach_port_name_t name)
{
  v3 = *MEMORY[0x1E69E9840];
  if (name - 1 <= 0xFFFFFFFD && !mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 0, 1))
  {
    operator new();
  }

  v1 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t retain_mapped_memory_cache(uint64_t a1)
{
  if (a1)
  {
    std::mutex::lock((a1 + 128));
    ++*(a1 + 104);
    std::mutex::unlock((a1 + 128));
  }

  return a1;
}

uint64_t task_lookup_mapped_memory_cache(unsigned int a1)
{
  std::mutex::lock(&_task_to_mapped_memory_lock(void)::lock);
  v5 = a1;
  if (task_to_mapped_memory && (v2 = std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::find<unsigned int>(task_to_mapped_memory, &v5)) != 0)
  {
    v3 = v2[3];
  }

  else
  {
    v3 = 0;
  }

  std::mutex::unlock(&_task_to_mapped_memory_lock(void)::lock);
  return v3;
}

void task_release_mapped_memory_cache(unsigned int a1)
{
  v4 = a1;
  std::mutex::lock(&_task_to_mapped_memory_lock(void)::lock);
  v5 = a1;
  if (task_to_mapped_memory)
  {
    v2 = std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::find<unsigned int>(task_to_mapped_memory, &v5);
    if (v2)
    {
      v3 = v2[3];
      if (v3)
      {
        if (!release_mapped_memory_cache(v3))
        {
          std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::__erase_unique<unsigned int>(task_to_mapped_memory, &v4);
        }
      }
    }
  }

  std::mutex::unlock(&_task_to_mapped_memory_lock(void)::lock);
}

uint64_t release_mapped_memory_cache(std::mutex *a1)
{
  v1 = a1;
  if (a1)
  {
    std::mutex::lock(a1 + 2);
    v2 = *(v1 + 104) - 1;
    *(v1 + 104) = v2;
    std::mutex::unlock((v1 + 128));
    if (!v2)
    {
      destroy_mapped_memory_cache(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t enumerate_mapped_memory_core_file_dumped_regions(uint64_t result, uint64_t a2)
{
  v2 = *(result + 192);
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    if (v3 != v4)
    {
      v6 = v3 + 40;
      do
      {
        v12 = 0;
        v7 = *(v6 - 40);
        v8 = *(v6 - 24);
        v11 = *(v6 - 8);
        v10[0] = v7;
        v10[1] = v8;
        result = (*(a2 + 16))(a2, v10, &v12);
        if (v12)
        {
          break;
        }

        v9 = v6 == v4;
        v6 += 40;
      }

      while (!v9);
    }
  }

  return result;
}

uint64_t create_mapped_memory_cache_for_core_file_without_exclave_metadata(char *a1, const char *a2)
{
  common_create_mapped_memory_cache_for_core_file_with_label_and_optional_exclave_metadata(a1, 0, &v3);
  if (v4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void common_create_mapped_memory_cache_for_core_file_with_label_and_optional_exclave_metadata(char *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v441 = *MEMORY[0x1E69E9840];
  CSCppFileMemory::CSCppFileMemory(v366, a1, 0);
  v7 = (*(v366[0] + 32))(v366, 0, 28);
  if (!v7 || *v7 != -17958194)
  {
    CSCppFileMemory::CSCppFileMemory(&v362, a1, 0);
    v45 = (*(v362 + 4))(&v362, 0, 32);
    if (!v45 || *v45 != -17958193)
    {
      v80 = 0;
      v334 = "could not open file, or it is not a Mach-O core file";
      goto LABEL_169;
    }

    v46 = v45[5];
    v375[0] = 0;
    v375[1] = 0;
    v376 = 0;
    CSCppFileMemory::CSCppFileMemory(&__src, a1, 0);
    *name = &__src;
    v47 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(name, 0, 1);
    if (v47)
    {
      v48 = 1;
      if (v47[3] == 4)
      {
        v350 = a3;
        LODWORD(v348) = 0;
        *(&v371 + 1) = 0;
        v372 = 0;
        *&v371 = &v371 + 8;
        LOBYTE(v435) = 0;
        v432 = 0;
        v49 = v47[4];
        v50 = v47 + v47[5] + 32;
        LOBYTE(v433) = 0;
        LOBYTE(v409[0]) = 0;
        LOBYTE(v374) = 0;
        BYTE8(v374) = 0;
        LODWORD(v406[0]) = v49;
        v406[1] = v47;
        v407 = v50;
        v408 = v47 + 8;
        v51 = MEMORY[0x1E69E9A60];
        while (1)
        {
          v52 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(v406);
          v54 = v52;
          if (!v52)
          {
            break;
          }

          v55 = *v52;
          if (*v52 == 25)
          {
            v380 = 0;
            v379 = 0u;
            v58 = *(v52 + 40);
            *v378 = *(v52 + 24);
            v379 = v58;
            v380 = vrev64_s32(*(v52 + 56));
            std::vector<mapped_memory_core_file_dumped_region_info_t>::push_back[abi:ne200100](v375, v378);
          }

          else if (v55 == 49)
          {
            if (!strncmp((v52 + 8), "vm info", 0x10uLL))
            {
              parse_vm_info_note(a1, v54, v378);
              v60 = v379.n128_i8[8];
              if (v379.n128_u8[8])
              {
                std::optional<CSCppCoreFileRegionsTree>::operator=[abi:ne200100]<CSCppCoreFileRegionsTree const&,void>(&v433, v378);
              }

              else
              {
                v68 = v371;
                if (v371 != (&v371 + 8))
                {
                  do
                  {
                    mach_port_deallocate(*v51, *(v68 + 8));
                    v69 = *(v68 + 1);
                    if (v69)
                    {
                      do
                      {
                        v70 = v69;
                        v69 = *v69;
                      }

                      while (v69);
                    }

                    else
                    {
                      do
                      {
                        v70 = *(v68 + 2);
                        v23 = *v70 == v68;
                        v68 = v70;
                      }

                      while (!v23);
                    }

                    v68 = v70;
                  }

                  while (v70 != (&v371 + 8));
                }

                v353 = "failed to parse 'vm info' LC_NOTE";
              }

              if (v379.n128_u8[8] == 1)
              {
                v367[0] = v378;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v367);
              }

              goto LABEL_162;
            }

            if (!strncmp(v54->data_owner, "task crashinfo", 0x10uLL))
            {
              parse_task_crashinfo_note(a1, v54, v378);
              v60 = v405;
              if (v405)
              {
                std::optional<CSCppCoreFileTaskCrashinfo>::operator=[abi:ne200100]<CSCppCoreFileTaskCrashinfo const&,void>(v409, v378);
              }

              else
              {
                v71 = v371;
                if (v371 != (&v371 + 8))
                {
                  do
                  {
                    mach_port_deallocate(*v51, *(v71 + 8));
                    v72 = *(v71 + 1);
                    if (v72)
                    {
                      do
                      {
                        v73 = v72;
                        v72 = *v72;
                      }

                      while (v72);
                    }

                    else
                    {
                      do
                      {
                        v73 = *(v71 + 2);
                        v23 = *v73 == v71;
                        v71 = v73;
                      }

                      while (!v23);
                    }

                    v71 = v73;
                  }

                  while (v73 != (&v371 + 8));
                }

                v353 = "failed to parse 'task crashinfo' LC_NOTE";
              }

              if (v405 == 1)
              {
                if (v404 == 1 && __p)
                {
                  v403 = __p;
                  operator delete(__p);
                }

                if (v401 == 1 && v399)
                {
                  v400 = v399;
                  operator delete(v399);
                }

                if (v389 == 1 && v388 < 0)
                {
                  operator delete(v386);
                }

                if (v385 == 1 && SHIBYTE(v384) < 0)
                {
                  operator delete(*&v381[24]);
                }

                if (v381[16] == 1 && (v381[15] & 0x80000000) != 0)
                {
                  operator delete(v380);
                }

                if (v379.n128_u8[8] == 1 && v379.n128_i8[7] < 0)
                {
                  operator delete(v378[0]);
                }
              }

              goto LABEL_162;
            }

            if (!strncmp(v54->data_owner, "addrable bits", 0x10uLL))
            {
              v56 = parse_addrable_bits_note(a1, v54);
              if ((v57 & 1) == 0)
              {
                v148 = v371;
                if (v371 == (&v371 + 8))
                {
                  v48 = 1;
                  v334 = "failed to parse 'addrable bits' LC_NOTE";
                }

                else
                {
                  v334 = "failed to parse 'addrable bits' LC_NOTE";
                  do
                  {
                    mach_port_deallocate(*v51, *(v148 + 8));
                    v149 = *(v148 + 1);
                    if (v149)
                    {
                      do
                      {
                        v150 = v149;
                        v149 = *v149;
                      }

                      while (v149);
                    }

                    else
                    {
                      do
                      {
                        v150 = *(v148 + 2);
                        v23 = *v150 == v148;
                        v148 = v150;
                      }

                      while (!v23);
                    }

                    v148 = v150;
                  }

                  while (v150 != (&v371 + 8));
                  v48 = 1;
                }

                a3 = v350;
                goto LABEL_230;
              }

              *&v374 = v56;
              BYTE8(v374) = 1;
            }
          }

          else if (v55 == 4)
          {
            parse_thread_load_command(v52, v378);
            if ((v379.n128_u8[8] & 1) == 0)
            {
              v65 = v371;
              if (v371 != (&v371 + 8))
              {
                do
                {
                  mach_port_deallocate(*v51, *(v65 + 8));
                  v66 = *(v65 + 1);
                  if (v66)
                  {
                    do
                    {
                      v67 = v66;
                      v66 = *v66;
                    }

                    while (v66);
                  }

                  else
                  {
                    do
                    {
                      v67 = *(v65 + 2);
                      v23 = *v67 == v65;
                      v65 = v67;
                    }

                    while (!v23);
                  }

                  v65 = v67;
                }

                while (v67 != (&v371 + 8));
              }

              v60 = 0;
              v64 = "failed to parse thread load command";
              goto LABEL_122;
            }

            v370 = 0;
            v59 = mach_port_allocate(*v51, 4u, &v370);
            v60 = v59 == 0;
            if (v59)
            {
              v61 = v371;
              if (v371 != (&v371 + 8))
              {
                do
                {
                  mach_port_deallocate(*v51, *(v61 + 8));
                  v62 = *(v61 + 1);
                  if (v62)
                  {
                    do
                    {
                      v63 = v62;
                      v62 = *v62;
                    }

                    while (v62);
                  }

                  else
                  {
                    do
                    {
                      v63 = *(v61 + 2);
                      v23 = *v63 == v61;
                      v61 = v63;
                    }

                    while (!v23);
                  }

                  v61 = v63;
                }

                while (v63 != (&v371 + 8));
              }

              v64 = "failed to allocate dummy port representing thread";
LABEL_122:
              v353 = v64;
              goto LABEL_123;
            }

            LODWORD(v367[0]) = v348;
            std::map<int,std::vector<unsigned char>>::map[abi:ne200100](&v367[1], v378);
            p_src = &v370;
            v74 = std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v371, &v370);
            v76 = v74 + 7;
            v75 = v74[7];
            *(v74 + 10) = v367[0];
            v77 = v74 + 6;
            std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy((v74 + 6), v75);
            v78 = v368;
            *(v76 - 1) = v367[1];
            *v76 = v78;
            v79 = v369;
            v76[1] = v369;
            if (v79)
            {
              v78[2] = v76;
              v367[1] = &v368;
              v368 = 0;
              v369 = 0;
              v78 = 0;
            }

            else
            {
              *v77 = v76;
            }

            LODWORD(v348) = v348 + 1;
            std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(&v367[1], v78);
LABEL_123:
            if (v379.n128_u8[8] == 1)
            {
              std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(v378, v378[1]);
            }

LABEL_162:
            if ((v60 & 1) == 0)
            {
              v48 = 1;
              a3 = v350;
              v334 = v353;
              goto LABEL_230;
            }
          }
        }

        v85 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v375[1] - v375[0]) >> 3));
        if (v375[1] == v375[0])
        {
          v86 = 0;
        }

        else
        {
          v86 = v85;
        }

        *&v87 = std::__introsort<std::_ClassicAlgPolicy,std::expected<mapped_memory_t *,char const*> create_mapped_memory_cache_for_core_file_without_exclave_metadata_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long,char const*)::{lambda(mapped_memory_core_file_dumped_region_info_t const&,mapped_memory_core_file_dumped_region_info_t const&)#1} &,mapped_memory_core_file_dumped_region_info_t*,false>(v375[0], v375[1], v86, 1, v53).n128_u64[0];
        v88 = open(a1, 0x1000000, v87);
        v370 = v88;
        if ((v88 & 0x80000000) == 0)
        {
          operator new();
        }

        v100 = v371;
        v334 = "failed to open core file";
        if (v371 != (&v371 + 8))
        {
          do
          {
            mach_port_deallocate(*v51, *(v100 + 8));
            v101 = *(v100 + 1);
            if (v101)
            {
              do
              {
                v102 = v101;
                v101 = *v101;
              }

              while (v101);
            }

            else
            {
              do
              {
                v102 = *(v100 + 2);
                v23 = *v102 == v100;
                v100 = v102;
              }

              while (!v23);
            }

            v100 = v102;
          }

          while (v102 != (&v371 + 8));
        }

        a3 = v350;
        v48 = v88 >> 31;
LABEL_230:
        if (v432 == 1)
        {
          if (v431 == 1 && v429)
          {
            v430 = v429;
            operator delete(v429);
          }

          if (v428 == 1 && v426)
          {
            v427 = v426;
            operator delete(v426);
          }

          if (v416 == 1 && v415 < 0)
          {
            operator delete(*&v413[12]);
          }

          if (v413[4] == 1 && (v413[3] & 0x80000000) != 0)
          {
            operator delete(*&v410[48]);
          }

          if (v410[40] == 1 && (v410[39] & 0x80000000) != 0)
          {
            operator delete(*&v410[16]);
          }

          if (v410[8] == 1 && (v410[7] & 0x80000000) != 0)
          {
            operator delete(v409[0]);
          }
        }

        if (v435 == 1)
        {
          v409[0] = &v433;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v409);
        }

        std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(&v371, *(&v371 + 1));
LABEL_252:
        CSCppFileMemory::~CSCppFileMemory(&__src);
        if (v375[0])
        {
          v375[1] = v375[0];
          operator delete(v375[0]);
        }

        if ((v48 | a2 ^ 1))
        {
          v80 = v48 ^ 1;
          goto LABEL_169;
        }

        if (!CSArchitectureIsArm64(*(*(v334 + 24) + 40)))
        {
          goto LABEL_654;
        }

        v406[0] = CSSymbolicatorCreateWithCoreFilePathAndFlags(a1, 0, 0, 0);
        v406[1] = v103;
        if (CSIsNull(v406[0], v103))
        {
          goto LABEL_654;
        }

        v378[0] = &unk_1F5508970;
        v378[1] = v406;
        v379.n128_u64[1] = v378;
        std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v409, v378);
        std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v378);
        SymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolOwnerWithNameAtTime(v406[0], v406[1], "dyld", 0x8000000000000000);
        v106 = v105;
        v107 = CSIsNull(SymbolOwnerWithNameAtTime, v105);
        v433 = 0uLL;
        v434 = 0;
        if (v107)
        {
          __src = CSSymbolicatorGetSymbolOwner(v406[0], v406[1]);
          v437 = v108;
          std::vector<_CSTypeRef>::__assign_with_size[abi:ne200100]<_CSTypeRef const*,_CSTypeRef const*>(&v433, &__src, &v438, 1uLL);
          v109 = 1;
        }

        else
        {
          __src = SymbolOwnerWithNameAtTime;
          v437 = v106;
          v438 = CSSymbolicatorGetSymbolOwnerWithNameAtTime(v406[0], v406[1], "liblibc_plat.dylib", 0x8000000000000000);
          v439 = v127;
          std::vector<_CSTypeRef>::__assign_with_size[abi:ne200100]<_CSTypeRef const*,_CSTypeRef const*>(&v433, &__src, v440, 2uLL);
          v109 = 0;
        }

        CSCppCoreFileMemory::CSCppCoreFileMemory(&__src, v334);
        v129 = *(&v433 + 1);
        v128 = v433;
        if (v433 == *(&v433 + 1))
        {
          v142 = 0;
          v361 = 0;
          v143 = 0;
          v144 = 0;
          v357 = 0;
        }

        else
        {
          v355 = v109;
          v130 = v334;
          v131 = a3;
          v132 = 0;
          v133 = 0;
          do
          {
            SymbolWithMangledName = CSSymbolOwnerGetSymbolWithMangledName(*v128, v128[1], "_vas__segmentinfo_table");
            v136 = v135;
            if (!CSIsNull(SymbolWithMangledName, v135))
            {
              Range = CSSymbolGetRange(SymbolWithMangledName, v136);
              v138 = (*(__src + 32))(&__src, Range, 8);
              if (v139 >= 8)
              {
                if (*v138)
                {
                  v133 = *v138;
                }

                v132 |= *v138 != 0;
              }
            }

            v128 += 2;
          }

          while (v128 != v129);
          if (v132)
          {
            v140 = (*(__src + 32))(&__src, v133, 24);
            a3 = v131;
            v334 = v130;
            if (v141 >= 0x18)
            {
              v142 = *(v140 + 16);
              v361 = *(v140 + 17);
              v143 = *(v140 + 18);
              v144 = 1;
              v338 = *(v140 + 8);
              v357 = *v140;
            }

            else
            {
              v142 = 0;
              v361 = 0;
              v143 = 0;
              v144 = 0;
              v357 = 0;
            }
          }

          else
          {
            v142 = 0;
            v361 = 0;
            v143 = 0;
            v144 = 0;
            v357 = 0;
            a3 = v131;
            v334 = v130;
          }

          v109 = v355;
        }

        CSCppCoreFileMemory::~CSCppCoreFileMemory(&__src);
        if (v433)
        {
          *(&v433 + 1) = v433;
          operator delete(v433);
        }

        DeferredLambda::~DeferredLambda(v409);
        if (!v144)
        {
          goto LABEL_654;
        }

        name[0] = v109;
        CSCppCoreFileMemory::CSCppCoreFileMemory(&__src, v334);
        v352 = a3;
        v243 = 0;
        v346 = 0;
        v340 = 0;
        v343 = 0;
        v433 = 0uLL;
        v434 = 0;
        LOBYTE(v371) = 0;
        BYTE8(v371) = 0;
        v244 = 1;
        while (v244)
        {
          if (v142 != 1)
          {
            v331 = 0;
            v332 = "exclaves - unable to analyze this vsit_version using this tool";
            goto LABEL_651;
          }

          if (v143 > v361)
          {
            v331 = 0;
            v332 = "exclaves - invalid exclave metadata";
            goto LABEL_651;
          }

          v378[0] = 0;
          v378[1] = 0;
          v379.n128_u64[0] = 0;
          if (v143)
          {
            v245 = v143;
            v246 = v357;
            while (1)
            {
              v247 = (*(__src + 32))(&__src, v246, 8);
              if (v248 < 8)
              {
                LOBYTE(v249) = 0;
                v142 = 1;
                v267 = "exclaves - failed to read segmentinfo";
                goto LABEL_506;
              }

              v249 = *v247;
              if (!*v247)
              {
                v142 = 1;
                v267 = "exclaves - invalid segmentinfo_page address";
                goto LABEL_506;
              }

              v250 = (*(__src + 32))(&__src, v249, 32);
              if (v251 < 0x20)
              {
                v268 = "exclaves - failed to read segmentinfo_page";
LABEL_504:
                v348 = v268;
                LOBYTE(v249) = 0;
                v142 = 1;
                goto LABEL_507;
              }

              v252 = *v250;
              LODWORD(v367[0]) = *(v250 + 1);
              *(v367 + 3) = *(v250 + 1);
              v253 = *(v250 + 1);
              v254 = v250[16];
              v406[0] = *(v250 + 17);
              *(v406 + 7) = *(v250 + 3);
              if (v252 != 1)
              {
                v268 = "exclaves - unable to analyze this vsip_version version using this tool";
                goto LABEL_504;
              }

              if (!v254)
              {
                if (BYTE8(v371) == 1)
                {
                  if (v253 != v371)
                  {
                    goto LABEL_488;
                  }
                }

                else
                {
                  *&v371 = v253;
                  BYTE8(v371) = 1;
                }

                v409[0] = v249;
                LOBYTE(v409[1]) = 1;
                *(&v409[1] + 1) = v367[0];
                HIDWORD(v409[1]) = *(v367 + 3);
                *v410 = v253;
                v410[8] = 0;
                *&v410[9] = v406[0];
                *&v410[16] = *(v406 + 7);
                std::vector<mapped_memory_core_file_dumped_region_info_t>::push_back[abi:ne200100](v378, v409);
              }

LABEL_488:
              v246 += 8;
              if (!--v245)
              {
                v255 = v378[0];
                v256 = v378[1];
                if (v378[0] == v378[1])
                {
                  break;
                }

                while (!v255[7])
                {
LABEL_496:
                  v255 += 20;
                  if (v255 == v256)
                  {
                    v262 = (*(__src + 32))(&__src, v338, 24);
                    v244 = v263 > 0x17;
                    if (v263 < 0x18)
                    {
                      v264 = 0;
                      v265 = v243;
                      v142 = v346;
                      v143 = v340;
                      v266 = v343;
                    }

                    else
                    {
                      v264 = *v262;
                      v265 = *(v262 + 1) | ((*(v262 + 5) | (v262[7] << 16)) << 32);
                      v338 = *(v262 + 1);
                      v142 = v262[16];
                      v266 = v262[17];
                      v143 = v262[18];
                    }

                    LOBYTE(v249) = 1;
                    v346 = v142;
                    v340 = v143;
                    v343 = v266;
                    v361 = v266;
                    v243 = v265;
                    v357 = v264 | (v265 << 8);
                    goto LABEL_508;
                  }
                }

                v257 = 0;
                while (1)
                {
                  v258 = (*(__src + 32))(&__src, *v255 + *(v255 + 9) + v257 * *(v255 + 10), 32);
                  if (v259 < 0x20)
                  {
                    break;
                  }

                  v260 = v258[1];
                  *v409 = *v258;
                  *v410 = v260;
                  v410[16] = 1;
                  if (atomic_load(&v410[8]))
                  {
                    std::vector<vas_segment>::push_back[abi:ne200100](&v433, v409);
                  }

                  if (++v257 >= v255[7])
                  {
                    goto LABEL_496;
                  }
                }

                LOBYTE(v249) = 0;
                v142 = 1;
                v267 = "exclaves - failed to read vas_segment_t";
                goto LABEL_506;
              }
            }
          }

          LOBYTE(v249) = 0;
          v142 = 1;
          v267 = "exclaves - failed to get any segmentinfo_pages";
LABEL_506:
          v348 = v267;
LABEL_507:
          v244 = 1;
LABEL_508:
          if (v378[0])
          {
            v378[1] = v378[0];
            operator delete(v378[0]);
          }

          if ((v249 & 1) == 0)
          {
            v331 = 0;
            v332 = v348;
            goto LABEL_651;
          }
        }

        v269 = 126 - 2 * __clz((*(&v433 + 1) - v433) >> 5);
        if (*(&v433 + 1) == v433)
        {
          v270 = 0;
        }

        else
        {
          v270 = v269;
        }

        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E_P11vas_segmentLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(v433, *(&v433 + 1), v270, 1, v242);
        *v410 = 0;
        v409[1] = 0;
        v409[0] = &v409[1];
        v378[0] = 1;
        v271 = v433;
        if (*(&v433 + 1) - v433 >= 0x21uLL)
        {
          v272 = 1;
          do
          {
            v273 = (v271 + 32 * v272);
            if (CSRangeIntersectsRange(*(v273 - 4), *(v273 - 3), *v273, v273[1]))
            {
              v274 = *(v273 - 2);
              v275 = v273[2];
              if (v274 >= v275)
              {
                if (v274 <= v275)
                {
                  std::__tree<TRange<Pointer64>>::destroy(v409, v409[1]);
                  v331 = 0;
                  v332 = "exclaves - found overlapping vas_segment_ts";
                  goto LABEL_651;
                }

                std::__tree<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v409, v378);
              }

              else
              {
                v406[0] = v378[0] - 1;
                std::__tree<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v409, v406);
              }
            }

            v272 = v378[0] + 1;
            v378[0] = v272;
            v276 = *(&v433 + 1);
            v271 = v433;
          }

          while (v272 < (*(&v433 + 1) - v433) >> 5);
          v277 = v409[0];
          if (v409[0] != &v409[1])
          {
            do
            {
              v278 = v433 + 32 * v277[4];
              v279 = v276 - (v278 + 32);
              if (v276 != v278 + 32)
              {
                memmove((v433 + 32 * v277[4]), (v278 + 32), v276 - (v278 + 32));
              }

              v276 = v278 + v279;
              *(&v433 + 1) = v278 + v279;
              v280 = v277[1];
              if (v280)
              {
                do
                {
                  v281 = v280;
                  v280 = *v280;
                }

                while (v280);
              }

              else
              {
                do
                {
                  v281 = v277[2];
                  v23 = *v281 == v277;
                  v277 = v281;
                }

                while (!v23);
              }

              v277 = v281;
            }

            while (v281 != &v409[1]);
          }
        }

        std::__tree<TRange<Pointer64>>::destroy(v409, v409[1]);
        v406[1] = 0;
        v406[0] = 0;
        v407 = 0;
        v347 = *(&v433 + 1);
        for (i = v433; i != v347; i += 2)
        {
          v283 = i->n128_u64[0];
          v284 = i->n128_i64[1];
          v409[0] = i->n128_u64[0];
          v409[1] = v284;
          memset(v410, 0, 52);
          v410[52] = 1;
          v411 = 0;
          v412 = 0;
          *&v413[8] = 0;
          *v413 = 0;
          *&v413[16] = i[1].n128_u32[3];
          LOBYTE(v414) = 0;
          v418 = 0;
          LOBYTE(v419) = 0;
          v421 = 0;
          LOBYTE(v422) = 0;
          v424 = 0;
          v426 = 0;
          v427 = 0;
          v425 = 0;
          v285 = i[1].n128_u32[3];
          if (v285)
          {
            v286 = 3;
          }

          else
          {
            v286 = 1;
          }

          LOWORD(p_src) = 9;
          v287 = *(v334 + 24);
          v289 = *(v287 + 16);
          v288 = *(v287 + 24);
          if (v289 == v288)
          {
            v295 = 0;
            v297 = v284;
            v296 = v283;
          }

          else
          {
            v290 = v286 & 0xFFFFFFFB | (4 * ((v285 >> 1) & 1));
            v359 = (v285 >> 2) & 1;
            do
            {
              v291 = *v289;
              v292 = v289[1];
              if (CSRangeIntersectsRange(*v289, v292, v283, v284))
              {
                v378[0] = CSRangeIntersectionRange(v291, v292, v283, v284);
                v378[1] = v293;
                v379.n128_u32[0] = 1;
                v379.n128_u32[1] = v290;
                v379.n128_u64[1] = v290;
                v380 = 0;
                *v381 = i[1].n128_u8[9];
                memset(&v381[4], 0, 23);
                *&v381[27] = v359;
                v382 = 0;
                v383 = 0;
                v384 = 0;
                v385 = 0;
                LODWORD(v386) = 3;
                HIDWORD(v386) = i[1].n128_u32[3];
                LOBYTE(v387) = 0;
                v294 = v293 >> 14;
                v391 = 0;
                std::vector<unsigned short>::vector[abi:ne200100](v367, v293 >> 14);
                v392 = *v367;
                v393 = v368;
                v367[1] = 0;
                v368 = 0;
                v367[0] = 0;
                v394 = 1;
                std::vector<unsigned short>::vector[abi:ne200100](v375, v294);
                v395 = *v375;
                v396 = v376;
                v375[1] = 0;
                v376 = 0;
                v375[0] = 0;
                v397 = 1;
                v399 = 0;
                v400 = 0;
                v398 = 0;
                std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](&v425, v378);
                *&v374 = &v398;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v374);
                if (v397 == 1 && v395)
                {
                  *(&v395 + 1) = v395;
                  operator delete(v395);
                }

                if (v394 == 1 && v392)
                {
                  *(&v392 + 1) = v392;
                  operator delete(v392);
                }

                if (v391 == 1 && v390 < 0)
                {
                  operator delete(v387);
                }

                if (v375[0])
                {
                  v375[1] = v375[0];
                  operator delete(v375[0]);
                }

                if (v367[0])
                {
                  v367[1] = v367[0];
                  operator delete(v367[0]);
                }
              }

              v289 += 5;
            }

            while (v289 != v288);
            v295 = v425;
            v296 = v409[0];
            v297 = v409[1];
          }

          v298 = 0;
          v299 = 0;
          v367[0] = 0;
          v367[1] = 0;
          v368 = 0;
          if (v296 < &v297[v296])
          {
            v300 = &v283[v284];
            do
            {
              *v378 = *i;
              v379 = i[1];
              v380 = 0x4000;
              *v381 = v296;
              *&v381[8] = v367;
              if (v295 == v426)
              {
                set_up_mapped_memory_cache_for_exclave_core_file<SizeAndEndianness<Pointer64,LittleEndian>>(char const*,unsigned long long,vas_segmentinfo_table,CSExclaveCoreFileType,mapped_memory_t *)::{lambda(unsigned long long)#1}::operator()(v378, v300);
                v296 = v300;
              }

              else
              {
                v301 = *v295;
                if (v296 < *v295)
                {
                  if (v300 >= v301)
                  {
                    v302 = *v295;
                  }

                  else
                  {
                    v302 = v300;
                  }

                  set_up_mapped_memory_cache_for_exclave_core_file<SizeAndEndianness<Pointer64,LittleEndian>>(char const*,unsigned long long,vas_segmentinfo_table,CSExclaveCoreFileType,mapped_memory_t *)::{lambda(unsigned long long)#1}::operator()(v378, v302);
                  v301 = *v295;
                }

                v296 = v295[1] + v301;
                v295 += 28;
              }
            }

            while (v296 < v409[1] + v409[0]);
            v299 = v367[0];
            v298 = v367[1];
          }

          std::vector<CSCppCoreFileRegionInfo>::__insert_with_size[abi:ne200100]<std::__wrap_iter<CSCppCoreFileRegionInfo*>,std::__wrap_iter<CSCppCoreFileRegionInfo*>>(&v425, v426, v299, v298, 0x6DB6DB6DB6DB6DB7 * ((v298 - v299) >> 5));
          v303 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v426 - v425) >> 5));
          if (v426 == v425)
          {
            v304 = 0;
          }

          else
          {
            v304 = v303;
          }

          _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(v425, v426, v304, 1);
          std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](v406, v409);
          v378[0] = v367;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v378);
          v378[0] = &v425;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v378);
          if (v424 == 1 && v422)
          {
            *(&v422 + 1) = v422;
            operator delete(v422);
          }

          if (v421 == 1 && v419)
          {
            *(&v419 + 1) = v419;
            operator delete(v419);
          }

          if (v418 == 1 && v417 < 0)
          {
            operator delete(v414);
          }
        }

        v305 = *(v334 + 24);
        v306 = *(v305 + 16);
        v307 = *(v305 + 24);
        if (v306 != v307)
        {
          do
          {
            v374 = 0uLL;
            v308 = *v306;
            v309 = *(v306 + 8);
            *&v374 = *v306;
            *(&v374 + 1) = v309;
            v378[0] = 0;
            v378[1] = 0;
            v379.n128_u64[0] = 0;
            v310 = v406[0];
            v311 = v406[1];
            while (v310 != v311)
            {
              if (CSRangeContainsRange(*v310, *(v310 + 1), v308, v309))
              {
                v317 = *(&v374 + 1) + v374;
LABEL_601:
                v374 = v317;
                goto LABEL_602;
              }

              v312 = CSRangeIntersectsRange(v374, *(&v374 + 1), *v310, *(v310 + 1));
              v313 = *v310;
              if (v312)
              {
                v314 = *(v310 + 1);
                if (v374 - v313 >= v314)
                {
                  v409[0] = v374;
                  v409[1] = (v313 - v374);
                  std::vector<_CSTypeRef>::push_back[abi:ne200100](v378, v409);
                  v315 = *v310;
                  v316 = *(v310 + 1);
                  v317 = *(&v374 + 1) + v374;
                  if (*(&v374 + 1) + v374 - *v310 < v316)
                  {
                    goto LABEL_601;
                  }

                  v308 = v316 + v315;
                  v309 = v317 - (v316 + v315);
                }

                else
                {
                  v308 = v314 + v313;
                  v309 = v374 - (v314 + v313) + *(&v374 + 1);
                }

                *&v374 = v308;
                *(&v374 + 1) = v309;
              }

              else
              {
                v309 = *(&v374 + 1);
                v308 = v374;
                if (v313 > *(&v374 + 1) + v374)
                {
                  break;
                }
              }

              v310 += 224;
            }

            if (v309)
            {
              std::vector<_CSTypeRef>::push_back[abi:ne200100](v378, &v374);
            }

LABEL_602:
            v318 = v378[0];
            v319 = v378[1];
            if (v378[0] != v378[1])
            {
              do
              {
                LOWORD(v370) = 9;
                v320 = *(v306 + 32);
                v321 = *(v306 + 36);
                v322 = *v318;
                *v410 = 0;
                *&v410[4] = v320 | 1;
                if ((v320 & 4) != 0)
                {
                  v323 = 3;
                }

                else
                {
                  v323 = 1;
                }

                *v409 = v322;
                *&v410[8] = v321 | 1;
                v411 = 0;
                v412 = 0;
                *v413 = 0;
                *&v413[4] = 0;
                memset(&v410[12], 0, 41);
                *&v413[12] = 3;
                *&v413[16] = v323;
                LOBYTE(v414) = 0;
                v418 = 0;
                std::vector<unsigned short>::vector[abi:ne200100](v367, v318[1] >> 14);
                v419 = *v367;
                v420 = v368;
                v367[1] = 0;
                v368 = 0;
                v367[0] = 0;
                v421 = 1;
                std::vector<unsigned short>::vector[abi:ne200100](v375, v318[1] >> 14);
                v422 = *v375;
                v423 = v376;
                v375[1] = 0;
                v376 = 0;
                v375[0] = 0;
                v424 = 1;
                v426 = 0;
                v427 = 0;
                v425 = 0;
                std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](v406, v409);
                p_src = &v425;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&p_src);
                if (v424 == 1 && v422)
                {
                  *(&v422 + 1) = v422;
                  operator delete(v422);
                }

                if (v421 == 1 && v419)
                {
                  *(&v419 + 1) = v419;
                  operator delete(v419);
                }

                if (v418 == 1 && v417 < 0)
                {
                  operator delete(v414);
                }

                if (v375[0])
                {
                  v375[1] = v375[0];
                  operator delete(v375[0]);
                }

                if (v367[0])
                {
                  v367[1] = v367[0];
                  operator delete(v367[0]);
                }

                v318 += 2;
              }

              while (v318 != v319);
              v324 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v406[1] - v406[0]) >> 5));
              if (v406[1] == v406[0])
              {
                v325 = 0;
              }

              else
              {
                v325 = v324;
              }

              _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(v406[0], v406[1], v325, 1);
              v318 = v378[0];
            }

            if (v318)
            {
              v378[1] = v318;
              operator delete(v318);
            }

            v306 += 40;
          }

          while (v306 != v307);
          v305 = *(v334 + 24);
        }

        std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>::map[abi:ne200100](v409, v305 + 48);
        v378[1] = 0;
        v379.n128_u64[0] = 0;
        v378[0] = &v378[1];
        v326 = *(v334 + 24);
        v328 = *(v326 + 56);
        v327 = (v326 + 56);
        std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy((v327 - 1), v328);
        v329 = v378[1];
        *(v327 - 1) = v378[0];
        *v327 = v329;
        v330 = v379.n128_u64[0];
        v327[1] = v379.n128_u64[0];
        if (v330)
        {
          v329[2] = v327;
          v378[0] = &v378[1];
          v378[1] = 0;
          v379.n128_u64[0] = 0;
          v329 = 0;
        }

        else
        {
          *(v327 - 1) = v327;
        }

        std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v378, v329);
        LODWORD(p_src) = dup(*(*(v334 + 24) + 8));
        v331 = p_src != -1;
        if (p_src != -1)
        {
          v337 = *(v334 + 24);
          v367[1] = 0;
          v368 = 0;
          v367[0] = 0;
          std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(v367, v406[0], v406[1], 0x6DB6DB6DB6DB6DB7 * ((v406[1] - v406[0]) >> 5));
          v378[0] = 0;
          v378[1] = 0;
          v379.n128_u64[0] = 0;
          std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(v378, v367[0], v367[1], 0x6DB6DB6DB6DB6DB7 * ((v367[1] - v367[0]) >> 5));
          if (BYTE8(v371))
          {
            std::make_unique[abi:ne200100]<CSCppCoreFileExclavesMetadata,int const&,std::vector<mapped_memory_core_file_dumped_region_info_t> const&,_CSArchitecture const&,std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>> const&,std::optional<unsigned long long> const&,CSCppCoreFileRegionsTree,CSExclaveCoreFileType const&,long long &,0>();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v332 = "exclaves - failed to dup() core file file descriptor";
        std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v409, v409[1]);
        v409[0] = v406;
        std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v409);
LABEL_651:
        if (v433)
        {
          *(&v433 + 1) = v433;
          operator delete(v433);
        }

        CSCppCoreFileMemory::~CSCppCoreFileMemory(&__src);
        a3 = v352;
        if (!v331)
        {
          release_mapped_memory_cache(v334);
          v80 = 0;
          v334 = v332;
        }

        else
        {
LABEL_654:
          clear_mapped_memory(v334);
          v80 = 1;
        }

LABEL_169:
        *a3 = v334;
        *(a3 + 8) = v80;
        CSCppFileMemory::~CSCppFileMemory(&v362);
        goto LABEL_644;
      }
    }

    else
    {
      v48 = 1;
    }

    v334 = "failed to read core file header";
    goto LABEL_252;
  }

  v8 = v7[5];
  v367[0] = 0;
  v367[1] = 0;
  v368 = 0;
  CSCppFileMemory::CSCppFileMemory(&__src, a1, 0);
  p_src = &__src;
  v9 = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&p_src, 0, 1);
  if (!v9)
  {
    v10 = 1;
    goto LABEL_171;
  }

  v10 = 1;
  if (v9[3] != 4)
  {
LABEL_171:
    v333 = "failed to read core file header";
    goto LABEL_214;
  }

  v349 = a3;
  LODWORD(v348) = 0;
  v375[1] = 0;
  v376 = 0;
  v375[0] = &v375[1];
  v365 = 0;
  v432 = 0;
  v11 = v9[4];
  v12 = v9 + v9[5] + 28;
  LOBYTE(v362) = 0;
  LOBYTE(v409[0]) = 0;
  LOBYTE(v371) = 0;
  BYTE8(v371) = 0;
  LODWORD(v433) = v11;
  *(&v433 + 1) = v9;
  v434 = v12;
  v435 = v9 + 7;
  v13 = MEMORY[0x1E69E9A60];
  while (1)
  {
    v14 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v433);
    v16 = v14;
    if (!v14)
    {
      break;
    }

    v17 = *v14;
    if (*v14 == 1)
    {
      v380 = 0;
      v379 = 0u;
      v27 = *(v14 + 24);
      v28 = *(v14 + 32);
      v29.n128_u64[0] = v27;
      v29.n128_u64[1] = HIDWORD(v27);
      v30 = v29;
      v29.n128_u64[0] = v28;
      v29.n128_u64[1] = HIDWORD(v28);
      *v378 = v30;
      v379 = v29;
      v380 = vrev64_s32(*(v14 + 40));
      std::vector<mapped_memory_core_file_dumped_region_info_t>::push_back[abi:ne200100](v367, v378);
    }

    else if (v17 == 49)
    {
      if (!strncmp((v14 + 8), "vm info", 0x10uLL))
      {
        parse_vm_info_note(a1, v16, v378);
        v19 = v379.n128_i8[8];
        if (v379.n128_u8[8])
        {
          std::optional<CSCppCoreFileRegionsTree>::operator=[abi:ne200100]<CSCppCoreFileRegionsTree const&,void>(&v362, v378);
        }

        else
        {
          v34 = v375[0];
          if (v375[0] != &v375[1])
          {
            do
            {
              mach_port_deallocate(*v13, *(v34 + 8));
              v35 = v34[1];
              if (v35)
              {
                do
                {
                  v36 = v35;
                  v35 = *v35;
                }

                while (v35);
              }

              else
              {
                do
                {
                  v36 = v34[2];
                  v23 = *v36 == v34;
                  v34 = v36;
                }

                while (!v23);
              }

              v34 = v36;
            }

            while (v36 != &v375[1]);
          }

          v353 = "failed to parse 'vm info' LC_NOTE";
        }

        if (v379.n128_u8[8] == 1)
        {
          v406[0] = v378;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v406);
        }

        goto LABEL_78;
      }

      if (!strncmp(v16->data_owner, "task crashinfo", 0x10uLL))
      {
        parse_task_crashinfo_note(a1, v16, v378);
        v19 = v405;
        if (v405)
        {
          std::optional<CSCppCoreFileTaskCrashinfo>::operator=[abi:ne200100]<CSCppCoreFileTaskCrashinfo const&,void>(v409, v378);
        }

        else
        {
          v37 = v375[0];
          if (v375[0] != &v375[1])
          {
            do
            {
              mach_port_deallocate(*v13, *(v37 + 8));
              v38 = v37[1];
              if (v38)
              {
                do
                {
                  v39 = v38;
                  v38 = *v38;
                }

                while (v38);
              }

              else
              {
                do
                {
                  v39 = v37[2];
                  v23 = *v39 == v37;
                  v37 = v39;
                }

                while (!v23);
              }

              v37 = v39;
            }

            while (v39 != &v375[1]);
          }

          v353 = "failed to parse 'task crashinfo' LC_NOTE";
        }

        if (v405 == 1)
        {
          if (v404 == 1 && __p)
          {
            v403 = __p;
            operator delete(__p);
          }

          if (v401 == 1 && v399)
          {
            v400 = v399;
            operator delete(v399);
          }

          if (v389 == 1 && v388 < 0)
          {
            operator delete(v386);
          }

          if (v385 == 1 && SHIBYTE(v384) < 0)
          {
            operator delete(*&v381[24]);
          }

          if (v381[16] == 1 && (v381[15] & 0x80000000) != 0)
          {
            operator delete(v380);
          }

          if (v379.n128_u8[8] == 1 && v379.n128_i8[7] < 0)
          {
            operator delete(v378[0]);
          }
        }

        goto LABEL_78;
      }

      if (!strncmp(v16->data_owner, "addrable bits", 0x10uLL))
      {
        v25 = parse_addrable_bits_note(a1, v16);
        if ((v26 & 1) == 0)
        {
          v145 = v375[0];
          if (v375[0] == &v375[1])
          {
            v10 = 1;
            v333 = "failed to parse 'addrable bits' LC_NOTE";
          }

          else
          {
            v333 = "failed to parse 'addrable bits' LC_NOTE";
            do
            {
              mach_port_deallocate(*v13, *(v145 + 8));
              v146 = v145[1];
              if (v146)
              {
                do
                {
                  v147 = v146;
                  v146 = *v146;
                }

                while (v146);
              }

              else
              {
                do
                {
                  v147 = v145[2];
                  v23 = *v147 == v145;
                  v145 = v147;
                }

                while (!v23);
              }

              v145 = v147;
            }

            while (v147 != &v375[1]);
            v10 = 1;
          }

          a3 = v349;
          goto LABEL_192;
        }

        *&v371 = v25;
        BYTE8(v371) = 1;
      }
    }

    else if (v17 == 4)
    {
      parse_thread_load_command(v14, v378);
      if ((v379.n128_u8[8] & 1) == 0)
      {
        v31 = v375[0];
        if (v375[0] != &v375[1])
        {
          do
          {
            mach_port_deallocate(*v13, *(v31 + 8));
            v32 = v31[1];
            if (v32)
            {
              do
              {
                v33 = v32;
                v32 = *v32;
              }

              while (v32);
            }

            else
            {
              do
              {
                v33 = v31[2];
                v23 = *v33 == v31;
                v31 = v33;
              }

              while (!v23);
            }

            v31 = v33;
          }

          while (v33 != &v375[1]);
        }

        v19 = 0;
        v24 = "failed to parse thread load command";
        goto LABEL_38;
      }

      name[0] = 0;
      v18 = mach_port_allocate(*v13, 4u, name);
      v19 = v18 == 0;
      if (v18)
      {
        v20 = v375[0];
        if (v375[0] != &v375[1])
        {
          do
          {
            mach_port_deallocate(*v13, *(v20 + 8));
            v21 = v20[1];
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = v20[2];
                v23 = *v22 == v20;
                v20 = v22;
              }

              while (!v23);
            }

            v20 = v22;
          }

          while (v22 != &v375[1]);
        }

        v24 = "failed to allocate dummy port representing thread";
LABEL_38:
        v353 = v24;
        goto LABEL_39;
      }

      LODWORD(v406[0]) = v348;
      std::map<int,std::vector<unsigned char>>::map[abi:ne200100](&v406[1], v378);
      *&v374 = name;
      v40 = std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v375, name);
      v42 = v40 + 7;
      v41 = v40[7];
      *(v40 + 10) = v406[0];
      v341 = v40 + 6;
      std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy((v40 + 6), v41);
      v43 = v407;
      *(v42 - 1) = v406[1];
      *v42 = v43;
      v44 = v408;
      v42[1] = v408;
      if (v44)
      {
        v43[2] = v42;
        v406[1] = &v407;
        v407 = 0;
        v408 = 0;
        v43 = 0;
      }

      else
      {
        *v341 = v42;
      }

      LODWORD(v348) = v348 + 1;
      std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(&v406[1], v43);
LABEL_39:
      if (v379.n128_u8[8] == 1)
      {
        std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(v378, v378[1]);
      }

LABEL_78:
      if ((v19 & 1) == 0)
      {
        v10 = 1;
        a3 = v349;
        v333 = v353;
        goto LABEL_192;
      }
    }
  }

  v81 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v367[1] - v367[0]) >> 3));
  if (v367[1] == v367[0])
  {
    v82 = 0;
  }

  else
  {
    v82 = v81;
  }

  *&v83 = std::__introsort<std::_ClassicAlgPolicy,std::expected<mapped_memory_t *,char const*> create_mapped_memory_cache_for_core_file_without_exclave_metadata_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long,char const*)::{lambda(mapped_memory_core_file_dumped_region_info_t const&,mapped_memory_core_file_dumped_region_info_t const&)#1} &,mapped_memory_core_file_dumped_region_info_t*,false>(v367[0], v367[1], v82, 1, v15).n128_u64[0];
  v84 = open(a1, 0x1000000, v83);
  name[0] = v84;
  if ((v84 & 0x80000000) == 0)
  {
    operator new();
  }

  v89 = v375[0];
  v333 = "failed to open core file";
  if (v375[0] != &v375[1])
  {
    do
    {
      mach_port_deallocate(*v13, *(v89 + 8));
      v90 = v89[1];
      if (v90)
      {
        do
        {
          v91 = v90;
          v90 = *v90;
        }

        while (v90);
      }

      else
      {
        do
        {
          v91 = v89[2];
          v23 = *v91 == v89;
          v89 = v91;
        }

        while (!v23);
      }

      v89 = v91;
    }

    while (v91 != &v375[1]);
  }

  a3 = v349;
  v10 = v84 >> 31;
LABEL_192:
  if (v432 == 1)
  {
    if (v431 == 1 && v429)
    {
      v430 = v429;
      operator delete(v429);
    }

    if (v428 == 1 && v426)
    {
      v427 = v426;
      operator delete(v426);
    }

    if (v416 == 1 && v415 < 0)
    {
      operator delete(*&v413[12]);
    }

    if (v413[4] == 1 && (v413[3] & 0x80000000) != 0)
    {
      operator delete(*&v410[48]);
    }

    if (v410[40] == 1 && (v410[39] & 0x80000000) != 0)
    {
      operator delete(*&v410[16]);
    }

    if (v410[8] == 1 && (v410[7] & 0x80000000) != 0)
    {
      operator delete(v409[0]);
    }
  }

  if (v365 == 1)
  {
    v409[0] = &v362;
    std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v409);
  }

  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v375, v375[1]);
LABEL_214:
  CSCppFileMemory::~CSCppFileMemory(&__src);
  if (v367[0])
  {
    v367[1] = v367[0];
    operator delete(v367[0]);
  }

  if ((v10 | a2 ^ 1))
  {
    v92 = v10 ^ 1;
    goto LABEL_643;
  }

  v354 = v333;
  if (!CSArchitectureIsArm64(*(*(v333 + 24) + 40)))
  {
    goto LABEL_642;
  }

  *&v433 = CSSymbolicatorCreateWithCoreFilePathAndFlags(a1, 0, 0, 0);
  *(&v433 + 1) = v93;
  if (CSIsNull(v433, v93))
  {
    goto LABEL_642;
  }

  v378[0] = &unk_1F55088F0;
  v378[1] = &v433;
  v379.n128_u64[1] = v378;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v409, v378);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v378);
  v94 = CSSymbolicatorGetSymbolOwnerWithNameAtTime(v433, *(&v433 + 1), "dyld", 0x8000000000000000);
  v96 = v95;
  v97 = CSIsNull(v94, v95);
  v362 = 0;
  v363 = 0;
  v364 = 0;
  if (v97)
  {
    __src = CSSymbolicatorGetSymbolOwner(v433, *(&v433 + 1));
    v437 = v98;
    std::vector<_CSTypeRef>::__assign_with_size[abi:ne200100]<_CSTypeRef const*,_CSTypeRef const*>(&v362, &__src, &v438, 1uLL);
    v99 = 1;
  }

  else
  {
    __src = v94;
    v437 = v96;
    v438 = CSSymbolicatorGetSymbolOwnerWithNameAtTime(v433, *(&v433 + 1), "liblibc_plat.dylib", 0x8000000000000000);
    v439 = v110;
    std::vector<_CSTypeRef>::__assign_with_size[abi:ne200100]<_CSTypeRef const*,_CSTypeRef const*>(&v362, &__src, v440, 2uLL);
    v99 = 0;
  }

  CSCppCoreFileMemory::CSCppCoreFileMemory(&__src, v333);
  v111 = v362;
  v112 = v363;
  if (v362 == v363)
  {
LABEL_271:
    v124 = 0;
    v360 = 0;
    v125 = 0;
    v126 = 0;
    v356 = 0;
  }

  else
  {
    v113 = a3;
    v114 = 0;
    v115 = 0;
    do
    {
      v116 = CSSymbolOwnerGetSymbolWithMangledName(v111->n128_u64[0], v111->n128_i64[1], "_vas__segmentinfo_table");
      v118 = v117;
      if (!CSIsNull(v116, v117))
      {
        v119 = CSSymbolGetRange(v116, v118);
        v120 = (*(__src + 32))(&__src, v119, 4);
        if (v121 >= 4)
        {
          if (*v120)
          {
            v115 = *v120;
          }

          v114 |= *v120 != 0;
        }
      }

      ++v111;
    }

    while (v111 != v112);
    if (v114)
    {
      v122 = (*(__src + 32))(&__src, v115, 24);
      a3 = v113;
      if (v123 < 0x18)
      {
        goto LABEL_271;
      }

      v124 = *(v122 + 16);
      v360 = *(v122 + 17);
      v125 = *(v122 + 18);
      v126 = 1;
      v338 = *(v122 + 8);
      v356 = *v122;
    }

    else
    {
      v124 = 0;
      v360 = 0;
      v125 = 0;
      v126 = 0;
      v356 = 0;
      a3 = v113;
    }
  }

  CSCppCoreFileMemory::~CSCppCoreFileMemory(&__src);
  if (v362)
  {
    v363 = v362;
    operator delete(v362);
  }

  DeferredLambda::~DeferredLambda(v409);
  if (!v126)
  {
    goto LABEL_642;
  }

  LODWORD(p_src) = v99;
  CSCppCoreFileMemory::CSCppCoreFileMemory(&__src, v354);
  v351 = a3;
  v152 = 0;
  v344 = 0;
  v339 = 0;
  v342 = 0;
  v362 = 0;
  v363 = 0;
  v364 = 0;
  LOBYTE(v375[0]) = 0;
  LOBYTE(v375[1]) = 0;
  v153 = 1;
  while (v153)
  {
    if (v124 != 1)
    {
      v241 = 0;
      v333 = "exclaves - unable to analyze this vsit_version using this tool";
      goto LABEL_639;
    }

    if (v125 > v360)
    {
      v241 = 0;
      v333 = "exclaves - invalid exclave metadata";
      goto LABEL_639;
    }

    v378[0] = 0;
    v378[1] = 0;
    v379.n128_u64[0] = 0;
    if (v125)
    {
      v154 = v125;
      v155 = v356;
      while (1)
      {
        v156 = (*(__src + 32))(&__src, v155, 4);
        if (v157 < 4)
        {
          LOBYTE(v158) = 0;
          v124 = 1;
          v176 = "exclaves - failed to read segmentinfo";
          goto LABEL_343;
        }

        v158 = *v156;
        if (!v158)
        {
          v124 = 1;
          v176 = "exclaves - invalid segmentinfo_page address";
          goto LABEL_343;
        }

        v159 = (*(__src + 32))(&__src, v158, 32);
        if (v160 < 0x20)
        {
          v177 = "exclaves - failed to read segmentinfo_page";
LABEL_341:
          v348 = v177;
          LOBYTE(v158) = 0;
          v124 = 1;
          goto LABEL_344;
        }

        v161 = *v159;
        LODWORD(v406[0]) = *(v159 + 1);
        *(v406 + 3) = *(v159 + 1);
        v162 = *(v159 + 1);
        v163 = v159[16];
        *&v433 = *(v159 + 17);
        *(&v433 + 7) = *(v159 + 3);
        if (v161 != 1)
        {
          v177 = "exclaves - unable to analyze this vsip_version version using this tool";
          goto LABEL_341;
        }

        if (!v163)
        {
          if (LOBYTE(v375[1]) == 1)
          {
            if (v162 != v375[0])
            {
              goto LABEL_325;
            }
          }

          else
          {
            v375[0] = v162;
            LOBYTE(v375[1]) = 1;
          }

          *(&v409[1] + 1) = v406[0];
          HIDWORD(v409[1]) = *(v406 + 3);
          *&v410[9] = v433;
          *&v410[16] = *(&v433 + 7);
          v409[0] = v158;
          LOBYTE(v409[1]) = 1;
          *v410 = v162;
          v410[8] = 0;
          std::vector<mapped_memory_core_file_dumped_region_info_t>::push_back[abi:ne200100](v378, v409);
        }

LABEL_325:
        v155 += 4;
        if (!--v154)
        {
          v164 = v378[0];
          v165 = v378[1];
          if (v378[0] == v378[1])
          {
            break;
          }

          while (!v164[7])
          {
LABEL_333:
            v164 += 20;
            if (v164 == v165)
            {
              v171 = (*(__src + 32))(&__src, v338, 24);
              v153 = v172 > 0x17;
              if (v172 < 0x18)
              {
                v173 = 0;
                v174 = v152;
                v124 = v344;
                v125 = v339;
                v175 = v342;
              }

              else
              {
                v173 = *v171;
                v174 = *(v171 + 1) | ((*(v171 + 5) | (v171[7] << 16)) << 32);
                v338 = *(v171 + 1);
                v124 = v171[16];
                v175 = v171[17];
                v125 = v171[18];
              }

              LOBYTE(v158) = 1;
              v344 = v124;
              v339 = v125;
              v342 = v175;
              v360 = v175;
              v152 = v174;
              v356 = v173 | (v174 << 8);
              goto LABEL_345;
            }
          }

          v166 = 0;
          while (1)
          {
            v167 = (*(__src + 32))(&__src, *v164 + *(v164 + 9) + v166 * *(v164 + 10), 32);
            if (v168 < 0x20)
            {
              break;
            }

            v169 = v167[1];
            *v409 = *v167;
            *v410 = v169;
            v410[16] = 1;
            if (atomic_load(&v410[8]))
            {
              std::vector<vas_segment>::push_back[abi:ne200100](&v362, v409);
            }

            if (++v166 >= v164[7])
            {
              goto LABEL_333;
            }
          }

          LOBYTE(v158) = 0;
          v124 = 1;
          v176 = "exclaves - failed to read vas_segment_t";
          goto LABEL_343;
        }
      }
    }

    LOBYTE(v158) = 0;
    v124 = 1;
    v176 = "exclaves - failed to get any segmentinfo_pages";
LABEL_343:
    v348 = v176;
LABEL_344:
    v153 = 1;
LABEL_345:
    if (v378[0])
    {
      v378[1] = v378[0];
      operator delete(v378[0]);
    }

    if ((v158 & 1) == 0)
    {
      v241 = 0;
      v333 = v348;
      goto LABEL_639;
    }
  }

  v178 = 126 - 2 * __clz((v363 - v362) >> 5);
  if (v363 == v362)
  {
    v179 = 0;
  }

  else
  {
    v179 = v178;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E_P11vas_segmentLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(v362, v363, v179, 1, v151);
  *v410 = 0;
  v409[1] = 0;
  v409[0] = &v409[1];
  v378[0] = 1;
  v180 = v362;
  if ((v363 - v362) >= 0x21)
  {
    v181 = 1;
    do
    {
      v182 = &v180[32 * v181];
      if (CSRangeIntersectsRange(*(v182 - 4), *(v182 - 3), *v182, v182[1]))
      {
        v183 = *(v182 - 2);
        v184 = v182[2];
        if (v183 >= v184)
        {
          if (v183 <= v184)
          {
            std::__tree<TRange<Pointer64>>::destroy(v409, v409[1]);
            v241 = 0;
            v333 = "exclaves - found overlapping vas_segment_ts";
            goto LABEL_639;
          }

          std::__tree<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v409, v378);
        }

        else
        {
          *&v433 = v378[0] - 1;
          std::__tree<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v409, &v433);
        }
      }

      v181 = v378[0] + 1;
      v378[0] = v181;
      v180 = v362;
      v185 = v363;
    }

    while (v181 < (v363 - v362) >> 5);
    v186 = v409[0];
    if (v409[0] != &v409[1])
    {
      do
      {
        v187 = v362 + 32 * v186[4];
        v188 = v185 - (v187 + 32);
        if (v185 != (v187 + 32))
        {
          memmove(v362 + 32 * v186[4], v187 + 32, v185 - (v187 + 32));
        }

        v185 = &v187[v188];
        v363 = &v187[v188];
        v189 = v186[1];
        if (v189)
        {
          do
          {
            v190 = v189;
            v189 = *v189;
          }

          while (v189);
        }

        else
        {
          do
          {
            v190 = v186[2];
            v23 = *v190 == v186;
            v186 = v190;
          }

          while (!v23);
        }

        v186 = v190;
      }

      while (v190 != &v409[1]);
    }
  }

  std::__tree<TRange<Pointer64>>::destroy(v409, v409[1]);
  v433 = 0uLL;
  v434 = 0;
  v191 = v362;
  v345 = v363;
  if (v362 != v363)
  {
    do
    {
      v192 = v191->n128_u64[0];
      v193 = v191->n128_i64[1];
      v409[0] = v191->n128_u64[0];
      v409[1] = v193;
      memset(v410, 0, 52);
      v410[52] = 1;
      v411 = 0;
      v412 = 0;
      *v413 = 0uLL;
      *&v413[16] = v191[1].n128_u32[3];
      LOBYTE(v414) = 0;
      v418 = 0;
      LOBYTE(v419) = 0;
      v421 = 0;
      LOBYTE(v422) = 0;
      v424 = 0;
      v426 = 0;
      v427 = 0;
      v425 = 0;
      v194 = v191[1].n128_u32[3];
      if (v194)
      {
        v195 = 3;
      }

      else
      {
        v195 = 1;
      }

      LOWORD(v374) = 9;
      sig = v354[3].__m_.__sig;
      v198 = *(sig + 16);
      v197 = *(sig + 24);
      if (v198 == v197)
      {
        v204 = 0;
        v206 = v193;
        v205 = v192;
      }

      else
      {
        v199 = v195 & 0xFFFFFFFB | (4 * ((v194 >> 1) & 1));
        v358 = (v194 >> 2) & 1;
        do
        {
          v200 = *v198;
          v201 = v198[1];
          if (CSRangeIntersectsRange(*v198, v201, v192, v193))
          {
            v378[0] = CSRangeIntersectionRange(v200, v201, v192, v193);
            v378[1] = v202;
            v379.n128_u32[0] = 1;
            v379.n128_u32[1] = v199;
            v379.n128_u64[1] = v199;
            v380 = 0;
            *v381 = v191[1].n128_u8[9];
            memset(&v381[4], 0, 23);
            *&v381[27] = v358;
            v382 = 0;
            v383 = 0;
            v384 = 0;
            v385 = 0;
            LODWORD(v386) = 3;
            HIDWORD(v386) = v191[1].n128_u32[3];
            LOBYTE(v387) = 0;
            v203 = v202 >> 14;
            v391 = 0;
            std::vector<unsigned short>::vector[abi:ne200100](v406, v202 >> 14);
            v392 = *v406;
            v393 = v407;
            v407 = 0;
            v406[1] = 0;
            v406[0] = 0;
            v394 = 1;
            std::vector<unsigned short>::vector[abi:ne200100](v367, v203);
            v395 = *v367;
            v396 = v368;
            v367[1] = 0;
            v368 = 0;
            v367[0] = 0;
            v397 = 1;
            v399 = 0;
            v400 = 0;
            v398 = 0;
            std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](&v425, v378);
            *&v371 = &v398;
            std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v371);
            if (v397 == 1 && v395)
            {
              *(&v395 + 1) = v395;
              operator delete(v395);
            }

            if (v394 == 1 && v392)
            {
              *(&v392 + 1) = v392;
              operator delete(v392);
            }

            if (v391 == 1 && v390 < 0)
            {
              operator delete(v387);
            }

            if (v367[0])
            {
              v367[1] = v367[0];
              operator delete(v367[0]);
            }

            if (v406[0])
            {
              v406[1] = v406[0];
              operator delete(v406[0]);
            }
          }

          v198 += 5;
        }

        while (v198 != v197);
        v204 = v425;
        v205 = v409[0];
        v206 = v409[1];
      }

      v207 = 0;
      v208 = 0;
      v406[1] = 0;
      v406[0] = 0;
      v407 = 0;
      if (v205 < &v206[v205])
      {
        v209 = &v192[v193];
        do
        {
          *v378 = *v191;
          v379 = v191[1];
          v380 = 0x4000;
          *v381 = v205;
          *&v381[8] = v406;
          if (v204 == v426)
          {
            set_up_mapped_memory_cache_for_exclave_core_file<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long long,vas_segmentinfo_table,CSExclaveCoreFileType,mapped_memory_t *)::{lambda(unsigned long long)#1}::operator()(v378, v209);
            v205 = v209;
          }

          else
          {
            v210 = *v204;
            if (v205 < *v204)
            {
              if (v209 >= v210)
              {
                v211 = *v204;
              }

              else
              {
                v211 = v209;
              }

              set_up_mapped_memory_cache_for_exclave_core_file<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long long,vas_segmentinfo_table,CSExclaveCoreFileType,mapped_memory_t *)::{lambda(unsigned long long)#1}::operator()(v378, v211);
              v210 = *v204;
            }

            v205 = v204[1] + v210;
            v204 += 28;
          }
        }

        while (v205 < v409[1] + v409[0]);
        v208 = v406[0];
        v207 = v406[1];
      }

      std::vector<CSCppCoreFileRegionInfo>::__insert_with_size[abi:ne200100]<std::__wrap_iter<CSCppCoreFileRegionInfo*>,std::__wrap_iter<CSCppCoreFileRegionInfo*>>(&v425, v426, v208, v207, 0x6DB6DB6DB6DB6DB7 * ((v207 - v208) >> 5));
      v212 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v426 - v425) >> 5));
      if (v426 == v425)
      {
        v213 = 0;
      }

      else
      {
        v213 = v212;
      }

      _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(v425, v426, v213, 1);
      std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](&v433, v409);
      v378[0] = v406;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v378);
      v378[0] = &v425;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v378);
      if (v424 == 1 && v422)
      {
        *(&v422 + 1) = v422;
        operator delete(v422);
      }

      if (v421 == 1 && v419)
      {
        *(&v419 + 1) = v419;
        operator delete(v419);
      }

      if (v418 == 1 && v417 < 0)
      {
        operator delete(v414);
      }

      v191 += 2;
    }

    while (v191 != v345);
  }

  v214 = v354;
  v215 = v354[3].__m_.__sig;
  v216 = *(v215 + 16);
  v217 = *(v215 + 24);
  if (v216 != v217)
  {
    do
    {
      v371 = 0uLL;
      v218 = *v216;
      v219 = *(v216 + 8);
      *&v371 = *v216;
      *(&v371 + 1) = v219;
      v378[0] = 0;
      v378[1] = 0;
      v379.n128_u64[0] = 0;
      v221 = *(&v433 + 1);
      for (j = v433; j != v221; j += 224)
      {
        if (CSRangeContainsRange(*j, *(j + 8), v218, v219))
        {
          v227 = *(&v371 + 1) + v371;
LABEL_436:
          v371 = v227;
          goto LABEL_437;
        }

        v222 = CSRangeIntersectsRange(v371, *(&v371 + 1), *j, *(j + 8));
        v223 = *j;
        if (v222)
        {
          v224 = *(j + 8);
          if (v371 - v223 >= v224)
          {
            v409[0] = v371;
            v409[1] = (v223 - v371);
            std::vector<_CSTypeRef>::push_back[abi:ne200100](v378, v409);
            v225 = *j;
            v226 = *(j + 8);
            v227 = *(&v371 + 1) + v371;
            if (*(&v371 + 1) + v371 - *j < v226)
            {
              goto LABEL_436;
            }

            v218 = v226 + v225;
            v219 = v227 - (v226 + v225);
          }

          else
          {
            v218 = v224 + v223;
            v219 = v371 - (v224 + v223) + *(&v371 + 1);
          }

          *&v371 = v218;
          *(&v371 + 1) = v219;
        }

        else
        {
          v219 = *(&v371 + 1);
          v218 = v371;
          if (v223 > *(&v371 + 1) + v371)
          {
            break;
          }
        }
      }

      if (v219)
      {
        std::vector<_CSTypeRef>::push_back[abi:ne200100](v378, &v371);
      }

LABEL_437:
      v228 = v378[0];
      v229 = v378[1];
      if (v378[0] != v378[1])
      {
        do
        {
          LOWORD(name[0]) = 9;
          v230 = *(v216 + 32);
          v231 = *(v216 + 36);
          v232 = *v228;
          *v410 = 0;
          *&v410[4] = v230 | 1;
          if ((v230 & 4) != 0)
          {
            v233 = 3;
          }

          else
          {
            v233 = 1;
          }

          *v409 = v232;
          *&v410[8] = v231 | 1;
          v411 = 0;
          v412 = 0;
          *v413 = 0;
          *&v413[4] = 0;
          memset(&v410[12], 0, 41);
          *&v413[12] = 3;
          *&v413[16] = v233;
          LOBYTE(v414) = 0;
          v418 = 0;
          std::vector<unsigned short>::vector[abi:ne200100](v406, v228[1] >> 14);
          v419 = *v406;
          v420 = v407;
          v407 = 0;
          v406[1] = 0;
          v406[0] = 0;
          v421 = 1;
          std::vector<unsigned short>::vector[abi:ne200100](v367, v228[1] >> 14);
          v422 = *v367;
          v423 = v368;
          v367[1] = 0;
          v368 = 0;
          v367[0] = 0;
          v424 = 1;
          v426 = 0;
          v427 = 0;
          v425 = 0;
          std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](&v433, v409);
          *&v374 = &v425;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v374);
          if (v424 == 1 && v422)
          {
            *(&v422 + 1) = v422;
            operator delete(v422);
          }

          if (v421 == 1 && v419)
          {
            *(&v419 + 1) = v419;
            operator delete(v419);
          }

          if (v418 == 1 && v417 < 0)
          {
            operator delete(v414);
          }

          if (v367[0])
          {
            v367[1] = v367[0];
            operator delete(v367[0]);
          }

          if (v406[0])
          {
            v406[1] = v406[0];
            operator delete(v406[0]);
          }

          v228 += 2;
        }

        while (v228 != v229);
        v234 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((*(&v433 + 1) - v433) >> 5));
        if (*(&v433 + 1) == v433)
        {
          v235 = 0;
        }

        else
        {
          v235 = v234;
        }

        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(v433, *(&v433 + 1), v235, 1);
        v228 = v378[0];
      }

      if (v228)
      {
        v378[1] = v228;
        operator delete(v228);
      }

      v216 += 40;
    }

    while (v216 != v217);
    v214 = v354;
    v215 = v354[3].__m_.__sig;
  }

  std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>::map[abi:ne200100](v409, v215 + 48);
  v378[1] = 0;
  v379.n128_u64[0] = 0;
  v378[0] = &v378[1];
  v236 = v214[3].__m_.__sig;
  v238 = *(v236 + 56);
  v237 = (v236 + 56);
  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy((v237 - 1), v238);
  v239 = v378[1];
  *(v237 - 1) = v378[0];
  *v237 = v239;
  v240 = v379.n128_u64[0];
  v237[1] = v379.n128_u64[0];
  if (v240)
  {
    v239[2] = v237;
    v378[0] = &v378[1];
    v378[1] = 0;
    v379.n128_u64[0] = 0;
    v239 = 0;
  }

  else
  {
    *(v237 - 1) = v237;
  }

  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v378, v239);
  LODWORD(v374) = dup(*(v214[3].__m_.__sig + 8));
  v241 = v374 != -1;
  if (v374 != -1)
  {
    v335 = v214[3].__m_.__sig;
    v407 = 0;
    v406[0] = 0;
    v406[1] = 0;
    std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(v406, v433, *(&v433 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v433 + 1) - v433) >> 5));
    v378[0] = 0;
    v378[1] = 0;
    v379.n128_u64[0] = 0;
    std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(v378, v406[0], v406[1], 0x6DB6DB6DB6DB6DB7 * ((v406[1] - v406[0]) >> 5));
    if (v375[1])
    {
      std::make_unique[abi:ne200100]<CSCppCoreFileExclavesMetadata,int const&,std::vector<mapped_memory_core_file_dumped_region_info_t> const&,_CSArchitecture const&,std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>> const&,std::optional<unsigned long long> const&,CSCppCoreFileRegionsTree,CSExclaveCoreFileType const&,long long &,0>();
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v333 = "exclaves - failed to dup() core file file descriptor";
  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v409, v409[1]);
  v409[0] = &v433;
  std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v409);
LABEL_639:
  if (v362)
  {
    v363 = v362;
    operator delete(v362);
  }

  CSCppCoreFileMemory::~CSCppCoreFileMemory(&__src);
  a3 = v351;
  if (!v241)
  {
    release_mapped_memory_cache(v354);
    v92 = 0;
  }

  else
  {
LABEL_642:
    v333 = v354;
    clear_mapped_memory(v354);
    v92 = 1;
  }

LABEL_643:
  *a3 = v333;
  *(a3 + 8) = v92;
LABEL_644:
  CSCppFileMemory::~CSCppFileMemory(v366);
  v336 = *MEMORY[0x1E69E9840];
}