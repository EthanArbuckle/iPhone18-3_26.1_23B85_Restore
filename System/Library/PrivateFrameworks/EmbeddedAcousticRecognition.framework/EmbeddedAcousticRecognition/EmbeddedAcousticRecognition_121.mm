void sub_1B5A251F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PathData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PathData>,PathData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PathData>,PathData*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PathData>,PathData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::IntervalSet<int>>,fst::IntervalSet<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void quasar::TranslatorFactory::~TranslatorFactory(quasar::TranslatorFactory *this)
{
  *this = &unk_1F2D3E8F8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  quasar::TranslatorFactory::~TranslatorFactory(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::TranslatorFactory::createTranslatorFactory(void *a1)
{
  if (a1[1] - *a1 == 1560)
  {
    std::allocate_shared[abi:ne200100]<quasar::TranslatorFactory,std::allocator<quasar::TranslatorFactory>,quasar::SystemConfig const&,std::string const&,int &,0>();
  }

  std::allocate_shared[abi:ne200100]<quasar::TranslatorFactory,std::allocator<quasar::TranslatorFactory>,std::vector<quasar::SystemConfig> const&,std::string const&,int &,0>();
}

void quasar::TranslatorFactory::TranslatorFactory(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  *a1 = &unk_1F2D3E8F8;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v7;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v8 = 0;
  v9 = 0;
  quasar::GlobalTranslatorFactory::createTranslatorFactory(a2, a4, 1, 0);
}

void sub_1B5A25594(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void quasar::TranslatorFactory::TranslatorFactory(uint64_t a1, uint64_t *a2, __int128 *a3, int a4)
{
  *a1 = &unk_1F2D3E8F8;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v7;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v8[0] = 0;
  v8[1] = 0;
  quasar::GlobalTranslatorFactory::createTranslatorFactory(a2, a4, 0, v8);
}

void sub_1B5A25718(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<quasar::TranslatorFactory>::__shared_ptr_emplace[abi:ne200100]<quasar::SystemConfig const&,std::string const&,int &,std::allocator<quasar::TranslatorFactory>,0>(void *a1, uint64_t a2, __int128 *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D3E948;
  quasar::TranslatorFactory::TranslatorFactory((a1 + 3), a2, a3, *a4);
}

void std::__shared_ptr_emplace<quasar::TranslatorFactory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D3E948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::TranslatorFactory>::__shared_ptr_emplace[abi:ne200100]<std::vector<quasar::SystemConfig> const&,std::string const&,int &,std::allocator<quasar::TranslatorFactory>,0>(void *a1, uint64_t *a2, __int128 *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D3E948;
  quasar::TranslatorFactory::TranslatorFactory((a1 + 3), a2, a3, *a4);
}

void sub_1B5A26920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a2)
  {

    v33 = __cxa_begin_catch(exception_object);
    v34 = MEMORY[0x1E696ABC0];
    if (a2 == 2)
    {
      a27 = *MEMORY[0x1E696A578];
      v35 = MEMORY[0x1E696AEC0];
      (*(*v33 + 16))(v33);
      v36 = [v35 stringWithFormat:@"Exception in fetchData: %s"];
      a28 = v36;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&a28 forKeys:&a27 count:1];
    }

    else
    {
      a29 = *MEMORY[0x1E696A578];
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Exception in fetchData"];
      a30 = v36;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&a30 forKeys:&a29 count:1];
    }
    v37 = ;
    [v34 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:1 userInfo:v37];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x1B5A268D0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _parseRecipeBoolField(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [v5 objectForKeyedSubscript:v6];
      a3 = [v10 BOOLValue];
    }

    else if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      _parseRecipeBoolField();
    }
  }

  return a3;
}

void sub_1B5A27618(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  if (a2)
  {
    if (SLOBYTE(STACK[0x227]) < 0)
    {
      operator delete(STACK[0x210]);
    }

    _Block_object_dispose(&STACK[0x250], 8);
    v26 = __cxa_begin_catch(a1);
    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    if (a2 == 2)
    {
      STACK[0x290] = v28;
      v29 = MEMORY[0x1E696AEC0];
      (*(*v26 + 16))(v26);
      v30 = [v29 stringWithFormat:@"Exception in setup: %s"];
      STACK[0x298] = v30;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&STACK[0x298] forKeys:&STACK[0x290] count:1];
    }

    else
    {
      STACK[0x2A0] = v28;
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Exception in setup"];
      STACK[0x2A8] = v30;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&STACK[0x2A8] forKeys:&STACK[0x2A0] count:1];
    }
    v31 = ;
    [v27 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:157 userInfo:v31];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x1B5A275C4);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B5A28A50(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    std::ofstream::~ofstream(&STACK[0x3C0], MEMORY[0x1E69E54D0]);
    MEMORY[0x1B8C85200](&STACK[0x560]);
    std::ifstream::~ifstream(&STACK[0x5F8], MEMORY[0x1E69E54C8]);
    MEMORY[0x1B8C85200](&STACK[0x7A0]);
    if (SLOBYTE(STACK[0x20F]) < 0)
    {
      operator delete(__p);
    }

    if (SLOBYTE(STACK[0x227]) < 0)
    {
      operator delete(STACK[0x210]);
    }

    _Block_object_dispose(&STACK[0x250], 8);
    v73 = __cxa_begin_catch(a1);
    v74 = MEMORY[0x1E696ABC0];
    v75 = *MEMORY[0x1E696A578];
    if (a2 == 2)
    {
      STACK[0x290] = v75;
      v76 = MEMORY[0x1E696AEC0];
      (*(*v73 + 16))(v73);
      v77 = [v76 stringWithFormat:@"Exception in setup: %s"];
      STACK[0x298] = v77;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&STACK[0x298] forKeys:&STACK[0x290] count:1];
    }

    else
    {
      STACK[0x2A0] = v75;
      v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Exception in setup"];
      STACK[0x2A8] = v77;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&STACK[0x2A8] forKeys:&STACK[0x2A0] count:1];
    }
    v78 = ;
    [v74 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:158 userInfo:v78];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x1B5A289F4);
  }

  _Unwind_Resume(a1);
}

void sub_1B5A29FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (a2)
  {

    v47 = __cxa_begin_catch(exception_object);
    v48 = MEMORY[0x1E696ABC0];
    if (a2 == 2)
    {
      a37 = *MEMORY[0x1E696A578];
      v49 = MEMORY[0x1E696AEC0];
      (*(*v47 + 16))(v47);
      v50 = [v49 stringWithFormat:@"Exception in setup: %s"];
      a38 = v50;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&a38 forKeys:&a37 count:1];
    }

    else
    {
      a39 = *MEMORY[0x1E696A578];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Exception in setup"];
      a40 = v50;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&a40 forKeys:&a39 count:1];
    }
    v51 = ;
    [v48 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v51];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x1B5A29624);
  }

  _Unwind_Resume(exception_object);
}

id _fetchTensors(void *a1, void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v29 = a2;
  v28 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v26 = *v32;
    do
    {
      v30 = v6;
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [v29 getTensorNamed:v8 directBind:1];
        v10 = [v5 objectForKeyedSubscript:v8];
        v11 = [v10 objectForKeyedSubscript:@"offset"];
        v12 = [v11 intValue];

        v13 = [v9 dataPointer];
        v14 = [v5 objectForKeyedSubscript:v8];
        v15 = [v14 objectForKeyedSubscript:@"size"];
        LODWORD(v11) = [v15 intValue];

        v16 = 4 * v11;
        v17 = (a3 + 4 * v12);
        memcpy(v17, v13, v16);
        v18 = objc_alloc(MEMORY[0x1E699BBC8]);
        v19 = [v5 objectForKeyedSubscript:v8];
        v20 = [v19 objectForKeyedSubscript:@"shape"];
        v21 = [v5 objectForKeyedSubscript:v8];
        v22 = [v21 objectForKeyedSubscript:@"strides"];
        v23 = [v18 initWithData:v17 type:2 shape:v20 strides:v22];
        [v28 setObject:v23 forKeyedSubscript:v8];
      }

      v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);

  return v28;
}

void sub_1B5A2AEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id _copy(void *a1, void *a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 type] != 2 || objc_msgSend(v4, "type") != 2)
  {
    goto LABEL_14;
  }

  v5 = [v3 shape];
  v6 = [v4 shape];
  if (([v5 isEqual:v6] & 1) == 0)
  {

    goto LABEL_14;
  }

  v7 = [v3 strides];
  v8 = [v4 strides];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_14:
    v19 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30[0] = @"Attempt to copy tensor of mismatch type/shape/strides";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v21 = [v19 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:1 userInfo:v20];

    goto LABEL_15;
  }

  __dst = [v4 dataPointer];
  v10 = [v3 dataPointer];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v3 shape];
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = *v25;
    v14 = 1;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 intValue];

        v14 *= v17;
      }

      v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
    v18 = 4 * v14;
  }

  else
  {
    v18 = 4;
  }

  memcpy(__dst, v10, v18);
  v21 = 0;
LABEL_15:

  return v21;
}

void sub_1B5A2C47C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a2)
  {

    v62 = __cxa_begin_catch(exception_object);
    v63 = MEMORY[0x1E696ABC0];
    if (a2 == 2)
    {
      a57 = *MEMORY[0x1E696A578];
      v64 = MEMORY[0x1E696AEC0];
      (*(*v62 + 16))(v62);
      v65 = [v64 stringWithFormat:@"Exception in evaluate: %s"];
      a58 = v65;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&a58 forKeys:&a57 count:1];
    }

    else
    {
      a59 = *MEMORY[0x1E696A578];
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Exception in evaluate"];
      a60 = v65;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&a60 forKeys:&a59 count:1];
    }
    v66 = ;
    [v63 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:154 userInfo:v66];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x1B5A2C428);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5A2D0BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {

    v70 = __cxa_begin_catch(a1);
    v71 = MEMORY[0x1E696ABC0];
    if (a2 == 2)
    {
      a63 = *MEMORY[0x1E696A578];
      v72 = MEMORY[0x1E696AEC0];
      (*(*v70 + 16))(v70);
      v73 = [v72 stringWithFormat:@"Exception in train: %s"];
      a64 = v73;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&a64 forKeys:&a63 count:1];
    }

    else
    {
      a65 = *MEMORY[0x1E696A578];
      v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Exception in train"];
      a66 = v73;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&a66 forKeys:&a65 count:1];
    }
    v74 = ;
    [v71 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:152 userInfo:v74];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x1B5A2D068);
  }

  _Unwind_Resume(a1);
}

void sub_1B5A2E768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a2)
  {

    v34 = __cxa_begin_catch(exception_object);
    v35 = MEMORY[0x1E696ABC0];
    if (a2 == 2)
    {
      a29 = *MEMORY[0x1E696A578];
      v36 = MEMORY[0x1E696AEC0];
      (*(*v34 + 16))(v34);
      v37 = [v36 stringWithFormat:@"Exception in evaluatePartialDelta: %s"];
      a30 = v37;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&a30 forKeys:&a29 count:1];
    }

    else
    {
      a31 = *MEMORY[0x1E696A578];
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Exception in evaluatePartialDelta"];
      a32 = v37;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&a32 forKeys:&a31 count:1];
    }
    v38 = ;
    [v35 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:154 userInfo:v38];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x1B5A2E718);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5A2F8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (a2)
  {

    v64 = __cxa_begin_catch(exception_object);
    v65 = MEMORY[0x1E696ABC0];
    if (a2 == 2)
    {
      a58 = *MEMORY[0x1E696A578];
      v66 = MEMORY[0x1E696AEC0];
      (*(*v64 + 16))(v64);
      v67 = [v66 stringWithFormat:@"Exception in computeDelta: %s"];
      a59 = v67;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&a59 forKeys:&a58 count:1];
    }

    else
    {
      a60 = *MEMORY[0x1E696A578];
      v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Exception in computeDelta"];
      a61 = v67;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&a61 forKeys:&a60 count:1];
    }
    v68 = ;
    [v65 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:153 userInfo:v68];
    objc_claimAutoreleasedReturnValue();

    __cxa_end_catch();
    JUMPOUT(0x1B5A2F824);
  }

  _Unwind_Resume(exception_object);
}

void quasar::GlobalNNLMWrapper::GlobalNNLMWrapper(void *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2D3E998;
  operator new();
}

void sub_1B5A3058C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id **a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);

  quasar::PTree::~PTree((a10 + 1));
  std::unique_ptr<quasar::GlobalNNLMImpl>::reset[abi:ne200100](a10, 0);
  _Unwind_Resume(a1);
}

void quasar::GlobalNNLMWrapper::~GlobalNNLMWrapper(quasar::GlobalNNLMWrapper *this)
{
  *this = &unk_1F2D3E998;
  v3 = (this + 8);
  v2 = *(this + 1);
  if (v2)
  {
    v4 = *v2;
    *v2 = 0;
  }

  std::unique_ptr<quasar::GlobalNNLMImpl>::reset[abi:ne200100](v3, 0);
  quasar::PTree::~PTree((this + 16));
  std::unique_ptr<quasar::GlobalNNLMImpl>::reset[abi:ne200100](v3, 0);
}

{
  quasar::GlobalNNLMWrapper::~GlobalNNLMWrapper(this);

  JUMPOUT(0x1B8C85350);
}

id **std::unique_ptr<quasar::GlobalNNLMImpl>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void quasar::GlobalNNLMWrapper::loadData(uint64_t a1, uint64_t *a2, uint64_t *a3, const kaldi::Timer *a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "trainingDataConversion");
  v26[0] = __p;
  v10 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a5, __p);
  quasar::ScopedTimer::ScopedTimer(v45, a4, (v10 + 56));
  if (SBYTE7(v29) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = *a2; i != a2[1]; i += 128)
  {
    v14 = objc_autoreleasePoolPush();
    __p[0] = 0;
    __p[1] = 0;
    *&v29 = 0;
    std::transform[abi:ne200100]<std::__wrap_iter<std::string const*>,std::back_insert_iterator<std::vector<NSString * {__strong}>>,quasar::GlobalNNLMWrapper::loadData(std::vector<quasar::lm::TokenStringAndCount> const&,std::vector<quasar::lm::TokenStringAndCount> const&,kaldi::Timer &,std::map<std::string,double> &)::$_0>(*(i + 104), *(i + 112), __p);
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    [v11 addObject:v15];

    v26[0] = __p;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v26);
    objc_autoreleasePoolPop(v14);
  }

  for (j = *a3; j != a3[1]; j += 128)
  {
    v17 = objc_autoreleasePoolPush();
    __p[0] = 0;
    __p[1] = 0;
    *&v29 = 0;
    std::transform[abi:ne200100]<std::__wrap_iter<std::string const*>,std::back_insert_iterator<std::vector<NSString * {__strong}>>,quasar::GlobalNNLMWrapper::loadData(std::vector<quasar::lm::TokenStringAndCount> const&,std::vector<quasar::lm::TokenStringAndCount> const&,kaldi::Timer &,std::map<std::string,double> &)::$_0>(*(j + 104), *(j + 112), __p);
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    [v12 addObject:v18];

    v26[0] = __p;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v26);
    objc_autoreleasePoolPop(v17);
  }

  [**(a1 + 8) setTrainData:v11];
  [**(a1 + 8) setEvalData:v12];
  v19 = [**(a1 + 8) loadData];
  if (v19 && quasar::gLogLevel >= 1)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::string::basic_string[abi:ne200100]<0>(&v25, " trainer data loading error ");
    v20 = [v19 description];
    v21 = std::string::append(&v25, [v20 UTF8String]);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v27 = v21->__r_.__value_.__r.__words[2];
    *v26 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v27 >= 0)
    {
      v23 = v26;
    }

    else
    {
      v23 = v26[0];
    }

    if (v27 >= 0)
    {
      v24 = HIBYTE(v27);
    }

    else
    {
      v24 = v26[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v23, v24);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
  }

  quasar::ScopedTimer::~ScopedTimer(v45);
}

void sub_1B5A30AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a23);

  quasar::ScopedTimer::~ScopedTimer((v32 - 120));
  _Unwind_Resume(a1);
}

