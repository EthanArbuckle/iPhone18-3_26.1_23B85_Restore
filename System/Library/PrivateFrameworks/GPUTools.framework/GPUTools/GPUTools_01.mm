uint64_t GPUTools::Playback::TDFSSegment<131072ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 8;
    v5 = a2 + 8;
    v6 = 130872;
    do
    {
      GPUTools::FD::CoreFunction::operator=();
      v4 += 456;
      v5 += 456;
      v6 -= 456;
    }

    while (v6);
    *(a1 + 130880) = *(a2 + 130880);
  }

  return a1;
}

void *GPUTools::Playback::TDFSSegment<8192ul>::TDFSSegment(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a1;
  *a1 = &unk_2860A23C8;
  v8 = a1 + 1;
  GPUTools::FD::CoreFunction::CoreFunction((a1 + 1));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 58));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 115));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 172));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 229));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 286));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 343));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 400));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 457));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 514));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 571));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 628));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 685));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 742));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 799));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 856));
  GPUTools::FD::CoreFunction::CoreFunction((v7 + 913));
  v7[970] = 0;
  v9 = *(a2 + 456);
  v10 = 8;
  v78 = a5;
  v79 = v7;
  v76 = a2;
  while (v9 != *(a3 + 456))
  {
    GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::operator*(a2);
    GPUTools::FD::CoreFunction::operator=();
    v75 = v10;
    if (*(v8 + 5))
    {
      v11 = &v8[3 * *(v8 + 5) + 6];
      v12 = v8 + 6;
      v77 = v11;
      do
      {
        if ((*(v12 + 11) & 8) != 0)
        {
          v15 = *(v12 + 4);
          v16 = 8 * *(v12 + 10);
          if (v16 > v15)
          {
            v17 = *(v12 + 10);
            if (*(v12 + 4) < (8 * v17))
            {
              goto LABEL_7;
            }
          }

          else
          {
            if (*(v12 + 10))
            {
              operator new();
            }

            v17 = *(v12 + 10);
            if (*(v12 + 4) < (8 * v17))
            {
              goto LABEL_7;
            }
          }

          if (v17)
          {
            operator new();
          }

          if (*(v12 + 11))
          {
            v18 = GPUTools::FD::Argument::ViewAsCStringArray(v12);
            if (!*(v12 + 10))
            {
              a2 = v76;
LABEL_74:
              v11 = v77;
LABEL_110:
              *(v12 + 11) &= 0xFFB7u;
              *(v12 + 2) = *(v12 + 3);
              goto LABEL_7;
            }

            v19 = v18;
            v20 = 0;
            v21 = 1;
            v80 = 0;
LABEL_20:
            v23 = *v19;
            if ((*(v19 + 22) & 0x40) != 0)
            {
              if (!*(*(v23 + 4 * v20) + v23))
              {
LABEL_26:
                if (v16 <= v15)
                {
                  operator new();
                }

                if (v21)
                {
                  v32 = v80;
                  v33 = v80 >> 4;
                  if (((v80 >> 4) + 1) >> 60)
                  {
                    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
                  }

                  if (v80 >> 4 != -1)
                  {
                    if (!(((v80 >> 4) + 1) >> 60))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v34 = (16 * v33);
                  v80 = 16 * v33 + 16;
                  *v34 = 0;
                  v34[1] = 0;
                  memcpy(0, 0, v32);
                  v21 = 1;
                  a5 = v78;
                  v7 = v79;
                }

                else
                {
                  v21 = 0;
                }

                goto LABEL_19;
              }
            }

            else if (!**(v23 + 8 * v20))
            {
              goto LABEL_26;
            }

            [a4 getInfo:v82 forFilenameBuffer:? error:?];
            v24 = a5[1];
            if (!*&v24)
            {
              goto LABEL_46;
            }

            v25 = vcnt_s8(v24);
            v25.i16[0] = vaddlv_u8(v25);
            if (v25.u32[0] > 1uLL)
            {
              v26 = v82[0];
              if (v82[0] >= *&v24)
              {
                v26 = v82[0] % *&v24;
              }
            }

            else
            {
              v26 = (*&v24 - 1) & v82[0];
            }

            v27 = *(*a5 + 8 * v26);
            if (!v27 || (v28 = *v27) == 0)
            {
LABEL_46:
              if (v16 <= v15)
              {
                goto LABEL_47;
              }

              LODWORD(v22) = *(v12 + 10);
              goto LABEL_76;
            }

            if (v25.u32[0] < 2uLL)
            {
              v29 = *&v24 - 1;
              while (1)
              {
                v31 = v28[1];
                if (v31 == v82[0])
                {
                  if (v28[2] == v82[0])
                  {
                    goto LABEL_56;
                  }
                }

                else if ((v31 & v29) != v26)
                {
                  goto LABEL_46;
                }

                v28 = *v28;
                if (!v28)
                {
                  goto LABEL_46;
                }
              }
            }

            while (1)
            {
              v30 = v28[1];
              if (v30 == v82[0])
              {
                if (v28[2] == v82[0])
                {
LABEL_56:
                  v35 = v80;
                  v36 = v80 >> 4;
                  if (((v80 >> 4) + 1) >> 60)
                  {
                    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
                  }

                  if (v80 >> 4 != -1)
                  {
                    if (!(((v80 >> 4) + 1) >> 60))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  *(16 * v36) = *(v28 + 3);
                  v80 = 16 * v36 + 16;
                  memcpy(0, 0, v35);
                  a5 = v78;
                  v7 = v79;
                  if (v16 <= v15)
                  {
LABEL_47:
                    operator new();
                  }

LABEL_19:
                  ++v20;
                  v22 = *(v12 + 10);
                  if (v20 >= v22)
                  {
                    if (v21)
                    {
                      a2 = v76;
                      if (!*(v12 + 10))
                      {
                        goto LABEL_74;
                      }

                      v40 = *v12;
                      v11 = v77;
                      if (v22 <= 4 || v40 < 16 * v22 - 8 && v40 + 8 * v22)
                      {
                        v41 = 0;
                      }

                      else
                      {
                        v58 = v22 & 3;
                        if ((v22 & 3) == 0)
                        {
                          v58 = 4;
                        }

                        v41 = v22 - v58;
                        v59 = 32;
                        v60 = (v40 + 16);
                        v61 = v41;
                        do
                        {
                          v62 = (v59 - 32);
                          v63 = vld2q_f64(v62);
                          v64 = vld2q_f64(v59);
                          *(v60 - 1) = v63;
                          *v60 = v64;
                          v59 += 64;
                          v60 += 2;
                          v61 -= 4;
                        }

                        while (v61);
                      }

                      v65 = (16 * v41);
                      v66 = v22 - v41;
                      v67 = (v40 + 8 * v41);
                      do
                      {
                        *v67++ = *v65;
                        v65 += 2;
                        --v66;
                      }

                      while (v66);
                      goto LABEL_110;
                    }

LABEL_76:
                    a2 = v76;
                    v11 = v77;
                    if (v22)
                    {
                      v42 = 0;
                      v43 = *v12;
                      v44 = v22;
                      if (v22 < 4)
                      {
                        goto LABEL_82;
                      }

                      if (v43 <= 0x1F)
                      {
                        goto LABEL_82;
                      }

                      v42 = v22 & 0xFFFC;
                      v45 = 16;
                      v46 = (v43 + 16);
                      v47 = v44 & 0xFFFC;
                      do
                      {
                        v48 = *v45;
                        *(v46 - 1) = *(v45 - 16);
                        *v46 = v48;
                        v45 += 32;
                        v46 += 2;
                        v47 -= 4;
                      }

                      while (v47);
                      if (v42 != v44)
                      {
LABEL_82:
                        v49 = (v43 + 8 * v42);
                        v50 = (8 * v42);
                        v51 = v44 - v42;
                        do
                        {
                          v52 = *v50++;
                          *v49++ = v52;
                          --v51;
                        }

                        while (v51);
                      }
                    }

                    *(v12 + 11) = *(v12 + 11) & 0xFF97 | 0x20;
                    *(v12 + 2) = 8;
                    goto LABEL_7;
                  }

                  goto LABEL_20;
                }
              }

              else
              {
                if (v30 >= *&v24)
                {
                  v30 %= *&v24;
                }

                if (v30 != v26)
                {
                  goto LABEL_46;
                }
              }

              v28 = *v28;
              if (!v28)
              {
                goto LABEL_46;
              }
            }
          }

          if (*v12)
          {
            [a4 getInfo:v82 forFilenameBuffer:*v12 error:0];
            v37 = a5[1];
            if (v37)
            {
              v38 = vcnt_s8(v37);
              v38.i16[0] = vaddlv_u8(v38);
              if (v38.u32[0] > 1uLL)
              {
                v39 = v82[0];
                if (v82[0] >= *&v37)
                {
                  v39 = v82[0] % *&v37;
                }
              }

              else
              {
                v39 = (*&v37 - 1) & v82[0];
              }

              v53 = *(*a5 + 8 * v39);
              if (v53)
              {
                v54 = *v53;
                if (v54)
                {
                  if (v38.u32[0] < 2uLL)
                  {
                    v55 = *&v37 - 1;
                    while (1)
                    {
                      v57 = v54[1];
                      if (v57 == v82[0])
                      {
                        if (v54[2] == v82[0])
                        {
                          goto LABEL_5;
                        }
                      }

                      else if ((v57 & v55) != v39)
                      {
                        goto LABEL_102;
                      }

                      v54 = *v54;
                      if (!v54)
                      {
                        goto LABEL_102;
                      }
                    }
                  }

                  do
                  {
                    v56 = v54[1];
                    if (v56 == v82[0])
                    {
                      if (v54[2] == v82[0])
                      {
LABEL_5:
                        *v12 = v54[3];
                        v13 = *(v12 + 11) & 0xFFF7;
                        v14 = 13;
                        goto LABEL_6;
                      }
                    }

                    else
                    {
                      if (v56 >= *&v37)
                      {
                        v56 %= *&v37;
                      }

                      if (v56 != v39)
                      {
                        break;
                      }
                    }

                    v54 = *v54;
                  }

                  while (v54);
                }
              }
            }

LABEL_102:
            if (v16 <= v15)
            {
              **v12 = v82[0];
              v13 = *(v12 + 11) & 0xFFD7 | 0x20;
              v14 = 8;
LABEL_6:
              *(v12 + 11) = v13;
              *(v12 + 2) = v14;
            }
          }
        }

LABEL_7:
        v12 += 3;
      }

      while (v12 != v11);
    }

    v68 = *(a2 + 464);
    v69 = v75;
    if (v68 == *(a2 + 456))
    {
      if (*(a2 + 488) == 1)
      {
        v70 = *(a2 + 472) - v68;
        v69 = v75;
        v71 = (*(**(a2 + 480) + 56))(*(a2 + 480));
        v72 = *(a2 + 456);
        *(a2 + 464) = (*(**(a2 + 480) + 48))(*(a2 + 480), v72, *(a2 + 472) - v72) + v72;
        GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode_associated(a2, v71);
      }

      else
      {
        GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode(a2);
        v69 = v75;
      }
    }

    v9 = *(a2 + 464);
    *(a2 + 456) = v9;
    v10 = v69 + 456;
    ++v7[970];
    v8 = (v7 + v10);
    if (v10 == 7760)
    {
      return v7;
    }
  }

  return v7;
}

void sub_24D64DDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, GPUTools::FD::CoreFunction *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, void *a21)
{
  v23 = v21;
  v25 = v23 - 8;
  v26 = (v23 + v22 - 456);
  do
  {
    GPUTools::FD::CoreFunction::~CoreFunction(v26);
    v26 = (v27 - 456);
    v25 -= 456;
  }

  while (v25);
  _Unwind_Resume(a1);
}

