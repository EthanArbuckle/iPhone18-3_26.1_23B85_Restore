uint64_t std::function<crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t crypto::details::buffer_aligner::backend_op_to_different_buffer_fn@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v2 = &unk_285BD8F90;
  }

  else
  {
    v2 = &unk_285BD8F00;
  }

  *a2 = v2;
  a2[3] = a2;
  return result;
}

uint64_t crypto::details::buffer_aligner::handle_unaligned_sg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92[4] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24) + a3;
  v7 = *(a1 + 96);
  v8 = v6 % v7;
  v9 = v7 - v6 % v7;
  if (!v8)
  {
    v9 = 0;
  }

  if (v5 - a3 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5 - a3;
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    goto LABEL_79;
  }

  v12 = a3;
  v14 = *a2;
  v15 = v8 - a3;
  v16 = v8 - a3 + v5;
  result = (*(*v11 + 48))(v11);
  if ((result & 1) == 0 && !v16)
  {
    goto LABEL_78;
  }

  v18 = *(a1 + 24);
  if (!v18)
  {
LABEL_79:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v19 = *MEMORY[0x277D85FA0];
  v79 = v12 - v8 + *(a1 + 104) + *(a2 + 24);
  result = (*(*v18 + 48))(v18, a2);
  if (result)
  {
    v20 = (v16 + v19 - 1) / v19 * v19;
    crypto::details::sg_allocator::allocate(*(a1 + 64), v20, &v91);
    v21 = *(a1 + 72);
    std::shared_ptr<char>::shared_ptr[abi:ne200100]<char,std::function<void ()(char *)>,0>(&v81, &v91);
    v22 = v15 + *(a2 + 16);
    v83 = v81;
    v84 = v82;
    if (v82)
    {
      atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v85 = v22;
    v86 = v79;
    v87 = v20;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    sg_entry::sg_entry(*v21 + 112 * v21[2]++, &v83);
    if (v84)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v84);
    }

    if (v82)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v82);
    }

    std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v91, 0);
    result = std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v92);
  }

  v23 = v14 + v12;
  if (v8)
  {
    v24 = *(a1 + 24);
    v25 = a4;
    if (!v24)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if (((*(*v24 + 48))(v24, a2) & 1) == 0)
    {
      crypto::details::sg_allocator::allocate(*(a1 + 64), *(a1 + 96), &v91);
      v27 = *(a1 + 72);
      std::shared_ptr<char>::shared_ptr[abi:ne200100]<char,std::function<void ()(char *)>,0>(&v81, &v91);
      v28 = *(a1 + 96);
      v83 = v81;
      v84 = v82;
      if (v82)
      {
        atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v85 = v10 + v8;
      v86 = v79;
      v87 = v28;
      v88 = 0;
      v89 = 0;
      v90 = 0;
      sg_entry::sg_entry(*v27 + 112 * v27[2]++, &v83);
      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }

      if (v82)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v82);
      }

      std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v91, 0);
      std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v92);
    }

    v29 = *(a1 + 80);
    if (a4)
    {
      atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
    }

    v30 = **(a1 + 72) + 112 * *(*(a1 + 72) + 16);
    v31 = *(v30 - 112);
    v32 = *(a1 + 96);
    v33 = *(v30 - 88) - *(a1 + 104);
    v34 = v29[2];
    v35 = *v29 + 56 * v34;
    *v35 = a4;
    v83 = 0;
    *(v35 + 8) = 1;
    *(v35 + 16) = v31;
    *(v35 + 24) = v31;
    *(v35 + 32) = v32;
    *(v35 + 40) = v33;
    *(v35 + 48) = 0;
    v29[2] = v34 + 1;
    lw_future_managed_setter<int,0>::handle::~handle(&v83, v26);
    result = std::function<crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()(a1 + 32, *(**(a1 + 72) + 112 * *(*(a1 + 72) + 16) - 112) + v8, v23, v10);
    if (result)
    {
      v37 = v36 == 0;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      v38 = *(a1 + 88);
      if (a4)
      {
        atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
      }

      v39 = v38[2];
      v40 = *v38 + 40 * v39;
      *v40 = a4;
      v83 = 0;
      *(v40 + 8) = 1;
      *(v40 + 16) = result;
      *(v40 + 24) = v36;
      *(v40 + 32) = v10;
      v38[2] = v39 + 1;
      result = lw_future_managed_setter<int,0>::handle::~handle(&v83, v36);
    }

    v41 = v10 + v8;
    v16 -= v10 + v8;
    v12 += v10;
    v23 += v10;
  }

  else
  {
    v41 = 0;
    v25 = a4;
  }

  v42 = *(a1 + 96);
  v43 = v16 / v42 * v42;
  v44 = v16 % v42;
  if (v16 != v16 % v42)
  {
    v45 = *(a1 + 24);
    if (!v45)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if (((*(*v45 + 48))(v45, a2) & 1) == 0)
    {
      v47 = *(a1 + 72);
      sg_entry::sg_entry<sg_entry const&,void>(&v83, a2, v43, v12, *(a1 + 104) + v12 + *(a2 + 24), *(a2 + 32) - v12);
      sg_entry::sg_entry(*v47 + 112 * v47[2]++, &v83);
      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }

      v41 = 0;
    }

    v48 = *(a1 + 80);
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
    }

    v49 = **(a1 + 72) + 112 * *(*(a1 + 72) + 16);
    v50 = *(v49 - 112) + v41;
    v51 = *(a2 + 40) & 1;
    if (*(a2 + 40))
    {
      v52 = *(v49 - 112) + v41;
    }

    else
    {
      v52 = v23;
    }

    v53 = *(v49 - 88) + v41 - *(a1 + 104);
    v54 = v48[2];
    v55 = *v48 + 56 * v54;
    *v55 = v25;
    v83 = 0;
    *(v55 + 8) = 1;
    *(v55 + 16) = v50;
    *(v55 + 24) = v52;
    *(v55 + 32) = v43;
    *(v55 + 40) = v53;
    *(v55 + 48) = v51 ^ 1;
    v48[2] = v54 + 1;
    result = lw_future_managed_setter<int,0>::handle::~handle(&v83, v46);
    if (*(a2 + 40))
    {
      result = std::function<crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()(a1 + 32, *(**(a1 + 72) + 112 * *(*(a1 + 72) + 16) - 112) + v41, v23, v43);
      if (result && v56 != 0)
      {
        v58 = *(a1 + 88);
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
        }

        v59 = v58[2];
        v60 = *v58 + 40 * v59;
        *v60 = v25;
        v83 = 0;
        *(v60 + 8) = 1;
        *(v60 + 16) = result;
        *(v60 + 24) = v56;
        *(v60 + 32) = v43;
        v58[2] = v59 + 1;
        result = lw_future_managed_setter<int,0>::handle::~handle(&v83, v56);
      }
    }

    v41 += v43;
    v23 += v43;
  }

  if (v44)
  {
    v61 = *(a1 + 24);
    if (!v61)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if (((*(*v61 + 48))(v61, a2) & 1) == 0)
    {
      v63 = (v44 + *(a1 + 96) - 1) / *(a1 + 96) * *(a1 + 96);
      crypto::details::sg_allocator::allocate(*(a1 + 64), v63, &v91);
      v64 = *(a1 + 72);
      std::shared_ptr<char>::shared_ptr[abi:ne200100]<char,std::function<void ()(char *)>,0>(&v81, &v91);
      v65 = v43 + v12 + *(a1 + 104) + *(a2 + 24);
      v83 = v81;
      v84 = v82;
      if (v82)
      {
        atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v85 = v44;
      v86 = v65;
      v87 = v63;
      v88 = 0;
      v89 = 0;
      v90 = 0;
      sg_entry::sg_entry(*v64 + 112 * v64[2]++, &v83);
      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }

      if (v82)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v82);
      }

      std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v91, 0);
      std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v92);
      v41 = 0;
    }

    v66 = *(a1 + 80);
    if (a4)
    {
      atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
    }

    v67 = **(a1 + 72) + 112 * *(*(a1 + 72) + 16);
    v68 = *(v67 - 112) + v41;
    v69 = *(a1 + 96);
    v70 = *(v67 - 88) + v41 - *(a1 + 104);
    v71 = v66[2];
    v72 = *v66 + 56 * v71;
    *v72 = a4;
    v83 = 0;
    *(v72 + 8) = 1;
    *(v72 + 16) = v68;
    *(v72 + 24) = v68;
    *(v72 + 32) = v69;
    *(v72 + 40) = v70;
    *(v72 + 48) = 0;
    v66[2] = v71 + 1;
    lw_future_managed_setter<int,0>::handle::~handle(&v83, v62);
    result = std::function<crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()(a1 + 32, *(**(a1 + 72) + 112 * *(*(a1 + 72) + 16) - 112) + v41, v23, v44);
    if (result)
    {
      v74 = v73 == 0;
    }

    else
    {
      v74 = 1;
    }

    if (!v74)
    {
      v75 = *(a1 + 88);
      if (a4)
      {
        atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
      }

      v76 = v75[2];
      v77 = *v75 + 40 * v76;
      *v77 = a4;
      v83 = 0;
      *(v77 + 8) = 1;
      *(v77 + 16) = result;
      *(v77 + 24) = v73;
      *(v77 + 32) = v44;
      v75[2] = v76 + 1;
      result = lw_future_managed_setter<int,0>::handle::~handle(&v83, v73);
    }
  }

LABEL_78:
  v78 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E451FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

const std::error_category *crypto::PerIOCrypto::crypt@<X0>(const std::error_category *result@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v10[18] = *MEMORY[0x277D85DE8];
  v4 = result[6].__vftable;
  if (LOBYTE(result[13].__vftable) != 1 || v4 == 0)
  {
    *(a3 + 16) = 1;
  }

  else
  {
    v6 = LODWORD(result[11].__vftable);
    if (!(result[12].__vftable % v6) && !(result[2].__vftable % v6))
    {
      v8 = a2 == 0;
      if (v4 != 3)
      {
        if (v4 == 2)
        {
          crypto::context::aes_xts::aes_xts(v10, v8, &result[7], &result[9], v6);
        }

        crypto::context::aes_iv::aes_iv(&v9);
      }

      crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(v10, v8, &result[7], v6);
    }

    result = std::generic_category();
    *a3 = 22;
    *(a3 + 8) = result;
    *(a3 + 16) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E45540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  crypto::context::aes_cbc::~aes_cbc(&a30);
  if (a10)
  {
    MEMORY[0x24C1ED710](a10, 0x1000C8015230203);
  }

  _Unwind_Resume(a1);
}

uint64_t crypto::PerIOCrypto::encrypt_and_write_sg(uint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v17 = 0;
  v4 = *(a1 + 104);
  v5 = *(a1 + 48);
  if (v4 == 1 && v5 != 0)
  {
    if (*(a1 + 40))
    {
      make_shared_buf(*(a1 + 32), &v11);
    }

    v5 = 1;
    LOBYTE(v4) = 1;
  }

  v7 = a1;
  if ((v4 & 1) == 0 || !v5)
  {
    goto LABEL_17;
  }

  v8.__vftable = *a1;
  crypto::PerIOCrypto::crypt(a1, 1, &v12);
  if (v13)
  {
    if (v7 == a1)
    {
      std::optional<sg_entry>::operator=[abi:ne200100]<sg_entry const&,void>(v14, a1);
      if (v16 == 1)
      {
        v16 = 0;
      }

      if ((v17 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v7 = v14;
    }

LABEL_17:
    v9 = (*(*a2 + 88))(a2, v7);
    goto LABEL_21;
  }

  if (v12 < 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = -v12;
  }

LABEL_21:
  if (v17 == 1 && v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v9;
}

void sub_248E4575C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a40 == 1)
  {
    if (a27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a27);
    }
  }

  _Unwind_Resume(exception_object);
}

void make_shared_buf(size_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = malloc_type_valloc(a1, 0x4DC0432DuLL);
    if (!v3)
    {
      exception = __cxa_allocate_exception(8uLL);
      v5 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v5, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  operator new();
}

void sub_248E4584C(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_rethrow();
}

uint64_t std::optional<sg_entry>::operator=[abi:ne200100]<sg_entry,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 112) == 1)
  {
    sg_entry::operator=(a1, a2);
  }

  else
  {
    sg_entry::sg_entry(a1, a2);
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t std::optional<sg_entry>::operator=[abi:ne200100]<sg_entry const&,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 112) == 1)
  {
    sg_entry::operator=(a1, a2);
  }

  else
  {
    sg_entry::sg_entry(a1, a2);
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t *crypto::PerIOCrypto::sw_decryptable_sg_entry::sw_decryptable_sg_entry(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 104) != 1 || *(a2 + 48) == 0;
  if (!v6 && (*(a2 + 40) & 2) != 0)
  {
    make_shared_buf(*(a2 + 32), &v8);
  }

  sg_entry::sg_entry(v9, a2);
  *a1 = a2;
  sg_entry::sg_entry((a1 + 1), v9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  a1[15] = a3;
  return a1;
}

void sub_248E45A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void crypto::PerIOCrypto::sw_decryptable_sg_entry::~sw_decryptable_sg_entry(const std::error_category *this)
{
  if (LOBYTE(this[14].__vftable) == 1)
  {
    if (LODWORD(this[7].__vftable))
    {
      v2 = this->~error_category;
      crypto::PerIOCrypto::crypt(this + 1, 0, v5);
      if ((v6 & 1) == 0)
      {
        v3 = v5[0];
        if (v5[0] >= 0)
        {
          v3 = -v5[0];
        }

        LODWORD(this[15].~error_category) = v3;
      }
    }
  }

  v4 = this[2].__vftable;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t BackendZero::_read(BackendZero *a1, uint64_t a2)
{
  BackendZero::run_futures(a1);
  bzero(*a2, *(a2 + 16));
  return *(a2 + 16);
}

void BackendZero::run_futures(BackendZero *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v3 == v2)
  {
    v4 = (this + 64);
  }

  else
  {
    v4 = (this + 64);
    v5 = *(this + 7);
    v6 = &v2[v5 / 0x22];
    v7 = *v6 + 120 * (v5 % 0x22);
    v8 = v2[(*(this + 8) + v5) / 0x22] + 120 * ((*(this + 8) + v5) % 0x22);
    if (v7 != v8)
    {
      do
      {
        bzero(*v7, *(v7 + 16));
        v9 = *(v7 + 16);
        v11 = *(v7 + 112);
        v10 = (v7 + 112);
        *v11 = v9;
        *(v11 + 4) = 1;
        lw_promise<int>::notify_future(v10, v12);
        v7 = (v10 + 1);
        if (v7 - *v6 == 4080)
        {
          v13 = v6[1];
          ++v6;
          v7 = v13;
        }
      }

      while (v7 != v8);
      v2 = *(this + 4);
      v3 = *(this + 5);
    }
  }

  if (v3 != v2)
  {
    v14 = *(this + 7);
    v15 = &v2[v14 / 0x22];
    v16 = *v15 + 120 * (v14 % 0x22);
    v17 = v2[(*(this + 8) + v14) / 0x22] + 120 * ((*(this + 8) + v14) % 0x22);
    if (v16 != v17)
    {
      do
      {
        v18 = *(v16 + 112);
        if (v18)
        {
          *(v18 + 16) = 0;
        }

        v19 = *(v16 + 8);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        v16 += 120;
        if (v16 - *v15 == 4080)
        {
          v20 = v15[1];
          ++v15;
          v16 = v20;
        }
      }

      while (v16 != v17);
      v2 = *(this + 4);
      v3 = *(this + 5);
    }
  }

  *v4 = 0;
  v21 = v3 - v2;
  if (v21 >= 3)
  {
    do
    {
      operator delete(*v2);
      v22 = *(this + 5);
      v2 = (*(this + 4) + 8);
      *(this + 4) = v2;
      v21 = (v22 - v2) >> 3;
    }

    while (v21 > 2);
  }

  if (v21 == 1)
  {
    v23 = 17;
  }

  else
  {
    if (v21 != 2)
    {
      return;
    }

    v23 = 34;
  }

  *(this + 7) = v23;
}

void BackendZero::future_read(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v10) = 0;
  v11 = 0;
  v13 = &v14;
  v14 = &v10;
  v12 = 0;
  sg_entry::sg_entry(v7, a2);
  v9 = v14;
  v5 = v14;
  v14 = 0;
  *(v5 + 2) = &v9;
  std::deque<crypto::promise_sg_t>::emplace_back<crypto::promise_sg_t>((a1 + 24), v7);
  if (v9)
  {
    *(v9 + 2) = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v11 == 1)
  {
    *a3 = v10;
    *(a3 + 4) = 1;
  }

  v6 = v13;
  *(a3 + 16) = v13;
  if (v6)
  {
    *v6 = a3;
  }

  if (v14)
  {
    *(v14 + 2) = 0;
  }
}