void *std::transform[abi:ne200100]<std::__wrap_iter<std::string const*>,std::back_insert_iterator<std::vector<NSString * {__strong}>>,quasar::GlobalNNLMWrapper::loadData(std::vector<quasar::lm::TokenStringAndCount> const&,std::vector<quasar::lm::TokenStringAndCount> const&,kaldi::Timer &,std::map<std::string,double> &)::$_0>(__int128 *a1, __int128 *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        __p.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&__p.__r_.__value_.__l.__data_ = v6;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v9 = __p.__r_.__value_.__r.__words[0];
      v10 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
      if (v8 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v9;
      }

      v12 = [v7 stringWithCString:p_p encoding:v10];
      v14 = a3[1];
      v13 = a3[2];
      if (v14 >= v13)
      {
        v16 = (v14 - *a3) >> 3;
        if ((v16 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v17 = v13 - *a3;
        v18 = v17 >> 2;
        if (v17 >> 2 <= (v16 + 1))
        {
          v18 = v16 + 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        v26 = a3;
        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a3, v19);
        }

        v22 = 0;
        v23 = (8 * v16);
        v25 = 0;
        *v23 = v12;
        v24 = 8 * v16 + 8;
        std::vector<NSString * {__strong}>::__swap_out_circular_buffer(a3, &v22);
        v15 = a3[1];
        std::__split_buffer<NSString * {__strong}>::~__split_buffer(&v22);
      }

      else
      {
        *v14 = v12;
        v15 = v14 + 1;
        a3[1] = v15;
      }

      a3[1] = v15;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v5 = (v5 + 24);
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_1B5A30D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::GlobalNNLMWrapper::loadWeight(uint64_t a1, const kaldi::Timer *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "loadWeight");
  v15[0] = __p;
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
  quasar::ScopedTimer::ScopedTimer(v34, a2, (v6 + 56));
  if (SBYTE7(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = [**(a1 + 8) loadWeight];
  if (v7)
  {
    v8 = quasar::gLogLevel < 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::string::basic_string[abi:ne200100]<0>(&v14, " trainer weight reloading error ");
    v9 = [v7 description];
    v10 = std::string::append(&v14, [v9 UTF8String]);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16 = v10->__r_.__value_.__r.__words[2];
    *v15 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v16 >= 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    if (v16 >= 0)
    {
      v13 = HIBYTE(v16);
    }

    else
    {
      v13 = v15[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v12, v13);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
  }

  quasar::ScopedTimer::~ScopedTimer(v34);
}

void sub_1B5A30F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a23);

  quasar::ScopedTimer::~ScopedTimer((v30 - 72));
  _Unwind_Resume(a1);
}

void quasar::GlobalNNLMWrapper::saveWeight(uint64_t a1, uint64_t *a2, const kaldi::Timer *a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "saveWeight");
  v24[0] = __p;
  v8 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, __p);
  quasar::ScopedTimer::ScopedTimer(v43, a3, (v8 + 56));
  if (SBYTE7(v27) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = **(a1 + 8);
  v10 = MEMORY[0x1E696AEC0];
  v11 = *(a2 + 23);
  v12 = *a2;
  v13 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
  if (v11 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = v12;
  }

  v15 = [v10 stringWithCString:v14 encoding:v13];
  v16 = [v9 saveWeight:v15];

  if (v16)
  {
    v17 = quasar::gLogLevel < 1;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::string::basic_string[abi:ne200100]<0>(&v23, " trainer weight error when saving weight");
    v18 = [v16 description];
    v19 = std::string::append(&v23, [v18 UTF8String]);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25 = v19->__r_.__value_.__r.__words[2];
    *v24 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v25 >= 0)
    {
      v21 = v24;
    }

    else
    {
      v21 = v24[0];
    }

    if (v25 >= 0)
    {
      v22 = HIBYTE(v25);
    }

    else
    {
      v22 = v24[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v21, v22);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
  }

  quasar::ScopedTimer::~ScopedTimer(v43);
}

void sub_1B5A3119C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::locale a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a23);

  quasar::ScopedTimer::~ScopedTimer((v25 - 88));
  _Unwind_Resume(a1);
}

void sub_1B5A31218(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5A31210);
}

void quasar::GlobalNNLMWrapper::setup(uint64_t a1, const kaldi::Timer *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "setup");
  v15[0] = __p;
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
  quasar::ScopedTimer::ScopedTimer(v34, a2, (v6 + 56));
  if (SBYTE7(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = [**(a1 + 8) setup];
  if (v7)
  {
    v8 = quasar::gLogLevel < 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::string::basic_string[abi:ne200100]<0>(&v14, " trainer setup error ");
    v9 = [v7 description];
    v10 = std::string::append(&v14, [v9 UTF8String]);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16 = v10->__r_.__value_.__r.__words[2];
    *v15 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v16 >= 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    if (v16 >= 0)
    {
      v13 = HIBYTE(v16);
    }

    else
    {
      v13 = v15[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v12, v13);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
  }

  quasar::ScopedTimer::~ScopedTimer(v34);
}

void sub_1B5A313CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a23);

  quasar::ScopedTimer::~ScopedTimer((v30 - 72));
  _Unwind_Resume(a1);
}

void quasar::GlobalNNLMWrapper::train(uint64_t a1, const kaldi::Timer *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "train");
  v15[0] = __p;
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
  quasar::ScopedTimer::ScopedTimer(v34, a2, (v6 + 56));
  if (SBYTE7(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = [**(a1 + 8) train];
  if (v7)
  {
    v8 = quasar::gLogLevel < 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::string::basic_string[abi:ne200100]<0>(&v14, " trainer training error ");
    v9 = [v7 description];
    v10 = std::string::append(&v14, [v9 UTF8String]);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16 = v10->__r_.__value_.__r.__words[2];
    *v15 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v16 >= 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    if (v16 >= 0)
    {
      v13 = HIBYTE(v16);
    }

    else
    {
      v13 = v15[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v12, v13);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
  }

  quasar::ScopedTimer::~ScopedTimer(v34);
}

void sub_1B5A315F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a23);

  quasar::ScopedTimer::~ScopedTimer((v30 - 72));
  _Unwind_Resume(a1);
}

void quasar::GlobalNNLMWrapper::evaluate(uint64_t a1, const kaldi::Timer *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "evaluate");
  v15[0] = __p;
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
  quasar::ScopedTimer::ScopedTimer(v34, a2, (v6 + 56));
  if (SBYTE7(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = [**(a1 + 8) evaluate];
  if (v7)
  {
    v8 = quasar::gLogLevel < 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::string::basic_string[abi:ne200100]<0>(&v14, " trainer evaluation error ");
    v9 = [v7 description];
    v10 = std::string::append(&v14, [v9 UTF8String]);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16 = v10->__r_.__value_.__r.__words[2];
    *v15 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v16 >= 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    if (v16 >= 0)
    {
      v13 = HIBYTE(v16);
    }

    else
    {
      v13 = v15[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v12, v13);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
  }

  quasar::ScopedTimer::~ScopedTimer(v34);
}

void sub_1B5A31814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a23);

  quasar::ScopedTimer::~ScopedTimer((v30 - 72));
  _Unwind_Resume(a1);
}

uint64_t ___ZL32DistributedEvaluationLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  DistributedEvaluationLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL34getDESRecipeEvaluationSessionClassv_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!DistributedEvaluationLibraryCore(char **)::frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = ___ZL32DistributedEvaluationLibraryCorePPc_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7C1C5A8;
    v9 = 0;
    DistributedEvaluationLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!DistributedEvaluationLibraryCore(char **)::frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DistributedEvaluationLibrary()"];
    [v3 handleFailureInFunction:v4 file:@"EARLMTGlobalNNLM.mm" lineNumber:44 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("DESRecipeEvaluationSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDESRecipeEvaluationSessionClass()_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"EARLMTGlobalNNLM.mm" lineNumber:47 description:{@"Unable to find class %s", "DESRecipeEvaluationSession"}];

LABEL_10:
    __break(1u);
  }

  getDESRecipeEvaluationSessionClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<NSString * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<NSString * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t Phonetisaurus::loadClusters(Phonetisaurus *this)
{
  result = (*(**(this + 30) + 120))(*(this + 30));
  if (result >= 3)
  {
    for (i = 2; i < result; ++i)
    {
      (*(**(this + 30) + 88))(v34);
      v4 = v35;
      v5 = v35;
      if ((v35 & 0x80u) == 0)
      {
        v6 = v34;
      }

      else
      {
        v6 = v34[0];
      }

      if ((v35 & 0x80u) != 0)
      {
        v4 = v34[1];
      }

      v7 = *(this + 119);
      if (v7 >= 0)
      {
        v8 = this + 96;
      }

      else
      {
        v8 = *(this + 12);
      }

      if (v7 >= 0)
      {
        v9 = *(this + 119);
      }

      else
      {
        v9 = *(this + 13);
      }

      if (v9)
      {
        if (v4 >= v9)
        {
          v10 = &v6[v4];
          v11 = *v8;
          v12 = v6;
          do
          {
            v13 = v4 - v9;
            if (v13 == -1)
            {
              break;
            }

            v14 = memchr(v12, v11, v13 + 1);
            if (!v14)
            {
              break;
            }

            v15 = v14;
            if (!memcmp(v14, v8, v9))
            {
              if (v15 != v10)
              {
                if (v15 - v6 == -1)
                {
                  goto LABEL_41;
                }

                goto LABEL_24;
              }

              break;
            }

            v12 = v15 + 1;
            v4 = v10 - (v15 + 1);
          }

          while (v4 >= v9);
          if ((v5 & 0x80) == 0)
          {
            goto LABEL_43;
          }

LABEL_42:
          operator delete(v34[0]);
          goto LABEL_43;
        }
      }

      else
      {
LABEL_24:
        v32 = 0;
        __lasts = 0;
        v30 = 0;
        v31 = 0;
        for (j = strtok_r(v6, v8, &__lasts); j; j = strtok_r(0, v27, &__lasts))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, j);
          v17 = v31;
          if (v31 >= v32)
          {
            v19 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3);
            v20 = v19 + 1;
            if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v32 - v30) >> 3) > v20)
            {
              v20 = 0x5555555555555556 * ((v32 - v30) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3) >= 0x555555555555555)
            {
              v21 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v21 = v20;
            }

            v36.__end_cap_.__value_ = &v30;
            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v30, v21);
            }

            v22 = 8 * ((v31 - v30) >> 3);
            v23 = *__p;
            *(v22 + 16) = v29;
            *v22 = v23;
            __p[1] = 0;
            v29 = 0;
            __p[0] = 0;
            v24 = (24 * v19 - (v31 - v30));
            memcpy(v24, v30, v31 - v30);
            v25 = v30;
            v26 = v32;
            v30 = v24;
            v31 = 24 * v19 + 24;
            v32 = 0;
            v36.__end_ = v25;
            v36.__end_cap_.__value_ = v26;
            v36.__first_ = v25;
            v36.__begin_ = v25;
            std::__split_buffer<std::string>::~__split_buffer(&v36);
            v31 = 24 * v19 + 24;
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v18 = *__p;
            *(v31 + 16) = v29;
            *v17 = v18;
            v31 = v17 + 24;
          }

          v27 = this + 96;
          if (*(this + 119) < 0)
          {
            v27 = *(this + 12);
          }
        }

        v36.__first_ = &v30;
        *(std::__tree<std::__value_type<std::vector<std::string>,int>,std::__map_value_compare<std::vector<std::string>,std::__value_type<std::vector<std::string>,int>,std::less<std::vector<std::string>>,true>,std::allocator<std::__value_type<std::vector<std::string>,int>>>::__emplace_unique_key_args<std::vector<std::string>,std::piecewise_construct_t const&,std::tuple<std::vector<std::string> const&>,std::tuple<>>(this + 192, &v30) + 56) = i;
        v36.__first_ = &v30;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v36);
        v5 = v35;
      }

LABEL_41:
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_42;
      }

LABEL_43:
      result = (*(**(this + 30) + 120))(*(this + 30));
    }
  }

  return result;
}

void sub_1B5A32010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  a9 = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void Phonetisaurus::Phonetisaurus(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 176) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 184) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
}

void sub_1B5A32558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v9 + 224));
  std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(v12, *v14);
  std::__tree<int>::destroy(v11, *v15);
  v17 = *a9;
  if (*a9)
  {
    *(v9 + 144) = v17;
    operator delete(v17);
  }

  if (*(v9 + 119) < 0)
  {
    operator delete(*v13);
  }

  if (*(v9 + 95) < 0)
  {
    operator delete(*(v9 + 72));
  }

  if (*(v9 + 71) < 0)
  {
    operator delete(*v10);
  }

  if (*(v9 + 47) < 0)
  {
    operator delete(*(v9 + 24));
  }

  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void sub_1B5A32A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void **p_p, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a12);
  _Unwind_Resume(a1);
}

uint64_t Phonetisaurus::_compute_thetas(Phonetisaurus *this, int a2)
{
  v3 = (this + 136);
  *(this + 18) = *(this + 17);
  v4 = *(this + 30);
  if (v4 >= a2 + 1)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = v4;
  }

  v11 = -1110651699;
  std::vector<float>::push_back[abi:ne200100](this + 17, &v11);
  if (*(v3 - 4) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = ((v5 * 10.0) * *(this + 32));
      v8 = 1.0 / (pow(*(this + 33), v6) * v7);
      v10 = v8;
      std::vector<float>::push_back[abi:ne200100](v3, &v10);
      ++v6;
    }

    while (v6 < *(this + 30));
  }

  return v5;
}

void sub_1B5A333F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (*(v63 - 169) < 0)
  {
    operator delete(*(v63 - 192));
  }

  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  MBRDecoder::~MBRDecoder(&a20);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(&a43);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(&a45);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a47);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v63 - 144));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v63 - 128));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v63 - 112));
  _Unwind_Resume(a1);
}

uint64_t ShortestPathSpecialized<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,VetoPathFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t result, uint64_t a2, float **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 24))
  {
    if ((*(a6 + 33) & 1) != 0 || (fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(result, a3, a6), a3[1] - *a3 != 4) || (v8 = **a3, v8 < -INFINITY) || v8 > -INFINITY)
    {
      fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::VectorFst();
    }

    v9 = *(*a2 + 192);

    return v9(a2, 4, 4);
  }

  return result;
}

void sub_1B5A337F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ImplToFst(va);
  _Unwind_Resume(a1);
}

uint64_t VetoPathFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~VetoPathFilter(uint64_t a1)
{
  v3 = (a1 + 40);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return std::__hash_table<std::__hash_value_type<std::vector<int>,Path>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,VectorIntHash,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,std::equal_to<std::vector<int>>,VectorIntHash,true>,std::allocator<std::__hash_value_type<std::vector<int>,Path>>>::~__hash_table(a1);
}

void fst::Determinize<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1, __n128 a2, uint64_t a3, int *a4)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v7[0] = FLAGS_fst_default_cache_gc;
  v12 = 0;
  v13 = 0;
  v5 = *(a4 + 1);
  v9 = *a4;
  a2.n128_u64[0] = *(a4 + 3);
  v10 = a2.n128_u64[0];
  v11 = *(a4 + 20);
  v8 = 0;
  *v14 = v5;
  LODWORD(v6[0]) = 2139095040;
  a2.n128_f32[0] = v5;
  if (v5 == INFINITY && a4[2] == -1)
  {
    fst::DeterminizeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::DeterminizeFst<fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>(v14, a1, v7);
  }

  if ((*(*a1 + 64))(a1, 0x10000, 0, a2))
  {
    memset(v6, 0, sizeof(v6));
    fst::ShortestDistance<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1, v6, 1);
  }

  fst::DeterminizeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::DeterminizeFst<fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>(v14, a1, v7);
}

uint64_t fst::Minimize<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1)
{
  v2 = (*(*a1 + 64))(a1, 0x300010000, 1);
  if ((v2 & 0x10000) == 0)
  {
    fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::VectorFst();
  }

  if ((v2 & 0x100000000) != 0)
  {
    fst::Push<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1, 0);
  }

  return fst::AcceptorMinimize<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1);
}

void sub_1B5A340C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  fst::EncodeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::~EncodeMapper(va);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst((v11 - 72));
  _Unwind_Resume(a1);
}