void GPUTools::Playback::TDFSSegment<8192ul>::~TDFSSegment(uint64_t a1)
{
  GPUTools::Playback::TDFSSegment<8192ul>::~TDFSSegment(a1);

  JUMPOUT(0x25302FA40);
}

uint64_t GPUTools::Playback::TDFSSegment<8192ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    *(a1 + 7760) = *(a2 + 7760);
  }

  return a1;
}

uint64_t GPUTools::Playback::TDFSSegment<8192ul>::~TDFSSegment(uint64_t a1)
{
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 7304));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 6848));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 6392));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 5936));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 5480));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 5024));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 4568));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 4112));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 3656));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 3200));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 2744));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 2288));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 1832));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 1376));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 920));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 464));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 8));
  return a1;
}

void sub_24D64F310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void *__GetXcodeSelectDeveloperPath_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  result = dlopen("/usr/lib/libxcselect.dylib", 1);
  if (result)
  {
    v1 = result;
    v2 = dlsym(result, "xcselect_get_developer_dir_path");
    if (v2)
    {
      v5 = 0;
      v4 = 0;
      if (v2(v6, 1024, &v5 + 1, &v5, &v4))
      {
        GetXcodeSelectDeveloperPath__XCSelectXCodePath = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
      }
    }

    result = dlclose(v1);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<std::pair<std::string,BOOL>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::vector<std::pair<std::string,BOOL>>::__emplace_back_slow_path<std::pair<char const*,BOOL>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,BOOL>>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  v16 = 32 * v2;
  v17 = 0;
  std::allocator_traits<std::allocator<std::pair<std::string,BOOL>>>::construct[abi:ne200100]<std::pair<std::string,BOOL>,std::pair<char const*,BOOL>,0>(a1, (32 * v2), a2);
  v8 = 32 * v2 + 32;
  v9 = *(a1 + 8) - *a1;
  v10 = 32 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::pair<std::string,BOOL>>::~__split_buffer(&v14);
  return v8;
}