void sub_248E45E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    *(v26 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<crypto::promise_sg_t>::emplace_back<crypto::promise_sg_t>(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 34 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<crypto::promise_sg_t>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x22)) + 120 * (v7 % 0x22);
  }

  v9 = sg_entry::sg_entry(v8, a2);
  *(v9 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(*(v9 + 112) + 16) = v9 + 112;
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = a1[1];
  v14 = (v13 + 8 * (v12 / 0x22));
  v15 = *v14 + 120 * (v12 % 0x22);
  if (a1[2] == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4080;
  }

  return v15 - 120;
}

void BackendZero::~BackendZero(BackendZero *this)
{
  std::deque<crypto::promise_sg_t>::~deque[abi:ne200100](this + 3);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

{
  std::deque<crypto::promise_sg_t>::~deque[abi:ne200100](this + 3);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x24C1ED730);
}

{
  std::deque<crypto::promise_sg_t>::~deque[abi:ne200100](this + 3);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::vector<std::byte>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::byte const*>,std::__wrap_iter<std::byte const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_248E461BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_248E46238(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int *crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>::operator()(int *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    crypto::context::aes_mode<ccmode_cbc>::ccmode_encrypt = ccaes_cbc_encrypt_mode();
    v3 = ccaes_cbc_decrypt_mode();
    crypto::context::aes_mode<ccmode_cbc>::ccmode_decrypt = v3;
    v4 = crypto::context::aes_mode<ccmode_cbc>::ccmode_encrypt;
    if (v2)
    {
      v4 = v3;
    }

    v5 = (*v4 + 15) >> 4;
    cc_clear();

    JUMPOUT(0x24C1ED710);
  }

  return result;
}

int *std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100]<cccbc_ctx*,0>(int *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>::operator()(result + 2, v3);
  }

  return result;
}

int *crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>::operator()(int *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    crypto::context::aes_mode<ccmode_xts>::ccmode_encrypt = ccaes_xts_encrypt_mode();
    v3 = ccaes_xts_decrypt_mode();
    crypto::context::aes_mode<ccmode_xts>::ccmode_decrypt = v3;
    v4 = crypto::context::aes_mode<ccmode_xts>::ccmode_encrypt;
    if (v2)
    {
      v4 = v3;
    }

    v5 = (*v4 + 15) >> 4;
    cc_clear();

    JUMPOUT(0x24C1ED710);
  }

  return result;
}

int *std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100]<ccxts_ctx*,0>(int *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>::operator()(result + 2, v3);
  }

  return result;
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<crypto::get_nr_ctxs(void)::$_0 &&,unsigned long &>>(system_properties *a1)
{
  v1 = *(*a1 + 8);
  result = system_properties::get_logical_cpus(a1);
  LODWORD(v3) = result >> 2;
  if (result < 4)
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  *v1 = v3;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<419ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<419ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<419ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<419ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<419ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<419ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<419ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<419ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<419ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<419ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<419ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD86C0;
  di_log::logger_buf<di_log::log_printer<419ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<419ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<419ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248E4697C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<419ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<419ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<419ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 419;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 419;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<445ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<445ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<445ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<445ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<445ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<445ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<445ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<445ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<445ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<445ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<445ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD88E0;
  di_log::logger_buf<di_log::log_printer<445ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<445ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<445ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248E47114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<445ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<445ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<445ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 445;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 445;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<496ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<496ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<496ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<496ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<496ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<496ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<496ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<496ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<496ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<496ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<496ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD8B00;
  di_log::logger_buf<di_log::log_printer<496ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<496ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<496ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248E478AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<496ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<496ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<496ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 496;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 496;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<516ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<516ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<516ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<516ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<516ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<516ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<516ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<516ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<516ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<516ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<516ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD8D20;
  di_log::logger_buf<di_log::log_printer<516ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<516ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<516ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248E48044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<516ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<516ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<516ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 516;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 516;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__shared_ptr_pointer<char *,make_shared_buf(unsigned long)::{lambda(char *)#1},std::allocator<char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_pointer<char *,make_shared_buf(unsigned long)::{lambda(char *)#1},std::allocator<char>>::__on_zero_shared(uint64_t a1)
{
  free(*(a1 + 24));
}

{
  free(*(a1 + 24));
}

uint64_t std::__shared_ptr_pointer<char *,make_shared_buf(unsigned long)::{lambda(char *)#1},std::allocator<char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::deque<crypto::promise_sg_t>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x22];
    v7 = *v6 + 120 * (v5 % 0x22);
    v8 = v2[(a1[5] + v5) / 0x22] + 120 * ((a1[5] + v5) % 0x22);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 112);
        if (v9)
        {
          *(v9 + 16) = 0;
        }

        v10 = *(v7 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v7 += 120;
        if (v7 - *v6 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 17;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_20;
    }

    v13 = 34;
  }

  a1[4] = v13;
LABEL_20:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<FileLocal::promise_io_t *>::~__split_buffer(a1);
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<crypto::context::aes_iv::get_digest_info(void)::$_0 &&>>()
{
  result = ccsha1_di();
  crypto::context::aes_iv::digest_info = result;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<419ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD86C0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248E4861C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<445ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD88E0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248E486E4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<496ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD8B00;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248E487AC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<516ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD8D20;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248E48874(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<crypto::details::sg_allocator::allocate(unsigned long)::$_0,std::allocator<crypto::details::sg_allocator::allocate(unsigned long)::$_0>,void ()(char *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(sg_entry const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<crypto::details::buffer_aligner::backend_op_to_different_buffer_fn(Backend::op)::$_0,std::allocator<crypto::details::buffer_aligner::backend_op_to_different_buffer_fn(Backend::op)::$_0>,BOOL ()(sg_entry const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<crypto::details::buffer_aligner::backend_op_to_different_buffer_fn(Backend::op)::$_1,std::allocator<crypto::details::buffer_aligner::backend_op_to_different_buffer_fn(Backend::op)::$_1>,BOOL ()(sg_entry const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::shared_ptr<char>::shared_ptr[abi:ne200100]<char,std::function<void ()(char *)>,0>(uint64_t *result, uint64_t *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__shared_ptr_pointer<char *,std::function<void ()(char *)>,std::allocator<char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD9010;
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&a1[1].__shared_owners_);

  std::__shared_weak_count::~__shared_weak_count(a1);
}

{
  a1->__vftable = &unk_285BD9010;
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&a1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<char *,std::function<void ()(char *)>,std::allocator<char>>::__on_zero_shared(uint64_t a1)
{
  std::function<void ()(char *)>::operator()(a1 + 32, *(a1 + 24));

  return std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](a1 + 32);
}

uint64_t std::__shared_ptr_pointer<char *,std::function<void ()(char *)>,std::allocator<char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sg_entry::sg_entry<sg_entry const&,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  *a1 = *a2 + a4;
  *(a1 + 8) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = *(a2 + 40);
  sg_entry::adjust_key_material_by_sg(a2, a4, (a1 + 48));
  return a1;
}

void sub_248E48ED8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__120__shared_ptr_emplaceI11BackendZeroNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BD90D0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  Backend::Backend((a1 + 24));
  *(a1 + 24) = &unk_285BD8420;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void std::__shared_ptr_emplace<BackendZero>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD90D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__destroy_at[abi:ne200100]<BackendZero,0>(uint64_t a1)
{
  std::deque<crypto::promise_sg_t>::~deque[abi:ne200100]((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *std::deque<crypto::promise_sg_t>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x22;
  v3 = v1 - 34;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::atomic<DiskImage::Context *> *,std::allocator<std::atomic<DiskImage::Context *> *>>::emplace_back<std::atomic<DiskImage::Context *> *&>(a1, &v10);
}

void sub_248E49254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_248E49A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a12 == 1)
  {
    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    }
  }

  _Unwind_Resume(a1);
}

void sub_248E49E78(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_248E4A094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (a2 == 1)
  {
    v14 = [DIError nilWithDIException:__cxa_begin_catch(a1) prefix:@"Failed to set up image for resize after creation" error:v10];
    *v9 = 0;
    __cxa_end_catch();
    JUMPOUT(0x248E4A07CLL);
  }

  _Unwind_Resume(a1);
}

void sub_248E4A298(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  if (a13)
  {
    (*(*a13 + 16))(a13);
  }

  objc_begin_catch(exc_buf);
  v16 = *(v14 + 112);
  *(v14 + 112) = 0;

  objc_exception_rethrow();
}

diskimage_uio::diskimage **std::unique_ptr<diskimage_uio::diskimage>::~unique_ptr[abi:ne200100](diskimage_uio::diskimage **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    diskimage_uio::diskimage::~diskimage(v2);
    MEMORY[0x24C1ED730]();
  }

  return a1;
}

void sub_248E4A6F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [DIResizeParams resizeWithError:v1];
  }

  _Unwind_Resume(exception_object);
}

void sub_248E4A7F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [DiskImageParamsUDIF_XPC initWithBackendXPC:v1 header:?];
  }

  _Unwind_Resume(exception_object);
}

void sub_248E4A810(void *a1, int a2)
{
  if (a2 == 1)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"Failed to set up image for resize" error:v2];
    __cxa_end_catch();
    JUMPOUT(0x248E4A7DCLL);
  }

  JUMPOUT(0x248E4A808);
}

void sub_248E4B56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x24C1ED730](a10, 0x1000C40F139FF95);
  }

  _Unwind_Resume(a1);
}

uint64_t smart_enums::validators::value<unsigned int>(uint64_t result, int a2, _DWORD *a3, uint64_t a4)
{
  if (!a4)
  {
LABEL_5:
    v5 = result;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = v5;
    exception[2] = "invalid value";
    exception[3] = "value validator";
    *exception = &unk_285BD5790;
    *(exception + 8) = a2;
  }

  v4 = 4 * a4;
  while (*a3 != a2)
  {
    ++a3;
    v4 -= 4;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

void *std::__shared_ptr_emplace<crypto::format>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<crypto::header> &,std::allocator<crypto::format>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD4B28;
  crypto::format::format(a1 + 3);
  return a1;
}

void sub_248E4C2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10)
{
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&a9);
  v13 = a10;
  a10 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease((v11 - 40));
  _Unwind_Resume(a1);
}

const void **DiskImageEncryptionOnly::serialize_to_dict@<X0>(DiskImageEncryptionOnly *this@<X0>, void *a2@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  info::EncryptionInfo::serialize_to_dict((this + *(*this - 112)), &v7);
  v8 = @"Encryption Info";
  v9[0] = v7;
  v7 = 0;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v7);
  v5[0] = &v8;
  v5[1] = 1;
  cf::create_dict_from_list(v5, &v6);
  *a2 = v6;
  v6 = 0;
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v6);
  result = CFAutoRelease<void const*>::~CFAutoRelease(v9);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void DiskImageEncryptionOnly::~DiskImageEncryptionOnly(DiskImageEncryptionOnly *this)
{
  *(this + 7) = &unk_285BD9978;
  *(this + 3) = &unk_285BD99D0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 11);
}

{
  *(this + 7) = &unk_285BD9978;
  *(this + 3) = &unk_285BD99D0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 11);

  JUMPOUT(0x24C1ED730);
}

void sub_248E4C5B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t info::details::InfoNullGetter<info::SizeInfo>::get()
{
  return 0;
}

{
  return 0;
}

uint64_t info::details::InfoNullGetter<info::CompressionInfo>::get()
{
  return 0;
}

{
  return 0;
}

uint64_t info::details::InfoNullGetter<info::EncryptionInfo>::get()
{
  return 0;
}

{
  return 0;
}

uint64_t info::details::InfoNullGetter<info::MasterChecksumInfo>::get()
{
  return 0;
}

{
  return 0;
}

uint64_t info::details::InfoNullGetter<info::ASIFInfo>::get()
{
  return 0;
}

{
  return 0;
}

uint64_t info::details::InfoNullGetter<info::IdentityInfo>::get()
{
  return 0;
}

{
  return 0;
}

void info::EncryptionInfo::~EncryptionInfo(info::EncryptionInfo *this)
{
  *this = &unk_285BD9B00;
  *(this + 5) = &unk_285BD9B58;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 4);
}

{
  *this = &unk_285BD9B00;
  *(this + 5) = &unk_285BD9B58;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(this + 4);

  JUMPOUT(0x24C1ED730);
}

const void **info::EncryptionInfo::serialize_to_dict@<X0>(info::EncryptionInfo *this@<X0>, void *a2@<X8>)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (*(this + 24))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  v20 = @"Is Encrypted";
  v21[0] = v5;
  valuePtr = 0;
  v14 = &v20;
  v15 = 1;
  cf::create_dict_from_list(&v14, &v12);
  CFAutoRelease<void const*>::~CFAutoRelease(v21);
  CFAutoRelease<__CFBoolean const*>::~CFAutoRelease(&valuePtr);
  if (*(this + 24) == 1)
  {
    v6 = *(this + 1) - 1;
    if (v6 > 2)
    {
      v7 = @"None";
    }

    else
    {
      v7 = off_278F80CF8[v6];
    }

    v14 = @"Encryption Method";
    v15 = v7;
    valuePtr = *(this + 2);
    v16 = @"Key Size";
    v17 = 0;
    v17 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, &valuePtr);
    v18 = @"UUID";
    v8 = *(this + 4);
    v19 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    v20 = &v14;
    v21[0] = 3;
    cf::add_key_value_pairs_to_dict(&v12, &v20);
    for (i = 5; i != -1; i -= 2)
    {
      CFAutoRelease<void const*>::~CFAutoRelease(&(&v14)[i]);
    }
  }

  *a2 = v12;
  v12 = 0;
  result = CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v12);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E4C93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, char a12)
{
  do
  {
    CFAutoRelease<void const*>::~CFAutoRelease(v12 - 1);
    v12 -= 2;
  }

  while (v12 != &a12);
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&a10);
  _Unwind_Resume(a1);
}

void virtual thunk toinfo::EncryptionInfo::~EncryptionInfo(info::EncryptionInfo *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_285BD9B00;
  *(v1 + 5) = &unk_285BD9B58;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 4);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_285BD9B00;
  *(v1 + 5) = &unk_285BD9B58;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 4);

  JUMPOUT(0x24C1ED730);
}

char *virtual thunk toinfo::details::InfoTrait<info::EncryptionInfo>::get(void *a1)
{
  return a1 + *(*a1 - 32);
}

{
  return a1 + *(*a1 - 40);
}

const void **virtual thunk toDiskImageEncryptionOnly::~DiskImageEncryptionOnly(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

void virtual thunk toDiskImageEncryptionOnly::~DiskImageEncryptionOnly(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk toDiskImageEncryptionOnly::~DiskImageEncryptionOnly(DiskImageEncryptionOnly *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 7) = &unk_285BD9978;
  *(v1 + 3) = &unk_285BD99D0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(v1 + 11);

  JUMPOUT(0x24C1ED730);
}

const void **CFAutoRelease<__CFString const*>::~CFAutoRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **CFAutoRelease<void const*>::~CFAutoRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **CFAutoRelease<__CFBoolean const*>::~CFAutoRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **CFAutoRelease<__CFDictionary *>::~CFAutoRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_248E4D624(_Unwind_Exception *a1, int a2)
{
  v8 = v6;

  if (a2 == 1)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"Failed to create disk image with shadow/cache" error:v4];
    __cxa_end_catch();
    JUMPOUT(0x248E4D5DCLL);
  }

  _Unwind_Resume(a1);
}