uint64_t Phonetisaurus::findPaths(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v45[0] = 0;
  v45[1] = 0;
  v44 = v45;
  v4 = *a2;
  if (a2[1] == *a2)
  {
    v30 = 0;
    v31 = 1;
    goto LABEL_66;
  }

  v5 = a4;
  v7 = 0;
  v35 = a3;
  v38 = (a1 + 24);
  v39 = (a1 + 96);
  v33 = 1;
  do
  {
    if (v35 <= (v5[1] - *v5) >> 5)
    {
      break;
    }

    memset(&v43, 0, sizeof(v43));
    memset(v41, 0, sizeof(v41));
    v37 = v7;
    v8 = (v4 + 32 * v7);
    v10 = *v8;
    v9 = v8[1];
    if (v9 == *v8)
    {
      v29 = v37;
      goto LABEL_61;
    }

    v11 = 0;
    do
    {
      if (*(v10 + 4 * v11) == 2)
      {
        goto LABEL_54;
      }

      (*(**(a1 + 248) + 88))(&v40);
      if (std::string::compare(&v40, "_"))
      {
        v12 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        v13 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        v14 = *(a1 + 119);
        v15 = v14;
        if ((v14 & 0x80u) != 0)
        {
          v14 = *(a1 + 104);
        }

        size = v40.__r_.__value_.__l.__size_;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = v40.__r_.__value_.__l.__size_;
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v40;
        }

        else
        {
          v18 = v40.__r_.__value_.__r.__words[0];
        }

        if (v17 == v14)
        {
          v19 = v15 >= 0 ? v39 : *v39;
          if (!memcmp(v18, v19, v17))
          {
            goto LABEL_29;
          }
        }

        v20 = v39;
        if (v15 < 0)
        {
          v20 = *v39;
          if (!v17)
          {
LABEL_29:
            if (v13 >= 0)
            {
              v21 = v12;
            }

            else
            {
              v21 = size;
            }

            v22 = *(a1 + 47);
            v23 = v22;
            if ((v22 & 0x80u) != 0)
            {
              v22 = *(a1 + 32);
            }

            if (v21 != v22 || ((v24 = v40.__r_.__value_.__r.__words[0], v13 >= 0) ? (v25 = &v40) : (v25 = v40.__r_.__value_.__r.__words[0]), v23 >= 0 ? (v26 = v38) : (v26 = *v38), memcmp(v25, v26, v21)))
            {
              std::vector<std::string>::push_back[abi:ne200100](v41, &v40);
              v12 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
              size = v40.__r_.__value_.__l.__size_;
              v24 = v40.__r_.__value_.__r.__words[0];
              v13 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
            }

            if (v13 >= 0)
            {
              v27 = &v40;
            }

            else
            {
              v27 = v24;
            }

            if (v13 >= 0)
            {
              v28 = v12;
            }

            else
            {
              v28 = size;
            }

            std::string::append(&v43, v27, v28);
            if (v11 != ((v8[1] - *v8) >> 2) - 1)
            {
              std::string::append(&v43, " ");
            }

            goto LABEL_51;
          }
        }

        else if (!v17)
        {
          goto LABEL_29;
        }

        do
        {
          if (v18->__r_.__value_.__s.__data_[0] == *v20)
          {
            v18->__r_.__value_.__s.__data_[0] = 32;
          }

          v18 = (v18 + 1);
          --v17;
        }

        while (v17);
        v12 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        size = v40.__r_.__value_.__l.__size_;
        v13 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        goto LABEL_29;
      }

LABEL_51:
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      v10 = *v8;
      v9 = v8[1];
LABEL_54:
      ++v11;
    }

    while (v11 < (v9 - v10) >> 2);
    v5 = a4;
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      v29 = v37;
      if (!v43.__r_.__value_.__l.__size_)
      {
        goto LABEL_61;
      }

LABEL_60:
      v42 = *(*a2 + 32 * v29 + 24);
      std::vector<WordPron>::push_back[abi:ne200100](a4, v41);
      v33 = 0;
      goto LABEL_61;
    }

    v29 = v37;
    if (*(&v43.__r_.__value_.__s + 23))
    {
      goto LABEL_60;
    }

LABEL_61:
    v40.__r_.__value_.__r.__words[0] = v41;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    v7 = v29 + 1;
    v4 = *a2;
  }

  while (v7 < (a2[1] - *a2) >> 5);
  v30 = v45[0];
  v31 = v33;
LABEL_66:
  std::__tree<std::string>::destroy(&v44, v30);
  return v31 & 1;
}

void sub_1B5A34470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  a17 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(v32 - 112, *(v32 - 104));
  _Unwind_Resume(a1);
}

uint64_t std::vector<WordPron>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<WordPron>::__emplace_back_slow_path<WordPron const&>(a1, a2);
  }

  else
  {
    std::vector<WordPron>::__construct_one_at_end[abi:ne200100]<WordPron const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::vector<int>,Path>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,VectorIntHash,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,std::equal_to<std::vector<int>>,VectorIntHash,true>,std::allocator<std::__hash_value_type<std::vector<int>,Path>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::vector<int>,Path>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,VectorIntHash,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,std::equal_to<std::vector<int>>,VectorIntHash,true>,std::allocator<std::__hash_value_type<std::vector<int>,Path>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::vector<int>,Path>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,VectorIntHash,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,std::equal_to<std::vector<int>>,VectorIntHash,true>,std::allocator<std::__hash_value_type<std::vector<int>,Path>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::vector<int> const,Path>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::vector<int> const,Path>::~pair(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(a1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

void Path::~Path(Path *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

void MBRDecoder::~MBRDecoder(MBRDecoder *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v7 = (this + 64);
  std::vector<std::set<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

void FstPathFinder::~FstPathFinder(FstPathFinder *this)
{
  v2 = (this + 32);
  std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<int>::destroy(this + 8, *(this + 2));
}

uint64_t std::__tree<std::__value_type<std::vector<std::string>,int>,std::__map_value_compare<std::vector<std::string>,std::__value_type<std::vector<std::string>,int>,std::less<std::vector<std::string>>,true>,std::allocator<std::__value_type<std::vector<std::string>,int>>>::__emplace_unique_key_args<std::vector<std::string>,std::piecewise_construct_t const&,std::tuple<std::vector<std::string> const&>,std::tuple<>>(uint64_t a1, const void ***a2)
{
  result = *std::__tree<std::vector<std::string>>::__find_equal<std::vector<std::string>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::vector<std::string>,int>,std::__map_value_compare<std::vector<std::string>,std::__value_type<std::vector<std::string>,int>,std::less<std::vector<std::string>>,true>,std::allocator<std::__value_type<std::vector<std::string>,int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::vector<std::string> const&>,std::tuple<>>();
  }

  return result;
}

void sub_1B5A34860(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::vector<std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::vector<std::string>,int>,std::__map_value_compare<std::vector<std::string>,std::__value_type<std::vector<std::string>,int>,std::less<std::vector<std::string>>,true>,std::allocator<std::__value_type<std::vector<std::string>,int>>>::__count_unique<std::vector<std::string>>(uint64_t a1, const void ***a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((std::__lexicographical_compare[abi:ne200100]<std::string const*,std::string const*,std::string const*,std::string const*,std::__identity,std::__identity,std::__less<void,void>>(*a2, a2[1], v2[4], v2[5]) & 1) == 0)
      {
        if (!std::__lexicographical_compare[abi:ne200100]<std::string const*,std::string const*,std::string const*,std::string const*,std::__identity,std::__identity,std::__less<void,void>>(v2[4], v2[5], *a2, a2[1]))
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void NShortestPathSpecialized<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,VetoPathFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, unint64_t a5, void *a6, int a7, int a8, float a9, float a10)
{
  v96 = *MEMORY[0x1E69E9840];
  v76 = a10;
  if (a5)
  {
    (*(*a2 + 224))(a2);
    v19 = (*(*a1 + 112))(a1);
    (*(*a2 + 280))(a2, v19);
    v20 = (*(*a1 + 120))(a1);
    (*(*a2 + 288))(a2, v20);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v71[0] = 0;
    v71[1] = 0;
    v72 = 0;
    __p = 0;
    v69 = 0;
    v70 = 0;
    if ((*(*a1 + 24))(a1) != -1)
    {
      v23 = *a3;
      v22 = a3[1];
      if ((*(*a1 + 24))(a1) < ((v22 - v23) >> 2))
      {
        LODWORD(v77) = *(*a3 + 4 * (*(*a1 + 24))(a1));
        LODWORD(v89) = 2139095040;
        v21.n128_u32[0] = v77;
        if (*&v77 != INFINITY)
        {
          LODWORD(v64) = 0;
          if (!fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v67, &v76, &v64))
          {
            if (a8)
            {
              v24 = (*(*a2 + 200))(a2);
              (*(*a2 + 176))(a2, v24);
              v66 = (*(*a2 + 200))(a2);
              (*(*a2 + 184))(a2, 0.0);
              while (v66 >= ((v74 - v73) >> 3))
              {
                v77 = 0x7F800000FFFFFFFFLL;
                std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v73, &v77);
              }

              v25 = (*(*a1 + 24))(a1);
              v26 = v73 + 8 * v66;
              *v26 = v25;
              v26[1] = 0;
              std::vector<int>::push_back[abi:ne200100](v71, &v66);
              v61 = a4;
              v60 = a7;
              v62 = a8;
              v27 = *(*a3 + 4 * (*(*a1 + 24))(a1));
              v28 = NAN;
              if (v27 != -INFINITY)
              {
                v28 = NAN;
                if (v76 != -INFINITY)
                {
                  v28 = INFINITY;
                  v29 = v76 == INFINITY || v27 == INFINITY;
                  v30 = v27 + v76;
                  if (!v29)
                  {
                    v28 = v30;
                  }
                }
              }

              v65 = v28;
              while (1)
              {
                v31 = v71[1];
                v32 = v71[0];
                if (v71[0] == v71[1])
                {
                  goto LABEL_128;
                }

                v77 = &v73;
                v78 = a3;
                LODWORD(v79) = -1;
                *(&v79 + 1) = a9;
                v33 = (v71[1] - v71[0]) >> 2;
                if (v33 >= 2)
                {
                  v34 = *v71[0];
                  v35 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v71[0], &v77, v33);
                  v36 = (v31 - 4);
                  if (v31 - 4 == v35)
                  {
                    *v35 = v34;
                  }

                  else
                  {
                    *v35 = *v36;
                    *v36 = v34;
                    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v32, (v35 + 1), &v77, ((v35 + 1) - v32) >> 2);
                  }
                }

                v37 = *(v71[1] - 1);
                v38 = (v73 + 8 * v37);
                v39 = *v38;
                v40 = v38[1];
                v71[1] = v71[1] - 4;
                if (v39 == -1)
                {
                  v41 = 0.0;
                }

                else if (v39 >= (a3[1] - *a3) >> 2)
                {
                  v41 = INFINITY;
                }

                else
                {
                  v41 = *(*a3 + 4 * v39);
                  v42 = NAN;
                  if (v41 == -INFINITY)
                  {
                    goto LABEL_31;
                  }
                }

                v42 = NAN;
                if (v40 != -INFINITY)
                {
                  v42 = INFINITY;
                  v43 = v41 == INFINITY || v40 == INFINITY;
                  v44 = v40 + v41;
                  if (!v43)
                  {
                    v42 = v44;
                  }
                }

LABEL_31:
                *&v77 = v42;
                if (fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v67, &v65, &v77) || v62 != -1 && (*(*a2 + 160))(a2) >= v62)
                {
                  goto LABEL_115;
                }

                v45 = v39 + 1;
                while (v45 >= (v69 - __p) >> 2)
                {
                  LODWORD(v77) = 0;
                  std::vector<int>::push_back[abi:ne200100](&__p, &v77);
                }

                v46 = *(__p + v45) + 1;
                *(__p + v45) = v46;
                if (v39 == -1)
                {
                  v51 = (*(*a2 + 24))(a2);
                  v77 = 0;
                  LODWORD(v78) = 0;
                  HIDWORD(v78) = v37;
                  (*(*a2 + 208))(a2, v51, &v77);
                  LODWORD(v89) = 0;
                  v90 = 0u;
                  v91 = 0u;
                  v92 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  while (1)
                  {
                    LODWORD(v77) = (*(*a2 + 32))(a2, v37);
                    LODWORD(v64) = 2139095040;
                    if (*&v77 != INFINITY)
                    {
                      v54 = std::__hash_table<std::__hash_value_type<std::vector<int>,Path>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,VectorIntHash,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,std::equal_to<std::vector<int>>,VectorIntHash,true>,std::allocator<std::__hash_value_type<std::vector<int>,Path>>>::find<std::vector<int>>(a6, &v94 + 1);
                      if (v54)
                      {
                        if (v60)
                        {
                          LODWORD(v77) = *(v54 + 10);
                          LODWORD(v64) = v89;
                          *(v54 + 10) = fst::Plus<float>(&v77, &v64);
                        }

                        goto LABEL_104;
                      }

                      std::pair<std::vector<int>,Path>::pair[abi:ne200100]<std::vector<int>&,Path&,0>(&v77, &v94 + 1, &v89);
                      std::__hash_table<std::__hash_value_type<std::vector<int>,Path>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,VectorIntHash,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,std::equal_to<std::vector<int>>,VectorIntHash,true>,std::allocator<std::__hash_value_type<std::vector<int>,Path>>>::__emplace_unique_key_args<std::vector<int>,std::pair<std::vector<int>,Path>>(a6, &v77);
                      if (v87)
                      {
                        v88 = v87;
                        operator delete(v87);
                      }

                      if (v85)
                      {
                        v86 = v85;
                        operator delete(v85);
                      }

                      if (v83)
                      {
                        v84 = v83;
                        operator delete(v83);
                      }

                      if (v81)
                      {
                        v82 = v81;
                        operator delete(v81);
                      }

                      if (v77)
                      {
                        v78 = v77;
                        operator delete(v77);
                      }

                      std::vector<std::vector<int>>::push_back[abi:ne200100]((a6 + 5), &v94 + 1);
                      if (0xAAAAAAAAAAAAAAABLL * ((a6[6] - a6[5]) >> 3) >= a5)
                      {
                        v59 = 0;
                        v58 = 5;
                      }

                      else
                      {
LABEL_104:
                        v58 = 0;
                        v59 = 1;
                      }

                      if (*(&v94 + 1))
                      {
                        *&v95 = *(&v94 + 1);
                        operator delete(*(&v94 + 1));
                      }

                      if (v93)
                      {
                        *(&v93 + 1) = v93;
                        operator delete(v93);
                      }

                      if (*(&v91 + 1))
                      {
                        *&v92 = *(&v91 + 1);
                        operator delete(*(&v91 + 1));
                      }

                      if (v90)
                      {
                        *(&v90 + 1) = v90;
                        operator delete(v90);
                      }

                      if ((v59 & 1) == 0)
                      {
                        goto LABEL_116;
                      }

                      if (*(__p + v45) == v61)
                      {
LABEL_128:
                        fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2);
                      }

LABEL_115:
                      v58 = 4;
                      goto LABEL_116;
                    }

                    v81 = 0;
                    (*(*a2 + 136))(a2, v37, &v77);
                    while (1)
                    {
                      if (!v77)
                      {
                        if (v81 >= v79)
                        {
                          goto LABEL_73;
                        }

LABEL_67:
                        v52 = (v78 + 16 * v81);
                        goto LABEL_68;
                      }

                      if ((*(*v77 + 24))(v77))
                      {
                        break;
                      }

                      if (!v77)
                      {
                        goto LABEL_67;
                      }

                      v52 = (*(*v77 + 32))();
LABEL_68:
                      v37 = v52[3];
                      v53 = VetoPathFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Extend(a6, &v89, v52);
                      if (v77)
                      {
                        (*(*v77 + 40))(v77, v53);
                      }

                      else
                      {
                        ++v81;
                      }
                    }

                    if (v77)
                    {
                      (*(*v77 + 8))();
                    }

                    else
                    {
LABEL_73:
                      if (v80)
                      {
                        --*v80;
                      }
                    }
                  }
                }

                if (v46 > v61)
                {
                  goto LABEL_115;
                }

                v81 = 0;
                (*(*a1 + 136))(a1, v39, &v77);
                while (1)
                {
                  if (!v77)
                  {
                    if (v81 >= v79)
                    {
                      goto LABEL_80;
                    }

LABEL_46:
                    v47 = (v78 + 16 * v81);
                    goto LABEL_47;
                  }

                  if ((*(*v77 + 24))(v77))
                  {
                    break;
                  }

                  if (!v77)
                  {
                    goto LABEL_46;
                  }

                  v47 = (*(*v77 + 32))();
LABEL_47:
                  v48 = *v47;
                  v64 = *v47;
                  v49 = NAN;
                  if (v40 != -INFINITY && *(&v48 + 2) != -INFINITY)
                  {
                    if (*(&v48 + 2) == INFINITY || v40 == INFINITY)
                    {
                      v49 = INFINITY;
                    }

                    else
                    {
                      v49 = v40 + *(&v48 + 2);
                    }
                  }

                  v63 = (*(*a2 + 200))(a2);
                  v89 = __PAIR64__(LODWORD(v49), HIDWORD(v64));
                  std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v73, &v89);
                  HIDWORD(v64) = v37;
                  (*(*a2 + 208))(a2, v63, &v64);
                  std::vector<int>::push_back[abi:ne200100](v71, &v63);
                  v89 = &v73;
                  *&v90 = a3;
                  DWORD2(v90) = -1;
                  *(&v90 + 3) = a9;
                  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v71[0], v71[1], &v89, (v71[1] - v71[0]) >> 2);
                  if (v77)
                  {
                    (*(*v77 + 40))(v77);
                  }

                  else
                  {
                    ++v81;
                  }
                }

                if (v77)
                {
                  (*(*v77 + 8))();
                }

                else
                {
LABEL_80:
                  if (v80)
                  {
                    --*v80;
                  }
                }

                v55 = (*(*a1 + 32))(a1, v39);
                *&v77 = v55;
                LODWORD(v89) = 2139095040;
                if (v55 != INFINITY)
                {
                  v56 = NAN;
                  if (v40 != -INFINITY && v55 != -INFINITY)
                  {
                    if (v55 == INFINITY || v40 == INFINITY)
                    {
                      v56 = INFINITY;
                    }

                    else
                    {
                      v56 = v40 + v55;
                    }
                  }

                  LODWORD(v89) = (*(*a2 + 200))(a2);
                  LODWORD(v77) = -1;
                  *(&v77 + 1) = v56;
                  std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v73, &v77);
                  v77 = 0;
                  v78 = __PAIR64__(v37, LODWORD(v55));
                  (*(*a2 + 208))(a2, v89, &v77);
                  std::vector<int>::push_back[abi:ne200100](v71, &v89);
                  v77 = &v73;
                  v78 = a3;
                  LODWORD(v79) = -1;
                  *(&v79 + 1) = a9;
                  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v71[0], v71[1], &v77, (v71[1] - v71[0]) >> 2);
                }

                v58 = 0;
LABEL_116:
                if (v58 == 5)
                {
                  goto LABEL_128;
                }
              }
            }
          }
        }
      }
    }

    if ((*(*a1 + 64))(a1, 4, 0, v21))
    {
      (*(*a2 + 192))(a2, 4, 4);
    }

    if (__p)
    {
      v69 = __p;
      operator delete(__p);
    }

    if (v71[0])
    {
      v71[1] = v71[0];
      operator delete(v71[0]);
    }

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }
  }
}