void sub_24D651780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,BOOL>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

size_t std::allocator_traits<std::allocator<std::pair<std::string,BOOL>>>::construct[abi:ne200100]<std::pair<std::string,BOOL>,std::pair<char const*,BOOL>,0>(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = *a3;
  result = strlen(*a3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v5, result);
  }

  a2[v7] = 0;
  a2[24] = *(a3 + 8);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,BOOL>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,BOOL>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,BOOL>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::pair<std::string,BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,BOOL>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

GPUTools::FD::BaseFunctionStream *GPUTools::FD::BaseFunctionStream::BaseFunctionStream(GPUTools::FD::BaseFunctionStream *this, NSData *a2, _DWORD *a3)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 36) = 0;
  v5 = GPUTools::FD::BaseFunctionStream::_scan_state(this);
  *(this + 8) = v5;
  if ((v5 | 0x100) == 0x500)
  {
    v5 = GPUTools::FD::BaseFunctionStream::_scan_fbuf(this, a3);
    *(this + 8) = v5;
  }

  if (!*(this + 1) && !v5)
  {
    __assert_rtn("GPUTools::FD::BaseFunctionStream::BaseFunctionStream(NSData *, const void *)", "", 0, "_decoder || _error_code != 0");
  }

  return this;
}

void sub_24D651A20(_Unwind_Exception *a1)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    GPUTools::FD::BaseFunctionStream::BaseFunctionStream(v3);
  }

  GPUTools::objc_wrapper<NSData *>::~objc_wrapper(v1);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::FD::BaseFunctionStream::_scan_state(GPUTools::FD::BaseFunctionStream *this)
{
  *(this + 2) = [*this bytes];
  if ([*this length] < 0x18)
  {
    return 1024;
  }

  v3 = *(this + 2);
  if (*v3 == 1229539657)
  {
    if ((*(this + 36) & 1) == 0)
    {
      if ((*(v3 + 16) | 2) == 3)
      {
LABEL_9:
        v7 = *(v3 + 4);
        if ([*this length] == v7 && !*(v3 + 20))
        {
          v8 = *(this + 2);
          v9 = *(v3 + 4) + v8;
          *(this + 2) = v8 + 24;
          *(this + 3) = v9;
          operator new();
        }

        return 1280;
      }

      return 1280;
    }
  }

  else
  {
    if (*v3 != 1296911693)
    {
      return 1280;
    }

    *(this + 36) = 1;
  }

  v4 = *this;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 41;
  }

  v3 = [*this mutableBytes];
  *(this + 2) = v3;
  v5 = bswap32(*(v3 + 4));
  *(v3 + 8) = bswap64(*(v3 + 8));
  v6 = bswap32(*(v3 + 16));
  *(v3 + 16) = v6;
  *v3 = 1229539657;
  *(v3 + 4) = v5;
  if ((v6 | 2) == 3)
  {
    goto LABEL_9;
  }

  return 1280;
}