void diskimage_uio::resolve_stack_nodes_from_path(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  create_stack_vector_from_single_path(a1, a1[1].__pn_.__r_.__value_.__s.__data_[0], __src);
  if (vmovn_s64(vceqq_s64(*__src, vdupq_laneq_s64(*__src, 1))).u8[0])
  {
    v4 = a1[1].__pn_.__r_.__value_.__s.__data_[0];
    operator new();
  }

  *a2 = *__src;
  *(a2 + 16) = v6;
  __src[1] = 0;
  v6 = 0;
  __src[0] = 0;
  *(a2 + 24) = 1;
  v7.__r_.__value_.__r.__words[0] = __src;
  std::vector<std::unique_ptr<diskimage_uio::stack_image_node const>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_248E4D8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, __int16 *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  MEMORY[0x24C1ED730](v26, 0x1072C40D6CB2E0FLL);
  a17 = &a12;
  std::vector<std::unique_ptr<diskimage_uio::stack_image_node const>>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (a2 == 1)
  {
    v29 = *(__cxa_begin_catch(a1) + 2);
    v30 = std::generic_category();
    *v25 = v29;
    *(v25 + 8) = v30;
    *(v25 + 24) = 0;
    __cxa_end_catch();
    JUMPOUT(0x248E4D8ACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::details::diskimage_impl::create_context_impl@<X0>(diskimage_uio::details::diskimage_impl *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(this + 1) + 144))(*(this + 1));
  *a2 = result;
  *(a2 + 16) = 1;
  return result;
}

uint64_t diskimage_uio::details::diskimage_impl::create_context@<X0>(diskimage_uio::details::diskimage_impl *this@<X0>, uint64_t a2@<X8>)
{
  diskimage_uio::details::diskimage_impl::create_context_impl(this, v4);
  if (v5)
  {
    v4[0] = 0;
    operator new();
  }

  result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v4);
  *a2 = *result;
  *(a2 + 16) = 0;
  if (v5)
  {
    result = v4[0];
    v4[0] = 0;
    if (result)
    {
      return (*(*result + 40))(result);
    }
  }

  return result;
}

void sub_248E4DAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12)
  {
    if (a10)
    {
      (*(*a10 + 40))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void diskimage_uio::details::diskimage_impl::copy_user_data(diskimage_uio::details::diskimage_impl *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 128);
  v6 = 1;
  std::__shared_mutex_base::lock_shared((this + 128));
  (*(**(this + 1) + 112))(&theDict);
  *a2 = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], theDict);
  *(a2 + 16) = 1;
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&theDict);
  std::__shared_mutex_base::unlock_shared(v5);
}

void sub_248E4DBB4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, char a11, int a12, char a13)
{
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&a10);
  if (a2 == 1)
  {
    *v13 = *(__cxa_begin_catch(a1) + 8);
    *(v13 + 16) = 0;
    __cxa_end_catch();
    if ((a13 & 1) == 0)
    {
      JUMPOUT(0x248E4DB9CLL);
    }

    JUMPOUT(0x248E4DB94);
  }

  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void diskimage_uio::details::diskimage_impl::write_user_data(diskimage_uio::details::diskimage_impl *this@<X0>, const __CFDictionary *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = (this + 128);
  std::__shared_mutex_base::lock((this + 128));
  (*(**(this + 1) + 120))(*(this + 1), a2);
  *a3 = 0;
  a3[16] = 1;
  std::__shared_mutex_base::unlock(v6);
}

uint64_t diskimage_uio::details::diskimage_impl::diskimage_impl(uint64_t a1, const std::error_category **a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_285BD9B88;
  *(a1 + 64) = 850045863;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  std::__shared_mutex_base::__shared_mutex_base((a1 + 128));
  diskimage_uio::details::diskimage_open_params_impl::query_image_format(*a2, v23);
  if ((v23[16] & 1) == 0)
  {
    *&v19 = "diskimage_uio::details::diskimage_impl::diskimage_impl(diskimage_open_params &&)";
    *(&v19 + 1) = 54;
    v20 = 16;
    di_log::logger<di_log::log_printer<1084ul>>::logger(v21, &v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Diskimageuio: Can't get image format", 36);
    di_log::logger<di_log::log_printer<1084ul>>::~logger(v21);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v23);
  }

  diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(*a2, v21);
  v5 = v21[0];
  v21[0] = 0;
  v6 = *v4;
  *v4 = v5;
  if (v6)
  {
    (*(*v6 + 2))(v6);
    v7 = v21[0];
    v21[0] = 0;
    if (v7)
    {
      (*(*v7 + 16))(v7);
    }
  }

  (*(**v4 + 10))(v21);
  if (v21[0] || v21[1] || v21[2] || v21[3])
  {
    v8 = *v4;
    {
      *&v19 = "diskimage_uio::details::diskimage_impl::diskimage_impl(diskimage_open_params &&)";
      *(&v19 + 1) = 54;
      v20 = 16;
      di_log::logger<di_log::log_printer<1097ul>>::logger(v21, &v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Diskimageuio: images with constraints currently not supported", 61);
      di_log::logger<di_log::log_printer<1097ul>>::~logger(v21);
      v16 = __cxa_allocate_exception(0x10uLL);
      *v16 = make_error_code(164);
      v16[1] = v17;
    }
  }

  return a1;
}

void sub_248E4E004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  __cxa_free_exception(v15);
  movable_lock<std::shared_mutex>::~movable_lock(v13 + 128);
  std::mutex::~mutex(v14);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((v13 + 16));
  v18 = *v16;
  *v16 = 0;
  if (v18)
  {
    (*(*v18 + 16))(v18);
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<1084ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1084ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD9C90;
  a1[45] = &unk_285BD9D90;
  a1[46] = &unk_285BD9DB8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD9C90;
  a1[45] = &unk_285BD9D18;
  a1[46] = &unk_285BD9D40;
  return a1;
}

void sub_248E4E1B0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1084ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1084ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1084ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(diskimage_uio::details::diskimage_open_params_impl *this@<X0>, void *a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr(v6, this);
  if ((v7 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v6);
  }

  diskimage_uio::details::diskimage_open_params_impl::lock_backend_if_required(this);
  bzero(__p, 0x278uLL);
  diskimage_uio::details::diskimage_open_params_impl::operator=(this, __p);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v12);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = v6[0];
  v4 = *MEMORY[0x277D85DE8];
}

void sub_248E4E344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  if (a12 == 1)
  {
    if (a10)
    {
      (*(*a10 + 16))(a10);
    }
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<1097ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1097ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDA570;
  a1[45] = &unk_285BDA670;
  a1[46] = &unk_285BDA698;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDA570;
  a1[45] = &unk_285BDA5F8;
  a1[46] = &unk_285BDA620;
  return a1;
}

void sub_248E4E4B8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1097ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1097ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1097ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t make_error_code(uint64_t result)
{
  {
    v1 = result;
    make_error_code();
    LODWORD(result) = v1;
  }

  return result;
}

void movable_lock<std::shared_mutex>::~movable_lock(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

uint64_t diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr(diskimage_uio::details::diskimage_open_params_impl *this)
{
  v3 = this;
  v1 = *(this + 140);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_285BDA778[v1])(&v4, this + 56);
}

diskimage_uio *diskimage_uio::diskimage::diskimage(diskimage_uio *this, diskimage_uio::details::diskimage_impl *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void *diskimage_uio::const_extents_iterator::const_extents_iterator(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

void *diskimage_uio::const_extents_iterator::const_extents_iterator(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

{
  *result = *a2;
  *a2 = 0;
  return result;
}

uint64_t ***diskimage_uio::const_extents_iterator::operator=(uint64_t ***a1, uint64_t ***a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *v4;
    *v4 = 0;
    if (v5)
    {
      std::default_delete<DiskImage::const_extents_iterator_t>::operator()[abi:ne200100](v4, v5);
    }

    MEMORY[0x24C1ED730](v4, 0x1020C40FA731AC5);
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

uint64_t diskimage_uio::details::extents_iterator_impl::operator++(uint64_t a1)
{
  DiskImage::const_extents_iterator_t::operator++(*a1);
  diskimage_uio::details::extents_iterator_impl::make_val(a1, &v3);
  *(a1 + 8) = v3;
  *(a1 + 24) = v4;
  return a1;
}

void diskimage_uio::const_extents_iterator::~const_extents_iterator(uint64_t ***this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      std::default_delete<DiskImage::const_extents_iterator_t>::operator()[abi:ne200100](v2, v3);
    }

    MEMORY[0x24C1ED730](v2, 0x1020C40FA731AC5);
  }

  *this = 0;
}

void diskimage_uio::extents_db::extents_db()
{
  operator new();
}

{
  diskimage_uio::extents_db::extents_db();
}

const std::error_category *diskimage_uio::extents_db::create@<X0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if ((a1 & 8) == 0)
  {
    diskimage_uio::extents_db::extents_db();
  }

  result = std::generic_category();
  *(a2 + 8) = result;
  *a2 = 45;
  *(a2 + 16) = 0;
  return result;
}

void *diskimage_uio::extents_db::extents_db(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

{
  *result = *a2;
  *a2 = 0;
  return result;
}

uint64_t **diskimage_uio::extents_db::operator=(uint64_t **a1, uint64_t **a2)
{
  v4 = *a1;
  if (*a1)
  {
    std::unique_ptr<DiskImage::extents_t>::reset[abi:ne200100](*a1, 0);
    MEMORY[0x24C1ED730](v4, 0x1020C403A5D3213);
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

void sub_248E4EC68(_Unwind_Exception *a1, int a2)
{
  v5 = v2;
  MEMORY[0x24C1ED730](v5, 0x1020C40FA731AC5);
  v7 = *(v3 - 40);
  *(v3 - 40) = 0;
  if (v7)
  {
    std::default_delete<DiskImage::const_extents_iterator_t>::operator()[abi:ne200100](v3 - 40, v7);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    operator new();
  }

  _Unwind_Resume(a1);
}

void sub_248E4EE10(_Unwind_Exception *a1, int a2)
{
  v5 = v2;
  MEMORY[0x24C1ED730](v5, 0x1020C40FA731AC5);
  v7 = *(v3 - 40);
  *(v3 - 40) = 0;
  if (v7)
  {
    std::default_delete<DiskImage::const_extents_iterator_t>::operator()[abi:ne200100](v3 - 40, v7);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    operator new();
  }

  _Unwind_Resume(a1);
}

void diskimage_uio::extents_db::~extents_db(uint64_t **this)
{
  v2 = *this;
  if (*this)
  {
    std::unique_ptr<DiskImage::extents_t>::reset[abi:ne200100](*this, 0);
    MEMORY[0x24C1ED730](v2, 0x1020C403A5D3213);
  }

  *this = 0;
}

void diskimage_uio::diskimage_open_params::diskimage_open_params()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_248E4F03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  std::unique_ptr<diskimage_uio::details::diskimage_open_params_impl>::~unique_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

const std::error_category *diskimage_uio::details::diskimage_open_params_impl::set_path@<X0>(std::__fs::filesystem::path *a1@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  std::__fs::filesystem::__status(a1, 0);
  if (LOBYTE(v15[0]) == 255 || LOBYTE(v15[0]) == 0)
  {
    *&v13 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::set_path(const std::filesystem::path &, const diskimage_open_params::mode)";
    *(&v13 + 1) = 75;
    v14 = 16;
    di_log::logger<di_log::log_printer<559ul>>::logger(v15, &v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Diskimageuio: path ", 19);
    if (SHIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, a1->__pn_.__r_.__value_.__l.__data_, a1->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = a1->__pn_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, p_p, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " doesn't exist", 14);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<559ul>>::~logger_buf(v15);
    MEMORY[0x24C1ED6A0](&v17);
    result = std::generic_category();
    *a4 = 2;
    *(a4 + 8) = result;
    *(a4 + 16) = 0;
  }

  else
  {
    *(a2 + 572) = a3;
    std::string::operator=(a2, &a1->__pn_);
    return diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(a2, 0, 1);
  }

  return result;
}

uint64_t *std::unique_ptr<diskimage_uio::details::diskimage_open_params_impl>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 624);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 608);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v2 + 592);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 56);
    v6 = *(v2 + 48);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(v2 + 32);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x24C1ED730](v2, 0x1032C40010FD2BBLL);
  }

  return a1;
}

void sub_248E4F39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  std::unique_ptr<diskimage_uio::details::diskimage_open_params_impl>::~unique_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void diskimage_uio::details::diskimage_open_params_impl::open_with_plugin(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  memset(v11, 0, sizeof(v11));
  if (a4 == 1)
  {
    v7 = 0x100000002;
  }

  else
  {
    v7 = 0x100000000;
  }

  plugin_header::plugin_header(&v8, a2, a3, v7, v11, 0);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>>::__assign_alt[abi:ne200100]<5ul,plugin_header,plugin_header>(a1 + 56, a1 + 56, &v8);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }

  *(a1 + 568) = 12;
  *a5 = 0;
  a5[16] = 1;
}

void sub_248E4F5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  std::unique_ptr<diskimage_uio::details::diskimage_open_params_impl>::~unique_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void diskimage_uio::details::diskimage_open_params_impl::set_fd(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 572) = a3;
  *(a1 + 576) = a3;
  std::allocate_shared[abi:ne200100]<FileLocal,std::allocator<FileLocal>,int &,int,BOOL &,0>();
}

void diskimage_uio::diskimage_open_params::create()
{
  diskimage_uio::diskimage_open_params::diskimage_open_params();
}

{
  diskimage_uio::diskimage_open_params::diskimage_open_params();
}

{
  diskimage_uio::diskimage_open_params::diskimage_open_params();
}

void *diskimage_uio::diskimage_open_params::diskimage_open_params(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

{
  *result = *a2;
  *a2 = 0;
  return result;
}

uint64_t *diskimage_uio::diskimage_open_params::operator=(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 + 624);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(v4 + 608);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(v4 + 592);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4 + 56);
    v8 = *(v4 + 48);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v9 = *(v4 + 32);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x24C1ED730](v4, 0x1032C40010FD2BBLL);
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

void diskimage_uio::details::diskimage_open_params_impl::~diskimage_open_params_impl(diskimage_uio::details::diskimage_open_params_impl *this)
{
  v2 = *(this + 78);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 76);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 74);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 56);
  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void diskimage_uio::diskimage_open_params::~diskimage_open_params(diskimage_uio::diskimage_open_params *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(v2 + 624);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 608);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v2 + 592);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 56);
    v6 = *(v2 + 48);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(v2 + 32);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x24C1ED730](v2, 0x1032C40010FD2BBLL);
  }

  *this = 0;
}

void *diskimage_uio::diskimage_open_params::diskimage_open_params(void *this, diskimage_uio::details::diskimage_open_params_impl *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void diskimage_uio::diskimage_open_params::encode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2)
  {
    diskimage_uio::details::diskimage_open_params_impl::encode(v2, a2);
  }
}