void sub_1B5A35764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  Path::~Path((v29 - 240));
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

float VetoPathFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Extend(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = a3 + 1;
  v5 = a3[1];
  if (*a3 || (v14 = *(a3 + 2), v13[1] = 0, result = v14, v14 != 0.0))
  {
    v8 = *(a1 + 64);
    v11 = *(v8 + 8);
    v9 = v8 + 8;
    v10 = v11;
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = v9;
    do
    {
      if (*(v10 + 28) >= v5)
      {
        v12 = v10;
      }

      v10 = *(v10 + 8 * (*(v10 + 28) < v5));
    }

    while (v10);
    if (v12 == v9 || v5 < *(v12 + 28))
    {
LABEL_10:
      std::vector<int>::push_back[abi:ne200100]((a2 + 80), a3 + 1);
    }

    std::vector<int>::push_back[abi:ne200100]((a2 + 32), a3);
    std::vector<int>::push_back[abi:ne200100]((a2 + 56), v6);
    v13[0] = a3[2];
    std::vector<float>::push_back[abi:ne200100]((a2 + 8), v13);
    result = *(a3 + 2) + *a2;
    *a2 = result;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::vector<int>,Path>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,VectorIntHash,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,std::equal_to<std::vector<int>>,VectorIntHash,true>,std::allocator<std::__hash_value_type<std::vector<int>,Path>>>::find<std::vector<int>>(void *a1, const void **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = 0;
  v5 = v2 - *a2;
  if (v2 != *a2)
  {
    v6 = v5 >> 2;
    if ((v5 >> 2) <= 1)
    {
      v6 = 1;
    }

    v7 = *a2;
    do
    {
      v8 = *v7++;
      v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + v8;
      --v6;
    }

    while (v6);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v4;
    if (v4 >= *&v9)
    {
      v12 = v4 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v4;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v15 == v4)
      {
        v16 = v14[2];
        if (v14[3] - v16 == v5 && !memcmp(v16, v3, v5))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v9)
          {
            v15 %= *&v9;
          }
        }

        else
        {
          v15 &= *&v9 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

void *std::__hash_table<std::__hash_value_type<std::vector<int>,Path>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,VectorIntHash,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,std::equal_to<std::vector<int>>,VectorIntHash,true>,std::allocator<std::__hash_value_type<std::vector<int>,Path>>>::__emplace_unique_key_args<std::vector<int>,std::pair<std::vector<int>,Path>>(void *a1, const void **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = 0;
  v5 = v2 - *a2;
  if (v2 != *a2)
  {
    v6 = v5 >> 2;
    if ((v5 >> 2) <= 1)
    {
      v6 = 1;
    }

    v7 = *a2;
    do
    {
      v8 = *v7++;
      v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + v8;
      --v6;
    }

    while (v6);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v4;
    if (v4 >= *&v9)
    {
      v12 = v4 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v4;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    std::__hash_table<std::__hash_value_type<std::vector<int>,Path>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,VectorIntHash,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,std::equal_to<std::vector<int>>,VectorIntHash,true>,std::allocator<std::__hash_value_type<std::vector<int>,Path>>>::__construct_node_hash<std::pair<std::vector<int>,Path>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v4)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  v16 = v14[2];
  if (v14[3] - v16 != v5 || memcmp(v16, v3, v5))
  {
    goto LABEL_23;
  }

  return v14;
}

void sub_1B5A35D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,Path>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,Path>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[15];
    if (v3)
    {
      __p[16] = v3;
      operator delete(v3);
    }

    v4 = __p[12];
    if (v4)
    {
      __p[13] = v4;
      operator delete(v4);
    }

    v5 = __p[9];
    if (v5)
    {
      __p[10] = v5;
      operator delete(v5);
    }

    v6 = __p[6];
    if (v6)
    {
      __p[7] = v6;
      operator delete(v6);
    }

    v7 = __p[2];
    if (v7)
    {
      __p[3] = v7;
      operator delete(v7);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::pair<std::vector<int>,Path>::pair[abi:ne200100]<std::vector<int>&,Path&,0>(void *a1, uint64_t *a2, const Path *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  Path::Path((a1 + 3), a3);
  return a1;
}

void sub_1B5A35F50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Path::Path(Path *this, const Path *a2)
{
  *this = *a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 8, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 80, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
}

void sub_1B5A3602C(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[8] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[5] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[2] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

float fst::Plus<float>(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 != INFINITY)
  {
    if (v3 == INFINITY)
    {
      return *a1;
    }

    else if (v2 <= v3)
    {
      v5 = expf(-(v3 - v2));
      return v2 - logf(v5 + 1.0);
    }

    else
    {
      v4 = expf(-(v2 - v3));
      return v3 - logf(v4 + 1.0);
    }
  }

  return v3;
}

void *std::__hash_table<std::__hash_value_type<std::vector<int>,Path>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,VectorIntHash,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,std::equal_to<std::vector<int>>,VectorIntHash,true>,std::allocator<std::__hash_value_type<std::vector<int>,Path>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(void *a1, const void **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = 0;
  v5 = v2 - *a2;
  if (v2 != *a2)
  {
    v6 = v5 >> 2;
    if ((v5 >> 2) <= 1)
    {
      v6 = 1;
    }

    v7 = *a2;
    do
    {
      v8 = *v7++;
      v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + v8;
      --v6;
    }

    while (v6);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v4;
    if (v4 >= *&v9)
    {
      v12 = v4 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v4;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    std::__hash_table<std::__hash_value_type<std::vector<int>,Path>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,VectorIntHash,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,Path>,std::equal_to<std::vector<int>>,VectorIntHash,true>,std::allocator<std::__hash_value_type<std::vector<int>,Path>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v4)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  v16 = v14[2];
  if (v14[3] - v16 != v5 || memcmp(v16, v3, v5))
  {
    goto LABEL_23;
  }

  return v14;
}

void sub_1B5A36394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,Path>,void *>>>::operator()[abi:ne200100](&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5A3645C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,Path>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<PathData>::__emplace_back_slow_path<std::vector<int> const&,float &>(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PathData>>(a1, v8);
  }

  v15 = 0;
  v16 = 32 * v3;
  std::allocator<PathData>::construct[abi:ne200100]<PathData,std::vector<int> const&,float &>(a1, 32 * v3, a2, a3);
  v17 = (32 * v3 + 32);
  v9 = a1[1];
  v10 = 32 * v3 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PathData>,PathData*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(&v15);
  return v14;
}

void sub_1B5A36580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<PathData>::construct[abi:ne200100]<PathData,std::vector<int> const&,float &>(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a3, a3[1], (a3[1] - *a3) >> 2);
  v6 = *a4;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2, __p, v8, (v8 - __p) >> 2);
  *(a2 + 24) = v6;
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_1B5A36618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::WeightConvertMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 224))(a2);
  v4 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v4);
  v5 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v5);
  v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    if ((v6 & 4) != 0)
    {
      v13 = *(*a2 + 192);

      return v13(a2, 4, 4);
    }

    return result;
  }

  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1) != 0;
    (*(*a2 + 248))(a2, v8);
  }

  LODWORD(v17) = 0;
  (*(*a1 + 128))(a1, &v15);
  while (!v15)
  {
    if (v17 >= v16)
    {
      goto LABEL_14;
    }

LABEL_9:
    (*(*a2 + 200))(a2);
    if (v15)
    {
      (*(*v15 + 32))(v15);
    }

    else
    {
      LODWORD(v17) = v17 + 1;
    }
  }

  if (!(*(*v15 + 16))(v15))
  {
    goto LABEL_9;
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

LABEL_14:
  v22 = 0;
  (*(*a1 + 128))(a1, &v20);
  while (2)
  {
    if (!v20)
    {
      if (v22 >= v21)
      {
        goto LABEL_42;
      }

      goto LABEL_20;
    }

    if (!(*(*v20 + 16))(v20))
    {
      if (v20)
      {
        v9 = (*(*v20 + 24))();
        goto LABEL_21;
      }

LABEL_20:
      v9 = v22;
LABEL_21:
      if (v9 == (*(*a1 + 24))(a1))
      {
        (*(*a2 + 176))(a2, v9);
      }

      v10 = (*(*a1 + 40))(a1, v9);
      (*(*a2 + 256))(a2, v9, v10);
      v19 = 0;
      (*(*a1 + 136))(a1, v9, &v15);
LABEL_24:
      if (v15)
      {
        if ((*(*v15 + 24))(v15))
        {
          if (v15)
          {
            (*(*v15 + 8))();
            goto LABEL_37;
          }

LABEL_35:
          if (v18)
          {
            --*v18;
          }

LABEL_37:
          (*(*a1 + 32))(a1, v9);
          (*(*a2 + 184))(a2, v9);
          if (v20)
          {
            (*(*v20 + 32))(v20);
          }

          else
          {
            ++v22;
          }

          continue;
        }

        if (v15)
        {
          v11 = (*(*v15 + 32))();
          goto LABEL_30;
        }
      }

      else if (v19 >= v17)
      {
        goto LABEL_35;
      }

      v11 = (v16 + 16 * v19);
LABEL_30:
      v14 = *v11;
      (*(*a2 + 208))(a2, v9, &v14);
      if (v15)
      {
        (*(*v15 + 40))(v15);
      }

      else
      {
        ++v19;
      }

      goto LABEL_24;
    }

    break;
  }

  if (v20)
  {
    (*(*v20 + 8))();
  }

LABEL_42:
  v12 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  return (*(*a2 + 192))(a2, v12 | v6, 0x3FFFFFFF0007);
}

void sub_1B5A36D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::NaturalLess<fst::LogWeightTpl<float>>::NaturalLess(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v12, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "NaturalLess: Weight type is not idempotent: ", 44);
  v5 = fst::LogWeightTpl<float>::Type();
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  fst::LogMessage::~LogMessage(&v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1B5A36F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::Prune<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v3 = fst::LogMessage::LogMessage(&v14, __p);
  v4 = fst::cerr(v3);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Prune: Weight needs to have the path property and", 49);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " be commutative: ", 17);
  v7 = fst::LogWeightTpl<float>::Type();
  v8 = *(v7 + 23);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *v7;
  }

  if (v8 >= 0)
  {
    v10 = *(v7 + 23);
  }

  else
  {
    v10 = *(v7 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v9, v10);
  fst::LogMessage::~LogMessage(&v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*a2 + 192))(a2, 4, 4);
}

void sub_1B5A37070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::DeterminizeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::DeterminizeFst<fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D3E9C8;
  a1[1] = 0;
  if (!(*(*a2 + 64))(a2, 0x10000, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v3 = fst::LogMessage::LogMessage(&v8, __p);
    v4 = fst::cerr(v3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "DeterminizeFst:", 15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " distance to final states computed for acceptors only", 53);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1[1] + 8) |= 4uLL;
  }

  operator new();
}

void sub_1B5A37258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(v18);
  _Unwind_Resume(a1);
}

void *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D3EAA8;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void fst::DeterminizeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizeFst(void *a1)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B5A377E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizeFstImplBase(void *a1)
{
  *a1 = &unk_1F2D3EBE0;
  v2 = a1[17];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Expand(void *a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::GetLabelMap(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::AddArc(a1, a2, v4 + 5);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v9);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  std::__tree<int>::destroy(&v8, v9[0]);
}

uint64_t fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::ComputeStart(uint64_t a1)
{
  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if (result != -1)
  {
    operator new();
  }

  return result;
}

float fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::ComputeFinal(uint64_t a1, int a2)
{
  v2 = **(*(*(a1 + 184) + 88) + 8 * a2);
  if (v2)
  {
    v4 = INFINITY;
    while (1)
    {
      (*(**(a1 + 136) + 32))(*(a1 + 136), *(v2 + 2));
      v6 = v2[3];
      if (v6 != -INFINITY && v5 != -INFINITY)
      {
        break;
      }

      v9 = NAN;
      if (v4 != INFINITY)
      {
        goto LABEL_15;
      }

LABEL_20:
      *(a1 + 8) |= 4uLL;
LABEL_21:
      v2 = *v2;
      v4 = v9;
      if (!v2)
      {
        return v9;
      }
    }

    v7 = v5 == INFINITY || v6 == INFINITY;
    v8 = v6 + v5;
    if (v7)
    {
      v9 = INFINITY;
    }

    else
    {
      v9 = v8;
    }

    if (v4 != INFINITY)
    {
      if (v9 == INFINITY)
      {
        v9 = v4;
      }

      else
      {
LABEL_15:
        if (v4 <= v9)
        {
          v11 = expf(-(v9 - v4));
          v9 = v4 - logf(v11 + 1.0);
        }

        else
        {
          v10 = expf(-(v4 - v9));
          v9 = v9 - logf(v10 + 1.0);
        }
      }
    }

    if (v9 < -INFINITY || v9 > -INFINITY)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  return INFINITY;
}

void *fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::CompactHashBiTable(void *a1, size_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), a2, a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  if (a2)
  {
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 10, a2);
  }

  return a1;
}

void sub_1B5A37F5C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  *a1 = &unk_1F2D3EB58;
  v2 = a1[22];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[23];
  if (v3)
  {
    v4 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(v3);
    MEMORY[0x1B8C85350](v4, 0x10E0C400200E20DLL);
  }

  return fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizeFstImplBase(a1);
}

void sub_1B5A38220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_1B5A383B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::GetLabelMap(void *a1, int a2, void *a3)
{
  v5 = **(*(a1[23] + 88) + 8 * a2);
  if (v5)
  {
    while (1)
    {
      v6 = *(v5 + 2);
      v7 = a1[17];
      v22 = 0;
      (*(*v7 + 136))(v7, v6, v20);
      if (!v20[0])
      {
        break;
      }

      if (!(*(*v20[0] + 24))(v20[0]))
      {
        if (v20[0])
        {
          v8 = (*(*v20[0] + 32))();
        }

        else
        {
LABEL_7:
          v8 = v20[1] + 16 * v22;
        }

        v9 = v5[3];
        v10 = NAN;
        if (v9 != -INFINITY)
        {
          v11 = *(v8 + 8);
          v10 = NAN;
          if (v11 != -INFINITY)
          {
            v10 = INFINITY;
            v12 = v11 == INFINITY || v9 == INFINITY;
            v13 = v9 + v11;
            if (!v12)
            {
              v10 = v13;
            }
          }
        }

        v19[0] = *(v8 + 12);
        *&v19[1] = v10;
        fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FilterArc(a1[22], v8, (v5 + 2), v19, a3);
      }

      if (!v20[0])
      {
        goto LABEL_18;
      }

      (*(*v20[0] + 8))();
LABEL_20:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_21;
      }
    }

    if (v22 < v20[2])
    {
      goto LABEL_7;
    }

LABEL_18:
    if (v21)
    {
      --*v21;
    }

    goto LABEL_20;
  }

LABEL_21:
  v16 = *a3;
  v14 = a3 + 1;
  v15 = v16;
  if (v16 != v14)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::NormArc(a1, (v15 + 5));
      v17 = v15[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v15[2];
          v12 = *v18 == v15;
          v15 = v18;
        }

        while (!v12);
      }

      v15 = v18;
    }

    while (v18 != v14);
  }
}