uint64_t GPUTools::FD::BaseFunctionStream::_scan_fbuf(GPUTools::FD::BaseFunctionStream *this, _DWORD *a2)
{
  *(this + 2) = [*this bytes];
  v4 = a2;
  if (a2)
  {
    v5 = *a2;
    v6 = *MEMORY[0x277D0B008];
    if (*a2 == *MEMORY[0x277D0B008])
    {
      goto LABEL_3;
    }
  }

  else
  {
    if ([*this length] < 4)
    {
      return 1024;
    }

    v4 = *(this + 2);
    v5 = *v4;
    v6 = *MEMORY[0x277D0B008];
    if (*v4 == *MEMORY[0x277D0B008])
    {
LABEL_3:
      if ([*this length] >= 8)
      {
        v7 = *(v4 + 4);
        *(this + 36) = *(v4 + 4) != 0;
        v8 = *(v4 + 5);
        v9 = 8;
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }

      return 1024;
    }
  }

  if (v5 == 1229539657)
  {
    v9 = 4;
    if (*(this + 36))
    {
LABEL_5:
      v10 = *this;
      if (objc_opt_respondsToSelector())
      {
        goto LABEL_6;
      }

      return 41;
    }

LABEL_17:
    v14 = *(this + 2);
    *(this + 3) = [*this length] + v14;
    if (a2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v5 == 1296911693)
  {
    *(this + 36) = 1;
    v9 = 4;
    v13 = *this;
    if (objc_opt_respondsToSelector())
    {
LABEL_6:
      v11 = [*this mutableBytes];
      *(this + 2) = v11;
      if (v5 == v6)
      {
        *(v4 + 4) = 0;
        *(this + 3) = [*this length] + v11;
        if (a2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v4 = 1229539657;
        *(this + 3) = [*this length] + v11;
        if (a2)
        {
LABEL_19:
          operator new();
        }
      }

LABEL_18:
      *(this + 2) += v9;
      goto LABEL_19;
    }

    return 41;
  }

  return 1280;
}

uint64_t GPUTools::FD::StateStreamDecoder::StateStreamDecoder(uint64_t result, uint64_t a2, char a3)
{
  v3 = *(a2 + 8);
  *result = &unk_2860A2488;
  *(result + 8) = v3;
  *(result + 16) = *(a2 + 16);
  *(result + 20) = a3;
  return result;
}

uint64_t GPUTools::FD::StateStreamDecoder::GetEncodedSize(GPUTools::FD::StateStreamDecoder *this, const void *a2, uint64_t a3)
{
  GPUTools::FD::CoreFunction::CoreFunction(v8);
  GPUTools::FD::StateStreamDecoder::Decode(this, a2, a3, v8);
  v6 = v9;
  GPUTools::FD::CoreFunction::~CoreFunction(v8);
  return v6;
}

void sub_24D651F54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GPUTools::FD::CoreFunction::~CoreFunction(va);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::FD::StateStreamDecoder::Decode(GPUTools::FD::StateStreamDecoder *this, const void *a2, uint64_t a3, GPUTools::FD::CoreFunction *a4)
{
  if (!a2)
  {
    GPUTools::FD::StateStreamDecoder::Decode();
  }

  GPUTools::FD::CoreFunction::CoreFunction(v11);
  GPUTools::FD::CoreFunction::operator=();
  GPUTools::FD::CoreFunction::~CoreFunction(v11);
  v11[0] = a2;
  v11[1] = a3;
  v12 = a2;
  v13 = a4;
  GPUTools::FD::StateStreamDecoder::DecodeCore(this, v11);
  v8 = v13;
  *(v13 + 108) = v12 - LODWORD(v11[0]);
  if (*(v8 + 5) && *(v8 + 15) == 15 && *v8 != -8191 && *v8 != -8188)
  {
    *(v8 + 2) = **(v8 + 6);
  }

  return 1;
}

void sub_24D652034(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GPUTools::FD::CoreFunction::~CoreFunction(va);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::FD::StateStreamDecoder::DecodeFlags(GPUTools::FD::StateStreamDecoder *this, _DWORD *a2, unint64_t a3)
{
  if (*(this + 4) == 1)
  {
    if (a3 <= 7)
    {
      GPUTools::FD::StateStreamDecoder::DecodeFlags();
    }

    v3 = 0;
  }

  else
  {
    if (a3 <= 0xB)
    {
      GPUTools::FD::StateStreamDecoder::DecodeFlags();
    }

    v3 = a2[1];
  }

  v4 = bswap32(v3);
  if (*(this + 20))
  {
    LOWORD(v3) = v4;
  }

  return v3;
}

void GPUTools::FD::StateStreamDecoder::DecodeCore(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (v4 <= 7)
    {
      GPUTools::FD::StateStreamDecoder::DecodeFlags();
    }

    v5 = *(a2 + 16);
    *(a2 + 16) = v5 + 2;
    v6 = *v5;
    LODWORD(v5) = v5[1];
    *(a2 + 36) = 0;
    *(a2 + 40) = v5;
    *(a2 + 32) = v6;
    v7 = *(a2 + 32);
    if ((*(a1 + 20) & 1) == 0)
    {
LABEL_4:
      v8 = *(a2 + 36);
      v9 = *(a2 + 40);
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 <= 0xB)
    {
      GPUTools::FD::StateStreamDecoder::DecodeFlags();
    }

    v10 = *(a2 + 16);
    v11 = *(v10 + 2);
    v12 = *v10;
    *(a2 + 32) = *v10;
    *(a2 + 40) = v11;
    *(a2 + 16) = v10 + 12;
    v7 = v12;
    if ((*(a1 + 20) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v7 = bswap32(v7);
  *(a2 + 32) = v7;
  v13 = vrev32_s8(*(a2 + 36));
  *(a2 + 36) = v13;
  LOWORD(v9) = v13.i16[2];
  v8 = v13.i16[0];
LABEL_8:
  v14 = *(a2 + 24);
  *v14 = v7;
  *(v14 + 4) = v8;
  *(v14 + 440) = *a2;
  *(v14 + 10) = v9 + 1;
  v15 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v16 = *(a2 + 24);
  *(v16 + 448) = v15;
  *(v16 + 436) = 8;
  *(v16 + 48) = v15;
  *(v16 + 56) = 0xF00000008;
  *(v16 + 64) = 0x100000008;
  *v15 = *(a1 + 8);
  GPUTools::FD::StateStreamDecoder::DecodeArguments(a1, a2, v16 + 72);
  if (*(a2 + 8) < *(a2 + 16) - *a2)
  {
    GPUTools::FD::StateStreamDecoder::DecodeCore();
  }

  if ((*(a2 + 36) & 0x40) != 0)
  {
    *(*(a2 + 24) + 4) |= 6u;
  }
}

uint64_t GPUTools::FD::StateStreamDecoder::Decode(GPUTools::FD::StateStreamDecoder *this, const void *a2, uint64_t a3, GPUTools::FD::Function *a4)
{
  if (!a2)
  {
    GPUTools::FD::StateStreamDecoder::Decode();
  }

  GPUTools::FD::Function::Function(v11);
  GPUTools::FD::Function::operator=();
  GPUTools::FD::Function::~Function(v11);
  v11[0] = a2;
  v11[1] = a3;
  v12 = a2;
  v13 = a4;
  GPUTools::FD::StateStreamDecoder::DecodeCore(this, v11);
  v8 = v13;
  *(v13 + 108) = v12 - LODWORD(v11[0]);
  if (*(v8 + 5) && *(v8 + 15) == 15 && *v8 != -8191 && *v8 != -8188)
  {
    *(v8 + 2) = **(v8 + 6);
  }

  return 1;
}

void sub_24D6522E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GPUTools::FD::Function::~Function(va);
  _Unwind_Resume(a1);
}

void GPUTools::FD::StateStreamDecoder::DecodeArguments(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    v8 = v7 + 4 * v4;
    v9 = (v8 + 4 * v4);
    v10 = 0xFFFF;
    v82 = v8;
    v80 = v7;
    while (1)
    {
      v12 = v6;
      v13 = *(v7 + 4 * v6);
      v14 = v13;
      v15 = a3 + 24 * v6;
      *v15 = v9;
      *(v15 + 22) = 0;
      if ((v13 & 0x20000) == 0)
      {
        *(v15 + 20) = 1;
        if (v13 <= 0x1409u)
        {
          if (v13 <= 0x1402u)
          {
            if (v13 != 5120)
            {
              if (v13 == 5121)
              {
                v16 = 0;
                *(v15 + 8) = 2;
                *(v15 + 12) = 2;
                v17 = 1;
                v41 = *(v7 + 4 * v12);
                if ((v41 & 0x80000) != 0)
                {
                  goto LABEL_190;
                }

                goto LABEL_191;
              }

              if (v13 != 5122)
              {
                goto LABEL_206;
              }

              if (*(a1 + 20) == 1)
              {
                *v9 = bswap32(*v9) >> 16;
              }

              v16 = 0;
              v36 = 3;
              goto LABEL_89;
            }

            v16 = 0;
            v17 = 1;
            *(v15 + 8) = 1;
            *(v15 + 12) = 1;
            v41 = *(v7 + 4 * v12);
            if ((v41 & 0x80000) != 0)
            {
              goto LABEL_190;
            }
          }

          else
          {
            if (v13 > 0x1404u)
            {
              if (v13 == 5125)
              {
                if (*(a1 + 20) == 1)
                {
                  *v9 = bswap32(*v9);
                }

                v16 = 0;
                v21 = 6;
              }

              else
              {
                if (v13 != 5126)
                {
                  goto LABEL_206;
                }

                if (*(a1 + 20) == 1)
                {
                  *v9 = bswap32(*v9);
                }

                v16 = 0;
                v21 = 9;
              }
            }

            else
            {
              if (v13 == 5123)
              {
                if (*(a1 + 20) == 1)
                {
                  *v9 = bswap32(*v9) >> 16;
                }

                v16 = 0;
                v36 = 4;
LABEL_89:
                *(v15 + 8) = v36;
                *(v15 + 12) = v36;
                v17 = 2;
                v41 = *(v7 + 4 * v12);
                if ((v41 & 0x80000) != 0)
                {
                  goto LABEL_190;
                }

                goto LABEL_191;
              }

              if (*(a1 + 20) == 1)
              {
                *v9 = bswap32(*v9);
              }

              v16 = 0;
              v21 = 5;
            }

            *(v15 + 8) = v21;
            *(v15 + 12) = v21;
            v17 = 4;
            v41 = *(v7 + 4 * v12);
            if ((v41 & 0x80000) != 0)
            {
              goto LABEL_190;
            }
          }

          goto LABEL_191;
        }

        if (v13 <= 0xFE00u)
        {
          if (v13 == 5130)
          {
            if (*(a1 + 20) == 1)
            {
              *v9 = bswap64(*v9);
            }

            v16 = 0;
            v39 = 10;
            goto LABEL_113;
          }

          if (v13 != 35670)
          {
            if (v13 != 65024)
            {
              goto LABEL_206;
            }

            if (*(a1 + 20) == 1)
            {
              *v9 = bswap64(*v9);
            }

            v16 = 0;
            *(v15 + 8) = 8;
            v17 = 8;
LABEL_183:
            v75 = 13;
            goto LABEL_189;
          }

          v16 = 0;
          v24 = 2;
          *(v15 + 8) = 2;
          v17 = 1;
LABEL_180:
          *(v15 + 12) = 17;
LABEL_181:
          *(v15 + 12) = v24;
          v41 = *(v7 + 4 * v12);
          if ((v41 & 0x80000) != 0)
          {
            goto LABEL_190;
          }

          goto LABEL_191;
        }

        if (v13 - 65027 >= 3 && v13 != 65025)
        {
          if (v13 != 65026)
          {
            goto LABEL_206;
          }

          if (*(a1 + 20) == 1)
          {
            *v9 = bswap64(*v9);
          }

          v16 = 0;
          v39 = 12;
LABEL_113:
          *(v15 + 8) = v39;
          *(v15 + 12) = v39;
          v17 = 8;
          v41 = *(v7 + 4 * v12);
          if ((v41 & 0x80000) != 0)
          {
            goto LABEL_190;
          }

          goto LABEL_191;
        }

        v24 = 13;
        *(v15 + 8) = 13;
        v25 = v13;
        v26 = strlen(v9);
        LOWORD(v13) = v25;
        v8 = v82;
        v16 = 0;
        v17 = v26 + 1;
        goto LABEL_166;
      }

      v18 = *(v8 + 4 * v6);
      if (v18 >= 0x10000)
      {
        GPUTools::FD::StateStreamDecoder::DecodeArguments();
      }

      v19 = *(v8 + 4 * v12);
      *(v15 + 20) = v18;
      *(v15 + 22) = 1;
      if (v13 > 0x1409u)
      {
        if (v13 <= 0xFE00u)
        {
          if (v13 != 5130)
          {
            if (v13 == 35670)
            {
              goto LABEL_63;
            }

            if (v13 != 65024)
            {
              goto LABEL_206;
            }

            if (v18 && (*(a1 + 20) & 1) != 0)
            {
              if (v18 < 4)
              {
                v20 = 0;
                goto LABEL_129;
              }

              v20 = v18 & 0xFFFC;
              v50 = (v9 + 4);
              v51 = v20;
              do
              {
                v52 = vrev64q_s8(*v50);
                v50[-1] = vrev64q_s8(v50[-1]);
                *v50 = v52;
                v50 += 2;
                v51 -= 4;
              }

              while (v51);
              if (v20 != v18)
              {
LABEL_129:
                v53 = &v9[2 * v20];
                v54 = v18 - v20;
                do
                {
                  *v53 = bswap64(*v53);
                  ++v53;
                  --v54;
                }

                while (v54);
              }
            }

            v24 = 8;
LABEL_158:
            *(v15 + 8) = v24;
            v16 = 1;
            v17 = 8;
            if ((v13 & 0xFFFD) != 0xFE01)
            {
              goto LABEL_164;
            }

            goto LABEL_166;
          }

          if (v18 && (*(a1 + 20) & 1) != 0)
          {
            if (v18 < 4)
            {
              v40 = 0;
              goto LABEL_123;
            }

            v40 = v18 & 0xFFFC;
            v45 = (v9 + 4);
            v46 = v40;
            do
            {
              v47 = vrev64q_s8(*v45);
              v45[-1] = vrev64q_s8(v45[-1]);
              *v45 = v47;
              v45 += 2;
              v46 -= 4;
            }

            while (v46);
            if (v40 != v18)
            {
LABEL_123:
              v48 = &v9[2 * v40];
              v49 = v18 - v40;
              do
              {
                *v48 = bswap64(*v48);
                ++v48;
                --v49;
              }

              while (v49);
            }
          }

          v24 = 10;
          goto LABEL_158;
        }

        if (v13 - 65027 < 3 || v13 == 65025)
        {
          v24 = 13;
          *(v15 + 8) = 13;
          *(v15 + 22) = 65;
          v81 = v10;
          v28 = v5;
          v29 = v3;
          v30 = v9[v18 - 1];
          v31 = v13;
          v32 = v13;
          v33 = v18;
          v34 = strlen(v9 + v30);
          v16 = 65;
          v19 = v33;
          LOWORD(v13) = v32;
          v14 = v31;
          v10 = v81;
          v8 = v82;
          v35 = v30 + (v34 & 0xFFFFFFFFFFFFFFFCLL);
          v3 = v29;
          v5 = v28;
          v7 = v80;
          v17 = v35 + 4;
          if ((v13 & 0xFFFD) != 0xFE01)
          {
            goto LABEL_164;
          }

          goto LABEL_166;
        }

        if (v13 != 65026)
        {
          goto LABEL_206;
        }

        if (v18 && (*(a1 + 20) & 1) != 0)
        {
          if (v18 < 4)
          {
            v44 = 0;
            goto LABEL_155;
          }

          v44 = v18 & 0xFFFC;
          v70 = (v9 + 4);
          v71 = v44;
          do
          {
            v72 = vrev64q_s8(*v70);
            v70[-1] = vrev64q_s8(v70[-1]);
            *v70 = v72;
            v70 += 2;
            v71 -= 4;
          }

          while (v71);
          if (v44 != v18)
          {
LABEL_155:
            v73 = &v9[2 * v44];
            v74 = v18 - v44;
            do
            {
              *v73 = bswap64(*v73);
              ++v73;
              --v74;
            }

            while (v74);
          }
        }

        v24 = 12;
        goto LABEL_158;
      }

      if (v13 <= 0x1402u)
      {
        if (v13 == 5120)
        {
          v16 = 1;
          *(v15 + 8) = 1;
          v24 = 1;
          v17 = 1;
          if ((v13 & 0xFFFD) != 0xFE01)
          {
            goto LABEL_164;
          }

          goto LABEL_166;
        }

        if (v13 == 5121)
        {
LABEL_63:
          v24 = 2;
          *(v15 + 8) = 2;
          v17 = 1;
          v16 = 1;
          if ((v13 & 0xFFFD) != 0xFE01)
          {
            goto LABEL_164;
          }

          goto LABEL_166;
        }

        if (v13 != 5122)
        {
          goto LABEL_206;
        }

        if (*(a1 + 20) == 1)
        {
          if (v18)
          {
            v37 = 0;
            do
            {
              *(v9 + v37) = bswap32(*(v9 + v37)) >> 16;
              ++v37;
              v19 = *(v15 + 20);
            }

            while (v37 < v19);
          }

          else
          {
            v19 = 0;
          }
        }

        v24 = 3;
        goto LABEL_163;
      }

      if (v13 > 0x1404u)
      {
        if (v13 != 5125)
        {
          if (v13 != 5126)
          {
            goto LABEL_206;
          }

          if (v18 && (*(a1 + 20) & 1) != 0)
          {
            if (v18 < 8)
            {
              v38 = 0;
              goto LABEL_141;
            }

            v38 = v18 & 0xFFF8;
            v60 = (v9 + 4);
            v61 = v38;
            do
            {
              v62 = vrev32q_s8(*v60);
              v60[-1] = vrev32q_s8(v60[-1]);
              *v60 = v62;
              v60 += 2;
              v61 -= 8;
            }

            while (v61);
            if (v38 != v18)
            {
LABEL_141:
              v63 = &v9[v38];
              v64 = v18 - v38;
              do
              {
                *v63 = bswap32(*v63);
                ++v63;
                --v64;
              }

              while (v64);
            }
          }

          v24 = 9;
          goto LABEL_150;
        }

        if (v18 && (*(a1 + 20) & 1) != 0)
        {
          if (v18 < 8)
          {
            v43 = 0;
            goto LABEL_147;
          }

          v43 = v18 & 0xFFF8;
          v65 = (v9 + 4);
          v66 = v43;
          do
          {
            v67 = vrev32q_s8(*v65);
            v65[-1] = vrev32q_s8(v65[-1]);
            *v65 = v67;
            v65 += 2;
            v66 -= 8;
          }

          while (v66);
          if (v43 != v18)
          {
LABEL_147:
            v68 = &v9[v43];
            v69 = v18 - v43;
            do
            {
              *v68 = bswap32(*v68);
              ++v68;
              --v69;
            }

            while (v69);
          }
        }

        v24 = 6;
        goto LABEL_150;
      }

      if (v13 != 5123)
      {
        if (v18 && (*(a1 + 20) & 1) != 0)
        {
          if (v18 < 8)
          {
            v22 = 0;
            goto LABEL_135;
          }

          v22 = v18 & 0xFFF8;
          v55 = (v9 + 4);
          v56 = v22;
          do
          {
            v57 = vrev32q_s8(*v55);
            v55[-1] = vrev32q_s8(v55[-1]);
            *v55 = v57;
            v55 += 2;
            v56 -= 8;
          }

          while (v56);
          if (v22 != v18)
          {
LABEL_135:
            v58 = &v9[v22];
            v59 = v18 - v22;
            do
            {
              *v58 = bswap32(*v58);
              ++v58;
              --v59;
            }

            while (v59);
          }
        }

        v24 = 5;
LABEL_150:
        *(v15 + 8) = v24;
        v16 = 1;
        v17 = 4;
        if ((v13 & 0xFFFD) != 0xFE01)
        {
          goto LABEL_164;
        }

        goto LABEL_166;
      }

      if (*(a1 + 20) != 1)
      {
        goto LABEL_102;
      }

      if (v18)
      {
        break;
      }

      v19 = 0;
      v24 = 4;
LABEL_163:
      *(v15 + 8) = v24;
      v16 = 1;
      v17 = 2;
      if ((v13 & 0xFFFD) != 0xFE01)
      {
LABEL_164:
        if ((v14 - 65030) <= 0xFFFFFFFD)
        {
          v17 *= v19;
        }
      }

LABEL_166:
      if (v13 <= 0x8B55u)
      {
        if (v13 - 5120 > 0xA || ((1 << v13) & 0x47F) == 0)
        {
LABEL_206:
          v79 = dy_abort();
          GPUTools::FD::StateStreamDecoder::~StateStreamDecoder(v79);
          return;
        }

        goto LABEL_181;
      }

      if (v13 <= 0xFE01u)
      {
        if (v13 == 35670)
        {
          goto LABEL_180;
        }

        if (v13 == 65024)
        {
          goto LABEL_183;
        }

        if (v13 != 65025)
        {
          goto LABEL_206;
        }

        *(v15 + 12) = 0;
        v16 |= 8u;
        *(v15 + 22) = v16;
        v41 = *(v7 + 4 * v12);
        if ((v41 & 0x80000) != 0)
        {
          goto LABEL_190;
        }
      }

      else
      {
        if (v13 <= 0xFE03u)
        {
          if (v13 != 65026)
          {
            *(v15 + 12) = 12;
            v16 |= 0x10u;
            *(v15 + 22) = v16;
            v41 = *(v7 + 4 * v12);
            if ((v41 & 0x80000) != 0)
            {
              goto LABEL_190;
            }

            goto LABEL_191;
          }

          goto LABEL_181;
        }

        if (v13 == 65028)
        {
          v75 = 14;
LABEL_189:
          *(v15 + 12) = v75;
          v41 = *(v7 + 4 * v12);
          if ((v41 & 0x80000) == 0)
          {
            goto LABEL_191;
          }

LABEL_190:
          *(v15 + 12) = 18;
          goto LABEL_191;
        }

        if (v13 != 65029)
        {
          goto LABEL_206;
        }

        *(v15 + 12) = 5;
        v16 |= 0x10u;
        *(v15 + 22) = v16;
        v41 = *(v7 + 4 * v12);
        if ((v41 & 0x80000) != 0)
        {
          goto LABEL_190;
        }
      }

LABEL_191:
      if ((v41 & 0x100000) != 0)
      {
        *(v15 + 12) = 17;
        if ((v41 & 0x40000) != 0)
        {
          v10 = v12;
        }

        if (v12 != 2)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if ((v41 & 0x40000) != 0)
        {
          v10 = v12;
        }

        if (v12 != 2)
        {
          goto LABEL_3;
        }
      }

      if (**(v3 + 24) == 540)
      {
        *(v15 + 12) = 1;
        *(v15 + 22) = v16 | 4;
      }

LABEL_3:
      *(v15 + 16) = v17;
      v11 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v9 = (v9 + v11);
      v5 += 8 + v11;
      v6 = v12 + 1;
      if (*(v3 + 40) <= (v12 + 1))
      {
        if (v10 != 0xFFFF)
        {
          v76 = *(v3 + 24);
          --*(v76 + 10);
          v77 = (a3 + 24 * v10);
          v78 = *v77;
          *(v76 + 40) = *(v77 + 2);
          *(v76 + 24) = v78;
        }

        goto LABEL_204;
      }
    }

    v42 = 0;
    do
    {
      *(v9 + v42) = bswap32(*(v9 + v42)) >> 16;
      ++v42;
      v19 = *(v15 + 20);
    }

    while (v42 < v19);
LABEL_102:
    v24 = 4;
    goto LABEL_163;
  }

  v5 = 0;
LABEL_204:
  *(v3 + 16) += v5;
}

void GPUTools::FD::StateStreamDecoder::~StateStreamDecoder(GPUTools::FD::StateStreamDecoder *this)
{
  GPUTools::FD::IFunctionDecoder::~IFunctionDecoder(this);

  JUMPOUT(0x25302FA40);
}

void sub_24D653540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24D653904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D653A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D653B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D653CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D653ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char *,char *>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void *std::__hash_table<std::__hash_value_type<char const*,OpaqueJSString *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,OpaqueJSString *>>>::find<char const*>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<char const*,OpaqueJSString *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,OpaqueJSString *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<char const*,OpaqueJSValue *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,OpaqueJSValue *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,OpaqueJSValue *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,OpaqueJSValue *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t DYMachOGetDylibCompatibilityVersion(const char *a1)
{
  v2 = open(a1, 0);
  if (v2 != -1)
  {
    v3 = v2;
    v13 = 0;
    if (read(v2, &v13, 8uLL) == 8)
    {
      if (v13 == -1095041334)
      {
        if (!HIDWORD(v13))
        {
          goto LABEL_14;
        }

        memset(&v12, 0, 20);
        if (read(v3, &v12, 0x14uLL) != 20)
        {
          goto LABEL_14;
        }

        v4 = bswap32(v12.st_ino);
        st_size = bswap32(HIDWORD(v12.st_ino));
      }

      else
      {
        memset(&v12, 0, sizeof(v12));
        if (stat(a1, &v12) == -1)
        {
          goto LABEL_14;
        }

        v4 = 0;
        st_size = v12.st_size;
      }

      v7 = mmap(0, st_size, 1, 2, v3, v4);
      if (v7 != -1)
      {
        if (*v7 == -17958194)
        {
          v8 = 7;
        }

        else
        {
          if (*v7 != -17958193)
          {
            goto LABEL_22;
          }

          v8 = 8;
        }

        v10 = v7[4];
        if (v10)
        {
          v11 = &v7[v8];
          while (*v11 != 13)
          {
            v11 = (v11 + v11[1]);
            if (!--v10)
            {
              goto LABEL_22;
            }
          }

          v6 = v11[5];
          goto LABEL_24;
        }

LABEL_22:
        v6 = 0;
LABEL_24:
        munmap(0xFFFFFFFFFFFFFFFFLL, st_size);
        goto LABEL_15;
      }
    }

LABEL_14:
    v6 = 0;
LABEL_15:
    close(v3);
    return v6;
  }

  return 0;
}

uint64_t DYMobileArchivesDirectory()
{
  v0 = [MEMORY[0x277CCACA8] stringWithCString:getpwnam("mobile")->pw_dir encoding:4];

  return [v0 stringByAppendingPathComponent:@"Library/GPUTools"];
}

const Function *GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode_associated(const Function *result, unsigned int *a2)
{
  if ((result & 0x2000) == 0)
  {
    v3 = *(a2 + 58);
    while (v3 < *(a2 + 59))
    {
      v4 = OUTLINED_FUNCTION_0_1(*(a2 + 60));
      v6 = (*(v5 + 56))(v4);
      v7 = *(a2 + 59);
      v8 = *(a2 + 58);
      v9 = OUTLINED_FUNCTION_0_1(*(a2 + 60));
      result = (*(v10 + 48))(v9);
      v3 = result + *(a2 + 58);
      *(a2 + 58) = v3;
      if ((v6 & 0x2000) != 0)
      {
        return result;
      }
    }

    v13 = *a2;
    v11 = dy_abort();
    return [(DYDataFunctionStream *)v11 peekFunction];
  }

  return result;
}

void GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_decode_associated(__int16 a1, unsigned int *a2)
{
  if ((a1 & 0x2000) == 0)
  {
    v3 = *(a2 + 68);
    while (1)
    {
      v4 = *(a2 + 69);
      if (v3 >= v4)
      {
        break;
      }

      v5 = (*(**(a2 + 70) + 56))(*(a2 + 70), v3, v4 - v3);
      v3 = (*(**(a2 + 70) + 48))(*(a2 + 70), *(a2 + 68), *(a2 + 69) - *(a2 + 68)) + *(a2 + 68);
      *(a2 + 68) = v3;
      if ((v5 & 0x2000) != 0)
      {
        return;
      }
    }

    v8 = *a2;
    v6 = dy_abort();
    [(DYFSStreamer *)v6 _invalidate];
  }
}

void GPUTools::Playback::VariableCache::Begin()
{
  __assert_rtn("void GPUTools::Playback::VariableCache::Begin()", "", 0, "_dataListSize == _dataListIdx");
}

{
  __assert_rtn("void GPUTools::Playback::VariableCache::Begin()", "", 0, "index == _dataListIdxBase");
}

void GPUTools::Playback::SequenceCache::Begin()
{
  __assert_rtn("void GPUTools::Playback::SequenceCache::Begin()", "", 0, "(_streamNum == _streamIdx) && (_dataList.size() == _dataNum)");
}

{
  __assert_rtn("void GPUTools::Playback::SequenceCache::Begin()", "", 0, "_dataList.back() == 0");
}

uint64_t GPUTools::CStringHash::hash::operator()(uint64_t a1, _BYTE *a2)
{
  v2 = -1640531527;
  v3 = *a2;
  if (*a2)
  {
    v4 = a2 + 2;
    while (1)
    {
      v5 = *(v4 - 1);
      if (!*(v4 - 1))
      {
        break;
      }

      v6 = v2 + v3;
      v7 = *v4;
      v4 += 2;
      v3 = v7;
      v2 = ((v6 << 16) ^ (v5 << 11) ^ v6) + (((v6 << 16) ^ (v5 << 11) ^ v6) >> 11);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v2 = ((v2 + v3) ^ ((v2 + v3) << 11)) + (((v2 + v3) ^ ((v2 + v3) << 11)) >> 17);
  }

LABEL_7:
  v8 = (v2 ^ (8 * v2)) + ((v2 ^ (8 * v2)) >> 5);
  v9 = (v8 ^ (4 * v8)) + ((v8 ^ (4 * v8)) >> 15);
  if (v9 == v9 << 10)
  {
    return 0x40000000;
  }

  else
  {
    return v9 ^ (v9 << 10);
  }
}

void GPUTools::Playback::MemoryManager::Begin()
{
  __assert_rtn("void GPUTools::Playback::MemoryManager::Begin()", "", 0, "(_pMemBlockHead == nullptr) && (_memBlockCounter == 0) && (_pBufferPosition == _pBufferBegin)");
}

{
  __assert_rtn("void GPUTools::Playback::MemoryManager::Begin()", "", 0, "(_bufferSize & (_alignment - 1)) == 0");
}

{
  __assert_rtn("void GPUTools::Playback::MemoryManager::Begin()", "", 0, "_pBuffer == nullptr");
}

{
  __assert_rtn("void GPUTools::Playback::MemoryManager::Begin()", "", 0, "_pBuffer");
}

void GPUTools::FD::StateStreamDecoder::Decode()
{
  __assert_rtn("virtual BOOL GPUTools::FD::StateStreamDecoder::Decode(const void *, size_t, GPUTools::FD::CoreFunction &) const", "", 0, "encbuf");
}

{
  __assert_rtn("virtual BOOL GPUTools::FD::StateStreamDecoder::Decode(const void *, size_t, GPUTools::FD::Function &) const", "", 0, "encbuf");
}

void GPUTools::FD::StateStreamDecoder::DecodeFlags()
{
  __assert_rtn("void GPUTools::FD::StateStreamDecoder::DecodeHeader(DecodeJob &) const", "", 0, "job.capacity >= sizeof(dy_state_hdr_ex_t)");
}

{
  __assert_rtn("void GPUTools::FD::StateStreamDecoder::DecodeHeader(DecodeJob &) const", "", 0, "job.capacity >= sizeof(dy_state_hdr_t)");
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}