void diskimage_uio::details::diskimage_open_params_impl::encode(uint64_t a1, uint64_t a2)
{
  v4 = bswap32(*(a1 + 572));
  v20 = bswap32(*(a1 + 576));
  v21 = v4;
  (*a2)(a2, "required_mode", &v21, 4);
  (*a2)(a2, "current_mode", &v20, 4);
  v5 = *a2;
  if (*(a1 + 560) == 5)
  {
    v6 = *(a1 + 95);
    if (v6 < 0)
    {
      v7 = *(a1 + 72);
      v6 = *(a1 + 80);
    }

    else
    {
      v7 = (a1 + 72);
    }

    v5(a2, "plugin_name", v7, v6 + 1);
    v18 = *a2;
    v19 = *(a2 + 8);
    (*(*(a1 + 56) + 64))();
  }

  else
  {
    v8 = a1;
    if (*(a1 + 23) < 0)
    {
      v8 = *a1;
    }

    v9 = strlen(v8);
    v5(a2, "path", v8, v9 + 1);
    v10 = *(a1 + 584);
    if (v10 && *(a1 + 600) && *(a1 + 616))
    {
      v11 = *(a1 + 592);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(a2 + 8);
      v13 = (*(*v10 + 192))(v10);
      v12(a2, "crypto_fd", v13);
      crypto::format_serializer::encode(a2, *(a1 + 600));
    }

    else
    {
      v14 = *(a1 + 40);
      if (v14)
      {
        (*a2)(a2, "crypto_hdr", v14, 76);
      }

      v15 = *(a1 + 24);
      v11 = *(a1 + 32);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *(a2 + 8);
      v17 = (*(*v15 + 192))(v15);
      v16(a2, "fd", v17);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_248E4FC7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t diskimage_uio::diskimage_open_params::decode@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  diskimage_uio::details::diskimage_open_params_impl::decode(a1, v5);
  if (v5[632])
  {
    operator new();
  }

  *a2 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<diskimage_uio::details::diskimage_open_params_impl,std::error_code>::error(v5);
  *(a2 + 16) = 0;
  result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<diskimage_uio::details::diskimage_open_params_impl,std::error_code>::~expected(v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E4FD60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x24C1ED730](v2, 0x1032C40010FD2BBLL);
  diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<diskimage_uio::details::diskimage_open_params_impl,std::error_code>::~expected(va);
  _Unwind_Resume(a1);
}

_OWORD *diskimage_uio::details::diskimage_open_params_impl::decode@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v43 = 0;
  diskimage_uio::details::diskimage_open_params_impl::decode_buffer(a1, "required_mode", &v43, 4uLL, &v41);
  if ((v42 & 1) == 0)
  {
    result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v41);
LABEL_32:
    *a2 = *result;
    goto LABEL_33;
  }

  v40 = 0;
  diskimage_uio::details::diskimage_open_params_impl::decode_buffer(a1, "current_mode", &v40, 4uLL, &v44);
  if ((v44.__r_.__value_.__s.__data_[16] & 1) == 0)
  {
    v41 = *&v44.__r_.__value_.__l.__data_;
    if (v42)
    {
      v42 = v44.__r_.__value_.__s.__data_[16];
    }

    result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v41);
    goto LABEL_32;
  }

  if ((v42 & 1) == 0)
  {
    v42 = v44.__r_.__value_.__s.__data_[16];
  }

  v4 = bswap32(v43);
  v43 = v4;
  v5 = bswap32(v40);
  v40 = v5;
  switch(v4)
  {
    case 2u:
      LODWORD(v38[0]) = 2;
      goto LABEL_15;
    case 1u:
      v7 = 1;
      LODWORD(v38[0]) = 1;
      goto LABEL_17;
    case 0u:
      LODWORD(v38[0]) = 0;
LABEL_15:
      v7 = 1;
      goto LABEL_17;
  }

  v7 = 0;
  v38[0] = 34;
  v38[1] = std::generic_category();
LABEL_17:
  v39 = v7;
  switch(v5)
  {
    case 2u:
      LODWORD(v36[0]) = 2;
      goto LABEL_23;
    case 1u:
      v8 = 1;
      LODWORD(v36[0]) = 1;
      goto LABEL_25;
    case 0u:
      LODWORD(v36[0]) = 0;
LABEL_23:
      v8 = 1;
      goto LABEL_25;
  }

  v9 = std::generic_category();
  v8 = 0;
  v36[0] = 34;
  v36[1] = v9;
LABEL_25:
  v37 = v8;
  if ((v7 & 1) == 0)
  {
    result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v38);
    goto LABEL_32;
  }

  if ((v8 & 1) == 0)
  {
    result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v36);
    goto LABEL_32;
  }

  LODWORD(v44.__r_.__value_.__l.__data_) = 1;
  v44.__r_.__value_.__s.__data_[16] = 1;
  if (!diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(v36, &v44) || (LODWORD(v44.__r_.__value_.__l.__data_) = 0, v44.__r_.__value_.__s.__data_[16] = 1, !diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(v38, &v44)))
  {
    v11 = v36[0];
    v35 = 0;
    v12 = (*a1)(a1, "plugin_name", &v35);
    if (v12 < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v35;
      if (!v35[v12 - 1])
      {
        bzero(&v44, 0x278uLL);
        std::string::basic_string[abi:ne200100]<0>(&v29, v13);
        if (v11 == 1)
        {
          v14 = 0x100000002;
        }

        else
        {
          v14 = 0x100000000;
        }

        plugin_header::plugin_header(&v26, &v29, 0, v14, a1, a1);
        std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>::operator=[abi:ne200100]<plugin_header,0,plugin_header,5ul,0>(v45, &v26);
        plugin_header::~plugin_header(&v26);
        if (SBYTE7(v30) < 0)
        {
          operator delete(v29);
        }

        v45[128] = 12;
        diskimage_uio::details::diskimage_open_params_impl::diskimage_open_params_impl(a2, &v44);
        *(a2 + 632) = 1;
        diskimage_uio::details::diskimage_open_params_impl::~diskimage_open_params_impl(&v44);
        goto LABEL_65;
      }
    }

    v34 = 0;
    v15 = (*a1)(a1, "path", &v34);
    v16 = v34;
    if (!v34 || v15 <= 0)
    {
      result = std::generic_category();
      *a2 = 22;
      *(a2 + 8) = result;
      *(a2 + 632) = 0;
      goto LABEL_64;
    }

    if (v34[v15 - 1])
    {
      v17 = std::generic_category();
      *a2 = 22;
      *(a2 + 8) = v17;
      *(a2 + 632) = 0;
LABEL_63:
      result = MEMORY[0x24C1ED710](v16, 0x1000C8077774924);
LABEL_64:
      if (!v13)
      {
        goto LABEL_34;
      }

LABEL_65:
      result = MEMORY[0x24C1ED710](v13, 0x1000C8077774924);
      goto LABEL_34;
    }

    std::string::basic_string[abi:ne200100]<0>(&v44, v34);
    v33 = v44;
    v18 = (*(a1 + 8))(a1, "crypto_fd");
    v32 = v18;
    if (v18 < 0 && v18 != -2)
    {
      v19 = -v18;
      v20 = std::generic_category();
      *a2 = v19;
      *(a2 + 8) = v20;
      *(a2 + 632) = 0;
      goto LABEL_61;
    }

    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    if (v18 < 0)
    {
      v21 = (*(a1 + 8))(a1, "fd");
      if ((v21 & 0x80000000) == 0)
      {
        crypto::header_serializer::decode(a1, &v26);
        if (v27)
        {
          goto LABEL_57;
        }

        v24 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v26);
        v25 = std::generic_category();
        v44.__r_.__value_.__r.__words[0] = 2;
        v44.__r_.__value_.__l.__size_ = v25;
        if (!std::operator==[abi:ne200100](v24, &v44))
        {
          *a2 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v26);
          *(a2 + 632) = 0;
          if (v27 == 1 && *(&v26 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
          }

          goto LABEL_60;
        }

        if (v27)
        {
LABEL_57:
          if (*(&v26 + 1))
          {
            atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
          }
        }

        std::allocate_shared[abi:ne200100]<FileLocal,std::allocator<FileLocal>,int &,BOOL,BOOL,0>();
      }

      v22 = -v21;
      v23 = std::generic_category();
      *a2 = v22;
      *(a2 + 8) = v23;
      *(a2 + 632) = 0;
    }

    else
    {
      crypto::format_serializer::decode(a1, &v26);
      if (v28)
      {
        std::allocate_shared[abi:ne200100]<FileLocal,std::allocator<FileLocal>,int &,BOOL,BOOL,0>();
      }

      *a2 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<crypto::format,std::error_code>::error(&v26);
      *(a2 + 632) = 0;
      diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<crypto::format,std::error_code>::~expected(&v26);
    }

LABEL_60:
    diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::~crypto_ctx_t(&v29);
LABEL_61:
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    goto LABEL_63;
  }

  result = std::generic_category();
  *a2 = 22;
  *(a2 + 8) = result;
LABEL_33:
  *(a2 + 632) = 0;
LABEL_34:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E5040C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a19 == 1 && a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::~crypto_ctx_t(&a29);
  if (a42 < 0)
  {
    operator delete(*(v45 + 64));
  }

  MEMORY[0x24C1ED710](v44, v42);
  if (v43)
  {
    MEMORY[0x24C1ED710](v43, v42);
  }

  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<diskimage_uio::details::diskimage_open_params_impl,std::error_code>::error(uint64_t result)
{
  if (*(result + 632))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_285BD4148;
  }

  return result;
}

uint64_t diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<diskimage_uio::details::diskimage_open_params_impl,std::error_code>::~expected(uint64_t a1)
{
  if (*(a1 + 632) == 1)
  {
    v2 = *(a1 + 624);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(a1 + 608);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(a1 + 592);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 56);
    v5 = *(a1 + 48);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

_OWORD *diskimage_uio::details::diskimage_open_params_impl::query_image_format@<X0>(const std::error_category *this@<X0>, uint64_t a2@<X8>)
{
  result = diskimage_uio::details::diskimage_open_params_impl::validate_unlocked(this, v16);
  if (v16[16])
  {
    *a2 = this[71].__vftable;
    v5 = 1;
  }

  else
  {
    *&v11 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::query_image_format() const";
    *(&v11 + 1) = 85;
    v12 = 16;
    di_log::logger<di_log::log_printer<645ul>>::logger(v13, &v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Diskimageuio: query format failed ", 34);
    v6 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v16);
    v7 = (*(**(v6 + 1) + 16))(*(v6 + 1));
    v8 = strlen(v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v7, v8);
    v17 = 58;
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v17, 1);
    MEMORY[0x24C1ED390](v10, *v6);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(v13);
    MEMORY[0x24C1ED6A0](&v15);
    result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v16);
    v5 = 0;
    *a2 = *result;
  }

  *(a2 + 16) = v5;
  return result;
}

void sub_248E50814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<645ul>>::~logger(va);
  _Unwind_Resume(a1);
}

_OWORD *diskimage_uio::details::diskimage_open_params_impl::is_locked@<X0>(const std::error_category *this@<X0>, _BYTE *a2@<X8>)
{
  result = diskimage_uio::details::diskimage_open_params_impl::verify_backend(this, v7);
  if (v7[16])
  {
    v5 = this[5].__vftable;
    if (v5)
    {
      LOBYTE(v5) = !this[73].__vftable || !this[75].__vftable || this[77].__vftable == 0;
    }

    *a2 = v5;
    v6 = 1;
  }

  else
  {
    result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v7);
    v6 = 0;
    *a2 = *result;
  }

  a2[16] = v6;
  return result;
}

_OWORD *diskimage_uio::details::diskimage_open_params_impl::is_encrypted@<X0>(const std::error_category *this@<X0>, _BYTE *a2@<X8>)
{
  result = diskimage_uio::details::diskimage_open_params_impl::verify_backend(this, v7);
  if (v7[16])
  {
    if (this[5].__vftable)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = this[73].__vftable;
      if (v5)
      {
        v5 = this[75].__vftable;
        if (v5)
        {
          LOBYTE(v5) = this[77].__vftable != 0;
        }
      }
    }

    *a2 = v5;
    v6 = 1;
  }

  else
  {
    result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v7);
    v6 = 0;
    *a2 = *result;
  }

  a2[16] = v6;
  return result;
}

uint64_t diskimage_uio::details::diskimage_open_params_impl::is_read_only@<X0>(diskimage_uio::details::diskimage_open_params_impl *this@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**(this + 3) + 48))(*(this + 3));
  LOBYTE(v5) = 1;
  if (result)
  {
    if (*(this + 144))
    {
      v6 = *(this + 142);
      v7 = v6 > 0xB;
      v5 = 0x5F9u >> v6;
      if (v7)
      {
        LOBYTE(v5) = 1;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  *a2 = v5 & 1;
  a2[16] = 1;
  return result;
}

__n128 diskimage_uio::details::diskimage_open_params_impl::get_block_size@<Q0>(const std::error_category *this@<X0>, __n128 *a2@<X8>)
{
  diskimage_uio::details::diskimage_open_params_impl::validate_unlocked(this, v17);
  if (v17[16])
  {
    v4 = LODWORD(this[70].__vftable);
    if (v4 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v14[0] = &v12;
    (off_285BDF9C8[v4])(v14, &this[7]);
  }

  else
  {
    *&v12 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_block_size() const";
    *(&v12 + 1) = 81;
    v13 = 16;
    di_log::logger<di_log::log_printer<655ul>>::logger(v14, &v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Diskimageuio: query format failed ", 34);
    v6 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v17);
    v7 = (*(**(v6 + 1) + 16))(*(v6 + 1));
    v8 = strlen(v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v7, v8);
    v18 = 58;
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v18, 1);
    MEMORY[0x24C1ED390](v10, *v6);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(v14);
    MEMORY[0x24C1ED6A0](&v16);
    v11 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v17);
    result = *v11;
    *a2 = *v11;
    a2[1].n128_u8[0] = 0;
  }

  return result;
}

void sub_248E50B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<655ul>>::~logger(va);
  _Unwind_Resume(a1);
}

__n128 diskimage_uio::details::diskimage_open_params_impl::get_nr_blocks@<Q0>(const std::error_category *this@<X0>, __n128 *a2@<X8>)
{
  diskimage_uio::details::diskimage_open_params_impl::validate_unlocked(this, v17);
  if (v17[16])
  {
    v4 = LODWORD(this[70].__vftable);
    if (v4 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v14[0] = &v12;
    (off_285BDFE38[v4])(v14, &this[7]);
  }

  else
  {
    *&v12 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_nr_blocks() const";
    *(&v12 + 1) = 80;
    v13 = 16;
    di_log::logger<di_log::log_printer<665ul>>::logger(v14, &v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Diskimageuio: query format failed ", 34);
    v6 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v17);
    v7 = (*(**(v6 + 1) + 16))(*(v6 + 1));
    v8 = strlen(v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v7, v8);
    v18 = 58;
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v18, 1);
    MEMORY[0x24C1ED390](v10, *v6);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(v14);
    MEMORY[0x24C1ED6A0](&v16);
    v11 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v17);
    result = *v11;
    *a2 = *v11;
    a2[1].n128_u8[0] = 0;
  }

  return result;
}

void sub_248E50CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<665ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void diskimage_uio::diskimage_open_params::get_uuid(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void diskimage_uio::diskimage_open_params::get_auth_table(diskimage_uio::details::diskimage_open_params_impl **this@<X0>, uint64_t a2@<X8>)
{
  diskimage_uio::details::diskimage_open_params_impl::get_auth_table(*this, v5);
  if (v6)
  {
    diskimage_uio::crypto::auth_table::auth_table(a2, v5);
    v3 = 1;
  }

  else
  {
    v4 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v5);
    v3 = 0;
    *a2 = *v4;
  }

  *(a2 + 16) = v3;
  if (v6 == 1)
  {
    diskimage_uio::crypto::auth_table::~auth_table(v5);
  }
}

void sub_248E50D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, crypto::auth_table *a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    diskimage_uio::crypto::auth_table::~auth_table(&a10);
  }

  _Unwind_Resume(exception_object);
}

const std::error_category *diskimage_uio::details::diskimage_open_params_impl::get_auth_table@<X0>(diskimage_uio::details::diskimage_open_params_impl *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 5))
  {
    crypto::header::generate_auth_table();
  }

  result = std::generic_category();
  *a2 = 45;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

void sub_248E50E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, crypto::auth_table *a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  diskimage_uio::crypto::auth_table::~auth_table(&a9);
  std::unique_ptr<diskimage_uio::crypto::details::auth_table_impl_t>::~unique_ptr[abi:ne200100](&a10);
  if (a18)
  {
    crypto::auth_table::~auth_table(&a11);
  }

  _Unwind_Resume(a1);
}