void sub_1B5A38634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  else if (a13)
  {
    --*a13;
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::AddArc(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *a3;
  LODWORD(v7) = *a3;
  *(&v7 + 4) = v5;
  HIDWORD(v7) = fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::FindState(a1, a3[1]);
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v7);
}

void fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::NormArc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  std::forward_list<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::sort[abi:ne200100](v4);
  v5 = *v4;
  if (*v4)
  {
    v6 = (a2 + 4);
    v7 = *v4;
    do
    {
      *v6 = fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>::operator()(a1 + 168, v6, v7 + 3);
      if (v5 == v7 || *(v7 + 2) != *(v5 + 2))
      {
        v10 = *v7;
        v5 = v7;
      }

      else
      {
        v8 = *(v5 + 3);
        v9 = *(v7 + 3);
        if (v8 != INFINITY)
        {
          if (v9 == INFINITY)
          {
            v9 = *(v5 + 3);
          }

          else if (v8 <= v9)
          {
            v12 = expf(-(v9 - v8));
            v9 = v8 - logf(v12 + 1.0);
          }

          else
          {
            v11 = expf(-(v8 - v9));
            v9 = v9 - logf(v11 + 1.0);
          }
        }

        *(v5 + 3) = v9;
        if (v9 >= -INFINITY && v9 <= -INFINITY)
        {
          *(a1 + 8) |= 4uLL;
        }

        v10 = *v7;
        v13 = *v5;
        *v5 = **v5;
        operator delete(v13);
      }

      v7 = v10;
    }

    while (v10);
    for (i = *v4; i; i = *i)
    {
      v15 = *(i + 3);
      v16 = NAN;
      if (v15 != -INFINITY)
      {
        if ((*v6 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v16 = INFINITY;
          if (v15 != INFINITY)
          {
            v16 = v15 - *v6;
          }
        }

        else
        {
          v16 = NAN;
        }
      }

      *(i + 3) = v16;
      if ((LODWORD(v16) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v16 = *(a1 + 144) * floorf((v16 / *(a1 + 144)) + 0.5);
      }

      *(i + 3) = v16;
    }
  }
}

float fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>::operator()(uint64_t a1, float *a2, float *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 != INFINITY)
  {
    if (v4 == INFINITY)
    {
      return *a2;
    }

    else if (v3 <= v4)
    {
      v6 = expf(-(v4 - v3));
      return v3 - logf(v6 + 1.0);
    }

    else
    {
      v5 = expf(-(v3 - v4));
      return v4 - logf(v5 + 1.0);
    }
  }

  return v4;
}

uint64_t fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::FindState(uint64_t a1, float **a2)
{
  State = fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::FindState(*(a1 + 184), a2);
  v5 = State;
  if (*(a1 + 152))
  {
    v6 = *(a1 + 160);
    if (State >= ((v6[1] - *v6) >> 2))
    {
      v8 = fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::ComputeDistance(a1, a2);
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v6, &v8);
    }
  }

  return v5;
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::FindState(void *a1, void **a2)
{
  v8 = a2;
  v2 = (a1[12] - a1[11]) >> 3;
  Id = fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(a1 + 1, &v8, 1);
  if (Id != v2)
  {
    v4 = v8;
    if (v8)
    {
      v5 = *v8;
      if (*v8)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      *v4 = 0;
      MEMORY[0x1B8C85350](v4, 0x1020C405F07FB98);
    }
  }

  return Id;
}

float fst::DeterminizeFsaImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::ComputeDistance(uint64_t a1, float **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 152);
    v4 = *v3;
    v5 = (v3[1] - *v3) >> 2;
    v6 = INFINITY;
    while (1)
    {
      v7 = *(v2 + 2);
      if (v5 <= v7)
      {
        v8 = INFINITY;
      }

      else
      {
        v8 = *(v4 + 4 * v7);
      }

      v9 = v2[3];
      if (v9 == -INFINITY || v8 == -INFINITY)
      {
        v12 = NAN;
        if (v6 != INFINITY)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v10 = v9 == INFINITY || v8 == INFINITY;
        v11 = v8 + v9;
        if (v10)
        {
          v12 = INFINITY;
        }

        else
        {
          v12 = v11;
        }

        if (v6 == INFINITY)
        {
          goto LABEL_21;
        }

        if (v12 != INFINITY)
        {
LABEL_18:
          if (v6 <= v12)
          {
            v14 = expf(-(v12 - v6));
            v12 = v6 - logf(v14 + 1.0);
          }

          else
          {
            v13 = expf(-(v6 - v12));
            v12 = v12 - logf(v13 + 1.0);
          }

          goto LABEL_21;
        }

        v12 = v6;
      }

LABEL_21:
      v2 = *v2;
      v6 = v12;
      if (!v2)
      {
        return v12;
      }
    }
  }

  return INFINITY;
}

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(void *a1, void *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
  if (v6)
  {
    return *(v6 + 4);
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1[10];
  v9 = a1[11];
  v10 = a1[12];
  v11 = (v9 - v8) >> 3;
  v20 = v11;
  if (v9 >= v10)
  {
    if ((v11 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = v10 - v8;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v11 + 1))
    {
      v14 = v11 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 10), v15);
    }

    *(8 * v11) = *a2;
    v12 = 8 * v11 + 8;
    v16 = a1[10];
    v17 = a1[11] - v16;
    v18 = (8 * v11 - v17);
    memcpy(v18, v16, v17);
    v19 = a1[10];
    a1[10] = v18;
    a1[11] = v12;
    a1[12] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v9 = *a2;
    v12 = (v9 + 1);
  }

  a1[11] = v12;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v20);
  return v20;
}

uint64_t fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(*a1 + 56))(a1);
      if (v2 != -1)
      {
        *(a1 + 64) = v2;
        *(a1 + 60) = 1;
        if (*(a1 + 68) <= v2)
        {
          *(a1 + 68) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 64);
}

float fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Final(uint64_t *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v4 = (*(*a1 + 64))(a1, a2);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(a1[15], a2);
    *MutableState = v4;
    *(MutableState + 12) |= 9u;
  }

  v6 = a1[15];
  if (*(v6 + 76) == a2)
  {
    v7 = v6 + 80;
  }

  else
  {
    v7 = *(v6 + 8) + 8 * a2 + 8;
  }

  return **v7;
}

uint64_t fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 16);
}

void *fst::DeterminizeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::DeterminizeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D3E9C8;
  a1[1] = 0;
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = (*(*v4 + 40))(v4);
    v6 = a1[1];
    if (v6)
    {
      v7 = v6[14] - 1;
      v6[14] = v7;
      if (!v7)
      {
        (*(*v6 + 8))(v6);
      }
    }

    a1[1] = v5;
  }

  else
  {
    fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

uint64_t fst::CacheStateIterator<fst::DeterminizeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 68))
  {
    return 0;
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 68))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::DeterminizeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 68) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 68);
    --*(v19 + 52);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 68));
  return v4;
}

uint64_t *fst::ArcIterator<fst::DeterminizeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 52);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

void fst::DeterminizeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::DeterminizeFst<fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D3E9C8;
  a1[1] = 0;
  fst::DeterminizeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Init<fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>(a1, a2, a3);
}

void fst::DeterminizeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Init<fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 64))(a2, 0x10000, 1))
  {
    operator new();
  }

  v5 = *(a3 + 24);
  if (v5)
  {
    if (v5 == 2)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v6 = fst::LogMessage::LogMessage(&v16, __p);
      v7 = fst::cerr(v6);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "DeterminizeFst: Weight needs to have the ", 41);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "path property to disambiguate output: ", 38);
      v10 = fst::LogWeightTpl<float>::Type();
      v11 = *(v10 + 23);
      if (v11 >= 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = *v10;
      }

      if (v11 >= 0)
      {
        v13 = *(v10 + 23);
      }

      else
      {
        v13 = *(v10 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v12, v13);
      fst::LogMessage::~LogMessage(&v16);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      *(*(a1 + 8) + 8) |= 4uLL;
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B5A395F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B5A39768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v15 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizeFstImplBase(v14);
  _Unwind_Resume(a1);
}

void sub_1B5A398F4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x20C4093837F09);
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst((v2 - 48));
  _Unwind_Resume(a1);
}

void fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(void *a1)
{
  fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::~DeterminizeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0)))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::DeterminizeFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>::Expand(uint64_t a1, int a2)
{
  fst::ArcIterator<fst::ArcMapFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::ArcIterator(&v9, *(a1 + 160), a2);
  v4 = v9;
  for (i = v10; ; i = ++v10)
  {
    v6 = *(v4 + 24);
    if (i >= (*(v4 + 32) - v6) >> 4)
    {
      break;
    }

    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, (v6 + 16 * i));
    v4 = v9;
  }

  --*(v4 + 52);
  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B5A39F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5A3A05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Init(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "map");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v2 = (*(**(a1 + 136) + 112))(*(a1 + 136));
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v2);
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 48) = 0;
  }

  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  *(a1 + 156) = 0;
  if (result == -1)
  {
    *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950000;
  }

  else
  {
    v5 = (*(**(a1 + 136) + 64))(*(a1 + 136), 0x3FFFFFFF0004, 0);
    result = fst::ProjectProperties(v5, 1);
    *(a1 + 8) = *(a1 + 8) & 4 | result & 0x3FFCFFFF0007;
    if (*(a1 + 156) == 2)
    {
      *(a1 + 160) = 0;
    }
  }

  return result;
}

void sub_1B5A3A354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (fst::ProjectProperties(0, 1) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D3EF10;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D3EED8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

{
  *a1 = &unk_1F2D3EF10;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D3EED8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B5A3A574(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D3EF10;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>::VectorCacheStore(void *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a1 + 4;
  a1[5] = a1 + 4;
  a1[6] = 0;
  a1[7] = 0;
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  a1[7] = a1[5];
  return a1;
}

void sub_1B5A3A740(_Unwind_Exception *a1)
{
  v4 = v3;
  std::__list_imp<char *>::clear(v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D3EED8;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~FstImpl(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>::~VectorCacheStore(void *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  std::__list_imp<char *>::clear(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D3EE48;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 144);
    if (v3)
    {
      MEMORY[0x1B8C85350](v3, 0xC400A2AC0F1);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v3 = *(a1 + 160);
      if (v3 != -1 && v3 <= v2)
      {
        v5 = v2 + 1;
      }

      else
      {
        v5 = v2;
      }

      if (v5 >= *(a1 + 164))
      {
        *(a1 + 164) = v5 + 1;
      }

      *(a1 + 64) = v5;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= v5)
      {
        *(a1 + 68) = v5 + 1;
      }
    }
  }

  return *(a1 + 64);
}

void *fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = *(a1 + 156);
    if (v6 == 1)
    {
      v8 = *(a1 + 160);
      if (v8 != a2)
      {
        v20 = v8 != -1 && v8 <= a2;
        v21 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v20));
        v40 = 0;
        v41 = v21;
        v42 = -1;
        fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(&v40, &v45);
        if (v45)
        {
          v23 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
          v28 = *v23;
          v22 = v29;
          std::list<int>::list(v29, (v23 + 2));
          v30 = v23[8];
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v28);
        }

        else
        {
          v31 = v46;
          v22 = v32;
          std::list<int>::list(v32, v47);
          v33 = v48;
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v31);
        }

        std::__list_imp<char *>::clear(v22);
        v18 = v47;
        goto LABEL_35;
      }

      v9 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::One();
      v34 = *v9;
      v10 = &v34;
      std::list<int>::list(v35, (v9 + 2));
      v36 = v9[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v34);
    }

    else
    {
      if (v6 != 2)
      {
        v11 = *(a1 + 160);
        v13 = v11 != -1 && v11 <= a2;
        v14 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v13));
        v40 = 0;
        v41 = v14;
        v42 = -1;
        fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(&v40, &v45);
        if (v45)
        {
          if (FLAGS_fst_error_fatal == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(&v40, "FATAL");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v40, "ERROR");
          }

          v15 = fst::LogMessage::LogMessage(&v44, &v40);
          v16 = fst::cerr(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "ArcMapFst: non-zero arc labels for superfinal arc", 49);
          fst::LogMessage::~LogMessage(&v44);
          if (v43 < 0)
          {
            operator delete(v40);
          }

          *(a1 + 8) |= 4uLL;
        }

        v37 = v46;
        std::list<int>::list(v38, v47);
        v39 = v48;
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v37);
        std::__list_imp<char *>::clear(v38);
        v18 = v47;
        goto LABEL_35;
      }

      if (*(a1 + 160) == a2)
      {
        v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::One();
      }

      else
      {
        v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
      }

      v17 = v7;
      v25 = *v7;
      v10 = &v25;
      std::list<int>::list(v26, (v7 + 2));
      v27 = v17[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v25);
    }

    v18 = v10 + 2;
LABEL_35:
    std::__list_imp<char *>::clear(v18);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final(a1, a2, a3);
}

void sub_1B5A3ACD0(_Unwind_Exception *a1)
{
  fst::LogMessage::~LogMessage((v1 - 105));
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  std::__list_imp<char *>::clear((v1 - 88));
  _Unwind_Resume(a1);
}

void *fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()@<X0>(float *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 3) == -1)
  {
    v30 = a1[2];
    v29[8] = 2139095040;
    if (v30 == INFINITY)
    {
      v12 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
      v23 = *v12;
      v7 = v24;
      std::list<int>::list(v24, (v12 + 2));
      v25 = v12[8];
      *a2 = 0;
      *(a2 + 8) = v23;
      std::list<int>::list((a2 + 16), v24);
      *(a2 + 40) = v25;
      *(a2 + 48) = -1;
      return std::__list_imp<char *>::clear(v7);
    }

    v8 = fst::StringWeight<int,(fst::StringType)2>::One();
    v26 = *v8;
    v7 = v27;
    std::list<int>::list(v27, (v8 + 2));
    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v28, &v26, a1[2]);
    *a2 = 0;
    *(a2 + 8) = v28;
    std::list<int>::list((a2 + 16), v29);
    *(a2 + 40) = v29[6];
    *(a2 + 48) = -1;
    v9 = v29;
    goto LABEL_7;
  }

  v5 = *a1;
  v4 = *(a1 + 1);
  if (!v4)
  {
    v10 = fst::StringWeight<int,(fst::StringType)2>::One();
    v19 = *v10;
    v7 = v20;
    std::list<int>::list(v20, (v10 + 2));
    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v21, &v19, a1[2]);
    v11 = *(a1 + 3);
    *a2 = v5;
    *(a2 + 4) = v5;
    *(a2 + 8) = v21;
    std::list<int>::list((a2 + 16), v22);
    *(a2 + 40) = v22[6];
    *(a2 + 48) = v11;
    v9 = v22;
LABEL_7:
    std::__list_imp<char *>::clear(v9);
    return std::__list_imp<char *>::clear(v7);
  }

  fst::StringWeight<int,(fst::StringType)2>::StringWeight(&v14, v4);
  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v16, &v14, a1[2]);
  v6 = *(a1 + 3);
  *a2 = v5;
  *(a2 + 4) = v5;
  *(a2 + 8) = v16;
  std::list<int>::list((a2 + 16), v17);
  *(a2 + 40) = v18;
  *(a2 + 48) = v6;
  std::__list_imp<char *>::clear(v17);
  v7 = &v15;
  return std::__list_imp<char *>::clear(v7);
}

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
  v7 = *a3;
  std::list<int>::list(v8, (a3 + 2));
  v5 = a3[8];
  v9 = v5;
  *MutableState = v7;
  if (MutableState != &v7)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((MutableState + 8), v8[1], v8);
    v5 = v9;
  }

  *(MutableState + 32) = v5;
  result = std::__list_imp<char *>::clear(v8);
  *(MutableState + 80) |= 9u;
  return result;
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::One()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::One(void)::one;
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero(void)::zero;
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::ProductWeight(a1, &v6, a3);
  std::__list_imp<char *>::clear(v7);
  return a1;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::ProductWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  *a1 = v6;
  std::list<int>::list((a1 + 8), v7);
  *(a1 + 32) = a3;
  std::__list_imp<char *>::clear(v7);
  return a1;
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 88) == 1)
  {
    v5 = *(MutableState + 80);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 80) = v5 | 4;
      v6 = *(MutableState + 64) - *(MutableState + 56) + *(a1 + 112) + 88;
      *(a1 + 112) = v6;
      *(a1 + 104) = 1;
      if (v6 > *(a1 + 96))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 76);
  if (v3 == a2)
  {
    return *(a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 76) = a2;
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 80) |= 4u;
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::reserve((MutableState + 56), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!*(v5 + 84))
    {
      *(a1 + 76) = a2;
      fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Reset(v5);
      result = *(a1 + 80);
      *(result + 80) |= 4u;
      return result;
    }

    *(v5 + 80) &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (*(a1 + 104) == 1)
  {
    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v8 = fst::LogMessage::LogMessage(v45, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GCCacheStore: Enter GC: object = ", 33);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
      v12 = MEMORY[0x1B8C84BB0](v11, a1);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "), free recently cached = ", 26);
      v14 = MEMORY[0x1B8C84BD0](v13, a3);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", cache size = ", 15);
      v16 = MEMORY[0x1B8C84C30](v15, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", cache frac = ", 15);
      v17 = std::ostream::operator<<();
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", cache limit = ", 16);
      v19 = MEMORY[0x1B8C84C30](v18, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
      fst::LogMessage::~LogMessage(v45);
      if (v50 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v20 = (*(a1 + 96) * a4);
    v21 = *(a1 + 40);
    *(a1 + 56) = v21;
    while (v21 != a1 + 32)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v22 - 1;
      }

      else
      {
        v23 = *(a1 + 76);
      }

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>::GetMutableState(a1, v23);
      v25 = *(a1 + 112);
      if (v25 > v20 && !*(MutableState + 84))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v26 = *(MutableState + 80);
LABEL_19:
            if ((v26 & 4) != 0)
            {
              v27 = *(MutableState + 64) - *(MutableState + 56) + 88;
              FstCheck(v27 <= v25, "(size) <= (cache_size_)", "../libquasar/libkaldi/tools/openfst/src/include/fst/cache.h", 730);
              *(a1 + 112) -= v27;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::Delete(a1);
            v21 = *(a1 + 56);
            continue;
          }
        }

        else
        {
          v26 = *(MutableState + 80);
          if ((v26 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 80) &= ~8u;
      v21 = *(*(a1 + 56) + 8);
      *(a1 + 56) = v21;
    }

    if ((a3 & 1) != 0 || *(a1 + 112) <= v20)
    {
      v28 = *(a1 + 112);
      if (v20)
      {
        if (v28 > v20)
        {
          v29 = *(a1 + 96);
          do
          {
            v29 *= 2;
            v30 = v28 > 2 * v20;
            v20 *= 2;
          }

          while (v30);
          *(a1 + 96) = v29;
        }
      }

      else if (v28)
      {
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        }

        v31 = fst::LogMessage::LogMessage(&v48, __p);
        v32 = fst::cerr(v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "GCCacheStore:GC: Unable to free all cached states", 49);
        fst::LogMessage::~LogMessage(&v48);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GC(a1, a2, 1, a4);
    }

    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(v45, "INFO");
      v33 = fst::LogMessage::LogMessage(&v47, v45);
      v34 = fst::cerr(v33);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "GCCacheStore: Exit GC: object = ", 32);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "(", 1);
      v37 = MEMORY[0x1B8C84BB0](v36, a1);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "), free recently cached = ", 26);
      v39 = MEMORY[0x1B8C84BD0](v38, a3);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", cache size = ", 15);
      v41 = MEMORY[0x1B8C84C30](v40, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", cache frac = ", 15);
      v42 = std::ostream::operator<<();
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ", cache limit = ", 16);
      v44 = MEMORY[0x1B8C84C30](v43, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "\n", 1);
      fst::LogMessage::~LogMessage(&v47);
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }
    }
  }
}

void sub_1B5A3B83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2 = (a1 + 8);
  if (a2 >= ((v4 - v3) >> 3))
  {
    v6 = 0;
    std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(v2, a2 + 1, &v6);
    goto LABEL_5;
  }

  if (!*(v3 + 8 * a2))
  {
LABEL_5:
    operator new();
  }

  return *(v3 + 8 * a2);
}

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Reset(uint64_t a1)
{
  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
  v3 = result;
  *a1 = *result;
  if (result != a1)
  {
    result = std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + 8), *(result + 16), result + 8);
  }

  *(a1 + 32) = *(v3 + 32);
  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      result = std::__list_imp<char *>::clear((v4 - 40));
      v4 = v6;
    }

    while (v6 != v5);
  }

  *(a1 + 64) = v5;
  return result;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B5A3BB14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = a4 + v7;
      *v9 = *(v6 + v7);
      *(v9 + 8) = *(v6 + v7 + 8);
      result = std::list<int>::list((a4 + v7 + 16), v6 + v7 + 16);
      *(v9 + 40) = *(v6 + v7 + 40);
      *(v9 + 48) = *(v6 + v7 + 48);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 16));
      v6 += 56;
    }
  }

  return result;
}

void sub_1B5A3BBC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 40);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 7;
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::One(void)::one;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::One(void)::one;
}

void sub_1B5A3BD88(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::Zero(void)::zero;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::Zero(void)::zero;
}

void sub_1B5A3BF68(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return 0x6DB6DB6DB6DB6DB7 * ((*(*v5 + 64) - *(*v5 + 56)) >> 3);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(a1, a2);
  }

  v6 = *(a1 + 136);
  v8 = v4 != -1 && v4 <= a2;
  v56 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v52);
  while (1)
  {
    if (!v52)
    {
      if (v56 >= v54)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if ((*(*v52 + 24))(v52))
    {
      break;
    }

    if (v52)
    {
      v9 = (*(*v52 + 32))();
      goto LABEL_18;
    }

LABEL_17:
    v9 = (v53 + 16 * v56);
LABEL_18:
    v66 = *v9;
    v10 = HIDWORD(v66);
    v11 = *(a1 + 160);
    if (v11 != -1 && v11 <= SHIDWORD(v66))
    {
      v10 = HIDWORD(v66) + 1;
    }

    if (v10 >= *(a1 + 164))
    {
      *(a1 + 164) = v10 + 1;
    }

    HIDWORD(v66) = v10;
    fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(&v66, &v59);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100]((MutableState + 56), &v59);
    std::__list_imp<char *>::clear(&v61);
    if (v52)
    {
      (*(*v52 + 40))(v52);
    }

    else
    {
      ++v56;
    }
  }

  if (v52)
  {
    (*(*v52 + 8))();
    goto LABEL_32;
  }

LABEL_30:
  if (v55)
  {
    --*v55;
  }

LABEL_32:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
LABEL_49:
    v24 = *(a1 + 156);
    if (v24 == 1)
    {
      v30 = *(a1 + 160);
      v32 = v30 != -1 && v30 <= a2;
      *&v33 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v32));
      v52 = 0;
      v53 = v33 | 0xFFFFFFFF00000000;
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(&v52, &v59);
      if (v59)
      {
        v34 = *(a1 + 160);
        if (v34 == -1)
        {
          v34 = *(a1 + 164);
          *(a1 + 160) = v34;
          *(a1 + 164) = v34 + 1;
        }

        v65 = v34;
        v35 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
        std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100]((v35 + 56), &v59);
      }

      v21 = &v61;
      goto LABEL_93;
    }

    if (v24 != 2)
    {
      return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(a1, a2);
    }

    v25 = *(a1 + 160);
    v27 = v25 != -1 && v25 <= a2;
    *&v28 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v27));
    v52 = 0;
    v53 = v28 | 0xFFFFFFFF00000000;
    fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(&v52, &v59);
    if (v59)
    {
      v29 = v60;
    }

    else
    {
      v36 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
      v29 = v60;
      if (v60)
      {
        v37 = v63 + 1;
      }

      else
      {
        v37 = 0;
      }

      if (*v36)
      {
        v38 = *(v36 + 24) + 1;
      }

      else
      {
        v38 = 0;
      }

      if (v37 == v38)
      {
        v39 = v62;
        v40 = (v36 + 16);
        v41 = v60 && v60 == *v36;
        v42 = !v41;
        v43 = 1;
        v44 = !v42;
        while (1)
        {
          v45 = *v40;
          if ((v43 & 1) != 0 && !v44)
          {
            break;
          }

          if (v39 == &v61)
          {
            goto LABEL_90;
          }

          if (*(v39 + 16) != *(v45 + 16))
          {
            goto LABEL_91;
          }

          v43 = 0;
          v39 = *(v39 + 8);
          v40 = (v45 + 8);
        }

        if (v60)
        {
          goto LABEL_91;
        }

LABEL_90:
        *&v52 = v64;
        LODWORD(v66) = *(v36 + 32);
        if (v64 == *&v66)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_91:
    v46 = v59;
    v49 = v29;
    std::list<int>::list(v50, &v61);
    v51 = v64;
    v47 = *(a1 + 160);
    v52 = v46;
    LODWORD(v53) = v49;
    std::list<int>::list(&v54, v50);
    v57 = v51;
    v58 = v47;
    v48 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100]((v48 + 56), &v52);
    std::__list_imp<char *>::clear(&v54);
    std::__list_imp<char *>::clear(v50);
LABEL_92:
    v21 = &v61;
    goto LABEL_93;
  }

  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Final(a1, a2, &v59);
  v14 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
  if (v59)
  {
    v15 = v62 + 1;
  }

  else
  {
    v15 = 0;
  }

  if (*v14)
  {
    v16 = *(v14 + 24) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (v15 != v16)
  {
LABEL_47:
    v21 = &v60;
LABEL_93:
    std::__list_imp<char *>::clear(v21);
    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(a1, a2);
  }

  v17 = v61;
  v18 = (v14 + 16);
  for (i = 1; ; i = 0)
  {
    v20 = *v18;
    if (i)
    {
      if (!v59)
      {
        break;
      }

      if (v59 != *v14)
      {
        goto LABEL_47;
      }
    }

    if (v17 == &v60)
    {
      break;
    }

    if (*(v17 + 16) != *(v20 + 16))
    {
      goto LABEL_47;
    }

    v17 = *(v17 + 8);
    v18 = (v20 + 8);
  }

  LODWORD(v52) = v63;
  LODWORD(v66) = *(v14 + 32);
  v22 = *&v63;
  v23 = *&v66;
  std::__list_imp<char *>::clear(&v60);
  if (v22 == v23)
  {
    goto LABEL_49;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(a1, a2);
}

void sub_1B5A3C588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = *(MutableState + 56);
  v6 = *(MutableState + 64) - v5;
  if (v6)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
    v8 = *(a1 + 68);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 48);
    do
    {
      v11 = *v9;
      v9 += 14;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 68) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  result = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(a1, a2);
  *(MutableState + 80) |= 0xAu;
  return result;
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 80) & 4) != 0)
  {
    v4 = *(a2 + 64) - *(a2 + 56) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3> const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = *(a2 + 8);
  result = std::list<int>::list((v4 + 16), a2 + 16);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(a1, v6);
  }

  v7 = 56 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  std::list<int>::list((v7 + 16), a2 + 16);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 48) = *(a2 + 48);
  *&v16 = v16 + 56;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B5A3C93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 40);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 48);
}

unint64_t fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>(a1, a2, a3, 1);
  }
}