void diskimage_uio::diskimage_context::read(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a1;
  v62[90] = *MEMORY[0x277D85DE8];
  v10 = *((*a1)[1] + 8);
  v11 = (*(*v10 + 24))(v10);
  dummy_shared_ptr = details::get_dummy_shared_ptr();
  v14 = dummy_shared_ptr;
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = v58;
  __p = v58;
  v57 = xmmword_248F9C800;
  v18 = (v16 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v16)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 0;
  }

  if (v19 < 6)
  {
    if (v16)
    {
      v29 = v18 + 1;
      do
      {
        v30 = *v15;
        v31 = dummy_shared_ptr[1];
        if (v31)
        {
          atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
        }

        v32 = v15[1];
        *v17 = v30;
        v17[1] = v31;
        v17[2] = v32;
        v15 += 2;
        v17 += 3;
        --v29;
      }

      while (v29);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v44 = v8;
    if (v19 >= 0x555555555555556)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v13);
    }

    v20 = operator new(24 * v19);
    if (__p)
    {
      v43 = a5;
      v21 = v57;
      if (v57)
      {
        v22 = (__p + 8);
        do
        {
          if (*v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*v22);
          }

          v22 += 3;
          --v21;
        }

        while (v21);
      }

      *&v57 = 0;
      a5 = v43;
      if (v58 != __p)
      {
        operator delete(__p);
      }
    }

    *(&v57 + 1) = v19;
    __p = v20;
    *&v57 = 0;
    if (v16)
    {
      v23 = &v15[2 * v16];
      v24 = v20;
      do
      {
        v25 = *v15;
        v26 = v14[1];
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v27 = v15[1];
        *v24 = v25;
        *(v24 + 1) = v26;
        *(v24 + 2) = v27;
        v15 += 2;
        v24 += 24;
      }

      while (v15 != v23);
      v28 = v57;
    }

    else
    {
      v28 = 0;
      v24 = v20;
    }

    v19 = v28 - 0x5555555555555555 * ((v24 - v20) >> 3);
    v8 = v44;
  }

  *&v57 = v19;
  v59 = &v61;
  v60 = xmmword_248F9C800;
  boost::container::vector<unsigned long,boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,void>::priv_resize<boost::container::value_init_t,boost::move_detail::integral_constant<unsigned int,1u>>(&v59, v19);
  v50 = __p;
  v47 = __p + 24 * v19;
  v55 = v59;
  v54 = &v59[v60];
  sg_vec_ref::sg_vec_ref(v62, &v50, &v47, &v55, &v54, v11 * a3, v11 * a4, 2);
  v33 = *a5;
  if (*a5)
  {
    v34 = **v8;
    v35 = (*(**(v34 + 8) + 24))(*(v34 + 8));
    diskimage_uio::crypto::registered_cryptos::to_sg_per_io_crypto((v34 + 16), v33, v35, &v50);
    if ((v52 & 1) == 0)
    {
      *a6 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<sg_per_io_crypto,std::error_code>::error(&v50);
      goto LABEL_47;
    }

    sg_vec_ref::attach_per_io_crypto(v62, &v50);
  }

  v36 = (*v8)[1];
  sg_vec_ref::begin(v62, &v50);
  sg_vec_ref::end(v62, &v47);
  v37 = DiskImage::Context::read(v36, &v50, &v47);
  v39 = v38;
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (v37 < 0 && v37)
  {
    v40 = std::generic_category();
    *a6 = v37;
    *(a6 + 8) = v40;
LABEL_47:
    *(a6 + 16) = 0;
    goto LABEL_48;
  }

  if (v39 != v11 * a3)
  {
    *a6 = make_error_code(164);
    *(a6 + 8) = v41;
    goto LABEL_47;
  }

  *a6 = v37;
  *(a6 + 16) = 1;
LABEL_48:
  sg_vec::~sg_vec(&__p);
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<sg_per_io_crypto,std::error_code>::error(uint64_t result)
{
  if (*(result + 56))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_285BD4148;
  }

  return result;
}

uint64_t DiskImage::Context::read(DiskImage::Context *this, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3)
{
  if ((*(*(this + 1) + 8) & 1) == 0)
  {
    return (**this)(this, a2, a3);
  }

  if (DIDebugLogsEnabled())
  {
    *&v4 = "DiskImage::Context::read(const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v4 + 1) = 24;
    v5 = 2;
    di_log::logger<di_log::log_printer<159ul>>::logger(v6, &v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Disk image is terminated, skipping read", 39);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(v6);
    MEMORY[0x24C1ED6A0](&v8);
  }

  return -6;
}

void sub_248E5146C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<159ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void diskimage_uio::diskimage_context::write(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a1;
  v62[90] = *MEMORY[0x277D85DE8];
  v10 = *((*a1)[1] + 8);
  v11 = (*(*v10 + 24))(v10);
  dummy_shared_ptr = details::get_dummy_shared_ptr();
  v14 = dummy_shared_ptr;
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = v58;
  __p = v58;
  v57 = xmmword_248F9C800;
  v18 = (v16 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v16)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 0;
  }

  if (v19 < 6)
  {
    if (v16)
    {
      v29 = v18 + 1;
      do
      {
        v30 = *v15;
        v31 = dummy_shared_ptr[1];
        if (v31)
        {
          atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
        }

        v32 = v15[1];
        *v17 = v30;
        v17[1] = v31;
        v17[2] = v32;
        v15 += 2;
        v17 += 3;
        --v29;
      }

      while (v29);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v44 = v8;
    if (v19 >= 0x555555555555556)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v13);
    }

    v20 = operator new(24 * v19);
    if (__p)
    {
      v43 = a5;
      v21 = v57;
      if (v57)
      {
        v22 = (__p + 8);
        do
        {
          if (*v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*v22);
          }

          v22 += 3;
          --v21;
        }

        while (v21);
      }

      *&v57 = 0;
      a5 = v43;
      if (v58 != __p)
      {
        operator delete(__p);
      }
    }

    *(&v57 + 1) = v19;
    __p = v20;
    *&v57 = 0;
    if (v16)
    {
      v23 = &v15[2 * v16];
      v24 = v20;
      do
      {
        v25 = *v15;
        v26 = v14[1];
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v27 = v15[1];
        *v24 = v25;
        *(v24 + 1) = v26;
        *(v24 + 2) = v27;
        v15 += 2;
        v24 += 24;
      }

      while (v15 != v23);
      v28 = v57;
    }

    else
    {
      v28 = 0;
      v24 = v20;
    }

    v19 = v28 - 0x5555555555555555 * ((v24 - v20) >> 3);
    v8 = v44;
  }

  *&v57 = v19;
  v59 = &v61;
  v60 = xmmword_248F9C800;
  boost::container::vector<unsigned long,boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,void>::priv_resize<boost::container::value_init_t,boost::move_detail::integral_constant<unsigned int,1u>>(&v59, v19);
  v50 = __p;
  v47 = __p + 24 * v19;
  v55 = v59;
  v54 = &v59[v60];
  sg_vec_ref::sg_vec_ref(v62, &v50, &v47, &v55, &v54, v11 * a3, v11 * a4, 1);
  v33 = *a5;
  if (*a5)
  {
    v34 = **v8;
    v35 = (*(**(v34 + 8) + 24))(*(v34 + 8));
    diskimage_uio::crypto::registered_cryptos::to_sg_per_io_crypto((v34 + 16), v33, v35, &v50);
    if ((v52 & 1) == 0)
    {
      *a6 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<sg_per_io_crypto,std::error_code>::error(&v50);
      goto LABEL_47;
    }

    sg_vec_ref::attach_per_io_crypto(v62, &v50);
  }

  v36 = (*v8)[1];
  sg_vec_ref::begin(v62, &v50);
  sg_vec_ref::end(v62, &v47);
  v37 = DiskImage::Context::write(v36, &v50, &v47);
  v39 = v38;
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (v37 < 0 && v37)
  {
    v40 = std::generic_category();
    *a6 = v37;
    *(a6 + 8) = v40;
LABEL_47:
    *(a6 + 16) = 0;
    goto LABEL_48;
  }

  if (v39 != v11 * a3)
  {
    *a6 = make_error_code(164);
    *(a6 + 8) = v41;
    goto LABEL_47;
  }

  *a6 = v37;
  *(a6 + 16) = 1;
LABEL_48:
  sg_vec::~sg_vec(&__p);
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t diskimage_uio::diskimage_context::flush@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 >= 3)
  {
    result = make_error_code(164);
    v7 = 0;
    *a3 = result;
    *(a3 + 8) = v8;
  }

  else
  {
    v4 = dword_248FA1384[a2];
    result = DiskImage::Context::flush(*(*a1 + 8));
    if (result)
    {
      v6 = result;
      result = std::generic_category();
      v7 = 0;
      *a3 = v6;
      *(a3 + 8) = result;
    }

    else
    {
      *a3 = 0;
      v7 = 1;
    }
  }

  *(a3 + 16) = v7;
  return result;
}

uint64_t diskimage_uio::diskimage_context::unmap@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[2];
  result = DiskImage::Context::unmap(*(*a1 + 8));
  if (result)
  {
    v8 = result;
    result = std::generic_category();
    v9 = 0;
    *a3 = v8;
    *(a3 + 8) = result;
  }

  else
  {
    v10 = a2[2];
    if (v10)
    {
      v11 = 0;
      v12 = (*a2 + 8);
      v13 = 16 * v10;
      do
      {
        v14 = *v12;
        v12 += 2;
        v11 += v14;
        v13 -= 16;
      }

      while (v13);
    }

    else
    {
      v11 = 0;
    }

    *a3 = v11;
    v9 = 1;
  }

  *(a3 + 16) = v9;
  return result;
}

uint64_t DiskImage::Context::unmap(void *a1)
{
  if (*(a1[1] + 8))
  {
    if (DIDebugLogsEnabled())
    {
      *&v3 = "DiskImage::Context::unmap(const unmap_extent_t *, size_t)";
      *(&v3 + 1) = 25;
      v4 = 2;
      di_log::logger<di_log::log_printer<173ul>>::logger(v5, &v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Disk image is terminated, skipping unmap", 40);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(v5);
      MEMORY[0x24C1ED6A0](&v7);
    }

    return 4294967290;
  }

  else
  {
    v2 = *(*a1 + 16);

    return v2();
  }
}

void sub_248E51B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<173ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *diskimage_uio::diskimage_context::diskimage_context(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

{
  *result = *a2;
  *a2 = 0;
  return result;
}

uint64_t *diskimage_uio::diskimage_context::operator=(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    MEMORY[0x24C1ED730](v4, 0x60C405C6656D0);
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

void diskimage_uio::diskimage_context::~diskimage_context(diskimage_uio::diskimage_context *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    MEMORY[0x24C1ED730](v2, 0x60C405C6656D0);
  }

  *this = 0;
}

uint64_t *diskimage_uio::diskimage::diskimage(uint64_t *a1, uint64_t *a2)
{
  v4 = 0;
  v5 = *a2;
  *a2 = 0;
  *a1 = diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::move_iterator<diskimage_uio::diskimage_open_params_pair *>>(&v4, &v6);
  diskimage_uio::diskimage_open_params::~diskimage_open_params(&v5);
  return a1;
}

{
  *a1 = diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>(*a2, a2[1]);
  return a1;
}

{
  *a1 = diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>(*a2, a2[1]);
  return a1;
}

uint64_t diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::move_iterator<diskimage_uio::diskimage_open_params_pair *>>(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *&v15 = "diskimage_impl *diskimage_uio::details::diskimage_impl::create_diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
    *(&v15 + 1) = 77;
    v16 = 16;
    di_log::logger<di_log::log_printer<1992ul>>::logger(v17, &v15);
    std::operator<<[abi:ne200100]<di_log::logger<di_log::log_printer<1992ul>>,char [33],0>(v17, "Diskimageuio: No diskimage given");
    di_log::logger<di_log::log_printer<1992ul>>::~logger(v17);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = make_error_code(157);
    exception[1] = v10;
  }

  if (a1 + 16 != a2)
  {
    operator new();
  }

  v13 = *a1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v14 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    *&v15 = "diskimage_impl *diskimage_uio::details::diskimage_impl::create_diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
    *(&v15 + 1) = 77;
    v16 = 16;
    di_log::logger<di_log::log_printer<1999ul>>::logger(v17, &v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Diskimageuio: single image given, but role is ", 46);
    diskimage_uio::operator<<(v19, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " rather than image", 18);
    di_log::logger<di_log::log_printer<1999ul>>::~logger(v17);
    v11 = __cxa_allocate_exception(0x10uLL);
    v12 = std::generic_category();
    *v11 = 22;
    v11[1] = v12;
  }

  diskimage_uio::details::diskimage_open_params_impl::query_image_format(v4, &v15);
  LODWORD(v17[0]) = 12;
  v18 = 1;
  if (diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(&v15, v17))
  {
    operator new();
  }

  diskimage_uio::details::diskimage_open_params_impl::query_image_format(v14, &v15);
  LODWORD(v17[0]) = 11;
  v18 = 1;
  if (!diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(&v15, v17) || (v5 = *(v14 + 7), v6 = v5[1], v6 - *v5 != 16))
  {
    operator new();
  }

  v7 = diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>>(*v5, v6);
  diskimage_uio::diskimage_open_params::~diskimage_open_params(&v14);
  return v7;
}

uint64_t *diskimage_uio::diskimage::diskimage(uint64_t *a1, _DWORD **a2, uint64_t a3)
{
  v22[27] = *MEMORY[0x277D85DE8];
  if (!(8 * a3))
  {
    *&v17 = "diskimage_impl *diskimage_uio::details::diskimage_impl::create_diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = boost::iterators::transform_iterator<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/libdiskimagesio/diskimage_uio.cpp:1710:29), const diskimage_uio::rref_capture<diskimage_uio::diskimage_open_params_pair> *>]";
    *(&v17 + 1) = 151;
    LODWORD(v18) = 16;
    di_log::logger<di_log::log_printer<1992ul>>::logger(&lpsrc, &v17);
    std::operator<<[abi:ne200100]<di_log::logger<di_log::log_printer<1992ul>>,char [33],0>(&lpsrc, "Diskimageuio: No diskimage given");
    di_log::logger<di_log::log_printer<1992ul>>::~logger(&lpsrc);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = make_error_code(157);
    exception[1] = v12;
  }

  if (a3 != 1)
  {
    operator new();
  }

  v4 = *a2;
  LODWORD(lpsrc) = **a2;
  v5 = lpsrc;
  v20 = *(v4 + 1);
  *(v4 + 1) = 0;
  v15 = v5;
  v16 = v20;
  v20 = 0;
  diskimage_uio::diskimage_open_params::~diskimage_open_params(&v20);
  if (v15)
  {
    *&v17 = "diskimage_impl *diskimage_uio::details::diskimage_impl::create_diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = boost::iterators::transform_iterator<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/libdiskimagesio/diskimage_uio.cpp:1710:29), const diskimage_uio::rref_capture<diskimage_uio::diskimage_open_params_pair> *>]";
    *(&v17 + 1) = 151;
    LODWORD(v18) = 16;
    di_log::logger<di_log::log_printer<1999ul>>::logger(&lpsrc, &v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Diskimageuio: single image given, but role is ", 46);
    diskimage_uio::operator<<(v22, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " rather than image", 18);
    di_log::logger<di_log::log_printer<1999ul>>::~logger(&lpsrc);
    v13 = __cxa_allocate_exception(0x10uLL);
    v14 = std::generic_category();
    *v13 = 22;
    v13[1] = v14;
  }

  diskimage_uio::details::diskimage_open_params_impl::query_image_format(v16, &v17);
  LODWORD(lpsrc) = 12;
  LOBYTE(v21) = 1;
  if (diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(&v17, &lpsrc))
  {
    operator new();
  }

  diskimage_uio::details::diskimage_open_params_impl::query_image_format(v16, &v17);
  LODWORD(lpsrc) = 11;
  LOBYTE(v21) = 1;
  if (!diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(&v17, &lpsrc) || (v6 = *(v16 + 7), v7 = v6[1], v7 - *v6 != 16))
  {
    operator new();
  }

  v8 = diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>>(*v6, v7);
  diskimage_uio::diskimage_open_params::~diskimage_open_params(&v16);
  *a1 = v8;
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_248E53028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  __cxa_end_catch();
  a21 = &a18;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a21);
  v23 = *(v21 - 152);
  *(v21 - 152) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params((v21 - 136));
  movable_lock<std::shared_mutex>::~movable_lock(a13 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a13 + 16));
  v24 = *a14;
  *a14 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  MEMORY[0x24C1ED730](a13, 0x10A1C400481B657);
  _Unwind_Resume(a1);
}

void sub_248E53048(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x248E53258);
}

void sub_248E53058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  di_log::logger<di_log::log_printer<1049ul>>::~logger(&a21);
  a21 = &a18;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a21);
  v23 = *(v21 - 152);
  *(v21 - 152) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params((v21 - 136));
  movable_lock<std::shared_mutex>::~movable_lock(a13 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a13 + 16));
  v24 = *a14;
  *a14 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  MEMORY[0x24C1ED730](a13, 0x10A1C400481B657);
  _Unwind_Resume(a1);
}

void sub_248E53068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  di_log::logger<di_log::log_printer<1054ul>>::~logger(&a21);
  a21 = &a18;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a21);
  v23 = *(v21 - 152);
  *(v21 - 152) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params((v21 - 136));
  movable_lock<std::shared_mutex>::~movable_lock(a13 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a13 + 16));
  v24 = *a14;
  *a14 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  MEMORY[0x24C1ED730](a13, 0x10A1C400481B657);
  _Unwind_Resume(a1);
}

void sub_248E53078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  di_log::logger<di_log::log_printer<1043ul>>::~logger(&a21);
  a21 = &a18;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a21);
  v23 = *(v21 - 152);
  *(v21 - 152) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params((v21 - 136));
  movable_lock<std::shared_mutex>::~movable_lock(a13 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a13 + 16));
  v24 = *a14;
  *a14 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  MEMORY[0x24C1ED730](a13, 0x10A1C400481B657);
  _Unwind_Resume(a1);
}

void sub_248E53088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  di_log::logger<di_log::log_printer<1038ul>>::~logger(&a21);
  a21 = &a18;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a21);
  v23 = *(v21 - 152);
  *(v21 - 152) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params((v21 - 136));
  movable_lock<std::shared_mutex>::~movable_lock(a13 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a13 + 16));
  v24 = *a14;
  *a14 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  MEMORY[0x24C1ED730](a13, 0x10A1C400481B657);
  _Unwind_Resume(a1);
}

void sub_248E530A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  __cxa_free_exception(v21);
  a21 = &a18;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a21);
  v24 = *(v22 - 152);
  *(v22 - 152) = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params((v22 - 136));
  movable_lock<std::shared_mutex>::~movable_lock(a13 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a13 + 16));
  v25 = *a14;
  *a14 = 0;
  if (v25)
  {
    (*(*v25 + 16))(v25);
  }

  MEMORY[0x24C1ED730](a13, 0x10A1C400481B657);
  _Unwind_Resume(a1);
}

void sub_248E530C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  di_log::logger<di_log::log_printer<1023ul>>::~logger(&a21);
  a21 = &a18;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a21);
  v23 = *(v21 - 152);
  *(v21 - 152) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params((v21 - 136));
  movable_lock<std::shared_mutex>::~movable_lock(a13 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a13 + 16));
  v24 = *a14;
  *a14 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  MEMORY[0x24C1ED730](a13, 0x10A1C400481B657);
  _Unwind_Resume(a1);
}

void sub_248E530D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  di_log::logger<di_log::log_printer<1003ul>>::~logger(&a21);
  a21 = &a18;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a21);
  v23 = *(v21 - 152);
  *(v21 - 152) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params((v21 - 136));
  movable_lock<std::shared_mutex>::~movable_lock(a13 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a13 + 16));
  v24 = *a14;
  *a14 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  MEMORY[0x24C1ED730](a13, 0x10A1C400481B657);
  _Unwind_Resume(a1);
}

void sub_248E530E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  di_log::logger<di_log::log_printer<1010ul>>::~logger(&a21);
  a21 = &a18;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a21);
  v23 = *(v21 - 152);
  *(v21 - 152) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params((v21 - 136));
  movable_lock<std::shared_mutex>::~movable_lock(a13 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a13 + 16));
  v24 = *a14;
  *a14 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  MEMORY[0x24C1ED730](a13, 0x10A1C400481B657);
  _Unwind_Resume(a1);
}

void sub_248E530F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  di_log::logger<di_log::log_printer<1064ul>>::~logger(&a21);
  a21 = &a18;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a21);
  v23 = *(v21 - 152);
  *(v21 - 152) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params((v21 - 136));
  movable_lock<std::shared_mutex>::~movable_lock(a13 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a13 + 16));
  v24 = *a14;
  *a14 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  MEMORY[0x24C1ED730](a13, 0x10A1C400481B657);
  _Unwind_Resume(a1);
}

void sub_248E5310C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  di_log::logger<di_log::log_printer<1031ul>>::~logger(&a21);
  a21 = &a18;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a21);
  v23 = *(v21 - 152);
  *(v21 - 152) = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params((v21 - 136));
  movable_lock<std::shared_mutex>::~movable_lock(a13 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a13 + 16));
  v24 = *a14;
  *a14 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  MEMORY[0x24C1ED730](a13, 0x10A1C400481B657);
  _Unwind_Resume(a1);
}

void sub_248E5311C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  v23 = a21;
  a21 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  a21 = &a18;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a21);
  v24 = *(v21 - 152);
  *(v21 - 152) = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params((v21 - 136));
  movable_lock<std::shared_mutex>::~movable_lock(a13 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100](a13 + 16);
  v25 = *a14;
  *a14 = 0;
  if (v25)
  {
    (*(*v25 + 16))(v25);
  }

  MEMORY[0x24C1ED730](a13, 0x10A1C400481B657);
  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *&v15 = "diskimage_impl *diskimage_uio::details::diskimage_impl::create_diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>]";
    *(&v15 + 1) = 77;
    v16 = 16;
    di_log::logger<di_log::log_printer<1992ul>>::logger(v17, &v15);
    std::operator<<[abi:ne200100]<di_log::logger<di_log::log_printer<1992ul>>,char [33],0>(v17, "Diskimageuio: No diskimage given");
    di_log::logger<di_log::log_printer<1992ul>>::~logger(v17);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = make_error_code(157);
    exception[1] = v10;
  }

  if (a1 + 16 != a2)
  {
    operator new();
  }

  v13 = *a1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v14 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    *&v15 = "diskimage_impl *diskimage_uio::details::diskimage_impl::create_diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>]";
    *(&v15 + 1) = 77;
    v16 = 16;
    di_log::logger<di_log::log_printer<1999ul>>::logger(v17, &v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Diskimageuio: single image given, but role is ", 46);
    diskimage_uio::operator<<(v19, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " rather than image", 18);
    di_log::logger<di_log::log_printer<1999ul>>::~logger(v17);
    v11 = __cxa_allocate_exception(0x10uLL);
    v12 = std::generic_category();
    *v11 = 22;
    v11[1] = v12;
  }

  diskimage_uio::details::diskimage_open_params_impl::query_image_format(v4, &v15);
  LODWORD(v17[0]) = 12;
  v18 = 1;
  if (diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(&v15, v17))
  {
    operator new();
  }

  diskimage_uio::details::diskimage_open_params_impl::query_image_format(v14, &v15);
  LODWORD(v17[0]) = 11;
  v18 = 1;
  if (!diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(&v15, v17) || (v5 = *(v14 + 7), v6 = v5[1], v6 - *v5 != 16))
  {
    operator new();
  }

  v7 = diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>>(*v5, v6);
  diskimage_uio::diskimage_open_params::~diskimage_open_params(&v14);
  return v7;
}

void sub_248E53598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<1992ul>>::~logger(va);
  JUMPOUT(0x248E5357CLL);
}

uint64_t *diskimage_uio::diskimage::create@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = diskimage_uio::diskimage::diskimage(&v4, a1);
  *a2 = v4;
  *(a2 + 16) = 1;
  return result;
}

void diskimage_uio::diskimage::~diskimage(diskimage_uio::diskimage *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = 0;
}

{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = 0;
}

uint64_t *diskimage_uio::diskimage::create@<X0>(_DWORD **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = diskimage_uio::diskimage::diskimage(&v5, a1, a2);
  *a3 = v5;
  *(a3 + 16) = 1;
  return result;
}

uint64_t diskimage_uio::diskimage::create@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>(*a1, a1[1]);
  *a2 = result;
  *(a2 + 16) = 1;
  return result;
}

void *diskimage_uio::diskimage::diskimage(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

{
  *result = *a2;
  *a2 = 0;
  return result;
}

uint64_t *diskimage_uio::diskimage::operator=(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

void diskimage_uio::details::diskimage_impl::register_crypto(uint64_t a1@<X0>, diskimage_uio::crypto::details *a2@<X1>, uint64_t a3@<X8>)
{
  diskimage_uio::crypto::registered_cryptos::register_crypto(a1 + 16, a2, v6);
  if (v7)
  {
    *a3 = v6[0];
    v4 = 1;
  }

  else
  {
    v5 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v6);
    v4 = 0;
    *a3 = *v5;
  }

  *(a3 + 16) = v4;
}

void diskimage_uio::details::diskimage_impl::subscribe_to_ring(diskimage_uio::details::diskimage_impl *this, io_rings_desc_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    v4 = **v2;
    if (v5)
    {
      v2 = *(v5[3] - 24);
      if (!v2)
      {
        goto LABEL_7;
      }

      v3 = *v2;
    }

    v6 = *v3;
    {
      operator new();
    }
  }

LABEL_7:
  operator new();
}

void sub_248E53B88(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<di_hybrid_subscriber_t>::~unique_ptr[abi:ne200100](va);
  if (a2 == 1)
  {
    *(__cxa_begin_catch(a1) + 2);
    __cxa_end_catch();
    JUMPOUT(0x248E53B54);
  }

  _Unwind_Resume(a1);
}

di_hybrid_subscriber_t **std::unique_ptr<di_hybrid_subscriber_t>::~unique_ptr[abi:ne200100](di_hybrid_subscriber_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    di_hybrid_subscriber_t::~di_hybrid_subscriber_t(v2);
    MEMORY[0x24C1ED730]();
  }

  return a1;
}

uint64_t *std::unique_ptr<io_rings_di_subscriber_t>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::~__value_func[abi:ne200100](v2 + 248);
    pool_ns::pool_t<DiskImage::Context,std::default_delete>::~pool_t(v2 + 120);
    MEMORY[0x24C1ED730](v2, 0x10A0C4065E1EEF6);
  }

  return a1;
}

uint64_t diskimage_uio::add_di_role@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = *a2;
  *a2 = 0;
  return result;
}

void *diskimage_uio::operator<<(void *a1, int a2)
{
  if (a2 == 2)
  {
    v2 = "auto";
    v3 = 4;
  }

  else if (a2 == 1)
  {
    v2 = "read write";
    v3 = 10;
  }

  else if (a2)
  {
    v2 = "unknown";
    v3 = 7;
  }

  else
  {
    v2 = "read only";
    v3 = 9;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v3);
}

{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v2 = "image";
      goto LABEL_11;
    }

    if (a2 == 1)
    {
      v2 = "cache";
LABEL_11:
      v3 = 5;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v3);
    }

    goto LABEL_9;
  }

  if (a2 == 2)
  {
    v2 = "snapshot";
    v3 = 8;
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v3);
  }

  if (a2 != 3)
  {
LABEL_9:
    v2 = "unknown";
    v3 = 7;
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v3);
  }

  v2 = "shadow";
  v3 = 6;
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v3);
}

{
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v2 = "udzo";
      }

      else
      {
        v2 = "ulfo";
      }

      goto LABEL_22;
    }

    if (a2 == 1)
    {
      v2 = "raw";
      v3 = 3;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v3);
    }

    if (a2 == 2)
    {
      v2 = "asif";
LABEL_22:
      v3 = 4;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v3);
    }

LABEL_23:
    v2 = "unknown";
    v3 = 7;
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v3);
  }

  if (a2 <= 7)
  {
    if (a2 == 5)
    {
      v2 = "ulmo";
      goto LABEL_22;
    }

    if (a2 == 6)
    {
      v2 = "udzo_max";
      v3 = 8;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v3);
    }

    goto LABEL_23;
  }

  if (a2 == 8)
  {
    v2 = "udro";
    goto LABEL_22;
  }

  if (a2 == 9)
  {
    v2 = "udsb";
    goto LABEL_22;
  }

  if (a2 != 11)
  {
    goto LABEL_23;
  }

  v2 = "pstack";
  v3 = 6;
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v3);
}

{
  if ((a2 - 1) >= 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  v4 = v2;
  return operator<<(a1, &v4);
}

void diskimage_uio::details::diskimage_open_params_impl::unlock(uint64_t a1, char ***a2, int a3)
{
  v3[0] = 0;
  v3[24] = 0;
  if (a3)
  {
    std::optional<crypto::keys>::operator=[abi:ne200100]<crypto::keys&,void>(v3, a2);
  }

  diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::crypto_ctx_t();
}

uint64_t io_rings_di_subscriber_t::io_rings_di_subscriber_t(uint64_t a1, uint64_t (*a2)(uint64_t a1, unsigned __int8 *a2), uint64_t a3, uint64_t a4)
{
  *(a1 + 120) = 850045863;
  *(a1 + 208) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = -1;
  *(a1 + 240) = a3;
  if (*(a4 + 24))
  {
    std::__function::__value_func<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::__value_func[abi:ne200100](a1 + 248, a4);
  }

  else
  {
    *(a1 + 248) = &unk_285BE11E0;
    *(a1 + 256) = a1;
    *(a1 + 272) = a1 + 248;
  }

  io_rings_subscriber_sync_init(a1, a2);
  *a1 = io_rings_di_subscriber_t::io_rings_di_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &,std::function<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)> const&)::$_1::__invoke;
  return a1;
}

uint64_t io_rings_di_subscriber_t::get_ctx@<X0>(io_rings_di_subscriber_t *this@<X0>, void *a2@<X8>)
{
  v4 = this + 120;
  v5 = *(this + 28);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = atomic_exchange((*(*(this + 24) + (((v6 + *(this + 27)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v6 + *(this + 27)) & 0x1FF)), 0);
      if (v7)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }

    *a2 = v4;
    a2[1] = v7;
    v15 = v4;
    a2[2] = v6;
    v16 = -2;
  }

  else
  {
LABEL_5:
    v15 = 0uLL;
    v16 = -1;
    v8 = *(this + 34);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(&v13);
    if (v14)
    {
      v9 = *(this + 29);
      if ((v9 & 0x8000000000000000) != 0 || *(this + 28) + 1 <= v9)
      {
        v10 = -1;
      }

      else
      {
        v10 = -2;
      }

      v11 = v13;
      *a2 = v4;
      a2[1] = v11;
      a2[2] = v10;
    }

    else
    {
      *a2 = v15;
      a2[2] = v16;
      *(&v15 + 1) = 0;
      v16 = -2;
    }
  }

  return pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t::~pooled_element_t(&v15);
}

void sub_248E542F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t::~pooled_element_t(va);
  _Unwind_Resume(a1);
}