void sub_1B5A3CB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = a1;
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v9 = v8;
  if (!a4 || (v10 = v8 & 0x3FFFFFFF0000 | (2 * v8) & 0x2AAAAAAA0000 | (v8 >> 1) & 0x155555550000 | 7, (a2 & ~v10) != 0))
  {
    v9 = v8 & 7;
    v93 = v9;
    v11 = (*(*v7 + 16))(v7);
    if ((a2 & 0xF3C00000000) != 0 && v11)
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = &v93;
      fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>(v7, &v86);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
    {
      goto LABEL_179;
    }

    v12 = a2 & 0xC0000;
    v13 = 0x10425A810000;
    if ((a2 & 0xC0000) != 0)
    {
      v13 = 0x10425A850000;
    }

    v14 = v9 | v13;
    v15 = a2 & 0x300000;
    if ((a2 & 0x300000) != 0)
    {
      v14 |= 0x100000uLL;
    }

    v93 = v14;
    memset(&v85, 0, sizeof(v85));
    memset(&v84, 0, sizeof(v84));
    v83 = 0;
    (*(*v7 + 128))(v7, &v81);
    v16 = 0;
    v75 = v7;
LABEL_12:
    if (!v81)
    {
      if (v83 >= v82)
      {
        goto LABEL_171;
      }

      goto LABEL_17;
    }

    if (!(*(*v81 + 16))(v81))
    {
      if (v81)
      {
        v17 = (*(*v81 + 24))();
LABEL_18:
        v18 = (*(*v7 + 40))(v7, v17);
        v88 = &v88;
        v89 = &v88;
        v90 = 0;
        LODWORD(v87) = 0;
        v85.__end_ = v85.__begin_;
        v84.__end_ = v84.__begin_;
        if (v12)
        {
          std::vector<int>::reserve(&v85, v18);
        }

        if (v15)
        {
          std::vector<int>::reserve(&v84, v18);
        }

        v80 = 0;
        (*(*v7 + 136))(v7, v17, &v76);
        v19 = 1;
        while (1)
        {
          if (v76)
          {
            if ((*(*v76 + 24))(v76))
            {
              if (v76)
              {
                (*(*v76 + 8))();
                goto LABEL_104;
              }

LABEL_102:
              if (v79)
              {
                --*v79;
              }

LABEL_104:
              v7 = v75;
              if (!v12 || (std::__sort<std::__less<int,int> &,int *>(), v48 = v85.__end_ - v85.__begin_, v48 < 2))
              {
LABEL_109:
                if (!v15)
                {
                  goto LABEL_118;
                }

LABEL_110:
                std::__sort<std::__less<int,int> &,int *>();
                v51 = v84.__end_ - v84.__begin_;
                if (v51 >= 2)
                {
                  v52 = v51 - 1;
                  v53 = v84.__begin_ + 1;
                  while (*v53 != *(v53 - 1))
                  {
                    ++v53;
                    if (!--v52)
                    {
                      goto LABEL_118;
                    }
                  }

                  v93 = v93 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                }

                goto LABEL_118;
              }

              v49 = v48 - 1;
              v50 = v85.__begin_ + 1;
              while (*v50 != *(v50 - 1))
              {
                ++v50;
                if (!--v49)
                {
                  goto LABEL_109;
                }
              }

              v93 = v93 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
              if (v15)
              {
                goto LABEL_110;
              }

LABEL_118:
              if (v16 >= 1)
              {
                v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              (*(*v75 + 32))(&v76, v75, v17);
              v54 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
              if (v76)
              {
                v55 = v79 + 1;
              }

              else
              {
                v55 = 0;
              }

              if (*v54)
              {
                v56 = *(v54 + 24) + 1;
              }

              else
              {
                v56 = 0;
              }

              if (v55 != v56)
              {
                goto LABEL_141;
              }

              v57 = v78;
              v58 = (v54 + 16);
              v59 = v76 && v76 == *v54;
              v60 = !v59;
              v61 = 1;
              v62 = !v60;
              while (1)
              {
                v63 = *v58;
                if ((v61 & 1) != 0 && !v62)
                {
                  break;
                }

                if (v57 == &v77)
                {
                  goto LABEL_140;
                }

                if (*(v57 + 16) != *(v63 + 16))
                {
                  goto LABEL_141;
                }

                v61 = 0;
                v57 = *(v57 + 8);
                v58 = (v63 + 8);
              }

              if (v76)
              {
                goto LABEL_141;
              }

LABEL_140:
              v95 = *&v80;
              v94 = *(v54 + 32);
              if (*&v80 == v94)
              {
                if ((*(*v75 + 40))(v75, v17, *&v80) != 1)
                {
                  v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                }
              }

              else
              {
LABEL_141:
                v64 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::One();
                if (v76)
                {
                  v65 = v79 + 1;
                }

                else
                {
                  v65 = 0;
                }

                if (*v64)
                {
                  v66 = *(v64 + 24) + 1;
                }

                else
                {
                  v66 = 0;
                }

                if (v65 != v66)
                {
                  goto LABEL_162;
                }

                v67 = v78;
                v68 = (v64 + 16);
                v69 = v76 && v76 == *v64;
                v70 = !v69;
                v71 = 1;
                v72 = !v70;
                while (1)
                {
                  v73 = *v68;
                  if ((v71 & 1) != 0 && !v72)
                  {
                    break;
                  }

                  if (v67 == &v77)
                  {
                    goto LABEL_161;
                  }

                  if (*(v67 + 16) != *(v73 + 16))
                  {
                    goto LABEL_162;
                  }

                  v71 = 0;
                  v67 = *(v67 + 8);
                  v68 = (v73 + 8);
                }

                if (v76)
                {
                  goto LABEL_162;
                }

LABEL_161:
                v95 = *&v80;
                v94 = *(v64 + 32);
                if (*&v80 != v94)
                {
LABEL_162:
                  v93 = v93 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }

                ++v16;
              }

              std::__list_imp<char *>::clear(&v77);
              std::__list_imp<char *>::clear(&v88);
              if (v81)
              {
                (*(*v81 + 32))(v81);
              }

              else
              {
                ++v83;
              }

              goto LABEL_12;
            }

            if (v76)
            {
              v20 = (*(*v76 + 32))();
              goto LABEL_29;
            }
          }

          else if (v80 >= v78)
          {
            goto LABEL_102;
          }

          v20 = v77 + 56 * v80;
LABEL_29:
          v21 = *v20;
          v22 = *v20;
          if (*v20 != *(v20 + 4))
          {
            v93 = v93 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
            v22 = *(v20 + 4);
          }

          if (v21 | v22)
          {
            if (v21)
            {
              if (v22)
              {
                goto LABEL_35;
              }

              goto LABEL_39;
            }

            v23 = v93;
          }

          else
          {
            v23 = v93 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
          }

          v93 = v23 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
          if (v22)
          {
LABEL_35:
            if ((v19 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_44;
          }

LABEL_39:
          v93 = v93 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
          if ((v19 & 1) == 0)
          {
LABEL_40:
            if (v21 < v86)
            {
              v93 = v93 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
            }

            if (v22 < SHIDWORD(v86))
            {
              v93 = v93 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
            }
          }

LABEL_44:
          v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::One();
          v25 = *(v20 + 8);
          if (v25)
          {
            v26 = *(v20 + 32) + 1;
          }

          else
          {
            v26 = 0;
          }

          if (*v24)
          {
            v27 = *(v24 + 24) + 1;
          }

          else
          {
            v27 = 0;
          }

          if (v26 != v27)
          {
            goto LABEL_65;
          }

          v28 = (v20 + 24);
          v29 = (v24 + 16);
          v30 = v25 && v25 == *v24;
          v31 = !v30;
          v32 = 1;
          v33 = !v31;
          while (1)
          {
            v34 = *v28;
            v35 = *v29;
            if ((v32 & 1) != 0 && !v33)
            {
              break;
            }

            if (v34 == v20 + 16)
            {
              goto LABEL_64;
            }

            if (*(v34 + 16) != *(v35 + 16))
            {
              goto LABEL_65;
            }

            v32 = 0;
            v28 = (v34 + 8);
            v29 = (v35 + 8);
          }

          if (v25)
          {
            goto LABEL_65;
          }

LABEL_64:
          v95 = *(v20 + 40);
          v94 = *(v24 + 32);
          if (v95 != v94)
          {
LABEL_65:
            v36 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
            v25 = *(v20 + 8);
            if (v25)
            {
              v37 = *(v20 + 32) + 1;
            }

            else
            {
              v37 = 0;
            }

            if (*v36)
            {
              v38 = *(v36 + 24) + 1;
            }

            else
            {
              v38 = 0;
            }

            if (v37 != v38)
            {
              goto LABEL_86;
            }

            v39 = (v20 + 24);
            v40 = (v36 + 16);
            v41 = v25 && v25 == *v36;
            v42 = !v41;
            v43 = 1;
            v44 = !v42;
            while (1)
            {
              v45 = *v39;
              v46 = *v40;
              if ((v43 & 1) != 0 && !v44)
              {
                break;
              }

              if (v45 == v20 + 16)
              {
                goto LABEL_85;
              }

              if (*(v45 + 16) != *(v46 + 16))
              {
                goto LABEL_86;
              }

              v43 = 0;
              v39 = (v45 + 8);
              v40 = (v46 + 8);
            }

            if (v25)
            {
              goto LABEL_86;
            }

LABEL_85:
            v95 = *(v20 + 40);
            v94 = *(v36 + 32);
            if (v95 != v94)
            {
LABEL_86:
              v93 = v93 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
            }
          }

          v47 = *(v20 + 48);
          if (v47 <= v17)
          {
            v93 = v93 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
          }

          if (v47 != v17 + 1)
          {
            v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          v86 = *v20;
          LODWORD(v87) = v25;
          if (&v86 != v20)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(&v88, *(v20 + 24), v20 + 16);
            v47 = *(v20 + 48);
          }

          v91 = *(v20 + 40);
          v92 = v47;
          if (v12)
          {
            std::vector<int>::push_back[abi:ne200100](&v85.__begin_, v20);
          }

          if (v15)
          {
            std::vector<int>::push_back[abi:ne200100](&v84.__begin_, (v20 + 4));
          }

          if (v76)
          {
            (*(*v76 + 40))(v76);
            v19 = 0;
          }

          else
          {
            v19 = 0;
            ++v80;
          }
        }
      }

LABEL_17:
      v17 = v83;
      goto LABEL_18;
    }

    if (v81)
    {
      (*(*v81 + 8))();
    }

LABEL_171:
    if ((*(*v7 + 24))(v7) != -1 && (*(*v7 + 24))(v7))
    {
      v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
    }

    if (v84.__begin_)
    {
      v84.__end_ = v84.__begin_;
      operator delete(v84.__begin_);
    }

    if (v85.__begin_)
    {
      v85.__end_ = v85.__begin_;
      operator delete(v85.__begin_);
    }

    v9 = v93;
LABEL_179:
    v10 = v9 & 0x3FFFFFFF0000 | (2 * v9) & 0x2AAAAAAA0000 | (v9 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v10;
  return v9;
}

void sub_1B5A3D5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5A3DE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

uint64_t fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 160);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_1B5A3E1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>();
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v33);
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
  if (v33)
  {
    v7 = v34[2] + 1;
  }

  else
  {
    v7 = 0;
  }

  if (*v6)
  {
    v8 = *(v6 + 24) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == v8)
  {
    v9 = v34[1];
    v10 = (v6 + 16);
    if (v33)
    {
      v11 = v33 == *v6;
    }

    else
    {
      v11 = 0;
    }

    v12 = !v11;
    v13 = 1;
    v14 = v12 ^ 1;
    while (1)
    {
      v15 = *v10;
      if ((v13 & 1) != 0 && !v14)
      {
        break;
      }

      if (v9 == v34)
      {
        goto LABEL_42;
      }

      if (*(v9 + 16) != *(v15 + 16))
      {
        goto LABEL_21;
      }

      v13 = 0;
      v9 = *(v9 + 8);
      v10 = (v15 + 8);
    }

    if (v33)
    {
      goto LABEL_21;
    }

LABEL_42:
    v37 = v35;
    v36 = *(v6 + 32);
    v31 = v35;
    v32 = v36;
    result = std::__list_imp<char *>::clear(v34);
    if (v31 == v32)
    {
      v17 = a2;
      goto LABEL_23;
    }
  }

  else
  {
LABEL_21:
    result = std::__list_imp<char *>::clear(v34);
  }

  v17 = a2;
  *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
LABEL_23:
  v18 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v17) != *(v18 + 4 * v17))
  {
    goto LABEL_36;
  }

  v19 = 0;
  v20 = *(a1 + 80);
  v21 = **(a1 + 16);
  v22 = (*(v20 + 8) - 4);
  v23 = v22;
  do
  {
    v24 = *v23--;
    v19 |= *(v21 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24;
  }

  while (v24 != a2);
  v25 = *a1;
  v26 = **(a1 + 72);
  while (1)
  {
    v27 = *v22;
    if (v25)
    {
      *(*v25 + 4 * v27) = *(a1 + 48);
    }

    result = v27 >> 6;
    v28 = 1 << v27;
    if ((v19 & 1) == 0)
    {
      break;
    }

    *(v21 + 8 * result) |= v28;
    *(v26 + 8 * result) &= ~v28;
    if (v27 == a2)
    {
      *(v20 + 8) = v22;
      goto LABEL_35;
    }

LABEL_33:
    --v22;
  }

  *(v26 + 8 * result) &= ~v28;
  if (v27 != a2)
  {
    goto LABEL_33;
  }

  *(v20 + 8) = v22;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_35:
  ++*(a1 + 48);
LABEL_36:
  if (a3 != -1)
  {
    v29 = **(a1 + 16);
    if ((*(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
    {
      *(v29 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v30 = *(v18 + 4 * v17);
    if (v30 < *(v18 + 4 * a3))
    {
      *(v18 + 4 * a3) = v30;
    }
  }

  return result;
}

void fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D3EFF8;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D3EFF8;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D3F038;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B5A3E638(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D3F038;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>> *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v10);
}

void sub_1B5A3E944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::SetFromFst<fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v26);
  if (!v26 && (a4 & 1) == 0)
  {
    v10 = v27 + 56 * v28;
    *(a1 + 16) = v27;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
    return;
  }

  v11 = (*(*a2 + 40))(a2, a3);
  v12 = a5;
  if (!a4)
  {
    v12 = 0;
  }

  v13 = v11 + v12;
  if (*(a1 + 8) < (v11 + v12))
  {
    if (*a1)
    {
      free(*a1);
    }

    v25 = 0x4000;
    if (v13 > 0x4000)
    {
      v25 = v13;
    }

    *(a1 + 8) = v25;
    v15 = malloc_type_malloc(56 * v25, 0x1020040540EBC04uLL);
    *a1 = v15;
    *(a1 + 16) = v15;
    v14 = v15;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *a1;
  }

  *(a1 + 24) = &v14[7 * v13];
  v16 = v26;
  v17 = v27;
  v19 = v28;
  v18 = v29;
  if (v29)
  {
    ++*v29;
  }

  v20 = 0;
LABEL_13:
  v15 += 7;
  while (v16)
  {
    v21 = (*(*v16 + 24))(v16);
    v22 = *v16;
    if (v21)
    {
      (*(v22 + 8))(v16);
      return;
    }

    v23 = (*(v22 + 32))(v16);
LABEL_18:
    v24 = v15 - 7;
    *v24 = *v23;
    *(v24 + 2) = *(v23 + 8);
    if (v15 - 7 != v23)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v15 - 5, *(v23 + 24), v23 + 16);
    }

    *(v15 - 4) = *(v23 + 40);
    *(v15 - 2) = *(v23 + 48);
    if (!v16)
    {
      ++v20;
      goto LABEL_13;
    }

    v15 += 7;
    (*(*v16 + 40))(v16);
  }

  v23 = v17 + 56 * v20;
  if (v20 < v19)
  {
    goto LABEL_18;
  }

  if (v18)
  {
    --*v18;
  }
}

void sub_1B5A3EC90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  else if (v2)
  {
    --*v2;
  }

  _Unwind_Resume(exception_object);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D3EF48;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B5A3EFD8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>::CopyStates(a1, a2);
    *(a1 + 56) = *(a1 + 40);
    *(a1 + 72) = *(a2 + 72);
    v4 = *(a2 + 76);
    *(a1 + 76) = v4;
    if (v4 == -1)
    {
      MutableState = 0;
    }

    else
    {
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      if (*(v4 + 8 * v5))
      {
        operator new();
      }

      v7 = a1[2];
      v6 = a1[3];
      if (v7 >= v6)
      {
        v9 = a1[1];
        v10 = (v7 - v9) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v6 - v9;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 1), v13);
        }

        v14 = (8 * v10);
        *v14 = 0;
        v8 = 8 * v10 + 8;
        v15 = a1[1];
        v16 = a1[2] - v15;
        v17 = v14 - v16;
        memcpy(v14 - v16, v15, v16);
        v18 = a1[1];
        a1[1] = v17;
        a1[2] = v8;
        a1[3] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = 0;
        v8 = (v7 + 1);
      }

      a1[2] = v8;
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 56) = 0;
  *(a1 + 40) = v4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3> const*>>(a1 + 56, v5, v6, 0x6DB6DB6DB6DB6DB7 * ((v6 - v5) >> 3));
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5A3F324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3> const*,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3> const*,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      *(v9 + 8) = *(a2 + v7 + 8);
      std::list<int>::list((a4 + v7 + 16), a2 + v7 + 16);
      *(v9 + 40) = *(a2 + v7 + 40);
      *(v9 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B5A3F3D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 40);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 7;
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D3F078;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B5A3F494(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::CheckSuperfinal(uint64_t result)
{
  v1 = *(result + 8);
  if (*(v1 + 156) == 1)
  {
    v2 = result;
    if ((*(result + 44) & 1) == 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = (*(*result + 16))(result);
        if (result)
        {
          return result;
        }

        v1 = *(v2 + 8);
      }

      else if (*(v2 + 32) >= *(v2 + 24))
      {
        return result;
      }

      v3 = (*(**(v1 + 136) + 32))(*(v1 + 136), *(v2 + 40));
      v4 = 0;
      v5 = v3;
      v6 = -1;
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>::operator()(&v4, &v7);
      if (v7)
      {
        *(v2 + 44) = 1;
      }

      return std::__list_imp<char *>::clear(v8);
    }
  }

  return result;
}

void *fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D3F078;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D3F078;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Next(uint64_t a1)
{
  ++*(a1 + 40);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 16))(result);
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        (*(*v3 + 32))(v3);
LABEL_7:

        return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::CheckSuperfinal(a1);
      }

LABEL_6:
      ++*(a1 + 32);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 32) < *(a1 + 24))
  {
    goto LABEL_6;
  }

  if (*(a1 + 44) == 1)
  {
    *(a1 + 44) = 0;
  }

  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Reset(uint64_t a1)
{
  *(a1 + 40) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;

  return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

void *fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::DefaultDeterminizeFilter<fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(void *a1, uint64_t a2, void *a3)
{
  *a1 = (*(*a2 + 88))(a2, 0);
  if (a3)
  {
    if (*a3)
    {
      (*(**a3 + 8))(*a3);
    }

    MEMORY[0x1B8C85350](a3, 0x20C4093837F09);
  }

  return a1;
}

void fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::DeterminizeFst<fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D3F0E0;
  a1[1] = 0;
  if (!(*(*a2 + 64))(a2, 0x10000, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v3 = fst::LogMessage::LogMessage(&v8, __p);
    v4 = fst::cerr(v3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "DeterminizeFst:", 15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " distance to final states computed for acceptors only", 53);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1[1] + 8) |= 4uLL;
  }

  operator new();
}

void sub_1B5A3FAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst(v18);
  _Unwind_Resume(a1);
}

_DWORD *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetImpl(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    ++*(a2 + 56);
  }

  result = *(a1 + 8);
  if (result)
  {
    v6 = result[14] - 1;
    result[14] = v6;
    if (!v6)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(a1 + 8) = a2;
  return result;
}

void *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D3F1C0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~DeterminizeFst(void *a1)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B5A400DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~DeterminizeFstImplBase(void *a1)
{
  *a1 = &unk_1F2D3F2F8;
  v2 = a1[17];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(a1);
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::Expand(void *a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::GetLabelMap(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::AddArc(a1, a2, (v4 + 5));
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v9);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetArcs(a1, a2);
  std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>>>::destroy(&v8, v9[0]);
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::ComputeStart(uint64_t a1)
{
  v1 = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if (v1 != -1)
  {
    v2 = v1;
    v3 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::One();
    v5 = *v3;
    std::list<int>::list(v6, (v3 + 2));
    v7 = v3[8];
    v8 = v2;
    v9 = v5;
    std::list<int>::list(v10, v6);
    v11 = v7;
    std::__list_imp<char *>::clear(v6);
    operator new();
  }

  return 0xFFFFFFFFLL;
}

void *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X8>)
{
  v5 = *(*(*(a1 + 184) + 88) + 8 * a2);
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
  *a3 = *v6;
  result = std::list<int>::list(a3 + 1, (v6 + 2));
  a3[8] = v6[8];
  v8 = (a3 + 8);
  for (i = *v5; i; i = *i)
  {
    (*(**(a1 + 136) + 32))(&v27);
    fst::Times<int,(fst::StringType)2>(i + 4, &v27, &v37);
    v10 = *(i + 12);
    v11 = NAN;
    if (v10 != -INFINITY)
    {
      v11 = NAN;
      if (v29 != -INFINITY)
      {
        v11 = INFINITY;
        v12 = v29 == INFINITY || v10 == INFINITY;
        v13 = v10 + v29;
        if (!v12)
        {
          v11 = v13;
        }
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(v30, &v37, v11);
    std::__list_imp<char *>::clear(v38);
    v14 = fst::NaturalLess<fst::LogWeightTpl<float>>::NaturalLess(&v37);
    v15 = fst::NaturalLess<fst::LogWeightTpl<float>>::operator()(v14, a3 + 8, &v32);
    v16 = v15;
    if (v15)
    {
      v17 = a3;
    }

    else
    {
      v17 = v30;
    }

    v33 = *v17;
    if (v15)
    {
      v18 = a3 + 2;
    }

    else
    {
      v18 = v31;
    }

    std::list<int>::list(&v34, v18);
    if (v16)
    {
      v19 = a3;
    }

    else
    {
      v19 = v30;
    }

    v20 = v19[8];
    v36 = v20;
    *a3 = v33;
    if (&v33 != a3)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a3 + 1, v35, &v34);
      v20 = v36;
    }

    *(a3 + 8) = v20;
    std::__list_imp<char *>::clear(&v34);
    std::__list_imp<char *>::clear(v31);
    std::__list_imp<char *>::clear(v28);
    v24 = *a3;
    std::list<int>::list(v25, (a3 + 2));
    v26 = *v8;
    v33 = v24;
    std::list<int>::list(&v34, v25);
    v21 = v26;
    v36 = v26;
    *a3 = v33;
    if (&v33 != a3)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a3 + 1, v35, &v34);
      v21 = v36;
    }

    *(a3 + 8) = v21;
    std::__list_imp<char *>::clear(&v34);
    result = std::__list_imp<char *>::clear(v25);
    if (*a3)
    {
      if (*(a3 + 3))
      {
        v22 = 0;
      }

      else
      {
        v22 = *a3 == -2;
      }

      if (!v22)
      {
        v23 = *(a3 + 8);
        if (v23 < -INFINITY || v23 > -INFINITY)
        {
          continue;
        }
      }
    }

    else if (*v8 < -INFINITY || *v8 > -INFINITY)
    {
      continue;
    }

    *(a1 + 8) |= 4uLL;
  }

  return result;
}