void pstack_header::pstack_header(void *a1, char ***a2, std::string *a3, char a4)
{
  *a1 = 0;
  v4 = *a2;
  if (*a2)
  {
    v7 = **v4;
    if (v8)
    {
      memset(&v14[3], 0, 24);
      v9 = (*(*v8 + 192))(v8);
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a3);
      create_stack_vector_from_single_fd(&__p, v9, a4, v14);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v14[0] != v14[1])
      {
        operator new();
      }

      exception = __cxa_allocate_exception(0x40uLL);
      v13 = std::generic_category();
      exception[1] = 22;
      exception[2] = v13;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "pstack_header";
      *exception = &unk_285BE0D78;
    }
  }

  v10 = __cxa_allocate_exception(0x40uLL);
  v11 = std::generic_category();
  v10[1] = 22;
  v10[2] = v11;
  *(v10 + 24) = 0;
  *(v10 + 48) = 0;
  v10[7] = "pstack_header";
  *v10 = &unk_285BE0D78;
}

void sub_248E547A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char **a16, uint64_t a17, char a18, char *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, char a27, int a28, __int16 a29, char a30)
{
  a16 = &a19;
  std::vector<std::unique_ptr<diskimage_uio::stack_image_node const>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a19 = &a22;
  std::vector<diskimage_uio::diskimage_open_params_pair>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::unique_ptr<std::vector<diskimage_uio::diskimage_open_params_pair>>::reset[abi:ne200100](v30, 0);
  _Unwind_Resume(a1);
}

void sub_248E54894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a24 != 1)
  {
    JUMPOUT(0x248E5484CLL);
  }

  JUMPOUT(0x248E54840);
}

void header_exception::header_exception(header_exception *this, const char *a2, unsigned int a3)
{
  v6 = std::generic_category();
  *(this + 1) = a3;
  *(this + 2) = v6;
  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 7) = a2;
  *this = &unk_285BE0D78;
}

void *std::vector<diskimage_uio::diskimage_open_params_pair>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<diskimage_uio::diskimage_open_params_pair>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_248E54994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<diskimage_uio::diskimage_open_params_pair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

diskimage_uio::diskimage_open_params *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<diskimage_uio::diskimage_open_params,std::error_code>::operator=(diskimage_uio::diskimage_open_params *a1, __int128 *a2)
{
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    *&v4 = *a2;
    *a2 = 0;
  }

  else
  {
    v4 = *a2;
  }

  diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<diskimage_uio::diskimage_open_params,std::error_code>::swap(&v4, a1);
  if (v5 == 1)
  {
    diskimage_uio::diskimage_open_params::~diskimage_open_params(&v4);
  }

  return a1;
}

void sub_248E54A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    diskimage_uio::diskimage_open_params::~diskimage_open_params(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t diskimage_uio::stack_image_node::stack_image_node(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5, CFTypeRef cf)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 24) = *(a4 + 2);
    *(a1 + 8) = v9;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    *(a1 + 48) = *(a5 + 2);
    *(a1 + 32) = v10;
  }

  *(a1 + 56) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void sub_248E54AD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void diskimage_uio::stack_image_node::~stack_image_node(diskimage_uio::stack_image_node *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void diskimage_uio::details::diskimage_impl::~diskimage_impl(diskimage_uio::details::diskimage_impl *this)
{
  diskimage_uio::details::diskimage_impl::~diskimage_impl(this);

  JUMPOUT(0x24C1ED730);
}

{
  *this = &unk_285BD9B88;
  std::condition_variable::~condition_variable(this + 5);
  std::condition_variable::~condition_variable(this + 4);
  std::mutex::~mutex(this + 2);
  std::mutex::~mutex(this + 1);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100](this + 2);
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

void diskimage_uio::details::diskimage_plugin_impl::~diskimage_plugin_impl(diskimage_uio::details::diskimage_plugin_impl *this)
{
  diskimage_uio::details::diskimage_impl::~diskimage_impl(this);

  JUMPOUT(0x24C1ED730);
}

void diskimage_uio::anonymous namespace::di_err_category::~di_err_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x24C1ED730);
}

_BYTE *diskimage_uio::anonymous namespace::di_err_category::message@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if ((a1 - 150) > 0x13)
  {
    v3 = "(unrecognized error)";
  }

  else
  {
    v3 = off_278F80D30[a1 - 150];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<1084ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1084ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1084ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1084ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1084ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1084ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<1084ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1084ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1084ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1084ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<1084ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD9E28;
  di_log::logger_buf<di_log::log_printer<1084ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<1084ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<1084ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248E551A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<1084ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1084ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<1084ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 1084;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 1084;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void diskimage_uio::details::diskimage_open_params_impl::lock_backend_if_required(const std::error_category *this)
{
  diskimage_uio::details::diskimage_open_params_impl::verify_backend(this, v20);
  if ((v20[16] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = std::make_error_code[abi:ne200100](0x16u);
    exception[1] = v6;
  }

  v3 = this[3].__vftable;
  v2 = &this[3];
  if (v3)
  {
    get_sink_backend(v2, &v14);
    std::dynamic_pointer_cast[abi:ne200100]<LockableResource,Backend>(&v14, &v18);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v18 && ((*(*v18 + 2))(v18) & 1) == 0)
    {
      v4 = (**v18)(v18);
      if (v4)
      {
        v9 = v4;
        *&v12 = "diskimage_uio::details::diskimage_open_params_impl::lock_backend_if_required()";
        *(&v12 + 1) = 76;
        v13 = 16;
        di_log::logger<di_log::log_printer<922ul>>::logger(&v14, &v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Diskimageuio: Couldn't lock backend ", 36);
        operator<<(&v16, *v2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " err: ", 6);
        v7 = std::generic_category();
        v10 = v9;
        v11 = v7;
        std::operator<<[abi:ne200100]<char,std::char_traits<char>>(&v16, &v10);
        di_log::logger<di_log::log_printer<922ul>>::~logger(&v14);
        v8 = __cxa_allocate_exception(0x10uLL);
        *v8 = v9;
        v8[1] = v7;
      }

      *&v12 = "diskimage_uio::details::diskimage_open_params_impl::lock_backend_if_required()";
      *(&v12 + 1) = 76;
      v13 = 2;
      di_log::logger<di_log::log_printer<925ul>>::logger(&v14, &v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Diskimageuio: locked backend ", 29);
      operator<<(&v16, *v2);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<925ul>>::~logger_buf(&v14);
      MEMORY[0x24C1ED6A0](&v17);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }
}

void sub_248E55604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<922ul>>::~logger(va);
  v9 = *(v7 - 64);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::details::diskimage_open_params_impl::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v6 = *(a1 + 32);
  *(a1 + 24) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = (a2 + 584);
  v8 = *(a2 + 40);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v9 = *(a1 + 48);
  *(a1 + 40) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>>(a1 + 56, a2 + 56);
  v10 = *(a2 + 71);
  *(a1 + 576) = *(a2 + 144);
  *(a1 + 568) = v10;
  v11 = *v7;
  *v7 = 0;
  *(a2 + 74) = 0;
  v12 = *(a1 + 592);
  *(a1 + 584) = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(a2 + 600);
  *(a2 + 75) = 0;
  *(a2 + 76) = 0;
  v14 = *(a1 + 608);
  *(a1 + 600) = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(a2 + 616);
  *(a2 + 77) = 0;
  *(a2 + 78) = 0;
  v16 = *(a1 + 624);
  *(a1 + 616) = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return a1;
}

const std::error_category *diskimage_uio::details::diskimage_open_params_impl::verify_backend@<X0>(const std::error_category *this@<X0>, uint64_t a2@<X8>)
{
  if (LODWORD(this[71].__vftable) == 12 || this[3].__vftable)
  {
    *a2 = 0;
    v3 = 1;
  }

  else
  {
    *&v4 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::verify_backend() const";
    *(&v4 + 1) = 81;
    v5 = 16;
    di_log::logger<di_log::log_printer<603ul>>::logger(v6, &v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Diskimageuio: backend doesn't exist", 35);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<603ul>>::~logger_buf(v6);
    MEMORY[0x24C1ED6A0](&v8);
    this = std::generic_category();
    v3 = 0;
    *a2 = 6;
    *(a2 + 8) = this;
  }

  *(a2 + 16) = v3;
  return this;
}

void sub_248E55800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<603ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<922ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<922ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDA0D0;
  a1[45] = &unk_285BDA1D0;
  a1[46] = &unk_285BDA1F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDA0D0;
  a1[45] = &unk_285BDA158;
  a1[46] = &unk_285BDA180;
  return a1;
}

void sub_248E55918(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<922ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<922ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<922ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<925ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<925ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDA2F0;
  a1[45] = &unk_285BDA3F0;
  a1[46] = &unk_285BDA418;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDA2F0;
  a1[45] = &unk_285BDA378;
  a1[46] = &unk_285BDA3A0;
  return a1;
}

void sub_248E55A84(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<925ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<925ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<925ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<603ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<603ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD9EB0;
  a1[45] = &unk_285BD9FB0;
  a1[46] = &unk_285BD9FD8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD9EB0;
  a1[45] = &unk_285BD9F38;
  a1[46] = &unk_285BD9F60;
  return a1;
}

void sub_248E55BF0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<603ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<603ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<603ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<603ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDA048;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248E55D08(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<603ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDA048;
  di_log::logger_buf<di_log::log_printer<603ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<603ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<603ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<603ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<603ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<603ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<603ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<603ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<603ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<603ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<603ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<603ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<603ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<603ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<603ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248E562AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<603ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 603;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 603;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::operator<<[abi:ne200100]<char,std::char_traits<char>>(void *a1, unsigned int *a2)
{
  v4 = (*(**(a2 + 1) + 16))(*(a2 + 1));
  v5 = strlen(v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
  v9 = 58;
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v9, 1);
  return MEMORY[0x24C1ED390](v7, *a2);
}

uint64_t di_log::logger_buf<di_log::log_printer<922ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDA268;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248E565F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<922ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDA268;
  di_log::logger_buf<di_log::log_printer<922ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<922ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<922ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<922ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<922ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<922ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<922ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<922ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<922ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<922ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<922ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<922ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<922ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<922ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<922ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248E56B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<922ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 922;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 922;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<925ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDA488;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248E56E58(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<925ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDA488;
  di_log::logger_buf<di_log::log_printer<925ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<925ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<925ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<925ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<925ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<925ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<925ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<925ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<925ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<925ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<925ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<925ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<925ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<925ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<925ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248E573FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<925ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 925;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 925;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 504);
  if (v2 != -1)
  {
    result = (off_285BDA4F8[v2])(&v3, result);
  }

  *(v1 + 504) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN4udif6headerEN7di_asif6headerE10raw_header13pstack_header13plugin_headerEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJS8_SA_SC_SD_SE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }

  v3 = *(a2 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void plugin_header::~plugin_header(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *(a1 + 24);
  *(a1 + 16) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = a2[2];
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v9 = *(a1 + 40);
  *(a1 + 32) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 504);
  if (*(result + 504) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_285BDA528[v4])(v6);
    }
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN4udif6headerEN7di_asif6headerE10raw_header13pstack_header13plugin_headerEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJS8_SA_SC_SD_SE_SF_EEEOSU_EEEDcSM_DpT0_(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 504))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *(v1 + 504) = 0;
  }

  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN4udif6headerEN7di_asif6headerE10raw_header13pstack_header13plugin_headerEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJS8_SA_SC_SD_SE_SF_EEEOSU_EEEDcSM_DpT0_(uint64_t *a1, _OWORD *a2, __int128 *a3)
{
  v5 = *a1;
  if (*(*a1 + 504) == 2)
  {
    v6 = *a3;
    v7 = a3[2];
    a2[1] = a3[1];
    a2[2] = v7;
    *a2 = v6;
    v8 = a3[3];
    v9 = a3[4];
    v10 = a3[5];
    *(a2 + 92) = *(a3 + 92);
    a2[4] = v9;
    a2[5] = v10;
    a2[3] = v8;
  }

  else
  {
    v12[2] = v3;
    v12[3] = v4;
    v12[0] = v5;
    v12[1] = a3;
    *&v8 = std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>>::__assign_alt[abi:ne200100]<2ul,di_asif::header,di_asif::header>(std::__variant_detail::__alt<2ul,di_asif::header> &,di_asif::header &&)::{unnamed type#1}::operator()(v12).n128_u64[0];
  }

  return *&v8;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN4udif6headerEN7di_asif6headerE10raw_header13pstack_header13plugin_headerEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJS8_SA_SC_SD_SE_SF_EEEOSU_EEEDcSM_DpT0_(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 504) == 3)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 504) = 3;
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>>::__assign_alt[abi:ne200100]<1ul,udif::header,udif::header>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 504) == 1)
  {
    *a2 = *a3;
    v4 = *(a3 + 16);
    v5 = *(a3 + 32);
    v6 = *(a3 + 64);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 64) = v6;
    *(a2 + 16) = v4;
    *(a2 + 32) = v5;
    *(a2 + 80) = *(a3 + 80);
    *(a2 + 84) = *(a3 + 84);
    v7 = *(a3 + 88);
    v8 = *(a3 + 104);
    v9 = *(a3 + 120);
    *(a2 + 136) = *(a3 + 136);
    *(a2 + 120) = v9;
    *(a2 + 104) = v8;
    *(a2 + 88) = v7;
    v10 = *(a3 + 152);
    v11 = *(a3 + 168);
    v12 = *(a3 + 184);
    *(a2 + 200) = *(a3 + 200);
    *(a2 + 184) = v12;
    *(a2 + 168) = v11;
    *(a2 + 152) = v10;
    v13 = *(a3 + 248);
    v14 = *(a3 + 264);
    v15 = *(a3 + 280);
    *(a2 + 232) = *(a3 + 232);
    *(a2 + 264) = v14;
    *(a2 + 280) = v15;
    *(a2 + 248) = v13;
    v17 = *(a3 + 312);
    v16 = *(a3 + 328);
    v18 = *(a3 + 296);
    *(a2 + 344) = *(a3 + 344);
    *(a2 + 312) = v17;
    *(a2 + 328) = v16;
    *(a2 + 296) = v18;
    *(a2 + 216) = *(a3 + 216);
    *(a2 + 352) = *(a3 + 352);
    *(a2 + 356) = *(a3 + 356);
    v19 = *(a3 + 360);
    v20 = *(a3 + 376);
    v21 = *(a3 + 408);
    *(a2 + 392) = *(a3 + 392);
    *(a2 + 408) = v21;
    *(a2 + 360) = v19;
    *(a2 + 376) = v20;
    result = *(a3 + 424);
    v23 = *(a3 + 440);
    v24 = *(a3 + 472);
    *(a2 + 456) = *(a3 + 456);
    *(a2 + 472) = v24;
    *(a2 + 424) = result;
    *(a2 + 440) = v23;
    v25 = *(a3 + 488);
    *(a2 + 496) = *(a3 + 496);
    *(a2 + 488) = v25;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = 0x4796C6F6BLL;
    *(a1 + 8) = 512;
    *(a1 + 12) = *(a3 + 12);
    v27 = *(a3 + 16);
    v28 = *(a3 + 32);
    *(a1 + 48) = *(a3 + 48);
    *(a1 + 16) = v27;
    *(a1 + 32) = v28;
    *(a1 + 56) = *(a3 + 56);
    *(a1 + 60) = *(a3 + 60);
    *(a1 + 64) = *(a3 + 64);
    *(a1 + 80) = *(a3 + 80);
    v29 = *(a3 + 88);
    v30 = *(a3 + 104);
    v31 = *(a3 + 120);
    *(a1 + 136) = *(a3 + 136);
    *(a1 + 120) = v31;
    *(a1 + 104) = v30;
    *(a1 + 88) = v29;
    v32 = *(a3 + 152);
    v33 = *(a3 + 168);
    v34 = *(a3 + 184);
    *(a1 + 200) = *(a3 + 200);
    *(a1 + 184) = v34;
    *(a1 + 168) = v33;
    *(a1 + 152) = v32;
    v35 = *(a3 + 248);
    v36 = *(a3 + 264);
    v37 = *(a3 + 280);
    *(a1 + 232) = *(a3 + 232);
    *(a1 + 264) = v36;
    *(a1 + 280) = v37;
    *(a1 + 248) = v35;
    v39 = *(a3 + 312);
    v38 = *(a3 + 328);
    v40 = *(a3 + 296);
    *(a1 + 344) = *(a3 + 344);
    *(a1 + 312) = v39;
    *(a1 + 328) = v38;
    *(a1 + 296) = v40;
    *(a1 + 216) = *(a3 + 216);
    *(a1 + 352) = *(a3 + 352);
    v41 = *(a3 + 360);
    v42 = *(a3 + 376);
    v43 = *(a3 + 408);
    *(a1 + 392) = *(a3 + 392);
    *(a1 + 408) = v43;
    *(a1 + 360) = v41;
    *(a1 + 376) = v42;
    result = *(a3 + 424);
    v44 = *(a3 + 440);
    v45 = *(a3 + 472);
    *(a1 + 456) = *(a3 + 456);
    *(a1 + 472) = v45;
    *(a1 + 424) = result;
    *(a1 + 440) = v44;
    *(a1 + 488) = *(a3 + 488);
    *(a1 + 492) = *(a3 + 492);
    *(a1 + 504) = 1;
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>>::__assign_alt[abi:ne200100]<2ul,di_asif::header,di_asif::header>(std::__variant_detail::__alt<2ul,di_asif::header> &,di_asif::header &&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
  *v1 = 2003069043;
  *(v1 + 4) = *(v2 + 4);
  *(v1 + 12) = *(v2 + 12);
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 48);
  *(v1 + 62) = *(v2 + 62);
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *(v1 + 16) = v3;
  *(v1 + 70) = 0;
  result = *(v2 + 72);
  *(v1 + 88) = *(v2 + 88);
  *(v1 + 72) = result;
  *(v1 + 96) = *(v2 + 96);
  *(v1 + 100) = *(v2 + 100);
  *(v1 + 104) = *(v2 + 104);
  *(v1 + 504) = 2;
  return result;
}

void ***std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>>::__assign_alt[abi:ne200100]<4ul,pstack_header,pstack_header>(uint64_t a1, void ***a2, void ***a3)
{
  if (*(a1 + 504) == 4)
  {
    v4 = *a3;
    *a3 = 0;

    return std::unique_ptr<std::vector<diskimage_uio::diskimage_open_params_pair>>::reset[abi:ne200100](a2, v4);
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 504) = 4;
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>>::__assign_alt[abi:ne200100]<5ul,plugin_header,plugin_header>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 504) == 5)
  {
    v5 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    v6 = *(a2 + 8);
    *a2 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }

    result = a3[1];
    *(a2 + 32) = *(a3 + 4);
    *(a2 + 16) = result;
    *(a3 + 39) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    result = a3[1];
    *(a1 + 32) = *(a3 + 4);
    *(a1 + 16) = result;
    *(a3 + 3) = 0;
    *(a3 + 4) = 0;
    *(a3 + 2) = 0;
    *(a1 + 504) = 5;
  }

  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<1097ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1097ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1097ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1097ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1097ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1097ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<1097ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1097ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1097ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1097ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<1097ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDA708;
  di_log::logger_buf<di_log::log_printer<1097ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<1097ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<1097ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248E5823C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<1097ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1097ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<1097ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 1097;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 1097;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<FileLocal::promise_io_t *>::~__split_buffer(a1);
}

const std::error_category *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> &>@<X0>(uint64_t a1@<X8>)
{
  *&v3 = "diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr()::(anonymous class)::operator()(const auto &) const [hdr:auto = std::monostate]";
  *(&v3 + 1) = 110;
  v4 = 16;
  di_log::logger<di_log::log_printer<1108ul>>::logger(v5, &v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Diskimageuio: can't get Diskimage attribute, unknown header format", 66);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1108ul>>::~logger_buf(v5);
  MEMORY[0x24C1ED6A0](&v7);
  result = std::generic_category();
  *a1 = 6;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

void sub_248E585CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<1108ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> &>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  diskimage_uio::details::diskimage_open_params_impl::get_disk_image_hdr_udif (**a1 + 24, v12);
  if (v14 != 1)
  {
    goto LABEL_4;
  }

  if (v13 != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (udif::header::operator==(v12, a2))
  {
LABEL_4:
    operator new();
  }

  *&v7 = "diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr()::(anonymous class)::operator()(const auto &) const [hdr:auto = udif::header]";
  *(&v7 + 1) = 110;
  v8 = 16;
  di_log::logger<di_log::log_printer<1120ul>>::logger(v9, &v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Diskimageuio: UDIF header changed while unlocked", 48);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1120ul>>::~logger_buf(v9);
  MEMORY[0x24C1ED6A0](&v11);
  result = std::generic_category();
  *a3 = 35;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  if (v14 == 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v12);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E588B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<1120ul>>::~logger(va);
  if (LOBYTE(STACK[0x430]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> &>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  diskimage_uio::details::diskimage_open_params_impl::get_disk_image_hdr_asif ((**a1 + 24), v12);
  if (v14 != 1)
  {
    goto LABEL_4;
  }

  if (v13 != 2)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (di_asif::header::operator==(v12, a2))
  {
LABEL_4:
    operator new();
  }

  *&v7 = "diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr()::(anonymous class)::operator()(const auto &) const [hdr:auto = di_asif::header]";
  *(&v7 + 1) = 110;
  v8 = 16;
  di_log::logger<di_log::log_printer<1127ul>>::logger(v9, &v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Diskimageuio: ASIF header changed while unlocked", 48);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1127ul>>::~logger_buf(v9);
  MEMORY[0x24C1ED6A0](&v11);
  result = std::generic_category();
  *a3 = 35;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  if (v14 == 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v12);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E58AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<1127ul>>::~logger(va);
  if (LOBYTE(STACK[0x430]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> &>@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  diskimage_uio::details::diskimage_open_params_impl::get_disk_image_hdr_raw((**a1 + 24), *a2, v13);
  if ((v15 & 1) == 0)
  {
    v6 = *a2;
    goto LABEL_7;
  }

  if (v14 != 3)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (v13[0] == *a2 && v13[1] == a2[1])
  {
LABEL_7:
    operator new();
  }

  *&v8 = "diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr()::(anonymous class)::operator()(const auto &) const [hdr:auto = raw_header]";
  *(&v8 + 1) = 110;
  v9 = 16;
  di_log::logger<di_log::log_printer<1113ul>>::logger(v10, &v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "Diskimageuio: Raw header changed while unlocked", 47);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1113ul>>::~logger_buf(v10);
  MEMORY[0x24C1ED6A0](&v12);
  result = std::generic_category();
  *a3 = 35;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  if (v15 == 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v13);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248E58CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<1113ul>>::~logger(va);
  if (LOBYTE(STACK[0x430]) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> &>(diskimage_uio::details::diskimage_open_params_impl ****a1@<X1>, uint64_t a2@<X8>)
{
  v37[19] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v3 = **a1;
  v4 = (*a1)[1];
  if (v3 == v4)
  {
    v18 = 0;
    v17 = 0;
    v19 = 0;
LABEL_24:
    if ((v19 - v17) == 16)
    {
      diskimage_uio::details::diskimage_open_params_impl::query_image_format(*(v17 + 8), &v26);
      LODWORD(v31) = 12;
      LOBYTE(v33) = 1;
      v20 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(&v26, &v31);
      v17 = v28;
      if (v20)
      {
        if (*v28)
        {
          *&v26 = "diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr()::(anonymous class)::operator()(const auto &) const [hdr:auto = pstack_header]";
          *(&v26 + 1) = 110;
          v27 = 16;
          di_log::logger<di_log::log_printer<1144ul>>::logger(&v31, &v26);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "Diskimageuio: Single element in pstack that isn't an image", 58);
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<1144ul>>::~logger_buf(&v31);
          MEMORY[0x24C1ED6A0](v37);
          v21 = std::generic_category();
          *a2 = 22;
          *(a2 + 8) = v21;
          *(a2 + 16) = 0;
          goto LABEL_32;
        }

        diskimage_uio::details::diskimage_impl::diskimage_impl(&v31, (v28 + 8));
        v22 = v32;
        v31 = &unk_285BD9C30;
LABEL_31:
        v32 = 0;
        *a2 = v22;
        *(a2 + 16) = 1;
        diskimage_uio::details::diskimage_impl::~diskimage_impl(&v31);
        goto LABEL_32;
      }

      v18 = v29;
    }

    diskimage_uio::details::diskimage_impl::diskimage_impl<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>(&v31, v17, v18);
    v22 = v32;
    goto LABEL_31;
  }

  v5 = *(a2 + 16);
  while (1)
  {
    diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr(&v26, v3[1]);
    v6 = v27;
    if (v27)
    {
      v7 = *v3;
      LODWORD(v24) = *v3;
      v8 = v3[1];
      *(&v24 + 1) = v8;
      v3[1] = 0;
      v9 = v29;
      if (v29 >= v30)
      {
        v11 = (v29 - v28) >> 4;
        v12 = v11 + 1;
        if ((v11 + 1) >> 60)
        {
          *(a2 + 16) = v5;
          std::vector<iovec>::__throw_length_error[abi:ne200100]();
        }

        v13 = v30 - v28;
        if ((v30 - v28) >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        v35 = &v28;
        if (v14)
        {
          std::allocator<diskimage_uio::diskimage_open_params_pair>::allocate_at_least[abi:ne200100](&v28, v14);
        }

        v15 = 16 * v11;
        v31 = 0;
        v32 = v15;
        v34 = 0;
        *v15 = v7;
        *(v15 + 8) = v8;
        *(&v24 + 1) = 0;
        v33 = 16 * v11 + 16;
        std::vector<diskimage_uio::diskimage_open_params_pair>::__swap_out_circular_buffer(&v28, &v31);
        v10 = v29;
        std::__split_buffer<diskimage_uio::diskimage_open_params_pair>::~__split_buffer(&v31);
      }

      else
      {
        *v29 = v7;
        *(v9 + 1) = v8;
        v10 = v9 + 4;
        *(&v24 + 1) = 0;
      }

      v29 = v10;
      diskimage_uio::diskimage_open_params::~diskimage_open_params((&v24 + 8));
    }

    else
    {
      *&v24 = "diskimage_uio::details::diskimage_open_params_impl::create_diskimage_from_hdr()::(anonymous class)::operator()(const auto &) const [hdr:auto = pstack_header]";
      *(&v24 + 1) = 110;
      v25 = 16;
      di_log::logger<di_log::log_printer<1136ul>>::logger(&v31, &v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "Diskimageuio: Invalid pstack element", 36);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<1136ul>>::~logger_buf(&v31);
      MEMORY[0x24C1ED6A0](v37);
      v5 = 0;
      *a2 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v26);
    }

    if (v27 == 1)
    {
      v16 = v26;
      *&v26 = 0;
      if (v16)
      {
        (*(*v16 + 16))(v16);
      }
    }

    if ((v6 & 1) == 0)
    {
      break;
    }

    v3 += 2;
    if (v3 == v4)
    {
      *(a2 + 16) = v5;
      v17 = v28;
      v18 = v29;
      v19 = v29;
      goto LABEL_24;
    }
  }

  *(a2 + 16) = v5;
LABEL_32:
  *&v26 = &v28;
  std::vector<diskimage_uio::diskimage_open_params_pair>::__destroy_vector::operator()[abi:ne200100](&v26);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_248E590B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 *a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2 == 1)
  {
    *v21 = *__cxa_begin_catch(a1);
    *(v21 + 16) = 0;
    __cxa_end_catch();
    JUMPOUT(0x248E5902CLL);
  }

  a12 = &a16;
  std::vector<diskimage_uio::diskimage_open_params_pair>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<1108ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1108ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDA7C0;
  a1[45] = &unk_285BDA8C0;
  a1[46] = &unk_285BDA8E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDA7C0;
  a1[45] = &unk_285BDA848;
  a1[46] = &unk_285BDA870;
  return a1;
}

void sub_248E59340(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1108ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1108ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1108ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<1108ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDA958;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248E59458(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1108ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDA958;
  di_log::logger_buf<di_log::log_printer<1108ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<1108ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1108ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1108ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1108ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<1108ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1108ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1108ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1108ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1108ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1108ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<1108ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1108ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1108ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<1108ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248E599FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<1108ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 1108;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 1108;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t diskimage_uio::details::diskimage_open_params_impl::get_disk_image_hdr_udif@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UDIF_header::UDIF_header(&v10, a1);
  *&v5 = "expected<std::pair<hdr_variant, image_format>, diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_disk_image_hdr_udif (std::shared_ptr<Backend> &)";
  *(&v5 + 1) = 137;
  v6 = 16;
  di_log::logger<di_log::log_printer<414ul>>::logger(v7, &v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "UDIF images are currently not supported in diskimage_uio", 56);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<414ul>>::~logger_buf(v7);
  MEMORY[0x24C1ED6A0](&v9);
  *a2 = make_error_code(161);
  *(a2 + 8) = v3;
  *(a2 + 520) = 0;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    return MEMORY[0x24C1ED730](result, 0x1000C407784F2AFLL);
  }

  return result;
}

void sub_248E59CE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  di_log::logger<di_log::log_printer<414ul>>::~logger(va);
  UDIF_header::~UDIF_header((v5 - 56));
  v7 = __cxa_begin_catch(a1);
  diskimage_uio::details::diskimage_open_params_impl::get_disk_image_handle_exceptions(v7);
}

void *di_log::logger<di_log::log_printer<1120ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1120ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDAE50;
  a1[45] = &unk_285BDAF50;
  a1[46] = &unk_285BDAF78;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDAE50;
  a1[45] = &unk_285BDAED8;
  a1[46] = &unk_285BDAF00;
  return a1;
}

void sub_248E59E34(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1120ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1120ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1120ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<414ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<414ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDA9E0;
  a1[45] = &unk_285BDAAE0;
  a1[46] = &unk_285BDAB08;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDA9E0;
  a1[45] = &unk_285BDAA68;
  a1[46] = &unk_285BDAA90;
  return a1;
}

void sub_248E59FA0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<414ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<414ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<414ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sub_248E5A03C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  if (a2 != 3 && a2 != 2)
  {
    if (a2 == 1)
    {
      v4 = __cxa_begin_catch(a1);
      *&v8 = "expected<std::pair<hdr_variant, image_format>, diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_disk_image_handle_exceptions()";
      *(&v8 + 1) = 146;
      v9 = 16;
      di_log::logger<di_log::log_printer<382ul>>::logger(v11, &v8);
      operator<<(&v12, v4);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<382ul>>::~logger_buf(v11);
      MEMORY[0x24C1ED6A0](&v13);
      *v2 = make_error_code(161);
      *(v2 + 8) = v5;
      *(v2 + 520) = 0;
      goto LABEL_7;
    }

LABEL_8:
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  v10 = 0;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v11, &v8);
  v14 = 0;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v2, v11);
  *(v2 + 512) = v14;
  *(v2 + 520) = 1;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v8);
LABEL_7:
  __cxa_end_catch();
  v6 = *(v3 - 40);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t di_log::logger_buf<di_log::log_printer<414ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDAB78;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248E5A2B0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<414ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDAB78;
  di_log::logger_buf<di_log::log_printer<414ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<414ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<414ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<414ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<414ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<414ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<414ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<414ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<414ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<414ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<414ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<414ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<414ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<414ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<414ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248E5A854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<414ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 414;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 414;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void *di_log::logger<di_log::log_printer<382ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<382ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDAC00;
  a1[45] = &unk_285BDAD00;
  a1[46] = &unk_285BDAD28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDAC00;
  a1[45] = &unk_285BDAC88;
  a1[46] = &unk_285BDACB0;
  return a1;
}

void sub_248E5AB64(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<382ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<382ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<382ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<382ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDAD98;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248E5AC7C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<382ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDAD98;
  di_log::logger_buf<di_log::log_printer<382ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<382ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<382ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<382ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<382ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<382ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<382ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<382ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<382ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<382ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<382ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<382ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<382ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<382ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<382ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248E5B220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<382ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 382;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 382;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 504) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 504);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_285BDAE08[v5])(&v6, a2);
    *(a1 + 504) = v5;
  }

  return result;
}