void sub_1B5A409AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__list_imp<char *>::clear((v10 + 8));
  std::__list_imp<char *>::clear(v9);
  std::__list_imp<char *>::clear(va);
  std::__list_imp<char *>::clear(v8);
  _Unwind_Resume(a1);
}

void *fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::CompactHashBiTable(void *a1, size_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), a2, a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  if (a2)
  {
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 10, a2);
  }

  return a1;
}

void sub_1B5A40A84(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  *a1 = &unk_1F2D3F270;
  v2 = a1[22];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[23];
  if (v3)
  {
    v4 = fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(v3);
    MEMORY[0x1B8C85350](v4, 0x10E0C400200E20DLL);
  }

  return fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~DeterminizeFstImplBase(a1);
}

void sub_1B5A40D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_1B5A40ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::GetLabelMap(void *a1, int a2, void *a3)
{
  v5 = **(*(a1[23] + 88) + 8 * a2);
  if (v5)
  {
    while (1)
    {
      v6 = *(v5 + 2);
      v7 = a1[17];
      v28 = 0;
      (*(*v7 + 136))(v7, v6, v26);
      if (!v26[0])
      {
        break;
      }

      if (!(*(*v26[0] + 24))(v26[0]))
      {
        if (v26[0])
        {
          v8 = (*(*v26[0] + 32))();
        }

        else
        {
LABEL_7:
          v8 = v26[1] + 56 * v28;
        }

        v9 = *(v8 + 48);
        fst::Times<int,(fst::StringType)2>(v5 + 4, v8 + 8, &v29);
        v10 = *(v5 + 12);
        v11 = NAN;
        if (v10 != -INFINITY)
        {
          v12 = *(v8 + 40);
          v11 = NAN;
          if (v12 != -INFINITY)
          {
            v11 = INFINITY;
            v13 = v12 == INFINITY || v10 == INFINITY;
            v14 = v10 + v12;
            if (!v13)
            {
              v11 = v14;
            }
          }
        }

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v20, &v29, v11);
        std::__list_imp<char *>::clear(v30);
        v23[0] = v9;
        v23[2] = v20;
        std::list<int>::list(v24, v21);
        v25 = v22;
        std::__list_imp<char *>::clear(v21);
        fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::FilterArc(a1[22], v8, (v5 + 1), v23, a3);
      }

      if (!v26[0])
      {
        goto LABEL_18;
      }

      (*(*v26[0] + 8))();
LABEL_20:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_21;
      }
    }

    if (v28 < v26[2])
    {
      goto LABEL_7;
    }

LABEL_18:
    if (v27)
    {
      --*v27;
    }

    goto LABEL_20;
  }

LABEL_21:
  v17 = *a3;
  v15 = a3 + 1;
  v16 = v17;
  if (v17 != v15)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::NormArc(a1, (v16 + 5));
      v18 = v16[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v16[2];
          v13 = *v19 == v16;
          v16 = v19;
        }

        while (!v13);
      }

      v16 = v19;
    }

    while (v19 != v15);
  }
}

void sub_1B5A411CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  else if (a24)
  {
    --*a24;
  }

  _Unwind_Resume(exception_object);
}

void *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::AddArc(uint64_t a1, int a2, uint64_t a3)
{
  v9[0] = v9;
  v9[1] = v9;
  v9[2] = 0;
  v8[0] = *a3;
  v8[1] = v8[0];
  v8[2] = *(a3 + 8);
  if (v8 != a3)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v9, *(a3 + 24), a3 + 16);
  }

  v10 = *(a3 + 40);
  State = fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::FindState(a1, *(a3 + 48));
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(a1 + 120), a2);
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::push_back[abi:ne200100]((MutableState + 56), v8);
  return std::__list_imp<char *>::clear(v9);
}

void fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::FilterArc(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  if (*(std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a5, a2) + 10) == -1)
  {
    fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::DeterminizeArc(&v6, a2);
  }

  std::__forward_list_base<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::__create_node[abi:ne200100]<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>> const&>();
}

void fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::NormArc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  std::forward_list<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::sort[abi:ne200100](v4);
  v5 = *v4;
  if (*v4)
  {
    v6 = (a2 + 8);
    v7 = *v4;
    do
    {
      v8 = v7 + 2;
      fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>::operator()(a1 + 168, a2 + 8, (v7 + 2), &v20);
      *v6 = v20;
      if (v6 != &v20)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a2 + 16), v22, &v21);
      }

      *(a2 + 40) = v23;
      std::__list_imp<char *>::clear(&v21);
      if (v5 == v7 || *(v7 + 2) != *(v5 + 2))
      {
        v13 = *v7;
        v5 = v7;
      }

      else
      {
        v9 = (v5 + 2);
        fst::NaturalLess<fst::LogWeightTpl<float>>::NaturalLess(&v24);
        v10 = (v5 + 6);
        v11 = fst::NaturalLess<fst::LogWeightTpl<float>>::operator()(&v24, v5 + 12, v7 + 12);
        if (v11)
        {
          v12 = v5;
        }

        else
        {
          v12 = v7;
        }

        if (v11)
        {
          v8 = v5 + 2;
        }

        v20 = *(v12 + 4);
        std::list<int>::list(&v21, (v8 + 1));
        v23 = *(v8 + 8);
        *(v5 + 4) = v20;
        if (v9 != &v20)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v5 + 3, v22, &v21);
        }

        *v10 = v23;
        std::__list_imp<char *>::clear(&v21);
        if (*v9 == -2 && !v5[5] || *v10 >= -INFINITY && *v10 <= -INFINITY)
        {
          *(a1 + 8) |= 4uLL;
        }

        v13 = *v7;
        v14 = *v5;
        v15 = (*v5 + 24);
        *v5 = **v5;
        std::__list_imp<char *>::clear(v15);
        operator delete(v14);
      }

      v7 = v13;
    }

    while (v13);
    for (i = *v4; i; i = *i)
    {
      v17 = (i + 2);
      fst::DivideLeft<int,(fst::StringType)2>(i + 4, (a2 + 8), &v24);
      v18 = *(i + 12);
      v19 = NAN;
      if (v18 != -INFINITY)
      {
        if ((*(a2 + 40) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v19 = INFINITY;
          if (v18 != INFINITY)
          {
            v19 = v18 - *(a2 + 40);
          }
        }

        else
        {
          v19 = NAN;
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v20, &v24, v19);
      std::__list_imp<char *>::clear(v25);
      *v17 = v20;
      if (v17 != &v20)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(i + 3, v22, &v21);
      }

      *(i + 12) = v23;
      std::__list_imp<char *>::clear(&v21);
      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Quantize(i + 4, &v20, *(a1 + 144));
      *(i + 4) = v20;
      if (v17 != &v20)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(i + 3, v22, &v21);
      }

      *(i + 12) = v23;
      std::__list_imp<char *>::clear(&v21);
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>();
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

void fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::DeterminizeArc(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
  *(a1 + 8) = *v3;
  std::list<int>::list((a1 + 16), (v3 + 2));
  *(a1 + 40) = v3[8];
  operator new();
}

void *fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  fst::LabelCommonDivisor<int,(fst::StringType)2>::operator()(a2, a3, &v10);
  v8 = fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>::operator()(a1 + 1, (a2 + 32), (a3 + 32));
  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(a4, &v10, v8);
  return std::__list_imp<char *>::clear(v11);
}

void *fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::Quantize(a1, &v5, a3);
  *a2 = v5;
  std::list<int>::list((a2 + 8), v6);
  *(a2 + 32) = v7;
  return std::__list_imp<char *>::clear(v6);
}

void *fst::ProductWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::Quantize(a1, &v5, a3);
  *a2 = v5;
  std::list<int>::list((a2 + 8), v6);
  *(a2 + 32) = v7;
  return std::__list_imp<char *>::clear(v6);
}

void *fst::PairWeight<fst::StringWeight<int,(fst::StringType)2>,fst::LogWeightTpl<float>>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v8 = *a1;
  std::list<int>::list(v9, (a1 + 2));
  v6 = a1[8];
  if ((LODWORD(v6) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v6 = floorf((v6 / a3) + 0.5) * a3;
  }

  *a2 = v8;
  std::list<int>::list((a2 + 8), v9);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v9);
}

uint64_t fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::FindState(uint64_t a1, uint64_t **a2)
{
  State = fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::FindState(*(a1 + 184), a2);
  v5 = State;
  if (*(a1 + 152))
  {
    v6 = *(a1 + 160);
    if (0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 3) <= State)
    {
      fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::ComputeDistance(a1, a2, &v10);
      v7 = v6[1];
      if (v7 >= v6[2])
      {
        v8 = std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>(v6, &v10);
      }

      else
      {
        *v7 = v10;
        std::list<int>::list((v7 + 8), v11);
        *(v7 + 32) = v12;
        v8 = v7 + 40;
        v6[1] = v7 + 40;
      }

      v6[1] = v8;
      std::__list_imp<char *>::clear(v11);
    }
  }

  return v5;
}

void sub_1B5A41C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::FindState(void *a1, void **a2)
{
  v6 = a2;
  v2 = (a1[12] - a1[11]) >> 3;
  Id = fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(a1 + 1, &v6, 1);
  if (Id != v2)
  {
    v4 = v6;
    if (v6)
    {
      std::__forward_list_base<fst::DeterminizeElement<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>>::clear(v6);
      MEMORY[0x1B8C85350](v4, 0x1020C405F07FB98);
    }
  }

  return Id;
}

void *fst::DeterminizeFsaImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicCommonDivisor<int,fst::LogWeightTpl<float>,(fst::GallicType)3,fst::DefaultCommonDivisor<fst::LogWeightTpl<float>>>,fst::DefaultDeterminizeFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>>::ComputeDistance@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
  *a3 = *v6;
  result = std::list<int>::list((a3 + 8), (v6 + 2));
  *(a3 + 32) = v6[8];
  for (i = *a2; i; i = *i)
  {
    v9 = *(i + 2);
    v10 = **(a1 + 152);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 152) + 8) - v10) >> 3) <= v9)
    {
      v11 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::Zero();
    }

    else
    {
      v11 = v10 + 40 * v9;
    }

    v28 = *v11;
    std::list<int>::list(v29, v11 + 8);
    v30 = *(v11 + 32);
    fst::Times<int,(fst::StringType)2>(i + 4, &v28, &v31);
    v12 = *(i + 12);
    v13 = NAN;
    if (v12 != -INFINITY)
    {
      v13 = NAN;
      if (v30 != -INFINITY)
      {
        v13 = INFINITY;
        v14 = v30 == INFINITY || v12 == INFINITY;
        v15 = v12 + v30;
        if (!v14)
        {
          v13 = v15;
        }
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>::GallicWeight(&v22, &v31, v13);
    std::__list_imp<char *>::clear(v32);
    fst::NaturalLess<fst::LogWeightTpl<float>>::NaturalLess(&v31);
    v16 = fst::NaturalLess<fst::LogWeightTpl<float>>::operator()(&v31, (a3 + 32), &v24);
    v17 = v16;
    if (v16)
    {
      v18 = a3;
    }

    else
    {
      v18 = &v22;
    }

    v25 = *v18;
    if (v16)
    {
      v19 = (a3 + 8);
    }

    else
    {
      v19 = v23;
    }

    std::list<int>::list(v26, v19);
    if (v17)
    {
      v20 = a3;
    }

    else
    {
      v20 = &v22;
    }

    v21 = *(v20 + 8);
    v27 = v21;
    *a3 = v25;
    if (&v25 != a3)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a3 + 8), v26[1], v26);
      v21 = v27;
    }

    *(a3 + 32) = v21;
    std::__list_imp<char *>::clear(v26);
    std::__list_imp<char *>::clear(v23);
    result = std::__list_imp<char *>::clear(v29);
  }

  return result;
}

void sub_1B5A41F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__list_imp<char *>::clear((v14 + 8));
  std::__list_imp<char *>::clear(v13);
  std::__list_imp<char *>::clear(va);
  std::__list_imp<char *>::clear(v12);
  _Unwind_Resume(a1);
}

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(void *a1, void *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
  if (v6)
  {
    return *(v6 + 4);
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1[10];
  v9 = a1[11];
  v10 = a1[12];
  v11 = (v9 - v8) >> 3;
  v20 = v11;
  if (v9 >= v10)
  {
    if ((v11 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = v10 - v8;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v11 + 1))
    {
      v14 = v11 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 10), v15);
    }

    *(8 * v11) = *a2;
    v12 = 8 * v11 + 8;
    v16 = a1[10];
    v17 = a1[11] - v16;
    v18 = (8 * v11 - v17);
    memcpy(v18, v16, v17);
    v19 = a1[10];
    a1[10] = v18;
    a1[11] = v12;
    a1[12] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v9 = *a2;
    v12 = (v9 + 1);
  }

  a1[11] = v12;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v20);
  return v20;
}

uint64_t std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  std::list<int>::list((v7 + 8), (a2 + 2));
  *(v7 + 32) = a2[8];
  *&v16 = v16 + 40;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B5A421BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)3>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      *(a4 + v7) = *(v6 + v7);
      result = std::list<int>::list((a4 + v7 + 8), v6 + v7 + 8);
      *(a4 + v7 + 32) = *(v6 + v7 + 32);
      v7 += 40;
    }

    while (v8 + 40 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 8));
      v6 += 40;
    }
  }

  return result;
}

void sub_1B5A42260(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 5;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(*a1 + 56))(a1);
      if (v2 != -1)
      {
        *(a1 + 64) = v2;
        *(a1 + 60) = 1;
        if (*(a1 + 68) <= v2)
        {
          *(a1 + 68) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 64);
}

void *fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::Final@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    (*(*a1 + 64))(&v10, a1, a2);
    v7 = v10;
    std::list<int>::list(v8, v11);
    v9 = v12;
    fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetFinal(a1, a2, &v7);
    std::__list_imp<char *>::clear(v8);
    std::__list_imp<char *>::clear(v11);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final(a1, a2, a3);
}

void sub_1B5A42418(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return 0x6DB6DB6DB6DB6DB7 * ((*(*v5 + 64) - *(*v5 + 56)) >> 3);
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 40);
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 48);
}

void *fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::DeterminizeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D3F0E0;
  a1[1] = 0;
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = (*(*v4 + 40))(v4);
    v6 = a1[1];
    if (v6)
    {
      v7 = v6[14] - 1;
      v6[14] = v7;
      if (!v7)
      {
        (*(*v6 + 8))(v6);
      }
    }

    a1[1] = v5;
  }

  else
  {
    fst::ImplToFst<fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

uint64_t fst::CacheStateIterator<fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 68))
  {
    return 0;
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 68))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 56);
    v8 = 0x6DB6DB6DB6DB6DB7 * ((*(v19 + 64) - v7) >> 3);
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 56 * v20 + 48);
      do
      {
        v14 = *v12;
        v12 += 14;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 68) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 68);
    --*(v19 + 84);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 68));
  return v4;
}

uint64_t *fst::ArcIterator<fst::DeterminizeFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 84);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::DeterminizeFstImplBase<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

void fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::~FactorWeightFst(void *a1)
{
  fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B5A42EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v21 = v19;
  v22 = (v19 - 5);
  v23 = *v21;
  if (*v21)
  {
    v18[30] = v23;
    operator delete(v23);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(v22);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>>>::~CacheBaseImpl(v18);
  _Unwind_Resume(a1);
}

void fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::~FactorWeightFstImpl(uint64_t a1)
{
  fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::~FactorWeightFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)3>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)3>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}