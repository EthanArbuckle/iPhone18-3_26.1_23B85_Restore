BOOL sub_24808852C()
{
  v2 = 0;
  v1 = 4;
  if (sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    sub_2480B334C();
  }

  return v2 != 0;
}

void sub_248088FE0(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 72) & 1) == 0)
  {
    v3 = *(v1 + 64);
    *(v1 + 64) = 0;

    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    if (v5)
    {
      *(v4 + 40) = 0;

      v4 = *(a1 + 32);
    }

    *(v4 + 72) = 1;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = *(*(a1 + 32) + 48);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v33, v38, 16);
    if (v8)
    {
      v12 = v8;
      v13 = *v34;
      do
      {
        v14 = 0;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v6);
          }

          objc_msgSend__welcomeAgent_(*(a1 + 32), v9, *(*(&v33 + 1) + 8 * v14++), v10, v11);
        }

        while (v12 != v14);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v33, v38, 16);
      }

      while (v12);
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 48);
    *(v15 + 48) = 0;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = *(*(a1 + 32) + 56);
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v29, v37, 16);
    if (v19)
    {
      v23 = v19;
      v24 = *v30;
      do
      {
        v25 = 0;
        do
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v17);
          }

          objc_msgSend__welcomeAgent_(*(a1 + 32), v20, *(*(&v29 + 1) + 8 * v25++), v21, v22, v29);
        }

        while (v23 != v25);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v29, v37, 16);
      }

      while (v23);
    }

    v26 = *(a1 + 32);
    v27 = *(v26 + 56);
    *(v26 + 56) = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_248089B48(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v2, v3, v4, v5);
  objc_msgSend_removeItemAtURL_error_(v8, v6, *(a1 + 32), 0, v7);
}

void sub_24808A538(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = a2;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (*objc_msgSend__managerImplPtr(v14, v7, v8, v9, v10, v18))
        {
          v15 = *(*(a1 + 32) + 8);
          v16 = objc_msgSend__managerImplPtr(v14, v7, v8, v9, v10);
          sub_2480A9E68(v15, v16, a3);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v18, v22, 16);
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_24808A690(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = a2;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v23, v27, 16);
  if (v7)
  {
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = objc_opt_class();
        if (objc_msgSend_supportsQoS(v11, v12, v13, v14, v15, v23))
        {
          v20 = *(*(a1 + 32) + 8);
          v21 = objc_msgSend__secondTierManagerImplPtr(v10, v16, v17, v18, v19);
          sub_2480A9E68(v20, v21, a3);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v16, &v23, v27, 16);
    }

    while (v7);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void *sub_24808A8D4(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285A37C68;
  sub_2480A9FF8(a1 + 3, *a2);
  return a1;
}

void sub_24808A954(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285A37C68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1C5380);
}

void sub_24808A9D8(void ***a1)
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
        v4 -= 4;
        v6 = v4;
        sub_24808AA4C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_24808AA4C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24808AAA0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24808AAA0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_24808AAEC(v4);
    }
  }

  a1[1] = v2;
}

void sub_24808AAEC(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

BOOL sub_24808AB58(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v10 = objc_msgSend_UTF8String(v5, v6, v7, v8, v9);
  v19 = 0;
  v11 = strtoll_l(v10, &v19, 0, 0);
  v12 = v19;
  v17 = &v10[objc_msgSend_length(a1, v13, v14, v15, v16)];
  if (a3 && v12 == v17)
  {
    *a3 = v11;
  }

  return v12 == v17;
}

void sub_24808AC24()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"error-message";
  v5[0] = objc_opt_class();
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v5, &v4, 1);
  v2 = qword_27EE86708;
  qword_27EE86708 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void sub_24808B2E8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_24808B3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = XRSpace;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24808B544(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = *MEMORY[0x277CBE640];
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v8, 1, a5);
  v6 = qword_27EE86720;
  qword_27EE86720 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

void sub_24808BE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_24808BE74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24808BE8C(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v1 = *(*(a1 + 40) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_24808C008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v16);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_24808C194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v17);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_24808C30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v16);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_24808C4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v16);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_24808C868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_24808C908(uint64_t a1, void *a2)
{
  v27 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = objc_msgSend_observer(WeakRetained, v4, v5, v6, v7);
  if (v12 && (!objc_msgSend_targetIsSet(WeakRetained, v8, v9, v10, v11) || (objc_msgSend_target(WeakRetained, v13, v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_object(v27, v18, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), v22, v17, v17 == v22)))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v23 = objc_msgSend_space(WeakRetained, v8, v9, v10, v11);
    objc_msgSend__removeNotificationShim_(v23, v24, WeakRetained, v25, v26);
  }
}

uint64_t sub_24808CD64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_hello(*(a1 + 32), a2, a3, a4, a5);
  v10 = *(a1 + 32);

  return objc_msgSend_goodbye(v10, v6, v7, v8, v9);
}

void sub_24808CEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _XRSpaceNotificationShim;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24808D0E8(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2 == 2)
  {
    v14 = objc_begin_catch(exc_buf);
    if (objc_opt_respondsToSelector())
    {
      v20 = objc_msgSend_name(v12, v15, v16, v17, v18);
      NSLog(&cfstr_ExceptionThrow.isa);
    }

    else
    {
      NSLog(&cfstr_ExceptionThrow_0.isa);
    }

    objc_end_catch();
    JUMPOUT(0x24808D0BCLL);
  }

  objc_begin_catch(exc_buf);
  v19 = *&v12[v13];
  *&v12[v13] = 0;

  objc_exception_rethrow();
}

void sub_24808D308(void *a1)
{
  v1 = a1;
  v2 = 0;
  v8 = v1;
  atomic_compare_exchange_strong_explicit(v1 + 8, &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v2)
  {
    v3 = dispatch_get_global_queue(21, 0);
    dispatch_async(v3, v8[1]);

    v4 = v8[1];
    v8[1] = 0;

    objc_msgSend_removeObserver_forKeyPath_context_(v8[2], v5, v8, @"isFinished", qword_27EE85EC0);
    v6 = v8[2];
    v8[2] = 0;

    v7 = v8[3];
    v8[3] = 0;
  }
}

void sub_24808D558(void *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v44 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = sub_24808DDCC(1, v2, v3, v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v40, v47, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v41 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v1[2](v1, *(*(&v40 + 1) + 8 * v11), &v44);
      if (v44)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, &v40, v47, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = sub_24808D8D0(1, v13, v14, v15, v16);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v17, &v36, v46, 16);
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v6);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v23 = v22;
          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v32, v45, 16);
          if (v25)
          {
            v26 = v25;
            v27 = *v33;
            while (2)
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v33 != v27)
                {
                  objc_enumerationMutation(v23);
                }

                v1[2](v1, *(*(&v32 + 1) + 8 * j), &v44);
                if (v44)
                {

                  goto LABEL_26;
                }
              }

              v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v29, &v32, v45, 16);
              if (v26)
              {
                continue;
              }

              break;
            }
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v30, &v36, v46, 16);
      }

      while (v19);
    }
  }

LABEL_26:

  v31 = *MEMORY[0x277D85DE8];
}

id sub_24808D8D0(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3, a4, a5);
  v11 = objc_msgSend_threadDictionary(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"XRCapabilityAdditionalContextSets", v13, v14);

  if (!a1 && !v15)
  {
    v15 = objc_opt_new();
    v20 = objc_msgSend_threadDictionary(v6, v16, v17, v18, v19);
    objc_msgSend_setObject_forKeyedSubscript_(v20, v21, v15, @"XRCapabilityAdditionalContextSets", v22);
  }

  return v15;
}

void sub_24808DCA4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  Index = objc_msgSend_firstIndex(v6, v8, v9, v10, v11);
  v17 = objc_msgSend_lastIndex(v6, v13, v14, v15, v16);
  v22 = objc_msgSend_firstIndex(v6, v18, v19, v20, v21);

  v26 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 216), v23, v7, v24, v25);
  (*(v5 + 16))(v5, v7, Index, v17 - v22 + 1, v26);
}

id sub_24808DDCC(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3, a4, a5);
  v11 = objc_msgSend_threadDictionary(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"XRCapabilityContextSet", v13, v14);

  if (!a1 && !v15)
  {
    v15 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], v16, v17, v18, v19);
    v24 = objc_msgSend_threadDictionary(v6, v20, v21, v22, v23);
    objc_msgSend_setObject_forKeyedSubscript_(v24, v25, v15, @"XRCapabilityContextSet", v26);
  }

  return v15;
}

void sub_24808E0B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = *MEMORY[0x277CBE640];
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v8, 1, a5);
  v6 = qword_27EE86728;
  qword_27EE86728 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24808E4E8()
{
  qword_27EE86740 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24808E538(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a3;
  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = objc_msgSend_initWithFormat_arguments_(v11, v12, v10, &a9, v13);
  if (objc_msgSend_length(v14, v15, v16, v17, v18))
  {
    v26 = objc_msgSend_dataUsingEncoding_(v14, v19, 4, v20, v21);
    do
    {
      hasSpaceAvailable = objc_msgSend_hasSpaceAvailable(a1, v22, v23, v24, v25);
      if (!hasSpaceAvailable)
      {
        break;
      }

      v28 = v26;
      v33 = objc_msgSend_bytes(v28, v29, v30, v31, v32);
      v38 = objc_msgSend_length(v26, v34, v35, v36, v37);
      v41 = objc_msgSend_write_maxLength_(a1, v39, v33, v38, v40);
      v46 = v41;
      if (v41 < 1)
      {
        if (!v41)
        {
          abort();
        }

        hasSpaceAvailable = 0;
        break;
      }

      if (v41 != objc_msgSend_length(v26, v42, v43, v44, v45))
      {
        v51 = objc_msgSend_length(v26, v47, v48, v49, v50);
        v54 = objc_msgSend_subdataWithRange_(v26, v52, v46, v51 - v46, v53);

        v46 = 0;
        v26 = v54;
      }
    }

    while (v46 != objc_msgSend_length(v26, v47, v48, v49, v50));
  }

  else
  {
    hasSpaceAvailable = 1;
  }

  return hasSpaceAvailable;
}

void sub_24808EA54()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"xs:annotation";
  v5[0] = objc_opt_class();
  v4[1] = @"xs:selector";
  v5[1] = objc_opt_class();
  v4[2] = @"xs:field";
  v5[2] = objc_opt_class();
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v5, v4, 3);
  v2 = qword_27EE86748;
  qword_27EE86748 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void sub_24808ED74()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"xs:pattern";
  v5[0] = objc_opt_class();
  v4[1] = @"xs:minLength";
  v5[1] = objc_opt_class();
  v4[2] = @"xs:maxLength";
  v5[2] = objc_opt_class();
  v4[3] = @"xs:maxInclusive";
  v5[3] = objc_opt_class();
  v4[4] = @"xs:enumeration";
  v5[4] = objc_opt_class();
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v5, v4, 5);
  v2 = qword_27EE86758;
  qword_27EE86758 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24808EFF4(uint64_t result)
{
  if ((*(result + 88) & 1) == 0 && *(result + 16) <= 4uLL)
  {
    v1 = *result;
    if (*result != result + 8)
    {
      v2 = 0;
      do
      {
        *(result + 24 + 16 * v2) = *(v1 + 2);
        v3 = v1[1];
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = v1[2];
            v5 = *v4 == v1;
            v1 = v4;
          }

          while (!v5);
        }

        ++v2;
        v1 = v4;
      }

      while (v4 != (result + 8));
    }

    *(result + 88) = 1;
  }

  return result;
}

uint64_t **sub_24808F164(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v3 != v4)
    {
      sub_24808F960(v3 + 1, v4[1], v4 + 2);
    }

    *(v3 + 2) = *(v5 + 2);
    v6 = *(v5 + 3);
    v7 = *(v5 + 4);
    v8 = *(v5 + 5);
    *(v3 + 96) = *(v5 + 96);
    *(v3 + 4) = v7;
    *(v3 + 5) = v8;
    *(v3 + 3) = v6;
    sub_24808EFF4((v3 + 1));
  }

  return v3;
}

uint64_t sub_24808F4B4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_248090570(exception, "Trying to call lastIndex when the set is empty.");
    __cxa_throw(exception, off_278EFA248, MEMORY[0x277D825F8]);
  }

  v3 = *(a1 + 8);
  v1 = (a1 + 8);
  v2 = v3;
  if (v3)
  {
    do
    {
      v4 = v2;
      v2 = v2[1];
    }

    while (v2);
  }

  else
  {
    do
    {
      v4 = v1[2];
      v5 = *v4 == v1;
      v1 = v4;
    }

    while (v5);
  }

  return v4[5];
}

BOOL sub_24808F560(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 16);
    if (v2 > 4)
    {
      sub_2480B3634();
    }

    if (v2)
    {
      for (i = (a1 + 32); *(i - 1) > a2 || *i < a2; i += 2)
      {
        if (!--v2)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = *(a1 + 8);
    v5 = a1 + 8;
    v6 = v7;
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = v5;
    do
    {
      v9 = *(v6 + 40);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * v11);
    }

    while (v6);
    if (v8 == v5 || *(v8 + 32) > a2)
    {
LABEL_17:
      v8 = v5;
    }

    return v8 != v5;
  }
}

BOOL sub_24808F620(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 40);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == v3 || a2 + a3 - 1 < *(v6 + 32))
  {
LABEL_10:
    v6 = v3;
  }

  return v6 != v3;
}

void *sub_24808F72C(void *result)
{
  v2 = *result;
  v1 = result[1];
  if (*result != v1)
  {
    v3 = result[2];
    if (v3 == v2[5])
    {
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      *result = v5;
      if (v5 == v1)
      {
        v7 = 0;
      }

      else
      {
        v7 = v5[4];
      }
    }

    else
    {
      v7 = v3 + 1;
    }

    result[2] = v7;
  }

  return result;
}

uint64_t **sub_24808F960(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_24808FD28(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 2) = *(v9 + 2);
          sub_24808FAC4(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_24808FD28(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_24808FD7C(&v12);
  }

  if (a2 != a3)
  {
    sub_24808FE28();
  }

  return result;
}

void sub_24808FAB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24808FD7C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_24808FAC4(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[5] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_24808FB34(a1, v3, v5, a2);
  return a2;
}

uint64_t *sub_24808FB34(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_24808FB8C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_24808FB8C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *sub_24808FD28(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_24808FD7C(uint64_t a1)
{
  sub_24808FDD4(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_24808FDD4(*a1, v2);
  }

  return a1;
}

void sub_24808FDD4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_24808FDD4(a1, *a2);
    sub_24808FDD4(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_24808FECC(uint64_t a1, unint64_t *a2)
{
  v3 = *a2 - 1;
  if (!*a2)
  {
    v3 = 0;
  }

  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = (a1 + 8);
    do
    {
      v7 = v4[5];
      v15 = v7 >= v3;
      v8 = v7 < v3;
      if (v15)
      {
        v6 = v4;
      }

      v4 = v4[v8];
    }

    while (v4);
    if (v6 != v5)
    {
      v10 = a2[1];
      v9 = *a2;
      do
      {
        v12 = v6[4];
        v11 = v6[5];
        if ((v11 == -1 || v11 + 1 != v9) && (!v12 || v12 - 1 != v10))
        {
          v15 = v11 >= v9 && v10 >= v12;
          if (!v15)
          {
            break;
          }
        }

        if (v12 < v9)
        {
          v9 = v6[4];
        }

        if (v10 <= v11)
        {
          v10 = v6[5];
        }

        v16 = sub_24808FFF8(a1, v6);
        operator delete(v6);
        v6 = v16;
      }

      while (v5 != v16);
      sub_2480903EC();
    }
  }

  sub_2480903EC();
}

uint64_t *sub_24808FFF8(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_24809006C(v6, a2);
  return v3;
}

uint64_t *sub_24809006C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void *sub_248090488(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a1 + 1;
  if (a1 + 1 != a2 && a2[5] < *a4)
  {
    while (1)
    {
      v5 = *v4;
      a2 = v4;
      if (!*v4)
      {
        break;
      }

      while (1)
      {
        v4 = v5;
        if (v5[5] >= *a4)
        {
          break;
        }

        v5 = v5[1];
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_20:
    *a3 = v4;
    return a2;
  }

  v6 = *a2;
  if (*a1 == a2)
  {
    v8 = a2;
  }

  else
  {
    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v9 = a2;
      do
      {
        v8 = v9[2];
        v10 = *v8 == v9;
        v9 = v8;
      }

      while (v10);
    }

    v11 = a4[1];
    if (v11 < v8[4])
    {
      while (1)
      {
        v12 = *v4;
        a2 = v4;
        if (!*v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          v4 = v12;
          if (v11 < v12[4])
          {
            break;
          }

          v12 = v12[1];
          if (!v12)
          {
LABEL_19:
            a2 = v4 + 1;
            goto LABEL_20;
          }
        }
      }
    }
  }

  if (v6)
  {
    *a3 = v8;
    return v8 + 1;
  }

  else
  {
    *a3 = a2;
  }

  return a2;
}

std::logic_error *sub_248090570(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_248090C90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = objc_msgSend_ticket(v7, a2, a3, a4, a5);
  LOBYTE(v6) = objc_msgSend__holdReceivedAgent_ticket_(v6, v9, v7, v8, v10);

  if ((v6 & 1) == 0)
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);

    objc_msgSend__welcomeAgent_(v14, v11, v15, v12, v13);
  }
}

uint64_t sub_248090FEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend__runAgentPrologue_(*(a1 + 32), a2, *(a1 + 40), a4, a5);
  objc_msgSend__runAgentPrologue_(*(a1 + 32), v6, *(a1 + 48), v7, v8);
  objc_msgSend__executeAgent_(*(a1 + 32), v9, *(a1 + 40), v10, v11);
  objc_msgSend__executeAgent_(*(a1 + 32), v12, *(a1 + 48), v13, v14);
  objc_msgSend__runAgentEpilogue_(*(a1 + 32), v15, *(a1 + 40), v16, v17);
  v21 = *(a1 + 32);
  v22 = *(a1 + 48);

  return objc_msgSend__runAgentEpilogue_(v21, v18, v22, v19, v20);
}

void sub_248091058(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v2 = *(a1 + 32);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v38, v44, 16);
  if (v4)
  {
    v8 = v4;
    v9 = *v39;
    do
    {
      v10 = 0;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend__runAgentPrologue_(*(a1 + 40), v5, *(*(&v38 + 1) + 8 * v10++), v6, v7);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v38, v44, 16);
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = *(a1 + 32);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v34, v43, 16);
  if (v13)
  {
    v17 = v13;
    v18 = *v35;
    do
    {
      v19 = 0;
      do
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend__executeAgent_(*(a1 + 40), v14, *(*(&v34 + 1) + 8 * v19++), v15, v16);
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v34, v43, 16);
    }

    while (v17);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = *(a1 + 32);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v30, v42, 16);
  if (v22)
  {
    v26 = v22;
    v27 = *v31;
    do
    {
      v28 = 0;
      do
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(v20);
        }

        objc_msgSend__runAgentEpilogue_(*(a1 + 40), v23, *(*(&v30 + 1) + 8 * v28++), v24, v25, v30);
      }

      while (v26 != v28);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v30, v42, 16);
    }

    while (v26);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_248091330(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = *MEMORY[0x277D85DE8];
  objc_msgSend__runAgentPrologue_(*(a1 + 32), a2, *(a1 + 40), a4, a5);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = *(a1 + 48);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v48, v54, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v49;
    do
    {
      v14 = 0;
      do
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend__runAgentPrologue_(*(a1 + 32), v9, *(*(&v48 + 1) + 8 * v14++), v10, v11);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v48, v54, 16);
    }

    while (v12);
  }

  objc_msgSend__executeAgent_(*(a1 + 32), v15, *(a1 + 40), v16, v17);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = *(a1 + 48);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v44, v53, 16);
  if (v20)
  {
    v24 = v20;
    v25 = *v45;
    do
    {
      v26 = 0;
      do
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v18);
        }

        objc_msgSend__executeAgent_(*(a1 + 32), v21, *(*(&v44 + 1) + 8 * v26++), v22, v23);
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v44, v53, 16);
    }

    while (v24);
  }

  objc_msgSend__runAgentEpilogue_(*(a1 + 32), v27, *(a1 + 40), v28, v29);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v30 = *(a1 + 48);
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v40, v52, 16);
  if (v32)
  {
    v36 = v32;
    v37 = *v41;
    do
    {
      v38 = 0;
      do
      {
        if (*v41 != v37)
        {
          objc_enumerationMutation(v30);
        }

        objc_msgSend__runAgentEpilogue_(*(a1 + 32), v33, *(*(&v40 + 1) + 8 * v38++), v34, v35, v40);
      }

      while (v36 != v38);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v40, v52, 16);
    }

    while (v36);
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t XREngineeringTypeIDForMnemonic(void *a1)
{
  v1 = qword_27EE867A8;
  v5 = a1;
  if (v1 != -1)
  {
    sub_2480B36B8();
  }

  v6 = objc_msgSend_indexOfObject_(qword_27EE867A0, v2, v5, v3, v4);

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2480919EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_orderedSetWithCapacity_(MEMORY[0x277CBEB40], a2, 280, a4, a5);
  v6 = qword_27EE867A0;
  qword_27EE867A0 = v5;

  v8 = qword_27EE867A0;

  return MEMORY[0x2821F9670](v8, sel_addObjects_count_, &XR_ENGINEERING_MNEMONIC_BY_ETYPE, 280, v7);
}

uint64_t XREngineeringTypeUnwrapAny(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_msgSend_engineeringType(v3, v4, v5, v6, v7) == 107)
  {
    Value_fieldIndex = objc_msgSend_getValue_fieldIndex_(v3, v8, a2, 0, v9);
  }

  else
  {
    Value_fieldIndex = 0;
  }

  return Value_fieldIndex;
}

void sub_248092500()
{
  v0 = objc_opt_new();
  v1 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2480925C8;
  v12[3] = &unk_278EFBF38;
  v13 = v0;
  v2 = v0;
  objc_msgSend_enumerateEngineeringTypeDefs_(v1, v3, v12, v4, v5);
  v10 = objc_msgSend_copy(v2, v6, v7, v8, v9);
  v11 = qword_27EE867B0;
  qword_27EE867B0 = v10;
}

void sub_2480925C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  v12 = objc_msgSend_mnemonic(v3, v6, v7, v8, v9);

  objc_msgSend_setObject_forKeyedSubscript_(v5, v10, v4, v12, v11);
}

id sub_248092AB0(void *a1)
{
  v1 = a1;
  if (objc_msgSend_engineeringType(v1, v2, v3, v4, v5) == 135)
  {
    v26 = 0;
    v27 = 0;
    if (objc_msgSend_getValue_fieldIndex_(v1, v6, &v27, 0, v7))
    {
      if (objc_msgSend_getValue_fieldIndex_(v1, v8, &v26, 1, v9))
      {
        v14 = objc_msgSend_uint64(v27, v10, v11, v12, v13);
        v25[1] = bswap64(objc_msgSend_uint64(v26, v15, v16, v17, v18, bswap64(v14)));
        v19 = objc_alloc(MEMORY[0x277CCAD78]);
        v23 = objc_msgSend_initWithUUIDBytes_(v19, v20, v25, v21, v22);

        goto LABEL_8;
      }
    }
  }

  v23 = 0;
LABEL_8:

  return v23;
}

void sub_248092B90(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x248092B68);
  }

  _Unwind_Resume(a1);
}

void sub_248092BB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  if (objc_msgSend_engineeringType(v5, v6, v7, v8, v9) == 208)
  {
    v14 = objc_msgSend_objectValue(v5, v10, v11, v12, v13);
    if (objc_msgSend_count(v14, v15, v16, v17, v18))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        sub_2480B3754(v14, v36, v37, v38, v39);
      }
    }

    else if (objc_msgSend_count(v14, v19, v20, v21, v22) >= 2)
    {
      v26 = 1;
      do
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(v14, v23, v26 - 1, v24, v25);
        v31 = objc_msgSend_objectAtIndexedSubscript_(v14, v28, v26, v29, v30);
        v4[2](v4, v27, v31);

        v26 += 2;
      }

      while (objc_msgSend_count(v14, v32, v33, v34, v35) > v26);
    }
  }
}

void sub_248092CBC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  if (objc_msgSend_engineeringType(v5, v6, v7, v8, v9) != 163)
  {
    goto LABEL_20;
  }

  v33 = 0;
  if (!objc_msgSend_getLengthOfUint64Representation_(v5, v10, &v33, v11, v12))
  {
    goto LABEL_20;
  }

  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  if (!v33)
  {
    goto LABEL_19;
  }

  v15 = 0;
  while (1)
  {
    if (!objc_msgSend_getValue_fieldIndex_(v5, v13, &v32, v15, v14) || !objc_msgSend_isValid(v32, v13, v16, v17, v14) || !objc_msgSend_getValue_fieldIndex_(v32, v13, &v31, 0, v14) || !objc_msgSend_getValue_fieldIndex_(v32, v13, &v30, 1, v14))
    {
      goto LABEL_18;
    }

    v24 = objc_msgSend_uuidFromEngineeringValue(v31, v13, v18, v19, v14);
    if (v24)
    {
      v25 = objc_msgSend_uint32(v30, v20, v21, v22, v23);
      v26 = v25 <= 1uLL ? 1 : v25;
      v27 = v26 - 1;
      v28 = v15 ? v27 : v25;
      v29 = 0;
      v4[2](v4, v24, v28, &v29);
      if (v29)
      {
        break;
      }
    }

LABEL_18:
    if (v33 <= ++v15)
    {
      goto LABEL_19;
    }
  }

LABEL_19:
LABEL_20:
}

uint64_t sub_248092E18(void *a1, uint64_t a2, void *a3, void *a4, void *a5, unint64_t a6, unint64_t a7)
{
  v12 = a1;
  if (objc_msgSend_engineeringType(v12, v13, v14, v15, v16) == 209)
  {
    v42 = 0;
    if (a4)
    {
      if (!objc_msgSend_getValue_fieldIndex_(v12, v17, &v42, 0, v18))
      {
        goto LABEL_20;
      }

      *a4 = objc_msgSend_uuidFromEngineeringValue(v42, v19, v20, v21, v22);
    }

    if (a3)
    {
      if (!objc_msgSend_getValue_fieldIndex_(v12, v17, &v42, 2, v18))
      {
        goto LABEL_20;
      }

      *a3 = objc_msgSend_string(v42, v23, v24, v25, v26);
    }

    if (a5)
    {
      if (!objc_msgSend_getValue_fieldIndex_(v12, v17, &v42, 1, v18))
      {
        goto LABEL_20;
      }

      *a5 = objc_msgSend_string(v42, v27, v28, v29, v30);
    }

    if (!(a6 | a7))
    {
LABEL_18:
      v40 = 1;
LABEL_21:

      goto LABEL_22;
    }

    if (objc_msgSend_getValue_fieldIndex_(v12, v17, &v42, 3, v18))
    {
      v35 = objc_msgSend_string(v42, v31, v32, v33, v34);
      v39 = v35;
      if (a6)
      {
        *a6 = objc_msgSend_isEqualToString_(v35, v36, @"shared", v37, v38);
      }

      if (a7)
      {
        *a7 = objc_msgSend_isEqualToString_(v39, v36, @"ephemeral", v37, v38);
      }

      goto LABEL_18;
    }

LABEL_20:
    v40 = 0;
    goto LABEL_21;
  }

  v40 = 0;
LABEL_22:

  return v40;
}

uint64_t sub_248092F80(void *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v6 = a1;
  if (objc_msgSend_engineeringType(v6, v7, v8, v9, v10) == 23)
  {
    v21 = 0;
    v22 = 0;
    if (objc_msgSend_getValue_fieldIndex_(v6, v11, &v22, 0, v12) && objc_msgSend_getValue_fieldIndex_(v6, v13, &v21, 1, v14))
    {
      if (a3)
      {
        *a3 = objc_msgSend_uint32(v22, v15, v16, v17, v18);
      }

      if (a4)
      {
        *a4 = objc_msgSend_string(v21, v15, v16, v17, v18);
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t sub_248093048(void *a1, uint64_t a2, uint64_t *a3, id *a4)
{
  v6 = a1;
  if (objc_msgSend_engineeringType(v6, v7, v8, v9, v10) == 8)
  {
    obj = 0;
    v22 = 0;
    if (objc_msgSend_getValue_fieldIndex_(v6, v11, &v22, 0, v12) && objc_msgSend_getValue_fieldIndex_(v6, v13, &obj, 1, v14))
    {
      if (a3)
      {
        *a3 = objc_msgSend_uint64(v22, v15, v16, v17, v18);
      }

      if (a4)
      {
        objc_storeStrong(a4, obj);
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t sub_2480931E8()
{
  v0 = objc_opt_new();
  v1 = qword_27EE867C0;
  qword_27EE867C0 = v0;

  objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v2, @"MACH (0x01)", 1, v3);
  objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v4, @"NETWORK (0x02)", 2, v5);
  objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v6, @"FSYSTEM (0x03)", 3, v7);
  objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v8, @"BSD (0x04)", 4, v9);
  objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v10, @"IOKIT (0x05)", 5, v11);
  objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v12, @"DRIVERS (0x06)", 6, v13);
  objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v14, @"TRACE (0x07)", 7, v15);
  objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v16, @"MISC (0x14)", 20, v17);
  objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v18, @"MIG (0xff)", 255, v19);
  result = objc_msgSend_isAppleInternal(MEMORY[0x277CCAC38], v20, v21, v22, v23);
  if (result)
  {
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v25, @"DLIL (0x08)", 8, v26);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v27, @"PTHREAD (0x09)", 9, v28);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v29, @"CORESTORAGE (0x0a)", 10, v30);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v31, @"CG (0x0b)", 11, v32);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v33, @"MONOTONIC (0x0c)", 12, v34);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v35, @"SECURITY (0x1e)", 30, v36);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v37, @"DYLD (0x1f)", 31, v38);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v39, @"QT (0x20)", 32, v40);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v41, @"APPS (0x21)", 33, v42);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v43, @"LAUNCHD (0x22)", 34, v44);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v45, @"SILICON (0x23)", 35, v46);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v47, @"PERF (0x25)", 37, v48);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v49, @"IMPORTANCE (0x26)", 38, v50);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v51, @"BANK (0x28)", 40, v52);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v53, @"XPC (0x29)", 41, v54);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v55, @"ATM (0x2a)", 42, v56);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v57, @"ARIADNE (0x2b)", 43, v58);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v59, @"DAEMON (0x2c)", 44, v60);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v61, @"ENERGYTRACE (0x2d)", 45, v62);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v63, @"DISPATCH (0x2e)", 46, v64);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v65, @"IMG (0x31)", 49, v66);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v67, @"UMALLOC (0x33)", 51, v68);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v69, @"TURNSTILE (0x35)", 53, v70);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v71, @"AUDIO (0x36)", 54, v72);
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867C0, v73, @"GRAPHICS (0x85)", 133, v74);
    v77 = qword_27EE867C0;

    return objc_msgSend_setObject_forIntegerKey_(v77, v75, @"MUSE (0x34)", 52, v76);
  }

  return result;
}

void sub_248093504()
{
  v0 = objc_opt_new();
  v1 = qword_27EE867D0;
  qword_27EE867D0 = v0;

  if (objc_msgSend_isAppleInternal(MEMORY[0x277CCAC38], v2, v3, v4, v5))
  {
    v443 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v6, v443, 1, v7);
    objc_msgSend_setObject_forIntegerKey_(v443, v8, @"EXCP_KTRAP_x86 (0x02)", 2, v9);
    objc_msgSend_setObject_forIntegerKey_(v443, v10, @"EXCP_SYNC_ARM (0x03)", 3, v11);
    objc_msgSend_setObject_forIntegerKey_(v443, v12, @"EXCP_SERR_ARM (0x04)", 4, v13);
    objc_msgSend_setObject_forIntegerKey_(v443, v14, @"EXCP_INTR (0x05)", 5, v15);
    objc_msgSend_setObject_forIntegerKey_(v443, v16, @"EXCP_ALNG (0x06)", 6, v17);
    objc_msgSend_setObject_forIntegerKey_(v443, v18, @"EXCP_UTRAP_x86 (0x07)", 7, v19);
    objc_msgSend_setObject_forIntegerKey_(v443, v20, @"EXCP_FP (0x08)", 8, v21);
    objc_msgSend_setObject_forIntegerKey_(v443, v22, @"EXCP_DECI (0x09)", 9, v23);
    objc_msgSend_setObject_forIntegerKey_(v443, v24, @"SIGNPOST (0x0a)", 10, v25);
    objc_msgSend_setObject_forIntegerKey_(v443, v26, @"EXCP_SC (0x0c)", 12, v27);
    objc_msgSend_setObject_forIntegerKey_(v443, v28, @"EXCP_TRACE (0x0d)", 13, v29);
    objc_msgSend_setObject_forIntegerKey_(v443, v30, @"EXCP_EMUL (0x0e)", 14, v31);
    objc_msgSend_setObject_forIntegerKey_(v443, v32, @"IHDLR (0x10)", 16, v33);
    objc_msgSend_setObject_forIntegerKey_(v443, v34, @"IPC (0x20)", 32, v35);
    objc_msgSend_setObject_forIntegerKey_(v443, v36, @"RESOURCE (0x25)", 37, v37);
    objc_msgSend_setObject_forIntegerKey_(v443, v38, @"VM (0x30)", 48, v39);
    objc_msgSend_setObject_forIntegerKey_(v443, v40, @"LEAKS (0x31)", 49, v41);
    objc_msgSend_setObject_forIntegerKey_(v443, v42, @"WORKINGSET (0x32)", 50, v43);
    objc_msgSend_setObject_forIntegerKey_(v443, v44, @"SCHED (0x40)", 64, v45);
    objc_msgSend_setObject_forIntegerKey_(v443, v46, @"MSGID_INVALID (0x50)", 80, v47);
    objc_msgSend_setObject_forIntegerKey_(v443, v48, @"LOCKS (0x60)", 96, v49);
    objc_msgSend_setObject_forIntegerKey_(v443, v50, @"PMAP (0x70)", 112, v51);
    objc_msgSend_setObject_forIntegerKey_(v443, v52, @"CLOCK (0x80)", 128, v53);
    objc_msgSend_setObject_forIntegerKey_(v443, v54, @"MP (0x90)", 144, v55);
    objc_msgSend_setObject_forIntegerKey_(v443, v56, @"VM_PRESSURE (0xa0)", 160, v57);
    objc_msgSend_setObject_forIntegerKey_(v443, v58, @"STACKSHOT (0xa1)", 161, v59);
    objc_msgSend_setObject_forIntegerKey_(v443, v60, @"SFI (0xa2)", 162, v61);
    objc_msgSend_setObject_forIntegerKey_(v443, v62, @"ENERGY_PERF (0xa3)", 163, v63);
    objc_msgSend_setObject_forIntegerKey_(v443, v64, @"SYSDIAGNOSE (0xa4)", 164, v65);
    objc_msgSend_setObject_forIntegerKey_(v443, v66, @"ZALLOC (0xa5)", 165, v67);
    objc_msgSend_setObject_forIntegerKey_(v443, v68, @"THREAD_GROUP (0xa6)", 166, v69);
    objc_msgSend_setObject_forIntegerKey_(v443, v70, @"COALITION (0xa7)", 167, v71);
    objc_msgSend_setObject_forIntegerKey_(v443, v72, @"SHAREDREGION (0xa8)", 168, v73);
    objc_msgSend_setObject_forIntegerKey_(v443, v74, @"SCHED_CLUTCH (0xa9)", 169, v75);
    objc_msgSend_setObject_forIntegerKey_(v443, v76, @"IO(0xaa)", 170, v77);
    objc_msgSend_setObject_forIntegerKey_(v443, v78, @"WORKGROUP (0xab)", 171, v79);
    objc_msgSend_setObject_forIntegerKey_(v443, v80, @"HV (0xac)", 172, v81);
    objc_msgSend_setObject_forIntegerKey_(v443, v82, @"KCOV (0xad)", 173, v83);
    objc_msgSend_setObject_forIntegerKey_(v443, v84, @"MACHDEP_EXCP_SC_x86 (0xae)", 174, v85);
    objc_msgSend_setObject_forIntegerKey_(v443, v86, @"MACHDEP_EXCP_SC_ARM (0xaf)", 175, v87);
    v442 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v88, v442, 2, v89);
    objc_msgSend_setObject_forIntegerKey_(v442, v90, @"NETIP (0x01)", 1, v91);
    objc_msgSend_setObject_forIntegerKey_(v442, v92, @"NETARP (0x02)", 2, v93);
    objc_msgSend_setObject_forIntegerKey_(v442, v94, @"NETUDP (0x03)", 3, v95);
    objc_msgSend_setObject_forIntegerKey_(v442, v96, @"NETTCP (0x04)", 4, v97);
    objc_msgSend_setObject_forIntegerKey_(v442, v98, @"NETICMP (0x05)", 5, v99);
    objc_msgSend_setObject_forIntegerKey_(v442, v100, @"NETIGMP (0x06)", 6, v101);
    objc_msgSend_setObject_forIntegerKey_(v442, v102, @"NETRIP (0x07)", 7, v103);
    objc_msgSend_setObject_forIntegerKey_(v442, v104, @"NETOSPF (0x08)", 8, v105);
    objc_msgSend_setObject_forIntegerKey_(v442, v106, @"NETISIS (0x09)", 9, v107);
    objc_msgSend_setObject_forIntegerKey_(v442, v108, @"NETSNMP (0x0a)", 10, v109);
    objc_msgSend_setObject_forIntegerKey_(v442, v110, @"NETSOCK (0x0b)", 11, v111);
    objc_msgSend_setObject_forIntegerKey_(v442, v112, @"NETAARP (0x64)", 100, v113);
    objc_msgSend_setObject_forIntegerKey_(v442, v114, @"NETDDP (0x65)", 101, v115);
    objc_msgSend_setObject_forIntegerKey_(v442, v116, @"NETNBP (0x66)", 102, v117);
    objc_msgSend_setObject_forIntegerKey_(v442, v118, @"NETZIP (0x67)", 103, v119);
    objc_msgSend_setObject_forIntegerKey_(v442, v120, @"NETADSP (0x68)", 104, v121);
    objc_msgSend_setObject_forIntegerKey_(v442, v122, @"NETATP (0x69)", 105, v123);
    objc_msgSend_setObject_forIntegerKey_(v442, v124, @"NETASP (0x6a)", 106, v125);
    objc_msgSend_setObject_forIntegerKey_(v442, v126, @"NETAFP (0x6b)", 107, v127);
    objc_msgSend_setObject_forIntegerKey_(v442, v128, @"NETRTMP (0x6c)", 108, v129);
    objc_msgSend_setObject_forIntegerKey_(v442, v130, @"NETAURP (0x6d)", 109, v131);
    objc_msgSend_setObject_forIntegerKey_(v442, v132, @"NETIPSEC (0x80)", 128, v133);
    objc_msgSend_setObject_forIntegerKey_(v442, v134, @"NETVMNET (0x81)", 129, v135);
    v136 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v137, v136, 5, v138);
    objc_msgSend_setObject_forIntegerKey_(v136, v139, @"IOINTC (0x00)", 0, v140);
    objc_msgSend_setObject_forIntegerKey_(v136, v141, @"IOWORKLOOP (0x01)", 1, v142);
    objc_msgSend_setObject_forIntegerKey_(v136, v143, @"IOINTES (0x02)", 2, v144);
    objc_msgSend_setObject_forIntegerKey_(v136, v145, @"IOCLKES (0x03)", 3, v146);
    objc_msgSend_setObject_forIntegerKey_(v136, v147, @"IOCMDQ (0x04)", 4, v148);
    objc_msgSend_setObject_forIntegerKey_(v136, v149, @"IOMCURS (0x05)", 5, v150);
    objc_msgSend_setObject_forIntegerKey_(v136, v151, @"IOMDESC (0x06)", 6, v152);
    objc_msgSend_setObject_forIntegerKey_(v136, v153, @"IOPOWER (0x07)", 7, v154);
    objc_msgSend_setObject_forIntegerKey_(v136, v155, @"IOSERVICE (0x08)", 8, v156);
    objc_msgSend_setObject_forIntegerKey_(v136, v157, @"IOREGISTRY (0x09)", 9, v158);
    objc_msgSend_setObject_forIntegerKey_(v136, v159, @"IOSTORAGE (0x20)", 32, v160);
    objc_msgSend_setObject_forIntegerKey_(v136, v161, @"IONETWORK (0x21)", 33, v162);
    objc_msgSend_setObject_forIntegerKey_(v136, v163, @"IOKEYBOARD (0x22)", 34, v164);
    objc_msgSend_setObject_forIntegerKey_(v136, v165, @"IOHID (0x23)", 35, v166);
    objc_msgSend_setObject_forIntegerKey_(v136, v167, @"IOAUDIO (0x24)", 36, v168);
    objc_msgSend_setObject_forIntegerKey_(v136, v169, @"IOSERIAL (0x25)", 37, v170);
    objc_msgSend_setObject_forIntegerKey_(v136, v171, @"IOTTY (0x26)", 38, v172);
    objc_msgSend_setObject_forIntegerKey_(v136, v173, @"IOSAM (0x27)", 39, v174);
    objc_msgSend_setObject_forIntegerKey_(v136, v175, @"IOPARALLELATA (0x28)", 40, v176);
    objc_msgSend_setObject_forIntegerKey_(v136, v177, @"IOPARALLELSCSI (0x29)", 41, v178);
    objc_msgSend_setObject_forIntegerKey_(v136, v179, @"IOSATA (0x2a)", 42, v180);
    objc_msgSend_setObject_forIntegerKey_(v136, v181, @"IOSAS (0x2b)", 43, v182);
    objc_msgSend_setObject_forIntegerKey_(v136, v183, @"IOFIBRECHANNEL (0x2c)", 44, v184);
    objc_msgSend_setObject_forIntegerKey_(v136, v185, @"IOUSB (0x2d)", 45, v186);
    objc_msgSend_setObject_forIntegerKey_(v136, v187, @"IOBLUETOOTH (0x2e)", 46, v188);
    objc_msgSend_setObject_forIntegerKey_(v136, v189, @"IOFIREWIRE (0x2f)", 47, v190);
    objc_msgSend_setObject_forIntegerKey_(v136, v191, @"IOINFINIBAND (0x30)", 48, v192);
    objc_msgSend_setObject_forIntegerKey_(v136, v193, @"IOCPUPM (0x31)", 49, v194);
    objc_msgSend_setObject_forIntegerKey_(v136, v195, @"IOGRAPHICS (0x32)", 50, v196);
    objc_msgSend_setObject_forIntegerKey_(v136, v197, @"HIBERNATE (0x33)", 51, v198);
    objc_msgSend_setObject_forIntegerKey_(v136, v199, @"IOTHUNDERBOLT (0x34)", 52, v200);
    objc_msgSend_setObject_forIntegerKey_(v136, v201, @"BOOTER (0x35)", 53, v202);
    objc_msgSend_setObject_forIntegerKey_(v136, v203, @"IOAUDIO2 (0x36)", 54, v204);
    objc_msgSend_setObject_forIntegerKey_(v136, v205, @"IOAFK (0x37)", 55, v206);
    objc_msgSend_setObject_forIntegerKey_(v136, v207, @"IOSURFACEPA (0x40)", 64, v208);
    objc_msgSend_setObject_forIntegerKey_(v136, v209, @"IOMDPA (0x41)", 65, v210);
    objc_msgSend_setObject_forIntegerKey_(v136, v211, @"IODARTPA (0x42)", 66, v212);
    v213 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v214, v213, 6, v215);
    objc_msgSend_setObject_forIntegerKey_(v213, v216, @"DRVSTORAGE (0x01)", 1, v217);
    objc_msgSend_setObject_forIntegerKey_(v213, v218, @"DRVNETWORK (0x02)", 2, v219);
    objc_msgSend_setObject_forIntegerKey_(v213, v220, @"DRVKEYBOARD (0x03)", 3, v221);
    objc_msgSend_setObject_forIntegerKey_(v213, v222, @"DRVHID (0x04)", 4, v223);
    objc_msgSend_setObject_forIntegerKey_(v213, v224, @"DRVAUDIO (0x05)", 5, v225);
    objc_msgSend_setObject_forIntegerKey_(v213, v226, @"DRVSERIAL (0x07)", 7, v227);
    objc_msgSend_setObject_forIntegerKey_(v213, v228, @"DRVSAM (0x08)", 8, v229);
    objc_msgSend_setObject_forIntegerKey_(v213, v230, @"DRVPARALLELATA (0x09)", 9, v231);
    objc_msgSend_setObject_forIntegerKey_(v213, v232, @"DRVPARALLELSCSI (0x0a)", 10, v233);
    objc_msgSend_setObject_forIntegerKey_(v213, v234, @"DRVSATA (0x0b)", 11, v235);
    objc_msgSend_setObject_forIntegerKey_(v213, v236, @"DRVSAS (0x0c)", 12, v237);
    objc_msgSend_setObject_forIntegerKey_(v213, v238, @"DRVFIBRECHANNEL (0x0d)", 13, v239);
    objc_msgSend_setObject_forIntegerKey_(v213, v240, @"DRVUSB (0x0e)", 14, v241);
    objc_msgSend_setObject_forIntegerKey_(v213, v242, @"DRVBLUETOOTH (0x0f)", 15, v243);
    objc_msgSend_setObject_forIntegerKey_(v213, v244, @"DRVFIREWIRE (0x10)", 16, v245);
    objc_msgSend_setObject_forIntegerKey_(v213, v246, @"DRVINFINIBAND (0x11)", 17, v247);
    objc_msgSend_setObject_forIntegerKey_(v213, v248, @"DRVGRAPHICS (0x12)", 18, v249);
    objc_msgSend_setObject_forIntegerKey_(v213, v250, @"DRVSD (0x13)", 19, v251);
    objc_msgSend_setObject_forIntegerKey_(v213, v252, @"DRVNAND (0x14)", 20, v253);
    objc_msgSend_setObject_forIntegerKey_(v213, v254, @"SSD (0x15)", 21, v255);
    objc_msgSend_setObject_forIntegerKey_(v213, v256, @"DRVSPI (0x16)", 22, v257);
    objc_msgSend_setObject_forIntegerKey_(v213, v258, @"DRVWLAN_802_11 (0x17)", 23, v259);
    objc_msgSend_setObject_forIntegerKey_(v213, v260, @"DRVSSM (0x18)", 24, v261);
    objc_msgSend_setObject_forIntegerKey_(v213, v262, @"DRVSMC (0x19)", 25, v263);
    objc_msgSend_setObject_forIntegerKey_(v213, v264, @"DRVMACEFIMANAGER (0x1a)", 26, v265);
    objc_msgSend_setObject_forIntegerKey_(v213, v266, @"DRVANE (0x1b)", 27, v267);
    objc_msgSend_setObject_forIntegerKey_(v213, v268, @"DRVETHERNET (0x1c)", 28, v269);
    objc_msgSend_setObject_forIntegerKey_(v213, v270, @"DRVMCC (0x1d)", 29, v271);
    objc_msgSend_setObject_forIntegerKey_(v213, v272, @"DRVACCESSORY (0x1e)", 30, v273);
    objc_msgSend_setObject_forIntegerKey_(v213, v274, @"SOCDIAGS (0x1f)", 31, v275);
    objc_msgSend_setObject_forIntegerKey_(v213, v276, @"DRVVIRTIO (0x20)", 32, v277);
    v441 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v278, v441, 8, v279);
    objc_msgSend_setObject_forIntegerKey_(v441, v280, @"DLIL_STATIC (0x01)", 1, v281);
    objc_msgSend_setObject_forIntegerKey_(v441, v282, @"DLIL_PR_MOD (0x02)", 2, v283);
    objc_msgSend_setObject_forIntegerKey_(v441, v284, @"DLIL_IF_MOD (0x03)", 3, v285);
    objc_msgSend_setObject_forIntegerKey_(v441, v286, @"DLIL_PR_FLT (0x04)", 4, v287);
    objc_msgSend_setObject_forIntegerKey_(v441, v288, @"DLIL_IF_FLT (0x05)", 5, v289);
    v290 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v291, v290, 3, v292);
    objc_msgSend_setObject_forIntegerKey_(v290, v293, @"FSRW (0x1)", 1, v294);
    objc_msgSend_setObject_forIntegerKey_(v290, v295, @"DKRW (0x2)", 2, v296);
    objc_msgSend_setObject_forIntegerKey_(v290, v297, @"FSVN (0x3)", 3, v298);
    objc_msgSend_setObject_forIntegerKey_(v290, v299, @"FSLOOOKUP (0x4)", 4, v300);
    objc_msgSend_setObject_forIntegerKey_(v290, v301, @"JOURNAL (0x5)", 5, v302);
    objc_msgSend_setObject_forIntegerKey_(v290, v303, @"IOCTL (0x6)", 6, v304);
    objc_msgSend_setObject_forIntegerKey_(v290, v305, @"BOOTCACHE (0x7)", 7, v306);
    objc_msgSend_setObject_forIntegerKey_(v290, v307, @"HFS (0x8)", 8, v308);
    objc_msgSend_setObject_forIntegerKey_(v290, v309, @"APFS (0x9)", 9, v310);
    objc_msgSend_setObject_forIntegerKey_(v290, v311, @"SMB (0xa)", 10, v312);
    objc_msgSend_setObject_forIntegerKey_(v290, v313, @"MOUNT (0xb)", 11, v314);
    objc_msgSend_setObject_forIntegerKey_(v290, v315, @"EXFAT (0xe)", 14, v316);
    objc_msgSend_setObject_forIntegerKey_(v290, v317, @"MSDOS (0xf)", 15, v318);
    objc_msgSend_setObject_forIntegerKey_(v290, v319, @"ACFS (0x10)", 16, v320);
    objc_msgSend_setObject_forIntegerKey_(v290, v321, @"THROTTLE (0x11)", 17, v322);
    objc_msgSend_setObject_forIntegerKey_(v290, v323, @"DECMP (0x12)", 18, v324);
    objc_msgSend_setObject_forIntegerKey_(v290, v325, @"VFS (0x13)", 19, v326);
    objc_msgSend_setObject_forIntegerKey_(v290, v327, @"LIVEFS (0x14)", 20, v328);
    objc_msgSend_setObject_forIntegerKey_(v290, v329, @"CONTENT_PROT (0xcf)", 207, v330);
    v440 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v331, v440, 31, v332);
    objc_msgSend_setObject_forIntegerKey_(v440, v333, @"UUID (0x05)", 5, v334);
    objc_msgSend_setObject_forIntegerKey_(v440, v335, @"INTERNAL (0x07)", 7, v336);
    objc_msgSend_setObject_forIntegerKey_(v440, v337, @"API (0x08)", 8, v338);
    objc_msgSend_setObject_forIntegerKey_(v440, v339, @"DEBUGGING (0x09)", 9, v340);
    v341 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v342, v341, 33, v343);
    objc_msgSend_setObject_forIntegerKey_(v341, v344, @"LOGINWINDOW (0x03)", 3, v345);
    objc_msgSend_setObject_forIntegerKey_(v341, v346, @"AUDIO (0x04)", 4, v347);
    objc_msgSend_setObject_forIntegerKey_(v341, v348, @"SYSTEMUI (0x05)", 5, v349);
    objc_msgSend_setObject_forIntegerKey_(v341, v350, @"SIGNPOST (0x0a)", 10, v351);
    objc_msgSend_setObject_forIntegerKey_(v341, v352, @"APPKIT (0x0c)", 12, v353);
    objc_msgSend_setObject_forIntegerKey_(v341, v354, @"UIKIT (0x0d)", 13, v355);
    objc_msgSend_setObject_forIntegerKey_(v341, v356, @"DFR (0x0e)", 14, v357);
    objc_msgSend_setObject_forIntegerKey_(v341, v358, @"LAYOUT (0x0f)", 15, v359);
    objc_msgSend_setObject_forIntegerKey_(v341, v360, @"COREDATA (0x10)", 16, v361);
    objc_msgSend_setObject_forIntegerKey_(v341, v362, @"SAMBA (0x80)", 128, v363);
    objc_msgSend_setObject_forIntegerKey_(v341, v364, @"EOSSUPPORT (0x81)", 129, v365);
    objc_msgSend_setObject_forIntegerKey_(v341, v366, @"MACEFIMANAGER (0x82)", 130, v367);
    v439 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v368, v439, 7, v369);
    objc_msgSend_setObject_forIntegerKey_(v439, v370, @"DATA (0x0)", 0, v371);
    objc_msgSend_setObject_forIntegerKey_(v439, v372, @"STRING (0x1)", 1, v373);
    objc_msgSend_setObject_forIntegerKey_(v439, v374, @"INFO (0x2)", 2, v375);
    v376 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v377, v376, 4, v378);
    objc_msgSend_setObject_forIntegerKey_(v376, v379, @"PROC (0x01)", 1, v380);
    objc_msgSend_setObject_forIntegerKey_(v376, v381, @"MEMSTAT (0x02)", 2, v382);
    objc_msgSend_setObject_forIntegerKey_(v376, v383, @"KEVENT (0x03)", 3, v384);
    objc_msgSend_setObject_forIntegerKey_(v376, v385, @"EXCP_SC (0x0c)", 12, v386);
    objc_msgSend_setObject_forIntegerKey_(v376, v387, @"AIO (0x0d)", 13, v388);
    objc_msgSend_setObject_forIntegerKey_(v376, v389, @"SC_EXTENDED_INFO (0x0e)", 14, v390);
    objc_msgSend_setObject_forIntegerKey_(v376, v391, @"SC_EXTENDED_INFO2 (0x0f)", 15, v392);
    objc_msgSend_setObject_forIntegerKey_(v376, v393, @"KDEBUG_TEST (0xff)", 255, v394);
    v395 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v396, v395, 10, v397);
    objc_msgSend_setObject_forIntegerKey_(v395, v398, @"CS_IO", 0, v399);
    v400 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v401, v400, 30, v402);
    objc_msgSend_setObject_forIntegerKey_(v400, v403, @"SEC_KERNEL", 0, v404);
    objc_msgSend_setObject_forIntegerKey_(v400, v405, @"SEC_SANDBOX", 1, v406);
    v407 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v408, v407, 12, v409);
    objc_msgSend_setObject_forIntegerKey_(v407, v410, @"MT_INSTRS_CYCLES", 1, v411);
    objc_msgSend_setObject_forIntegerKey_(v407, v412, @"MT_DEBUG", 2, v413);
    objc_msgSend_setObject_forIntegerKey_(v407, v414, @"MT_RESOURCES_PROC_EXIT", 3, v415);
    objc_msgSend_setObject_forIntegerKey_(v407, v416, @"MT_RESOURCES_THR_EXIT", 4, v417);
    objc_msgSend_setObject_forIntegerKey_(v407, v418, @"MT_TMPTH", 254, v419);
    objc_msgSend_setObject_forIntegerKey_(v407, v420, @"MT_TMPCPU", 255, v421);
    v422 = objc_opt_new();
    objc_msgSend_setObject_forIntegerKey_(qword_27EE867D0, v423, v422, 20, v424);
    objc_msgSend_setObject_forIntegerKey_(v422, v425, @"MISC_COREBRIGHTNESS", 1, v426);
    objc_msgSend_setObject_forIntegerKey_(v422, v427, @"MISC_VIDEOENG", 2, v428);
    objc_msgSend_setObject_forIntegerKey_(v422, v429, @"EVENT", 16, v430);
    objc_msgSend_setObject_forIntegerKey_(v422, v431, @"MISC_INSTRUMENTS", 17, v432);
    objc_msgSend_setObject_forIntegerKey_(v422, v433, @"MISC_INSTRUMENTSBT", 18, v434);
    objc_msgSend_setObject_forIntegerKey_(v422, v435, @"MISC_LAYOUT", 26, v436);
    objc_msgSend_setObject_forIntegerKey_(v422, v437, @"BUFFER", 32, v438);
  }
}

void sub_248094748()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"xs:appinfo";
  v4[1] = @"xs:documentation";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v5, v4, 2);
  v2 = qword_27EE867E0;
  qword_27EE867E0 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24809518C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_count(*(*(a1 + 32) + 16), a2, a3, a4, a5);
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

uint64_t sub_2480952BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2480952D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_copy(*(*(a1 + 32) + 16), a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x2821F96F8]();
}

__CFString *sub_248095378(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v607 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isValid(a2, a2, a3, a4, a5))
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend__stringForSwiftFormattedEngineeringValue_(a1, v12, a2, v14, v15), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      result = objc_msgSend_engineeringType(a2, v12, v13, v14, v15);
      v16 = @"<missing Swift support to format>";
      switch(result)
      {
        case 0:
          goto LABEL_194;
        case 1:
          v313 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v314, @"{%d,%d}", v315, v316, HIDWORD(v313), v313);
          goto LABEL_9;
        case 2:
        case 43:
        case 51:
        case 123:
        case 152:
        case 187:
          v46 = *(a1 + 8);
          v47 = objc_msgSend_objectValue(a2, v18, v19, v20, v21);
          v51 = objc_msgSend_stringFromNumber_(v46, v48, v47, v49, v50);
          goto LABEL_18;
        case 3:
        case 97:
          v104 = MEMORY[0x277CCACA8];
          objc_msgSend_fixedDecimal(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v104, v105, @"%.2lf", v106, v107, v108);
          goto LABEL_9;
        case 4:
        case 44:
          if (objc_msgSend_uint64(a2, v18, v19, v20, v21) != -1)
          {
            goto LABEL_37;
          }

          goto LABEL_172;
        case 5:
        case 6:
        case 235:
          v317 = MEMORY[0x277CCACA8];
          objc_msgSend_fixedDecimal(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v317, v318, @"%.1lf%%", v319, v320, v321);
          goto LABEL_9;
        case 7:
        case 17:
        case 28:
        case 29:
        case 30:
        case 35:
        case 36:
        case 55:
        case 59:
        case 64:
        case 71:
        case 72:
        case 73:
        case 74:
        case 75:
        case 76:
        case 77:
        case 78:
        case 79:
        case 84:
        case 90:
        case 91:
        case 134:
        case 232:
        case 242:
          goto LABEL_13;
        case 8:
          v591 = 0;
          objc_msgSend_getTitleAndSubtitleForThreadEngineeringValue_title_subtitle_(a1, v18, a2, &v591, 0);
          v16 = v591;

          break;
        case 9:
          v591 = 0;
          out[0] = 0;
          v603 = 0;
          if (objc_msgSend_getValue_fieldIndex_(a2, v18, out, 0, v21) && objc_msgSend_getValue_fieldIndex_(a2, v276, &v591, 1, v277) && objc_msgSend_getValue_fieldIndex_(v591, v278, &v603, 0, v279))
          {
            v284 = MEMORY[0x277CCACA8];
            v285 = objc_msgSend_string(out[0], v280, v281, v282, v283);
            v290 = objc_msgSend_uint64(v603, v286, v287, v288, v289);
            v16 = objc_msgSend_stringWithFormat_(v284, v291, @"%@  0x%llx", v292, v293, v285, v290);
          }

          else
          {
            v16 = 0;
          }

          break;
        case 10:
          v47 = objc_msgSend_string(a2, v18, v19, v20, v21);
          if ((objc_msgSend_hasPrefix_(v47, v327, @"MSC_", v328, v329) & 1) == 0 && !objc_msgSend_hasPrefix_(v47, v330, @"BSC_", v331, v332))
          {
            goto LABEL_182;
          }

          v51 = objc_msgSend_substringFromIndex_(v47, v330, 4, v331, v332);
          goto LABEL_18;
        case 11:
        case 12:
        case 20:
        case 32:
        case 37:
        case 45:
        case 49:
        case 50:
        case 53:
        case 54:
        case 57:
        case 58:
        case 60:
        case 67:
        case 80:
        case 81:
        case 82:
        case 83:
        case 85:
        case 86:
        case 87:
        case 98:
        case 100:
        case 101:
        case 105:
        case 106:
        case 108:
        case 109:
        case 110:
        case 112:
        case 113:
        case 115:
        case 117:
        case 118:
        case 119:
        case 120:
        case 121:
        case 128:
        case 129:
        case 132:
        case 137:
        case 138:
        case 141:
        case 144:
        case 145:
        case 148:
        case 149:
        case 153:
        case 154:
        case 156:
        case 165:
        case 166:
        case 167:
        case 168:
        case 169:
        case 170:
        case 171:
        case 172:
        case 174:
        case 175:
        case 176:
        case 177:
        case 178:
        case 179:
        case 180:
        case 182:
        case 183:
        case 184:
        case 188:
        case 191:
        case 196:
        case 199:
        case 200:
        case 201:
        case 202:
        case 203:
        case 204:
        case 211:
        case 212:
        case 213:
        case 214:
        case 217:
        case 218:
        case 219:
        case 220:
        case 224:
        case 227:
        case 228:
        case 229:
        case 230:
        case 231:
        case 239:
        case 240:
        case 241:
        case 244:
        case 246:
        case 249:
        case 250:
        case 251:
        case 254:
        case 258:
        case 263:
        case 264:
        case 272:
        case 273:
        case 274:
        case 275:
        case 276:
        case 277:
        case 278:
        case 279:
          v22 = objc_msgSend_string(a2, v18, v19, v20, v21);
          goto LABEL_9;
        case 13:
        case 15:
        case 68:
        case 70:
        case 89:
        case 160:
          goto LABEL_16;
        case 14:
          v333 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          v337 = objc_msgSend_kDebugClassNameForClass_(XRKDebugClassSubclassStringMapping, v334, v333, v335, v336);
          v342 = v337;
          if (v337)
          {
            v343 = v337;
          }

          else
          {
            v554 = MEMORY[0x277CCACA8];
            v555 = objc_msgSend_uint32(a2, v338, v339, v340, v341);
            v343 = objc_msgSend_stringWithFormat_(v554, v556, @"0x%x", v557, v558, v555);
          }

          v16 = v343;
          goto LABEL_213;
        case 16:
          v423 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          if (v423 >= 3)
          {
            goto LABEL_141;
          }

          v424 = off_278EFC070;
          goto LABEL_179;
        case 18:
        case 19:
        case 56:
        case 122:
        case 127:
          v71 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          isHighestResolutionTimeEnabled = objc_msgSend_isHighestResolutionTimeEnabled(a1, v72, v73, v74, v75);
          v22 = objc_msgSend_stringForNanoseconds_highestResolutionTimeEnabled_(DTNanoTimestampFormatter, v77, v71, isHighestResolutionTimeEnabled, v78);
          goto LABEL_9;
        case 21:
          v22 = objc_msgSend_objectValue(a2, v18, v19, v20, v21);
          goto LABEL_9;
        case 22:
          v299 = *(a1 + 16);
          v300 = MEMORY[0x277CCABB0];
          v301 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          v47 = objc_msgSend_numberWithUnsignedInt_(v300, v302, v301, v303, v304);
          v51 = objc_msgSend_stringFromNumber_(v299, v305, v47, v306, v307);
          goto LABEL_18;
        case 23:
          v591 = 0;
          objc_msgSend_getTitleAndSubtitleForProcessEngineeringValue_title_subtitle_(a1, v18, a2, &v591, 0);
          v16 = v591;

          break;
        case 24:
          v22 = objc_msgSend_stringForCoreProfileBacktraceEngineeringValue_(a1, v18, a2, v20, v21);
          goto LABEL_9;
        case 25:
          v591 = 0;
          if (!objc_msgSend_getLengthOfUint64Representation_(a2, v18, &v591, v20, v21))
          {
            goto LABEL_194;
          }

          v16 = objc_msgSend_string(MEMORY[0x277CCAB68], v348, v349, v350, v351);
          out[0] = 0;
          if (v591)
          {
            for (i = 0; i < v591; ++i)
            {
              if (i)
              {
                objc_msgSend_appendString_(v16, v352, @", ", v353, v354);
              }

              if (objc_msgSend_getValue_fieldIndex_(a2, v352, out, i, v354) && objc_msgSend_isValid(out[0], v356, v357, v358, v359))
              {
                v361 = *(a1 + 8);
                v362 = MEMORY[0x277CCABB0];
                v363 = objc_msgSend_uint64(out[0], v356, v360, v358, v359);
                v367 = objc_msgSend_numberWithUnsignedLongLong_(v362, v364, v363, v365, v366);
                v371 = objc_msgSend_stringFromNumber_(v361, v368, v367, v369, v370);
                objc_msgSend_appendFormat_(v16, v372, @"(%@)", v373, v374, v371);
              }

              else
              {
                objc_msgSend_appendString_(v16, v356, @"<error>", v358, v359);
              }
            }
          }

          break;
        case 26:
          v271 = MEMORY[0x277CCACA8];
          v272 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v271, v273, @"frag %u", v274, v275, v272);
          goto LABEL_9;
        case 27:
          v22 = objc_msgSend_stringForBacktraceEngineeringValue_(a1, v18, a2, v20, v21);
          goto LABEL_9;
        case 31:
          v591 = 0;
          objc_msgSend_getTitleAndSubtitleForCoreEngineeringValue_title_subtitle_(a1, v18, a2, &v591, 0);
          v16 = v591;

          break;
        case 33:
        case 34:
          if (!objc_msgSend_uint64(a2, v18, v19, v20, v21) || objc_msgSend_uint64(a2, v88, v89, v90, v91) == -1)
          {
            goto LABEL_172;
          }

LABEL_37:
          v96 = objc_msgSend_uint64(a2, v92, v93, v94, v95);
          v101 = objc_msgSend_isHighestResolutionTimeEnabled(a1, v97, v98, v99, v100);
          v22 = objc_msgSend_stringForNanoseconds_highestResolutionTimeEnabled_(DTUserTimeFormatter, v102, v96, v101, v103);
          goto LABEL_9;
        case 38:
        case 104:
        case 114:
        case 133:
        case 185:
        case 205:
          v36 = MEMORY[0x277CCACA8];
          v37 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v36, v38, @"%d", v39, v40, v37);
          goto LABEL_9;
        case 39:
        case 40:
        case 41:
        case 42:
        case 236:
          v79 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringForLongLong_(DTBytesFormatter, v80, v79, v81, v82);
          goto LABEL_9;
        case 46:
        case 142:
        case 157:
        case 158:
        case 181:
        case 216:
          v52 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19, v20, v21);
          *(a1 + 66) = 1;
          v597 = 0u;
          v598 = 0u;
          v599 = 0u;
          v600 = 0u;
          v57 = objc_msgSend_objectValue(a2, v53, v54, v55, v56);
          v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v597, v606, 16);
          if (v59)
          {
            v60 = *v598;
            do
            {
              for (j = 0; j != v59; ++j)
              {
                if (*v598 != v60)
                {
                  objc_enumerationMutation(v57);
                }

                v62 = sub_248095378(a1, *(*(&v597 + 1) + 8 * j), 1);
                v66 = v62;
                if (v62)
                {
                  objc_msgSend_addObject_(v52, v63, v62, v64, v65);
                }

                else
                {
                  objc_msgSend_addObject_(v52, v63, @"n/a", v64, v65);
                }
              }

              v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v67, &v597, v606, 16);
            }

            while (v59);
          }

          *(a1 + 66) = a3;
          v16 = objc_msgSend_componentsJoinedByString_(v52, v68, @" ", v69, v70);

          break;
        case 47:
          v203 = MEMORY[0x277CCACA8];
          v204 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v203, v205, @"%u%%", v206, v207, v204);
          goto LABEL_9;
        case 48:
          v217 = objc_msgSend_uint32(a2, v18, v19, v20, v21) + 1;
          if (v217 < 5)
          {
            v218 = off_278EFC0A8;
            goto LABEL_103;
          }

          v16 = 0;
          break;
        case 52:
          v241 = *(a1 + 32);
          v242 = MEMORY[0x277CCABB0];
          objc_msgSend_fixedDecimal(a2, v18, v19, v20, v21);
          v47 = objc_msgSend_numberWithDouble_(v242, v243, v244, v245, v246);
          v51 = objc_msgSend_stringFromNumber_(v241, v247, v47, v248, v249);
          goto LABEL_18;
        case 61:
        case 66:
        case 69:
        case 99:
        case 111:
        case 125:
        case 139:
        case 146:
        case 164:
        case 189:
        case 190:
          v31 = MEMORY[0x277CCACA8];
          v32 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v31, v33, @"%u", v34, v35, v32);
          goto LABEL_9;
        case 62:
        case 63:
        case 92:
        case 102:
          v83 = MEMORY[0x277CCACA8];
          v84 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v83, v85, @"%lld", v86, v87, v84);
          goto LABEL_9;
        case 65:
          v591 = 0;
          v592 = &v591;
          v593 = 0x3032000000;
          v594 = sub_24809885C;
          v595 = sub_24809886C;
          v477 = objc_alloc(MEMORY[0x277CCAB68]);
          v596 = objc_msgSend_initWithString_(v477, v478, @"("), v479, v480;
          v590[0] = MEMORY[0x277D85DD0];
          v590[1] = 3221225472;
          v590[2] = sub_248098874;
          v590[3] = &unk_278EFBFD0;
          v590[4] = &v591;
          objc_msgSend_enumerateUint64Values_(a2, v481, v590, v482, v483);
          if (objc_msgSend_length(*(v592 + 5), v484, v485, v486, v487) == 1)
          {
            v16 = @"()";
          }

          else
          {
            v551 = *(v592 + 5);
            v552 = objc_msgSend_length(v551, v488, v489, v490, v491);
            objc_msgSend_replaceCharactersInRange_withString_(v551, v553, v552 - 1, 1, @""));
            v16 = *(v592 + 5);
          }

          _Block_object_dispose(&v591, 8);

          break;
        case 88:
          v168 = MEMORY[0x277CCACA8];
          v169 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v168, v170, @"Frame %u", v171, v172, v169);
          goto LABEL_9;
        case 93:
          v262 = *(a1 + 24);
          v263 = MEMORY[0x277CCABB0];
          objc_msgSend_fixedDecimal(a2, v18, v19, v20, v21);
          v47 = objc_msgSend_numberWithDouble_(v263, v264, v265, v266, v267);
          v51 = objc_msgSend_stringFromNumber_(v262, v268, v47, v269, v270);
          goto LABEL_18;
        case 94:
          v527 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringForLongLong_(DTBitRateFormatter, v528, v527, v529, v530);
          goto LABEL_9;
        case 95:
        case 96:
          v591 = 0;
          if (objc_msgSend_getLengthOfUint64Representation_(a2, v18, &v591, v20, v21))
          {
            if (v591)
            {
              v109 = objc_alloc(MEMORY[0x277CCAB68]);
              v113 = objc_msgSend_initWithString_(v109, v110, @"("), v111, v112;
              v588[0] = MEMORY[0x277D85DD0];
              v588[1] = 3221225472;
              v588[2] = sub_2480988AC;
              v588[3] = &unk_278EFBFF8;
              v16 = v113;
              v589 = v16;
              objc_msgSend_enumerateUint64Values_(a2, v114, v588, v115, v116);
              v121 = objc_msgSend_length(v16, v117, v118, v119, v120);
              objc_msgSend_replaceCharactersInRange_withString_(v16, v122, v121 - 1, 1, @""));
            }

            else
            {
              v16 = @"()";
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              sub_2480B3814();
            }

LABEL_194:
            v16 = @"<error>";
          }

          break;
        case 103:
          v591 = 0;
          out[0] = 0;
          if (objc_msgSend_getValue_fieldIndex_(a2, v18, &v591, 0, v21) && objc_msgSend_getValue_fieldIndex_(a2, v139, out, 1, v140))
          {
            v145 = MEMORY[0x277CCACA8];
            v146 = objc_msgSend_uint64(v591, v141, v142, v143, v144);
            v151 = objc_msgSend_isHighestResolutionTimeEnabled(a1, v147, v148, v149, v150);
            v154 = objc_msgSend_stringForNanoseconds_highestResolutionTimeEnabled_(DTNanoTimestampFormatter, v152, v146, v151, v153);
            v159 = objc_msgSend_uint64(out[0], v155, v156, v157, v158);
            v163 = objc_msgSend_stringForNanoseconds_(DTUserTimeFormatter, v160, v159, v161, v162);
            v16 = objc_msgSend_stringWithFormat_(v145, v164, @"%@ (%@)", v165, v166, v154, v163);
          }

          else
          {
            v16 = @"-";
          }

          goto LABEL_198;
        case 107:
          v591 = 0;
          if (XREngineeringTypeUnwrapAny(a2, &v591))
          {
            v16 = sub_248095378(a1, v591, a3);
          }

          else
          {
            v16 = @"<any>";
          }

          goto LABEL_202;
        case 116:
          v167 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          if (v167 == 0xEEEEB0B5B2B2EEEELL)
          {
            v16 = @"OS_SIGNPOST_ID_EXCLUSIVE";
          }

          else if (v167 == -1)
          {
            v16 = @"OS_SIGNPOST_ID_INVALID";
          }

          else
          {
            if (v167)
            {
LABEL_13:
              v26 = MEMORY[0x277CCACA8];
              v27 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
              v22 = objc_msgSend_stringWithFormat_(v26, v28, @"0x%llx", v29, v30, v27);
              goto LABEL_9;
            }

            v16 = @"OS_SIGNPOST_ID_NULL";
          }

          break;
        case 124:
          v22 = objc_msgSend_stringForUserIDEngineeringValue_(a1, v18, a2, v20, v21);
          goto LABEL_9;
        case 126:
          if (objc_msgSend_uint32(a2, v18, v19, v20, v21))
          {
            v16 = @"Yes";
          }

          else
          {
            v16 = @"No";
          }

          break;
        case 130:
          v22 = objc_msgSend_stringForTextSymbolEngineeringValue_shouldIncludeLibrary_(a1, v18, a2, 1, v21);
          goto LABEL_9;
        case 131:
        case 197:
          v123 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v124, @"%llu", v125, v126, v123);
          goto LABEL_9;
        case 135:
          v591 = 0;
          v592 = &v591;
          v593 = 0x3010000000;
          v595 = 0;
          v596 = 0;
          v594 = "";
          v587[0] = MEMORY[0x277D85DD0];
          v587[1] = 3221225472;
          v587[2] = sub_2480988DC;
          v587[3] = &unk_278EFBFD0;
          v587[4] = &v591;
          objc_msgSend_enumerateUint64Values_(a2, v18, v587, v20, v21);
          memset(out, 0, 37);
          uuid_unparse(v592 + 32, out);
          v219 = objc_alloc(MEMORY[0x277CCACA8]);
          v16 = objc_msgSend_initWithBytes_length_encoding_(v219, v220, out, 36, 1);
          _Block_object_dispose(&v591, 8);
          break;
        case 136:
          v22 = objc_msgSend_stringForInstrumentTypeEngineeringValue_(a1, v18, a2, v20, v21);
          goto LABEL_9;
        case 140:
          v344 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v345, @"%u/%u", v346, v347, HIDWORD(v344), v344);
          goto LABEL_9;
        case 143:
          v22 = objc_msgSend_stringForSocketAddrEngineeringValue_(a1, v18, a2, v20, v21);
          goto LABEL_9;
        case 147:
          v591 = 0;
          out[0] = 0;
          if (!objc_msgSend_getValue_fieldIndex_(a2, v18, &v591, 0, v21) || !objc_msgSend_getValue_fieldIndex_(a2, v221, out, 2, v222))
          {
            goto LABEL_236;
          }

          if (objc_msgSend_isValid(v591, v223, v224, v225, v226) && objc_msgSend_isValid(out[0], v227, v228, v229, v230))
          {
            v231 = MEMORY[0x277CCACA8];
            v232 = objc_msgSend_string(v591, v227, v228, v229, v230);
            v237 = objc_msgSend_uint64(out[0], v233, v234, v235, v236);
            v16 = objc_msgSend_stringWithFormat_(v231, v238, @"%@ <0x%llx>", v239, v240, v232, v237);

            goto LABEL_198;
          }

          if (objc_msgSend_isValid(out[0], v227, v228, v229, v230))
          {
            v571 = MEMORY[0x277CCACA8];
            v572 = objc_msgSend_uint64(out[0], v567, v568, v569, v570);
            v576 = objc_msgSend_stringWithFormat_(v571, v573, @"0x%llx", v574, v575, v572);
LABEL_235:
            v16 = v576;
            goto LABEL_198;
          }

          if (objc_msgSend_isValid(v591, v567, v568, v569, v570))
          {
            v576 = objc_msgSend_string(v591, v577, v578, v579, v580);
            goto LABEL_235;
          }

LABEL_236:
          v16 = 0;
LABEL_198:

          break;
        case 150:
          v322 = MEMORY[0x277CCACA8];
          objc_msgSend_fixedDecimal(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v322, v323, @"%.2lf:1", v324, v325, v326);
          goto LABEL_9;
        case 151:
          v294 = MEMORY[0x277CCACA8];
          v295 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v294, v296, @"%u / 20", v297, v298, v295);
          goto LABEL_9;
        case 155:
          v250 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          if (!*(a1 + 72))
          {
            v22 = objc_msgSend_stringForNanoseconds_(DTUserTimeFormatter, v251, v250, v252, v253);
            goto LABEL_9;
          }

          v254 = v250 / 1000000000.0;
          v255 = objc_alloc(MEMORY[0x277CBEAA8]);
          v47 = objc_msgSend_initWithTimeInterval_sinceDate_(v255, v256, *(a1 + 72), v257, v258, v254);
          v51 = objc_msgSend_stringFromDate_(*(a1 + 48), v259, v47, v260, v261);
LABEL_18:
          v16 = v51;
LABEL_19:

          break;
        case 159:
          v509 = objc_opt_new();
          v585[0] = MEMORY[0x277D85DD0];
          v585[1] = 3221225472;
          v585[2] = sub_2480988F4;
          v585[3] = &unk_278EFC020;
          v585[4] = a2;
          v510 = v509;
          v586 = v510;
          objc_msgSend_enumerateUint64Values_(a2, v511, v585, v512, v513);
          if (objc_msgSend_length(v510, v514, v515, v516, v517))
          {
            v16 = v510;
          }

          else
          {
            v16 = @"<empty>";
          }

          break;
        case 161:
        case 162:
          v22 = objc_msgSend_stringForCallSiteEngineeringValue_shouldIncludeLibrary_(a1, v18, a2, 1, v21);
          goto LABEL_9;
        case 163:
          v591 = 0;
          v431 = objc_opt_new();
          out[0] = 0;
          if (!objc_msgSend_getLengthOfUint64Representation_(a2, v432, &v591, v433, v434))
          {
            v16 = @"invalid backtrace";
            goto LABEL_228;
          }

          if (objc_msgSend_isMultiline(a1, v435, v436, v437, v438))
          {
            if (v591)
            {
              for (k = 0; k < v591; ++k)
              {
                if (objc_msgSend_getValue_fieldIndex_(a2, v439, out, k, v440) && objc_msgSend_isValid(out[0], v442, v443, v444, v445))
                {
                  if (objc_msgSend_length(v431, v442, v446, v444, v445))
                  {
                    objc_msgSend_appendString_(v431, v447, @"\n", v448, v449);
                  }

                  v450 = objc_msgSend_stringForCallSiteEngineeringValue_shouldIncludeLibrary_(a1, v447, out[0], 0, v449);
                  v454 = v450;
                  if (v450)
                  {
                    objc_msgSend_appendString_(v431, v451, v450, v452, v453);
                  }

                  else
                  {
                    objc_msgSend_appendString_(v431, v451, @"missing", v452, v453);
                  }
                }

                else
                {
                  objc_msgSend_appendString_(v431, v442, @"missing", v444, v445);
                }
              }
            }

            goto LABEL_226;
          }

          if (v591 && objc_msgSend_getValue_fieldIndex_(a2, v439, out, 0, v440) && objc_msgSend_isValid(out[0], v559, v560, v561, v562))
          {
            v563 = sub_248095378(a1, out[0], a3);
            objc_msgSend_appendFormat_(v431, v564, @"%@ ← (%lu other frames)", v565, v566, v563, v591 - 1);

LABEL_226:
            v16 = v431;
            goto LABEL_228;
          }

          v16 = @"empty";
LABEL_228:

          break;
        case 173:
          v47 = objc_msgSend_string(a2, v18, v19, v20, v21);
          v500 = objc_msgSend_rangeOfString_(v47, v497, @".", v498, v499);
          if (v500 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_182:
            v51 = v47;
          }

          else
          {
            v51 = objc_msgSend_substringFromIndex_(v47, v501, v500 + 1, v502, v503);
          }

          goto LABEL_18;
        case 186:
          v375 = MEMORY[0x277CCACA8];
          v376 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v375, v377, @"%llx", v378, v379, v376);
          goto LABEL_9;
        case 192:
          v492 = MEMORY[0x277CCACA8];
          v493 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v492, v494, @"0x%llx", v495, v496, bswap64(v493));
          goto LABEL_9;
        case 193:
          v591 = 0;
          if (objc_msgSend_getValue_fieldIndex_(a2, v18, &v591, 0, v21))
          {
            v191 = sub_248095378(a1, v591, a3);
            v192 = v191;
            if (v191)
            {
              v16 = v191;
            }

            else
            {
              v16 = @"<bad size>";
            }
          }

          else
          {
            v16 = @"<data>";
          }

LABEL_202:

          break;
        case 194:
          objc_msgSend_setUnitOptions_(*(a1 + 56), v18, 1, v20, v21);
          v380 = objc_alloc(MEMORY[0x277CCAB10]);
          objc_msgSend_fixedDecimal(a2, v381, v382, v383, v384);
          v386 = v385;
          v391 = objc_msgSend_baseUnit(MEMORY[0x277CCAE00], v387, v388, v389, v390);
          v47 = objc_msgSend_initWithDoubleValue_unit_(v380, v392, v391, v393, v394, v386);

          v51 = objc_msgSend_stringFromMeasurement_(*(a1 + 56), v395, v47, v396, v397);
          goto LABEL_18;
        case 195:
          objc_msgSend_setUnitOptions_(*(a1 + 56), v18, 2, v20, v21);
          v173 = objc_alloc(MEMORY[0x277CCAB10]);
          objc_msgSend_fixedDecimal(a2, v174, v175, v176, v177);
          v179 = v178;
          v184 = objc_msgSend_baseUnit(MEMORY[0x277CCAE00], v180, v181, v182, v183);
          v47 = objc_msgSend_initWithDoubleValue_unit_(v173, v185, v184, v186, v187, v179);

          v51 = objc_msgSend_stringFromMeasurement_(*(a1 + 56), v188, v47, v189, v190);
          goto LABEL_18;
        case 198:
          *(a1 + 66) = 1;
          v398 = objc_opt_new();
          v581 = 0u;
          v582 = 0u;
          v583 = 0u;
          v584 = 0u;
          v403 = objc_msgSend_objectValue(a2, v399, v400, v401, v402);
          v405 = objc_msgSend_countByEnumeratingWithState_objects_count_(v403, v404, &v581, v604, 16);
          if (v405)
          {
            v406 = *v582;
            do
            {
              for (m = 0; m != v405; ++m)
              {
                if (*v582 != v406)
                {
                  objc_enumerationMutation(v403);
                }

                v408 = sub_248095378(a1, *(*(&v581 + 1) + 8 * m), 1);
                v412 = v408;
                if (v408)
                {
                  objc_msgSend_addObject_(v398, v409, v408, v410, v411);
                }

                else
                {
                  objc_msgSend_addObject_(v398, v409, @"n/a", v410, v411);
                }
              }

              v405 = objc_msgSend_countByEnumeratingWithState_objects_count_(v403, v413, &v581, v604, 16);
            }

            while (v405);
          }

          *(a1 + 66) = a3;
          v16 = objc_msgSend_componentsJoinedByString_(v398, v414, @" ", v415, v416);

          break;
        case 206:
          v193 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          if (v193)
          {
            goto LABEL_64;
          }

          goto LABEL_172;
        case 207:
          v423 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          if (v423 >= 4)
          {
            v16 = @"Unknown";
          }

          else
          {
            v424 = off_278EFC0D0;
LABEL_179:
            v16 = v424[v423];
          }

          break;
        case 208:
          v417 = objc_opt_new();
          v601[0] = MEMORY[0x277D85DD0];
          v601[1] = 3221225472;
          v601[2] = sub_24809879C;
          v601[3] = &unk_278EFBFA8;
          v601[4] = a1;
          v418 = v417;
          v602 = v418;
          objc_msgSend_enumerateKeyValuePairs_(a2, v419, v601, v420, v421);
          v422 = v602;
          v16 = v418;

          break;
        case 209:
          v591 = 0;
          objc_msgSend_getTitleAndSubtitleForURLSessionEngineeringValue_title_subtitle_(a1, v18, a2, &v591, 0);
          v16 = v591;

          break;
        case 210:
          v193 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          if (!v193)
          {
            goto LABEL_172;
          }

LABEL_64:
          v22 = sub_2480986D8(v193, v194, v195, v196, v197);
          goto LABEL_9;
        case 215:
          v208 = *(a1 + 48);
          v209 = MEMORY[0x277CBEAA8];
          objc_msgSend_fixedDecimal(a2, v18, v19, v20, v21);
          v47 = objc_msgSend_dateWithTimeIntervalSince1970_(v209, v210, v211, v212, v213);
          v51 = objc_msgSend_stringFromDate_(v208, v214, v47, v215, v216);
          goto LABEL_18;
        case 221:
          v518 = *(a1 + 40);
          v519 = MEMORY[0x277CCABB0];
          objc_msgSend_fixedDecimal(a2, v18, v19, v20, v21);
          v47 = objc_msgSend_numberWithDouble_(v519, v520, v521, v522, v523);
          v51 = objc_msgSend_stringFromNumber_(v518, v524, v47, v525, v526);
          goto LABEL_18;
        case 222:
          v540 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          v541 = strerror(v540);
          v542 = MEMORY[0x277CCACA8];
          v547 = objc_msgSend_uint32(a2, v543, v544, v545, v546);
          if (v541)
          {
            objc_msgSend_stringWithFormat_(v542, v548, @"[%d: %s]", v549, v550, v547, v541);
          }

          else
          {
            objc_msgSend_stringWithFormat_(v542, v548, @"%d", v549, v550, v547);
          }
          v22 = ;
          goto LABEL_9;
        case 223:
          objc_msgSend_fixedDecimal(a2, v18, v19, v20, v21);
          v532 = (v531 * 1000000000.0);
          v537 = objc_msgSend_isHighestResolutionTimeEnabled(a1, v533, v534, v535, v536);
          v22 = objc_msgSend_stringForNanoseconds_highestResolutionTimeEnabled_(DTUserTimeFormatter, v538, v532, v537, v539);
          goto LABEL_9;
        case 225:
          v591 = 0;
          objc_msgSend_getTitleAndSubtitleForSwiftTaskEngineeringValue_title_subtitle_(a1, v18, a2, &v591, 0);
          v16 = v591;

          break;
        case 226:
          v504 = MEMORY[0x277CCACA8];
          v505 = objc_msgSend_uint64(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v504, v506, @"%llu", v507, v508, v505);
          goto LABEL_9;
        case 233:
          v591 = 0;
          objc_msgSend_getTitleAndSubtitleForSwiftActorEngineeringValue_title_subtitle_(a1, v18, a2, &v591, 0);
          v16 = v591;

          break;
        case 234:
          v217 = objc_msgSend_uint32(a2, v18, v19, v20, v21) - 1;
          if (v217 >= 4)
          {
LABEL_141:
            v16 = &stru_285A3F068;
          }

          else
          {
            v218 = off_278EFC088;
LABEL_103:
            v16 = v218[v217];
          }

          break;
        case 237:
          v591 = 0;
          objc_msgSend_getTitleAndSubtitleForSwiftTaskPriorityEngineeringValue_title_subtitle_(a1, v18, a2, &v591, 0);
          v16 = v591;

          break;
        case 238:
          v425 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          if (v425 == -1)
          {
            v16 = @"MACH_PORT_DEAD";
          }

          else
          {
            if (v425)
            {
LABEL_16:
              v41 = MEMORY[0x277CCACA8];
              v42 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
              v22 = objc_msgSend_stringWithFormat_(v41, v43, @"0x%x", v44, v45, v42);
              goto LABEL_9;
            }

            v16 = @"MACH_PORT_NULL";
          }

          break;
        case 243:
          if (objc_msgSend_uint64(a2, v18, v19, v20, v21))
          {
            v16 = @"-";
            if (objc_msgSend_uint64(a2, v455, v456, v457, v458) != -1)
            {
              v463 = objc_msgSend_uint64(a2, v459, v460, v461, v462);
              v464 = @"+";
              if (v463 <= 0)
              {
                v464 = @"-";
              }

              if (v463 >= 0)
              {
                v465 = v463;
              }

              else
              {
                v465 = -v463;
              }

              v466 = v464;
              v471 = objc_msgSend_isHighestResolutionTimeEnabled(a1, v467, v468, v469, v470);
              v342 = objc_msgSend_stringForNanoseconds_highestResolutionTimeEnabled_(DTUserTimeFormatter, v472, v465, v471, v473);
              v16 = objc_msgSend_stringByAppendingString_(v466, v474, v342, v475, v476);

LABEL_213:
            }
          }

          else
          {
LABEL_172:
            v16 = @"-";
          }

          break;
        case 245:
          v22 = objc_msgSend_stringForLibraryAddressEngineeringValue_(a1, v18, a2, v20, v21);
          goto LABEL_9;
        case 247:
          v127 = MEMORY[0x277CBEBB0];
          v128 = objc_msgSend_string(a2, v18, v19, v20, v21);
          v47 = objc_msgSend_timeZoneWithName_(v127, v129, v128, v130, v131);

          if (v47)
          {
            v136 = objc_msgSend_systemLocale(MEMORY[0x277CBEAF8], v132, v133, v134, v135);
            v16 = objc_msgSend_localizedName_locale_(v47, v137, 0, v136, v138);
          }

          else
          {
            v16 = @"-";
          }

          goto LABEL_19;
        case 248:
          v16 = @"<private>";
          break;
        case 252:
        case 253:
        case 256:
        case 257:
        case 259:
        case 260:
        case 261:
        case 262:
        case 265:
        case 266:
        case 268:
        case 269:
        case 271:
          break;
        case 255:
          v308 = MEMORY[0x277CCACA8];
          objc_msgSend_fixedDecimal(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v308, v309, @"%.1lf%%/hr", v310, v311, v312);
          goto LABEL_9;
        case 267:
          v198 = MEMORY[0x277CCACA8];
          objc_msgSend_fixedDecimal(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v198, v199, @"%.1lf", v200, v201, v202);
          goto LABEL_9;
        case 270:
          v426 = MEMORY[0x277CCACA8];
          v427 = objc_msgSend_uint32(a2, v18, v19, v20, v21);
          v22 = objc_msgSend_stringWithFormat_(v426, v428, @"%d%%", v429, v430, v427);
          goto LABEL_9;
        default:
          __break(1u);
          return result;
      }
    }
  }

  else
  {
    v23 = objc_msgSend_useSimplifiedPlaceholder(a1, v8, v9, v10, v11);
    v24 = @"n/a";
    if (v23)
    {
      v24 = @"–";
    }

    v22 = v24;
LABEL_9:
    v16 = v22;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

id sub_2480986D8(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 > 0x3E7)
  {
    v5 = a1;
    v6 = (log2(a1) / 9.96578428);
    v7 = MEMORY[0x277CCACA8];
    v8 = pow(1000.0, v6);
    objc_msgSend_stringWithFormat_(v7, v9, @"%.2f %s", v10, v11, v5 / v8, off_278EFC040[v6 - 1]);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%llu", a4, a5, a1);
  }
  v12 = ;

  return v12;
}

void sub_24809879C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v17 = sub_248095378(v5, a2, 0);
  v7 = sub_248095378(*(a1 + 32), v6, 0);

  v12 = objc_msgSend_length(*(a1 + 40), v8, v9, v10, v11);
  v16 = *(a1 + 40);
  if (v12)
  {
    objc_msgSend_appendFormat_(v16, v13, @", (%@ : %@)", v14, v15, v17, v7);
  }

  else
  {
    objc_msgSend_appendFormat_(v16, v13, @"(%@ : %@)", v14, v15, v17, v7);
  }
}

uint64_t sub_24809885C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2480988F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0x33)
  {
    v11 = *(a1 + 40);
    if (a2)
    {
      return objc_msgSend_appendFormat_(v11, a2, @" 0x%llx", a4, a5, a3);
    }

    else
    {
      return objc_msgSend_appendFormat_(v11, 0, @"0x%llx", a4, a5, a3);
    }
  }

  else
  {
    v12 = 0;
    objc_msgSend_getLengthOfUint64Representation_(*(a1 + 32), a2, &v12, a4, a5);
    return objc_msgSend_appendFormat_(*(a1 + 40), v7, @" (%llu more...)", v8, v9, v12 - a2);
  }
}

uint64_t sub_24809897C()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = qword_27EE867F0;
  qword_27EE867F0 = v0;

  objc_msgSend_setNumberStyle_(qword_27EE867F0, v2, 1, v3, v4);
  v8 = qword_27EE867F0;

  return objc_msgSend_setUsesGroupingSeparator_(v8, v5, 1, v6, v7);
}

uint64_t sub_2480989D8()
{
  v0 = objc_opt_new();
  v1 = qword_27EE86800;
  qword_27EE86800 = v0;

  objc_msgSend_setNumberStyle_(qword_27EE86800, v2, 1, v3, v4);
  objc_msgSend_setMaximumFractionDigits_(qword_27EE86800, v5, 1, v6, v7);
  objc_msgSend_setPositiveSuffix_(qword_27EE86800, v8, @" FPS", v9, v10);
  v13 = qword_27EE86800;

  return MEMORY[0x2821F9670](v13, sel_setNegativeSuffix_, @" FPS", v11, v12);
}

uint64_t sub_248098A54()
{
  qword_27EE86810 = sub_248098A90(4);

  return MEMORY[0x2821F96F8]();
}

id sub_248098A90(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_msgSend_setNumberStyle_(v2, v3, 1, v4, v5);
  objc_msgSend_setUsesGroupingSeparator_(v2, v6, 1, v7, v8);
  objc_msgSend_setMinimumFractionDigits_(v2, v9, a1, v10, v11);
  objc_msgSend_setMaximumFractionDigits_(v2, v12, 4, v13, v14);

  return v2;
}

uint64_t sub_248098B00()
{
  qword_27EE86820 = sub_248098A90(0);

  return MEMORY[0x2821F96F8]();
}

void sub_248098C50()
{
  v0 = MEMORY[0x277CCAE68];
  v3 = objc_opt_new();
  objc_msgSend_setValueTransformer_forName_(v0, v1, v3, @"XRSecureUnarchiveFromDataTransformerName", v2);
}

id sub_248098CC8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = v8;
  v12 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x277CCAAC8], v11, v10, v9, a5);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void sub_248098F0C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&unk_27EE86838);
  objc_exception_rethrow();
}

void sub_248099018(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&unk_27EE86838);
  objc_exception_rethrow();
}

void sub_248099210()
{
  v0 = qword_27EE86840;
  qword_27EE86840 = MEMORY[0x277CBEC10];
}

void sub_2480997A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = objc_msgSend_impl(v3, v4, v5, v6, v7);
  v8 = objc_alloc(MEMORY[0x277CCAE60]);
  v11 = objc_msgSend_initWithBytes_objCType_(v8, v9, &v20, "C", v10);
  v12 = *(a1 + 32);
  v17 = objc_msgSend_mnemonic(v3, v13, v14, v15, v16);

  objc_msgSend_setObject_forKeyedSubscript_(v12, v18, v11, v17, v19);
}

id sub_2480998F0()
{
  if (qword_27EE86918 != -1)
  {
    sub_2480B3910();
  }

  v1 = qword_27EE86910;

  return v1;
}

void sub_248099D50()
{
  v0 = qword_27EE86850;
  qword_27EE86850 = &unk_285A47198;
}

void sub_248099E44()
{
  v0 = qword_27EE86860;
  qword_27EE86860 = &unk_285A471C0;
}

void sub_248099EA0()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"type";
  v5[0] = objc_opt_class();
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v5, &v4, 1);
  v2 = qword_27EE86870;
  qword_27EE86870 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void sub_248099F74()
{
  v5[11] = *MEMORY[0x277D85DE8];
  v4[0] = @"mnemonic";
  v5[0] = objc_opt_class();
  v4[1] = @"title";
  v5[1] = objc_opt_class();
  v4[2] = @"enum";
  v5[2] = objc_opt_class();
  v4[3] = @"usage";
  v5[3] = objc_opt_class();
  v4[4] = @"class";
  v5[4] = objc_opt_class();
  v4[5] = @"attribute";
  v5[5] = objc_opt_class();
  v4[6] = @"experimental";
  v5[6] = objc_opt_class();
  v4[7] = @"deprecated";
  v5[7] = objc_opt_class();
  v4[8] = @"display-convention";
  v5[8] = objc_opt_class();
  v4[9] = @"related-type";
  v5[9] = objc_opt_class();
  v4[10] = @"encoding-convention";
  v5[10] = objc_opt_class();
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v5, v4, 11);
  v2 = qword_27EE86880;
  qword_27EE86880 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void sub_24809A154()
{
  v0 = qword_27EE86890;
  qword_27EE86890 = &unk_285A471E8;
}

void sub_24809A268(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, a3, a4, a5);
  v10 = objc_msgSend_executablePath(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_lastPathComponent(v10, v11, v12, v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v15, v16, @"etypetool", v17, v18);

  if (isEqualToString)
  {
    v20 = getenv("SRCROOT");
    if (v20)
    {
      v22 = MEMORY[0x277CBEBC0];
      v23 = objc_msgSend_fileURLWithFileSystemRepresentation_isDirectory_relativeToURL_(MEMORY[0x277CBEBC0], v21, v20, 1, 0);
      v26 = objc_msgSend_URLWithString_relativeToURL_(v22, v24, @"DVTInstrumentsUtilities/EngineeringTypes/engineering_types.etypesdef", v23, v25);
      v27 = qword_27EE868A8;
      qword_27EE868A8 = v26;
    }
  }

  if (!qword_27EE868A8)
  {
    qword_27EE868A8 = sub_2480998F0();

    MEMORY[0x2821F96F8]();
  }
}

void sub_24809A620()
{
  v5[7] = *MEMORY[0x277D85DE8];
  v4[0] = @"sentinel";
  v5[0] = objc_opt_class();
  v4[1] = @"array";
  v5[1] = objc_opt_class();
  v4[2] = @"packed";
  v5[2] = objc_opt_class();
  v4[3] = @"enum";
  v5[3] = objc_opt_class();
  v4[4] = @"bit-width";
  v5[4] = objc_opt_class();
  v4[5] = @"signed";
  v5[5] = objc_opt_class();
  v4[6] = @"note";
  v5[6] = objc_opt_class();
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v5, v4, 7);
  v2 = qword_27EE868B0;
  qword_27EE868B0 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void sub_24809A79C()
{
  v0 = qword_27EE868C0;
  qword_27EE868C0 = &unk_285A47210;
}

void sub_24809A9F8()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"slot";
  v4[1] = @"remainder";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v5, v4, 2);
  v2 = qword_27EE868D0;
  qword_27EE868D0 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void sub_24809ACD4()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"bit-range";
  v5[0] = objc_opt_class();
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v5, &v4, 1);
  v2 = qword_27EE868E0;
  qword_27EE868E0 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void sub_24809AEA4()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"value";
  v5[0] = objc_opt_class();
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v5, &v4, 1);
  v2 = qword_27EE868F0;
  qword_27EE868F0 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void sub_24809B084()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"type";
  v5[0] = objc_opt_class();
  v4[1] = @"start";
  v5[1] = objc_opt_class();
  v4[2] = @"end";
  v5[2] = objc_opt_class();
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v5, v4, 3);
  v2 = qword_27EE86900;
  qword_27EE86900 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24809B454(void *a1)
{
  v12 = 0;
  v2 = a1;
  v7 = objc_msgSend_objCType(v2, v3, v4, v5, v6);
  if (*v7 == 67 && !v7[1])
  {
    objc_msgSend_getValue_(a1, v8, &v12, v9, v10);
    return v12;
  }

  else
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v8, *MEMORY[0x277CBE660], @"%@ is not an NSValue encoding an XRImplementationClassTypeID", v10, a1);
    return 0;
  }
}

void sub_24809B588(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], a2, @"com.apple.dt.instruments.DVTInstrumentsUtilities", a4, a5);
  v10 = v5;
  if (!v5)
  {
    v22 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v6, v7, v8, v9);
    v27 = objc_msgSend_executableURL(v22, v23, v24, v25, v26);
    v32 = objc_msgSend_lastPathComponent(v27, v28, v29, v30, v31);
    if (objc_msgSend_isEqualToString_(v32, v33, @"etypetool", v34, v35))
    {
    }

    else
    {
      v40 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v36, v37, v38, v39);
      v45 = objc_msgSend_executableURL(v40, v41, v42, v43, v44);
      v50 = objc_msgSend_lastPathComponent(v45, v46, v47, v48, v49);
      isEqualToString = objc_msgSend_isEqualToString_(v50, v51, @"ac_generator", v52, v53);

      if (!isEqualToString)
      {
        v74 = *MEMORY[0x277D85DF8];
        v75 = "Attempting to use XREngineeringTypeDefinitions.m outside the framework\n";
        v76 = 71;
        goto LABEL_17;
      }
    }

    v55 = getenv("SRCROOT");
    if (v55)
    {
      v57 = objc_msgSend_fileURLWithFileSystemRepresentation_isDirectory_relativeToURL_(MEMORY[0x277CBEBC0], v56, v55, 1, 0);
      v60 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v57, v58, @"DVTInstrumentsUtilities/EngineeringTypes/engineering_types.etypesdef", 1, v59);
      v61 = qword_27EE86910;
      qword_27EE86910 = v60;

      v85 = 0;
      v65 = objc_msgSend_checkResourceIsReachableAndReturnError_(qword_27EE86910, v62, &v85, v63, v64);
      v66 = v85;
      if (v65)
      {

        goto LABEL_12;
      }

      v77 = *MEMORY[0x277D85DF8];
      v78 = objc_msgSend_localizedFailureReason(v66, v67, v68, v69, v70);
      v79 = v78;
      v84 = objc_msgSend_UTF8String(v79, v80, v81, v82, v83);
      fprintf(v77, "engineering_types.etypesdef is unreachable: %s\n", v84);

LABEL_18:
      exit(1);
    }

    v74 = *MEMORY[0x277D85DF8];
    v75 = "SRCROOT must be set to the root of DVTInstrumentsFrameworks.\n";
    v76 = 61;
LABEL_17:
    fwrite(v75, v76, 1uLL, v74);
    goto LABEL_18;
  }

  v11 = objc_msgSend_URLForResource_withExtension_(v5, v6, @"engineering_types", @"etypesdef", v9);
  v12 = qword_27EE86910;
  qword_27EE86910 = v11;

  if (qword_27EE86910)
  {
    v17 = objc_msgSend_checkResourceIsReachableAndReturnError_(qword_27EE86910, v13, 0, v15, v16);
  }

  else
  {
    sub_2480B3A98(&v86, v13, v14, v15, v16);
    v17 = objc_msgSend_checkResourceIsReachableAndReturnError_(v86, v71, 0, v72, v73);
  }

  if ((v17 & 1) == 0)
  {
    sub_2480B3B24(v17, v18, v19, v20, v21);
  }

LABEL_12:
}

uint64_t sub_24809BC9C()
{
  v0 = dispatch_semaphore_create(1);
  v1 = qword_27EE86928;
  qword_27EE86928 = v0;

  qword_27EE86920 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void *sub_24809C174(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return objc_msgSend_setObject_forKey_(a1, a2, a3, a4, a5);
  }

  return a1;
}

id sub_24809C180(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v11 = objc_msgSend_setWithObject_(v6, v8, v7, v9, v10);
    objc_msgSend_xr_deepCopy_classes_(MEMORY[0x277CCAAB0], v12, v5, v11, v13);
  }

  else
  {
    v11 = 0;
    objc_msgSend_xr_deepCopy_classes_(MEMORY[0x277CCAAB0], v3, 0, 0, v4);
  }
  v14 = ;

  return v14;
}

id sub_24809C214(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v23 = 0;
  v8 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v7, v5, 0, &v23);
  v9 = v23;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24809C3F8;
  block[3] = &unk_278EFA258;
  v10 = v5;
  v22 = v10;
  if (qword_27EE86938 == -1)
  {
    if (v9)
    {
LABEL_3:
      v11 = qword_27EE86940;
      if (os_log_type_enabled(qword_27EE86940, OS_LOG_TYPE_ERROR))
      {
        sub_2480B3BC4(v11, v9);
      }

      v12 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_once(&qword_27EE86938, block);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = qword_27EE86948;
  if (v6)
  {
    v17 = objc_msgSend_setByAddingObjectsFromSet_(qword_27EE86948, v13, v6, v14, v15);

    v16 = v17;
  }

  v20 = 0;
  v12 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x277CCAAC8], v13, v16, v8, &v20);
  v9 = v20;
  if (v9)
  {
    v18 = qword_27EE86940;
    if (os_log_type_enabled(qword_27EE86940, OS_LOG_TYPE_ERROR))
    {
      sub_2480B3C5C(v18, v9);
    }
  }

LABEL_13:

  return v12;
}

uint64_t sub_24809C3F8(uint64_t a1)
{
  v2 = os_log_create("com.apple.dt.DVTInstrumentsUtilities", "KeyedArchiverDeepCopy");
  v3 = qword_27EE86940;
  qword_27EE86940 = v2;

  v4 = MEMORY[0x277CBEB98];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  qword_27EE86948 = objc_msgSend_setWithObjects_(v4, v12, v6, v13, v14, v7, v8, v9, v10, v11, 0);

  return MEMORY[0x2821F96F8]();
}

void sub_24809C4E8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_24809C5A0(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3 == a4)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_isEqual_(a3, a2, a4, a4, a5);
  }
}

uint64_t sub_24809C5BC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EE86958 != -1)
  {
    sub_2480B3CF4();
  }

  v6 = objc_msgSend_description(a1, a2, a3, a4, a5);
  if (objc_msgSend_rangeOfCharacterFromSet_(v6, v7, qword_27EE86950, v8, v9) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = objc_msgSend_CLIPSLiteralFormatter(XREngineeringNumberFormatter, v10, v11, v12, v13);
    v16 = objc_msgSend_getObjectValue_forString_errorDescription_(v14, v15, 0, v6, 0) ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_24809C660(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x277CCAB50], a2, a3, a4, a5);
  objc_msgSend_addCharactersInString_(v18, v5, @"-", v6, v7);
  objc_msgSend_invert(v18, v8, v9, v10, v11);
  v16 = objc_msgSend_copy(v18, v12, v13, v14, v15);
  v17 = qword_27EE86950;
  qword_27EE86950 = v16;
}

id sub_24809C6D0(void *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_CLIPSLiteralFormatter(XREngineeringNumberFormatter, v2, v3, v4, v5);
    v10 = objc_msgSend_stringFromNumber_(v6, v7, a1, v8, v9);
  }

  else if (objc_msgSend_xr_isCLIPSSymbol(a1, v2, v3, v4, v5))
  {
    v10 = objc_msgSend_description(a1, v11, v12, v13, v14);
  }

  else
  {
    v10 = objc_opt_new();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = a1;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v52, v56, 16);
      if (v21)
      {
        v26 = v21;
        v27 = *v53;
        v28 = 1;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v53 != v27)
            {
              objc_enumerationMutation(v19);
            }

            v30 = *(*(&v52 + 1) + 8 * i);
            if ((v28 & 1) == 0)
            {
              objc_msgSend_appendString_(v10, v22, @" ", v24, v25);
            }

            v31 = objc_msgSend_xr_clipsStringRepresentation(v30, v22, v23, v24, v25);
            objc_msgSend_appendString_(v10, v32, v31, v33, v34);

            v28 = 0;
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v52, v56, 16);
          v28 = 0;
        }

        while (v26);
      }
    }

    else
    {
      v35 = objc_msgSend_description(a1, v15, v16, v17, v18);
      objc_msgSend_appendString_(v10, v36, v35, v37, v38);

      v43 = objc_msgSend_length(v10, v39, v40, v41, v42);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v10, v44, @"", @"\\"", 0, 0, v43);
      objc_msgSend_insertString_atIndex_(v10, v45, @"", 0, v46);
      objc_msgSend_appendString_(v10, v47, @"", v48, v49);
    }
  }

  v50 = *MEMORY[0x277D85DE8];

  return v10;
}

id sub_24809C924(char *a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_2480B3D08(a2, a1, v4, v5, v6);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20[0] = a1;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v20, 1, v8);
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = a1;
    v14 = objc_msgSend_indexesOfObjectsPassingTest_(v10, v11, &unk_285A38088, v12, v13);
    v9 = objc_msgSend_objectsAtIndexes_(v10, v15, v14, v16, v17);
  }

  else
  {
LABEL_9:
    v9 = MEMORY[0x277CBEBF8];
  }

LABEL_10:
  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t sub_24809CA78(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_24809CCD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = MEMORY[0x277CCAE60];
  v10 = a5;
  v11 = a2;
  v14 = objc_msgSend_valueWithRange_(v9, v12, a3, a4, v13);
  objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 8), v15, v14, v11, v16);

  v23 = objc_msgSend_copy(v10, v17, v18, v19, v20);
  objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 16), v21, v23, v11, v22);
}

void sub_24809D138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_24809D178(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *(*(a1[4] + 8) + 24) = 1;
    v22 = a1[6];
LABEL_8:
    *(*(v22 + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(a1[4] + 8) + 24) = 1;
    v22 = a1[5];
    goto LABEL_8;
  }

  v10 = v7;
  if (objc_msgSend_count(v10, v11, v12, v13, v14) && objc_msgSend_count(v10, v15, v16, v17, v18) < 4)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_24809D2F0;
    v23[3] = &unk_278EFC170;
    v24 = *(a1 + 2);
    v25 = a4;
    objc_msgSend_enumerateObjectsUsingBlock_(v10, v19, v23, v20, v21);
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 1;
    *(*(a1[5] + 8) + 24) = 1;
    *a4 = 1;
  }

LABEL_11:
}

void sub_24809D2F0(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(*(a1[4] + 8) + 24) = 1;
      v6 = a1[6];
      *(*(a1[5] + 8) + 24) = 1;
      *a4 = 1;
      *v6 = 1;
    }
  }
}

void sub_24809D394(uint64_t a1, void *a2, void *a3)
{
  v43 = a2;
  v5 = a3;
  v10 = objc_msgSend_firstObject(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_unsignedIntegerValue(v10, v11, v12, v13, v14);

  v23 = v15;
  if (objc_msgSend_count(v5, v16, v17, v18, v19) >= 2)
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(v5, v20, 1, v21, v22);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v29 = objc_msgSend_objectAtIndexedSubscript_(v5, v26, 1, v27, v28);
    v34 = v29;
    if (isKindOfClass)
    {
      v23 = v15;
    }

    else
    {
      v23 = objc_msgSend_unsignedIntegerValue(v29, v30, v31, v32, v33);

      if (objc_msgSend_count(v5, v35, v36, v37, v38) < 3)
      {
        goto LABEL_7;
      }

      v34 = objc_msgSend_objectAtIndexedSubscript_(v5, v20, 2, v39, v22);
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 16), v30, v34, v43, v33);
  }

LABEL_7:
  v40 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v20, v15, v23 - v15 + 1, v22);
  objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 8), v41, v40, v43, v42);
}

void sub_24809D68C(uint64_t a1, void *a2, void *a3)
{
  v32 = a2;
  v5 = a3;
  v6 = objc_opt_new();
  v11 = objc_msgSend_rangeValue(v5, v7, v8, v9, v10);
  v13 = v12;

  v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v14, v11, v15, v16);
  objc_msgSend_addObject_(v6, v18, v17, v19, v20);

  if (v13 != 1)
  {
    v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v21, v13 + v11 - 1, v22, v23);
    objc_msgSend_addObject_(v6, v25, v24, v26, v27);
  }

  v31 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 16), v21, v32, v22, v23);
  if (v31)
  {
    objc_msgSend_addObject_(v6, v28, v31, v29, v30);
  }

  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v28, v6, v32, v30);
}

void sub_24809DBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_24809DC4C(uint64_t a1, void *a2, void *a3)
{
  v43 = a2;
  v5 = a3;
  v10 = objc_msgSend_rangeValue(v5, v6, v7, v8, v9);
  v12 = objc_msgSend_supportForCapability_versions_(*(a1 + 32), v11, v43, v10, v11);
  if (v12 == 1)
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    ++*(*(*(a1 + 96) + 8) + 24);
    v29 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 64) + 16), v13, v43, v14, v15);
    if (v29 || (objc_msgSend_unimplementedRecoveryForCapability_(*(a1 + 32), v30, v43, v31, v32), (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v33 = v29;
      objc_msgSend_addObject_(*(a1 + 72), v30, v29, v31, v32);
    }

    v34 = MEMORY[0x277CCAE60];
    v35 = objc_msgSend_supportedVersionsForCapability_(*(a1 + 32), v30, v43, v31, v32);
    v38 = objc_msgSend_valueWithRange_(v34, v36, v35, v36, v37);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 48), v39, v38, v43, v40);

    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 56), v41, v5, v43, v42);
  }

  else if (v12 == 2)
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    ++*(*(*(a1 + 88) + 8) + 24);
    v19 = objc_msgSend_abandonedRecoveryForCapability_(*(a1 + 32), v13, v43, v14, v15);
    if (v19)
    {
      objc_msgSend_addObject_(*(a1 + 40), v16, v19, v17, v18);
    }

    v20 = MEMORY[0x277CCAE60];
    v21 = objc_msgSend_supportedVersionsForCapability_(*(a1 + 32), v16, v43, v17, v18);
    v24 = objc_msgSend_valueWithRange_(v20, v22, v21, v22, v23);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 48), v25, v24, v43, v26);

    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 56), v27, v5, v43, v28);
  }
}

uint64_t sub_24809DE1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_appendFormat_(*(a1 + 32), a2, @" %@", a4, a5, a2);
  if (a3 + 1 == *(a1 + 40))
  {
    v11 = *(a1 + 32);

    return objc_msgSend_appendString_(v11, v8, @"\n", v9, v10);
  }

  return result;
}

uint64_t sub_24809DE98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_appendFormat_(*(a1 + 32), a2, @" %@", a4, a5, a2);
  if (a3 + 1 == *(a1 + 40))
  {
    v11 = *(a1 + 32);

    return objc_msgSend_appendString_(v11, v8, @"\n", v9, v10);
  }

  return result;
}

BOOL sub_24809DF58(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_domain(a1, a2, a3, a4, a5);
  if (objc_msgSend_isEqualToString_(v6, v7, @"Supported Capability Problem", v8, v9))
  {
    v14 = objc_msgSend_code(a1, v10, v11, v12, v13) == 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_24809DFB4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_userInfo(a1, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"XRCapabilityRangesKey", v11, v12);
  v17 = objc_msgSend_objectForKeyedSubscript_(v9, v14, @"XRRequiredVersionsKey", v15, v16);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_24809E0A8;
  v23[3] = &unk_278EFC260;
  v24 = v17;
  v25 = v4;
  v18 = v17;
  v19 = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v13, v20, v23, v21, v22);
}

void sub_24809E0A8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = a2;
  v13 = objc_msgSend_rangeValue(a3, v9, v10, v11, v12);
  v15 = v14;
  v24 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v14, v8, v16, v17);
  v22 = objc_msgSend_rangeValue(v24, v18, v19, v20, v21);
  (*(v7 + 16))(v7, v8, v13, v15, v22, v23, a4);
}

void sub_24809E208(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v9 = objc_msgSend_enumString(v4, v5, v6, v7, v8);
  v38 = objc_msgSend_stringWithFormat_(v3, v10, @"com.apple.dt.etype.%@", v11, v12, v9);

  objc_msgSend_registerCapability_versions_(*(a1 + 32), v13, v38, 1, 1);
  v14 = MEMORY[0x277CCACA8];
  v19 = objc_msgSend_mnemonic(v4, v15, v16, v17, v18);
  v23 = objc_msgSend_stringWithFormat_(v14, v20, @"This version does not support the new engineering type '%@'.", v21, v22, v19);

  objc_msgSend_setUnimplementedRecoverySuggestion_forCapability_(*(a1 + 32), v24, v23, v38, v25);
  v26 = MEMORY[0x277CCACA8];
  v31 = objc_msgSend_mnemonic(v4, v27, v28, v29, v30);

  v35 = objc_msgSend_stringWithFormat_(v26, v32, @"This version no longer supports the engineering type '%@'.", v33, v34, v31);

  objc_msgSend_setAbandonedRecoverySuggestion_forCapability_(*(a1 + 32), v36, v35, v38, v37);
}

void sub_24809E970()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"xs:annotation";
  v5[0] = objc_opt_class();
  v4[1] = @"xs:restriction";
  v5[1] = objc_opt_class();
  v4[2] = @"xs:union";
  v5[2] = objc_opt_class();
  v4[3] = @"xs:extension";
  v5[3] = objc_opt_class();
  v1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v0, v5, v4, 4);
  v2 = qword_27EE86968;
  qword_27EE86968 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void sub_24809FB68(void *a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v8 = v3;
  if (!v3)
  {
    goto LABEL_23;
  }

  if (!objc_msgSend_errorLimit(v3, v4, v5, v6, v7) || (v13 = *(v8 + 4), v13 <= objc_msgSend_errorLimit(v8, v9, v10, v11, v12)))
  {
    ++*(v8 + 4);
    v19 = objc_msgSend_findErrorMessageForErrorPtr_(v8, v9, a2, v11, v12);
    v15 = v19;
    if (!v19)
    {
      objc_msgSend_xr_writeStringWithFormat_(*(v8 + 6), v20, @"%s:%d: error: %s", v22, v23, *(a2 + 24), *(a2 + 32), *(a2 + 8));
      v35 = *(v8 + 9);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = *(a2 + 24);
        v37 = *(a2 + 32);
        v38 = *(a2 + 8);
        *buf = 136315650;
        v66 = v36;
        v67 = 1024;
        v68 = v37;
        v69 = 2080;
        v70 = v38;
        _os_log_error_impl(&dword_248087000, v35, OS_LOG_TYPE_ERROR, "%s:%d: error: %s", buf, 0x1Cu);
      }

      goto LABEL_22;
    }

    v24 = objc_msgSend_name(v19, v20, v21, v22, v23);
    isEqualToString = objc_msgSend_isEqualToString_(v24, v25, @"xs:unique", v26, v27);

    if (isEqualToString)
    {
      v33 = @" Repeating element value is: %s.\n";
    }

    else
    {
      v39 = objc_msgSend_name(v15, v29, v30, v31, v32);
      v43 = objc_msgSend_isEqualToString_(v39, v40, @"xs:keyref", v41, v42);

      if (v43)
      {
        v33 = @" Invalid value is: %s.\n";
        v34 = 48;
LABEL_14:
        v45 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v29, v33, v31, v32, *(a2 + v34));
        if (v45)
        {
          v47 = v45;
          v48 = objc_msgSend_replacementString(v15, v29, v46, v31, v32);
          v52 = objc_msgSend_stringByAppendingString_(v48, v49, v47, v50, v51);

LABEL_19:
          objc_msgSend_xr_writeStringWithFormat_(*(v8 + 6), v53, @"%s:%d: error: %@", v54, v55, *(a2 + 24), *(a2 + 32), v52);
          v61 = *(v8 + 9);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v63 = *(a2 + 24);
            v64 = *(a2 + 32);
            *buf = 136315650;
            v66 = v63;
            v67 = 1024;
            v68 = v64;
            v69 = 2112;
            v70 = v52;
            _os_log_error_impl(&dword_248087000, v61, OS_LOG_TYPE_ERROR, "%s:%d: error: %@", buf, 0x1Cu);
          }

          goto LABEL_22;
        }

LABEL_18:
        v52 = objc_msgSend_replacementString(v15, v29, v46, v31, v32);
        goto LABEL_19;
      }

      v56 = objc_msgSend_name(v15, v29, v44, v31, v32);
      v60 = objc_msgSend_isEqualToString_(v56, v57, @"xs:pattern", v58, v59);

      if (!v60)
      {
        goto LABEL_18;
      }

      v33 = @" '%s' doesn't fulfill the requirements.\n";
    }

    v34 = 40;
    goto LABEL_14;
  }

  if ((*(v8 + 40) & 1) == 0)
  {
    *(v8 + 40) = 1;
    v15 = objc_msgSend_path(*(v8 + 1), v9, v14, v11, v12);
    objc_msgSend_xr_writeStringWithFormat_(*(v8 + 6), v16, @"%@: error: Too many schema validation errors emitted. Stopping now.\n", v17, v18, v15);
LABEL_22:
  }

LABEL_23:

  v62 = *MEMORY[0x277D85DE8];
}

void sub_24809FE7C(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = *(v7 + 6);
  v9 = *(a2 + 24);
  if (!v9)
  {
    v9 = objc_msgSend_fileSystemRepresentation(*(v7 + 1), v3, v4, v5, v6);
  }

  objc_msgSend_xr_writeStringWithFormat_(v8, v3, @"%s:%d: error: %s", v5, v6, v9, *(a2 + 32), *(a2 + 8));
  v10 = *(v7 + 9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a2 + 24);
    if (!v16)
    {
      v16 = objc_msgSend_fileSystemRepresentation(*(v7 + 1), v11, v12, v13, v14);
    }

    v17 = *(a2 + 32);
    v18 = *(a2 + 8);
    *buf = 136315650;
    v20 = v16;
    v21 = 1024;
    v22 = v17;
    v23 = 2080;
    v24 = v18;
    _os_log_error_impl(&dword_248087000, v10, OS_LOG_TYPE_ERROR, "%s:%d: error: %s", buf, 0x1Cu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2480A0D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = XRFrameActivityManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_2480A109C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (a1 + 40);
  result = objc_msgSend_holdBackArrivingAgent_(*(a1 + 32), a2, *(a1 + 40), a4, a5);
  if ((result & 1) == 0)
  {
    objc_msgSend_setYieldNow_(*(a1 + 40), v9, a2, v10, v11);
    objc_msgSend__prepareMinorFrameAgent_(*(a1 + 32), v12, *(a1 + 40), v13, v14);
    objc_msgSend_hello(*(a1 + 40), v15, v16, v17, v18);
    objc_msgSend_setYieldNow_(*v7, v19, 0, v20, v21);
    objc_msgSend__escortMinorFrameAgentToExit_(*(a1 + 32), v22, *(a1 + 40), v23, v24);
    if (objc_msgSend_nextMovementType(*v7, v25, v26, v27, v28) != 2)
    {
      return objc_msgSend_goodbye(*v7, v29, v30, v31, v32);
    }

    result = objc_msgSend_holdBackRevisitingAgent_(*(a1 + 32), v29, *(a1 + 40), v31, v32);
    if ((result & 1) == 0)
    {
      return objc_msgSend_goodbye(*v7, v29, v30, v31, v32);
    }
  }

  return result;
}

void *sub_2480A1548(void *a1, __int128 *a2, unsigned __int8 *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285A380D8;
  sub_2480A1624((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_2480A15C4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285A380D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1C5380);
}

uint64_t sub_2480A1624(uint64_t a1, __int128 *a2, unsigned __int8 *a3, int *a4)
{
  v6 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_2480A9624(a1, &v6, *a3, *a4, QOS_CLASS_USER_INITIATED);
  if (*(&v6 + 1))
  {
    sub_24808AAEC(*(&v6 + 1));
  }

  return a1;
}

void sub_2480A167C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24808AAEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2480A1718(void *a1, __int128 *a2, unsigned __int8 *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285A380D8;
  sub_2480A1774((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t sub_2480A1774(uint64_t a1, __int128 *a2, unsigned __int8 *a3, int *a4)
{
  v6 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_2480A9624(a1, &v6, *a3, *a4, QOS_CLASS_USER_INITIATED);
  if (*(&v6 + 1))
  {
    sub_24808AAEC(*(&v6 + 1));
  }

  return a1;
}

void sub_2480A17CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24808AAEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2480A1850(void *a1, unsigned int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285A38128;
  sub_2480A85A0(a1 + 3, *a2);
  return a1;
}

void sub_2480A18D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285A38128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1C5380);
}

void DVTIUAssertRecover(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  NSLog(&cfstr_Dvtinstruments_0.isa, a1, a2);
  v5[2]();
}

void DVTIUAssertMainThread(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3, a4, a5);
  NSLog(&cfstr_Dvtinstruments_2.isa, a1, a2, v7);
}

BOOL _DVTIURuntimeCheckForBlockCaptureOfObject(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 && v3)
  {
    v5 = *(*(a1 + 24) + 8) + a1;
    if (a1 + 40 <= v5)
    {
      v6 = (a1 + 32);
      v7 = a1 + 48;
      do
      {
        v8 = *v6++;
        v4 = v8 == v3;
        v9 = v8 == v3 || v7 > v5;
        v7 += 8;
      }

      while (!v9);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t DVTIUIsAppleInternalOSEnvironment()
{
  if (qword_27EE869C8 != -1)
  {
    sub_2480B3EC4();
  }

  return byte_27EE869C0;
}

uint64_t sub_2480A1ADC()
{
  result = os_variant_has_internal_ui();
  byte_27EE869C0 = result;
  return result;
}

__CFString *DVTIUCurrentDylibRootPath()
{
  v0 = getenv("DYLD_ROOT_PATH");
  if (v0 && (v1 = realpath_DARWIN_EXTSN(v0, 0)) != 0)
  {
    v5 = v1;
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, v1, v3, v4);
    free(v5);
  }

  else
  {
    v6 = @"/";
  }

  return v6;
}

uint64_t DVTIUUidForPid(int a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *v13 = 0xE00000001;
  v14 = 1;
  v15 = a1;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  v5 = 648;
  v1 = sysctl(v13, 4u, v6, &v5, 0, 0);
  if (v5)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    result = DWORD1(v7);
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2480A1C8C(task_name_t a1)
{
  if (a1 - 1 > 0xFFFFFFFD)
  {
    return 0;
  }

  v13 = v1;
  v14 = v2;
  if (!csr_check())
  {
    return 3;
  }

  has_internal_content = os_variant_has_internal_content();
  v12 = 2048;
  *task_info_out = 0u;
  v11 = 0u;
  task_info_outCnt = 8;
  if (task_info(a1, 0xFu, task_info_out, &task_info_outCnt))
  {
    return 0;
  }

  x = 0;
  v6 = pid_for_task(a1, &x);
  result = 0;
  if (!v6)
  {
    buffer = 0;
    if (proc_pidinfo(x, 30, 0, &buffer, 4) != 4 || csops_audittoken())
    {
      return 0;
    }

    if ((v12 & 4) == 0)
    {
      if ((v12 & 0x800) != 0)
      {
        if (!has_internal_content)
        {
          return 0;
        }

        return geteuid() == 0;
      }

      else if (((v12 & 0x20000000) == 0) | has_internal_content & 1)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    return 3;
  }

  return result;
}

BOOL DVTCheckIfPIDExists(_BOOL8 result)
{
  if (result)
  {
    return kill(result, 0) != -1 || *__error() != 3;
  }

  return result;
}

void sub_2480A1E6C()
{
  v0 = objc_opt_new();
  v1 = qword_27EE869D8;
  qword_27EE869D8 = v0;

  v9 = objc_msgSend_queue(qword_27EE869D8, v2, v3, v4, v5);
  objc_msgSend_setMaxConcurrentOperationCount_(v9, v6, 32, v7, v8);
}

uint64_t sub_2480A1F28()
{
  v0 = objc_alloc_init(XRFrameCommutator);
  v1 = qword_27EE869E0;
  qword_27EE869E0 = v0;

  v6 = qword_27EE869E0;

  return objc_msgSend_start(v6, v2, v3, v4, v5);
}

void sub_2480A200C(_Unwind_Exception *a1)
{
  MEMORY[0x24C1C5380](v2, 0x1020C40D1E833C5);

  _Unwind_Resume(a1);
}

void sub_2480A20A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = XRFrameCommutator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void ***sub_2480A21DC(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2 + 29;
    sub_24808AA4C(&v3);
    v3 = v2 + 26;
    sub_24808AA4C(&v3);
    v3 = v2 + 23;
    sub_24808AA4C(&v3);
    return MEMORY[0x24C1C5380](v2, 0x1020C40D1E833C5);
  }

  return result;
}

void sub_2480A26E8(void *a1, void *a2, uint64_t a3)
{
  v25 = a1;
  v8 = objc_msgSend_URLByAppendingPathComponent_(a2, v5, a3, v6, v7);
  if (objc_msgSend_checkResourceIsReachableAndReturnError_(v8, v9, 0, v10, v11))
  {
    v16 = MEMORY[0x277CBEAC0];
    v17 = objc_msgSend_relativePath(v8, v12, v13, v14, v15);
    v21 = objc_msgSend_dictionaryWithContentsOfFile_(v16, v18, v17, v19, v20);
    objc_msgSend_addEntriesFromDictionary_(v25, v22, v21, v23, v24);
  }
}

void sub_2480A28B4(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v10 = v5;
  v18 = a3;
  if (*(a1 + 40) == 1)
  {
    v11 = objc_msgSend_copy(v5, v6, v7, v8, v9);
    v12 = *(a1 + 32);
    v19 = &v18;
    v13 = sub_2480A3094((v12 + 8), &v18);
    v14 = v13[3];
    v13[3] = v11;
  }

  else
  {
    v15 = *(a1 + 32);
    v19 = &v18;
    v16 = sub_2480A3094((v15 + 8), &v18);
    v17 = v10;
    v14 = v16[3];
    v16[3] = v17;
  }
}

void sub_2480A2EFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v9 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], a2, a3, a4, a5);
  objc_msgSend_addObject_(v5, v6, v9, v7, v8);
}

void *sub_2480A3094(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2480A32DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2480A32F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2480A32F0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2480A333C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_2480A3370(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      sub_2480A3460(a1, prime);
    }
  }
}

void sub_2480A3460(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2480A333C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_2480A35C4(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
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

void *sub_2480A3678(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2480A38C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2480A32F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2480A38D4(void *a1, unint64_t *a2)
{
  result = sub_2480A35C4(a1, a2);
  if (result)
  {
    sub_2480A3920(a1, result, v4);
    sub_2480A32F0(v4);
    return 1;
  }

  return result;
}

void *sub_2480A3920@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void sub_2480A3A5C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_2480A3AB8(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_2480A3AB8(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2480A3AFC(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v11 = v4[3];
        v8[2] = v4[2];
        objc_storeStrong(v8 + 3, v11);
        v10 = *v8;
        v12 = v8[2];
        v8[1] = v12;
        v13 = sub_2480A3C14(a1, v12, v8 + 2);
        sub_2480A3D74(a1, v8, v13);
        v4 = *v4;
        if (v10)
        {
          v14 = v4 == a3;
        }

        else
        {
          v14 = 1;
        }

        v8 = v10;
      }

      while (!v14);
    }

    sub_2480A3AB8(a1, v10);
  }

  if (v4 != a3)
  {
    sub_2480A40C8();
  }
}

void sub_2480A3BE8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_2480A3AB8(v1, v2);
  __cxa_rethrow();
}

void *sub_2480A3C14(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2480A3E5C(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_2480A3D74(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_2480A3E5C(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      sub_2480A3F4C(a1, prime);
    }
  }
}

void sub_2480A3F4C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2480A333C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_2480A4170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2480A32F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2480A4184(uint64_t a1)
{
  sub_2480A3AB8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

id sub_2480A41DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CCACA8];
  v10 = a3;
  v11 = [v9 alloc];
  v14 = objc_msgSend_initWithFormat_arguments_(v11, v12, v10, &a9, v13);

  v21 = *MEMORY[0x277CCA450];
  v22[0] = v14;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v22, &v21, 1);
  v18 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v17, @"Instruments Utility Error", 0, v16);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

id sub_2480A42D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    if (a3 <= 199)
    {
      if (a3)
      {
        if (a3 == 100)
        {
          v7 = @"Possible security violation";
        }
      }

      else
      {
        v7 = @"Internal DVTInstrumentsUtilities Error";
      }
    }

    else
    {
      switch(a3)
      {
        case 200:
          v7 = @"Another application broke a system lock this application requires";
          break;
        case 300:
          v7 = @"Internal framework misuse error";
          break;
        case 400:
          v7 = @"Operation was denied";
          break;
      }
    }
  }

  v8 = *MEMORY[0x277CCA450];
  if (a5)
  {
    v9 = *MEMORY[0x277CCA498];
    v23[0] = *MEMORY[0x277CCA450];
    v23[1] = v9;
    v24[0] = v7;
    v24[1] = a5;
    v10 = MEMORY[0x277CBEAC0];
    v11 = a5;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(v10, v12, v24, v23, 2);
  }

  else
  {
    v21 = *MEMORY[0x277CCA450];
    v22 = v7;
    v13 = MEMORY[0x277CBEAC0];
    v14 = 0;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(v13, v15, &v22, &v21, 1);
  }
  v16 = ;
  v18 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v17, @"Instruments Utility Error", a3, v16);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t sub_2480A4460(void *a1, const char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v8 = objc_msgSend_userInfo(a1, a2, a3, a4, a5);
  v12 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"DVTInstrumentsUtilitiesRecoveryActionKey", v10, v11);

  v17 = objc_msgSend_userInfo(a1, v13, v14, v15, v16);
  v21 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"DVTInstrumentsUtilitiesRecoveryParameterKey", v19, v20);

  if (v12)
  {
    v26 = v21 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  if (!v26)
  {
    if (a3)
    {
      v28 = objc_msgSend_copy(v12, v22, v23, v24, v25);
      v29 = *a3;
      *a3 = v28;
    }

    if (a4)
    {
      v30 = objc_msgSend_copy(v21, v22, v23, v24, v25);
      v31 = *a4;
      *a4 = v30;
    }
  }

  return v27;
}

uint64_t sub_2480A4530(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_domain(a1, a2, a3, a4, a5);
  if (objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x277CCA050], v8, v9))
  {
    v14 = objc_msgSend_code(a1, v10, v11, v12, v13);

    if (v14 == 516)
    {
      return 1;
    }
  }

  else
  {
  }

  v19 = objc_msgSend_domain(a1, v15, v16, v17, v18);
  if (objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x277CCA5B8], v21, v22))
  {
    v27 = objc_msgSend_code(a1, v23, v24, v25, v26);

    if (v27 == 17)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2480A45E4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_domain(a1, a2, a3, a4, a5);
  if (objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x277CCA050], v8, v9))
  {
    v14 = objc_msgSend_code(a1, v10, v11, v12, v13);

    if (v14 == 260)
    {
      return 1;
    }
  }

  else
  {
  }

  v19 = objc_msgSend_domain(a1, v15, v16, v17, v18);
  if (objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x277CCA5B8], v21, v22))
  {
    v27 = objc_msgSend_code(a1, v23, v24, v25, v26);

    if (v27 == 2)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

id sub_2480A5B24(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9 = objc_msgSend_pathForResource_ofType_(a1, v7, a3, @"plist", v8);
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CBEAC0]);
    v14 = objc_msgSend_initWithContentsOfFile_(v10, v11, v9, v12, v13);
    v18 = v14;
    if (v14)
    {
      v19 = objc_msgSend_objectForKey_(v14, v15, v6, v16, v17);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = objc_msgSend_copy(v19, v20, v21, v22, v23);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

unint64_t XRUnionTimeRange(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 != -1 || a2)
  {
    if (a3 != -1 || a4)
    {
      if (a1 > -a2 || a2 == 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = a2 + a1 - 1;
      }

      if (a3 > -a4 || a4 == 0)
      {
        v7 = -1;
      }

      else
      {
        v7 = a4 + a3 - 1;
      }

      if (v5 <= v7)
      {
        v5 = v7;
      }

      if (a1 >= a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = a1;
      }

      if (v8 >= v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = v8;
      }

      if (v8 > v5)
      {
        v5 = v8;
      }

      if (v5 - v9 == -1)
      {
        return 0;
      }

      else
      {
        return v9;
      }
    }

    else
    {
      return a1;
    }
  }

  return a3;
}

unint64_t XRMakeInclusiveTimeRange(unint64_t a1, unint64_t a2)
{
  if (a1 >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  if (a1 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  if (v3 - v2 == -1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t XRIntersectionTimeRange(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 == -1 && !a2)
  {
    return -1;
  }

  if (a3 == -1 && !a4)
  {
    return -1;
  }

  v4 = a1 <= a3 ? a3 : a1;
  v5 = a1 > -a2 || a2 == 0;
  v6 = v5 ? -1 : a2 + a1 - 1;
  v7 = a3 > -a4 || a4 == 0;
  v8 = v7 ? -1 : a4 + a3 - 1;
  if (v6 >= v8)
  {
    v6 = v8;
  }

  v9 = v6 >= v4;
  v10 = v6 - v4;
  if (!v9)
  {
    return -1;
  }

  if (v10 == -1)
  {
    return 0;
  }

  return v4;
}

uint64_t XRMakeDurationTimeRange(unint64_t a1, uint64_t a2)
{
  v2 = __CFADD__(a2, a1);
  v3 = a1 + a2 - 1;
  if (a1 >= v3)
  {
    v4 = a1 + a2 - 1;
  }

  else
  {
    v4 = a1;
  }

  if (a1 > v3)
  {
    v3 = a1;
  }

  if (v3 - v4 == -1)
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = a1;
  }

  else
  {
    v5 = v4;
  }

  if (a2)
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

uint64_t XRDisplayStringFromTimeRange(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 > -a2 || a2 == 0)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"[%llu - %llu]", a4, a5, a1, -1);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"[%llu - %llu]", a4, a5, a1, &a2[a1 - 1]);
  }
}

uint64_t XRTimeRangeFromString(void *a1)
{
  v7 = 0;
  v8 = 0;
  v1 = a1;
  v5 = objc_msgSend_cStringUsingEncoding_(v1, v2, 1, v3, v4);
  sscanf(v5, "%llu %llu", &v7, &v8);
  return v7;
}

id sub_2480A5E64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a3;
  v7[1] = a4;
  v5 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], a2, v7, "{XRTimeRange=QQ}", a5);

  return v5;
}

uint64_t sub_2480A5EB0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = 0;
  v6[1] = 0;
  objc_msgSend_getValue_(a1, a2, v6, a4, a5);
  return v6[0];
}

id sub_2480A5EDC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"start";
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], a2, a3, a4, a5);
  v15[1] = @"length";
  v16[0] = v6;
  v10 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v7, a4, v8, v9);
  v16[1] = v10;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v16, v15, 2);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t sub_2480A5FB8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_objectForKeyedSubscript_(a1, a2, @"start", a4, a5);
  v10 = objc_msgSend_objectForKeyedSubscript_(a1, v7, @"length", v8, v9);
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = objc_msgSend_unsignedLongLongValue(v6, v11, v12, v13, v14);
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v15 = 0;
    if (!v10)
    {
LABEL_23:
      v25 = -1;
      goto LABEL_24;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  v20 = objc_msgSend_unsignedLongLongValue(v10, v16, v17, v18, v19);
  v21 = __CFADD__(v20, v15);
  v22 = v15 + v20 - 1;
  if (v15 >= v22)
  {
    v23 = v15 + v20 - 1;
  }

  else
  {
    v23 = v15;
  }

  if (v15 > v22)
  {
    v22 = v15;
  }

  if (v22 - v23 == -1)
  {
    v23 = 0;
  }

  if (v21)
  {
    v24 = v15;
  }

  else
  {
    v24 = v23;
  }

  if (v20)
  {
    v25 = v24;
  }

  else
  {
    v25 = -1;
  }

LABEL_24:

  return v25;
}

void sub_2480A6798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2480A6A88(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2480A6ABC(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = a1;
  sub_2480A7ADC(v1 + 3);
  objc_msgSend_setStrongBlockAdapterToken_(v1, v2, 0, v3, v4);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = objc_msgSend_keyEnumerator(*(v1 + 2), v5, v6, v7, v8, 0);
  v14 = objc_msgSend_allObjects(v9, v10, v11, v12, v13);

  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v21, v25, 16);
  if (v16)
  {
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        sub_2480A7180(*(v1 + 2), *(*(&v21 + 1) + 8 * v18++), v1);
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v19, &v21, v25, 16);
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2480A6C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = XRLazyKVOAdapter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2480A7028(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = a2;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addObserver_forKeyPath_options_context_(*(a1 + 32), v7, *(a1 + 40), *(*(&v14 + 1) + 8 * v10++), *(a1 + 56), a3, v14);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v18, 16);
    }

    while (v8);
  }

  objc_msgSend_setObject_forIntegerKey_(*(a1 + 48), v11, v5, a3, v12);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_2480A7180(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v10 = a3;
  if (v6)
  {
    v11 = objc_msgSend_objectForKey_(v5, v7, v6, v8, v9);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = sub_2480A7658;
    v22 = &unk_278EFC388;
    v12 = v6;
    v23 = v12;
    v24 = v10;
    objc_msgSend_enumerateObjectsAndIntegerKeys_(v11, v13, &v19, v14, v15);
    objc_msgSend_removeObjectForKey_(v5, v16, v12, v17, v18, v19, v20, v21, v22);
  }
}

void sub_2480A7388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2480A7550(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

void sub_2480A7658(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a2;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_removeObserver_forKeyPath_context_(*(a1 + 32), v7, *(a1 + 40), *(*(&v12 + 1) + 8 * v10++), a3, v12);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v16, 16);
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void *sub_2480A7784(void *a1, void *a2)
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

void sub_2480A7870(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v8[2] = a2[2];
        v9 = *v8;
        sub_2480A7968(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2480A79E8();
  }
}

void sub_2480A7934(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_2480A7968(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  a2[1] = v6;
  v7 = sub_2480A3C14(a1, v6, v4);
  sub_2480A3D74(a1, a2, v7);
  return a2;
}

void sub_2480A7A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2480A7ADC(void *result)
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

void *sub_2480A7B48(void *a1, void *a2)
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

uint64_t sub_2480A7DAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

id sub_2480A7DF8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_length(a1, a2, a3, a4, a5) <= 0x100000000)
  {
    v7 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
    v8 = a1;
    v13 = objc_msgSend_bytes(v8, v9, v10, v11, v12);
    v18 = objc_msgSend_length(a1, v14, v15, v16, v17);
    CC_SHA256(v13, v18, v7);
    v19 = objc_alloc(MEMORY[0x277CBEA90]);
    v21 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v19, v20, v7, 32, 1);
    v6 = objc_msgSend_base64EncodedStringWithOptions_(v21, v22, 0, v23, v24);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_2480A7EC8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_opt_new();
    objc_msgSend_setGroup_(v4, v5, v3, v6, v7);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_2480A7F2C()
{
  v0 = objc_opt_new();
  objc_msgSend_setStopWhenDone_(v0, v1, 1, v2, v3);

  return v0;
}

void sub_2480A7F74(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2480A8008;
  v9[3] = &unk_278EFA4A8;
  v10 = v4;
  v11 = a1;
  v5 = v4;
  objc_msgSend_performBlock_(a1, v6, v9, v7, v8);
}

uint64_t sub_2480A8008(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_hello(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_goodbye(*(a1 + 32), v6, v7, v8, v9);
  v14 = objc_msgSend_ticket(*(a1 + 32), v10, v11, v12, v13);
  if (v14)
  {
    v23 = v14;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_stopWhenDone(v23, v23, v15, v16, v17))
      {
        CFRunLoop = objc_msgSend_getCFRunLoop(*(a1 + 40), v23, v18, v19, v20);
        CFRunLoopStop(CFRunLoop);
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

void sub_2480A80A8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v12 = objc_msgSend_ticket(v4, v5, v6, v7, v8);
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = objc_msgSend_group(v12, v9, v13, v10, v11);
    if (v17)
    {
      v18 = dispatch_get_global_queue(17, 0);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_2480A81D4;
      v19[3] = &unk_278EFA4A8;
      v19[4] = a1;
      v20 = v4;
      dispatch_group_notify(v17, v18, v19);
    }

    else
    {
      objc_msgSend__scheduleAgentVisit_(a1, v14, v4, v15, v16);
    }
  }

  else
  {
    objc_msgSend__scheduleAgentVisit_(a1, v9, v4, v10, v11);
  }
}

id sub_2480A8210()
{
  if (qword_27EE86A08[0] != -1)
  {
    sub_2480B434C();
  }

  v1 = qword_27EE864E0;

  return v1;
}

void sub_2480A8254(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3, a4, a5);
  v9 = objc_msgSend_BOOLForKey_(v5, v6, @"XREnableInternalSignposts", v7, v8);

  if (v9)
  {
    qword_27EE864E0 = os_log_create("com.apple.dt.utilities", "Frame Scheduler");

    MEMORY[0x2821F96F8]();
  }
}

void sub_2480A82E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2480A8380;
  v6[3] = &unk_278EFC3B0;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_2480A8390(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2480A8428;
  v6[3] = &unk_278EFC3B0;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_barrier_async(v4, v6);
}

uint64_t sub_2480A8428(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 40) + 8));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_2480A8470(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 8))
  {
    dispatch_group_enter(v3);
    v5 = *(a1 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2480A852C;
    block[3] = &unk_278EFA3E8;
    v8 = v4;
    dispatch_barrier_async(v5, block);
    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
  }
}

uint64_t sub_2480A8534(uint64_t a1, int a2)
{
  *(a1 + 8) = 0;
  if (a2 == 1)
  {
    v3 = MEMORY[0x277D85CD8];
  }

  else
  {
    v3 = 0;
  }

  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, -15);
  v5 = dispatch_queue_create("com.apple.dt.frame.inactivity", v4);
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;

  return a1;
}

BOOL sub_2480A85A4(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  if (*a1)
  {
    v2 = 0;
  }

  else if (*(a1 + 8))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 12) != 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v2;
}

uint64_t sub_2480A8604(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  if ((*a1 & 1) != 0 || (v2 = *(a1 + 4), v2 == -1))
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    *(a1 + 4) = v2 + 1;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v3;
}

uint64_t sub_2480A8660(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = 0;
    v4 = *(a1 + 3);
    if (v2 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 12) == 0;
    v4 = *(a1 + 3);
  }

  if ((*a1 & 1) == 0)
  {
    *(a1 + 8) = v2 + 1;
  }

LABEL_7:
  os_unfair_lock_unlock((a1 + 16));
  return v3 & (v4 ^ 1u);
}

uint64_t sub_2480A86DC(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 12) == 0;
  }

  v4 = *(a1 + 4);
  if (!v4)
  {
    sub_2480B4360();
  }

  v5 = *(a1 + 3);
  if (*(a1 + 1))
  {
    *(a1 + 4) = v4 - 1;
  }

  else
  {
    if (v2 != -1 && (*a1 & 1) == 0)
    {
      *(a1 + 8) = v2 + 1;
    }

    *(a1 + 1) = 1;
  }

  v6 = v5 ^ 1;
  os_unfair_lock_unlock((a1 + 16));
  if (v3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2480A8780(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 4);
  if (!v2)
  {
    sub_2480B438C();
  }

  *(a1 + 4) = v2 - 1;
  if ((*(a1 + 2) & 1) == 0)
  {
    *(a1 + 2) = 1;
  }

  os_unfair_lock_unlock((a1 + 16));
  return 0;
}

BOOL sub_2480A87D8(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 8);
  if (*(a1 + 1) == 1)
  {
    if (!v2)
    {
      sub_2480B43B8();
    }

    --v2;
    --*(a1 + 4);
    *(a1 + 8) = v2;
    *(a1 + 1) = 0;
  }

  *(a1 + 3) = 1;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 12) == 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v3;
}

uint64_t sub_2480A8858(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 2);
  if (v2 == 1)
  {
    *(a1 + 2) = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v2;
}

uint64_t sub_2480A889C(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  if ((*a1 & 1) != 0 || (v2 = *(a1 + 12), v2 == -1) || (v3 = *(a1 + 4)) == 0)
  {
    v5 = 0;
  }

  else
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      sub_2480B43E4();
    }

    *(a1 + 4) = v3 - 1;
    *(a1 + 8) = v4 - 1;
    *(a1 + 12) = v2 + 1;
    v5 = 1;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v5;
}

BOOL sub_2480A8918(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 4);
  os_unfair_lock_opaque = a1[3]._os_unfair_lock_opaque;
  v4 = (!os_unfair_lock_opaque || (v3 = os_unfair_lock_opaque - 1, (a1[3]._os_unfair_lock_opaque = v3) == 0)) && !a1[2]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1 + 4);
  return v4;
}

uint64_t sub_2480A8974(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = 1;
  if ((*a1 & 1) == 0)
  {
    *a1 = 1;
    v2 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v2;
}

void sub_2480A89BC(uint64_t *a1)
{
  explicit = atomic_load_explicit((*a1 + 32), memory_order_acquire);
  v3 = *a1;
  if ((explicit & 1) == 0)
  {
    v6 = sub_2480A889C(*a1);
    v7 = a1[1];
    if (v6)
    {
      v7[2](v7, *a1 + 32);
      if (sub_2480A8918(*a1))
      {
        v8 = *a1;
        v9 = *(*a1 + 48);
        if (v9)
        {
          v10 = std::__shared_weak_count::lock(v9);
          if (v10)
          {
            v11 = v10;
            v12 = *(v8 + 40);
            if (v12)
            {
              v13 = *(v12 + 32);
              if (v13)
              {
                sub_2480A9E78(v13);
              }
            }

            sub_24808AAEC(v11);
          }
        }
      }
    }

    else
    {
      a1[1] = 0;
    }

    JUMPOUT(0x24C1C5380);
  }

  os_unfair_lock_lock(v3 + 4);
  os_unfair_lock_opaque = v3->_os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 4);
  if (os_unfair_lock_opaque)
  {
    v5 = a1[1];
    a1[1] = 0;
  }

  else
  {
    v14 = *(*a1 + 24);

    dispatch_async_f(v14, a1, sub_2480A89BC);
  }
}

void sub_2480A8B28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!sub_2480A8604(a1))
  {
    operator new();
  }
}

void sub_2480A8C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_24808AAEC(v10);

  _Unwind_Resume(a1);
}

void sub_2480A8C6C(uint64_t a1)
{
  if (!sub_2480A8604(a1))
  {
    if (sub_2480A86DC(a1))
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        v3 = std::__shared_weak_count::lock(v2);
        if (v3)
        {
          v4 = v3;
          v5 = *(a1 + 40);
          if (v5)
          {
            v6 = *(v5 + 32);
            if (v6)
            {
              sub_2480A9E78(v6);
            }
          }

          sub_24808AAEC(v4);
        }
      }
    }
  }
}

uint64_t sub_2480A8CFC(uint64_t a1)
{
  result = sub_2480A8604(a1);
  if (!result)
  {

    return sub_2480A8780(a1);
  }

  return result;
}

uint64_t sub_2480A8D44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend__startingMajorFrame(*(a1 + 56), a2, a3, a4, a5);
  result = sub_2480A8858(a1);
  if (result)
  {
    result = sub_2480A8604(a1);
    if (!result)
    {

      return sub_2480A86DC(a1);
    }
  }

  return result;
}

void sub_2480A8DA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!sub_2480A8604(a1))
  {
    if (sub_2480A8660(a1))
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = v5;
          v7 = *(a1 + 40);
          if (v7)
          {
            v8 = *(v7 + 32);
            if (v8)
            {
              sub_2480A9E78(v8);
            }

            v9 = *(a1 + 24);
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = sub_2480A8FE4;
            v17[3] = &unk_278EFC3B0;
            v19 = a1;
            v18 = v3;
            dispatch_sync(v9, v17);
            if (sub_2480A8918(a1))
            {
              v10 = *(v7 + 32);
              if (v10)
              {
                sub_2480A9E78(v10);
              }
            }
          }

          sub_24808AAEC(v6);
        }
      }
    }

    else
    {
      v11 = *(a1 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2480A8F98;
      block[3] = &unk_278EFC3B0;
      v22 = a1;
      v21 = v3;
      dispatch_sync(v11, block);
      if (sub_2480A8918(a1))
      {
        v12 = *(a1 + 48);
        if (v12)
        {
          v13 = std::__shared_weak_count::lock(v12);
          if (v13)
          {
            v14 = v13;
            v15 = *(a1 + 40);
            if (v15)
            {
              v16 = *(v15 + 32);
              if (v16)
              {
                sub_2480A9E78(v16);
              }
            }

            sub_24808AAEC(v14);
          }
        }
      }
    }
  }
}

void sub_2480A8F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_24808AAEC(v14);

  _Unwind_Resume(a1);
}

uint64_t sub_2480A8F98(uint64_t a1)
{
  sub_2480A889C(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t sub_2480A8FE4(uint64_t a1)
{
  sub_2480A889C(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_2480A9044(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (*(a1 + 33) == 1)
  {
    __assert_rtn("makeActive", "XRFrameScheduler_Private.mm", 507, "!_activated");
  }

  atomic_store(0, (a1 + 32));
  dispatch_group_enter(v5);
  v7 = *(a1 + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2480A9148;
  v9[3] = &unk_278EFC3D8;
  v12 = a2;
  v10 = v6;
  v11 = a1;
  v8 = v6;
  sub_2480A8390(v7, v9);
  *(a1 + 33) = 1;
}

void sub_2480A9148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 40);
  sub_2480A9194(v6, *(a1 + 48), a3, a4, a5);
  dispatch_resume(*(v6 + 24));
  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

void sub_2480A9194(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend__acquiredMinorFrame_(*(a1 + 56), a2, a2, a4, a5);
  if (sub_2480A87D8(a1))
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = *(a1 + 40);
        if (v9)
        {
          v10 = *(v9 + 32);
          if (v10)
          {
            sub_2480A9E78(v10);
          }
        }

        sub_24808AAEC(v8);
      }
    }
  }
}

void sub_2480A9228(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((*(a1 + 33) & 1) == 0)
  {
    __assert_rtn("makeInactive", "XRFrameScheduler_Private.mm", 519, "_activated");
  }

  os_unfair_lock_lock((a1 + 16));
  *(a1 + 3) = 0;
  os_unfair_lock_unlock((a1 + 16));
  dispatch_group_enter(v5);
  v6 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2480A933C;
  block[3] = &unk_278EFC3D8;
  v11 = a2;
  v9 = v5;
  v10 = a1;
  v7 = v5;
  dispatch_barrier_async(v6, block);
  atomic_store(1u, (a1 + 32));
  *(a1 + 33) = 0;
}

void sub_2480A933C(uint64_t a1)
{
  v2 = *(a1 + 40);
  dispatch_suspend(*(v2 + 24));
  objc_msgSend__yieldingMinorFrame_(*(v2 + 56), v3, *(a1 + 48), v4, v5);
  dispatch_resume(*(*(v2 + 64) + 8));
  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_2480A9394(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 72);
  *(a1 + 64) = v3;
  *(a1 + 72) = v2;
  if (v4)
  {
    sub_24808AAEC(v4);
  }
}

void sub_2480A93C0(uint64_t a1)
{
  if (!sub_2480A8974(a1))
  {
    v2 = dispatch_group_create();
    dispatch_resume(*(a1 + 24));
    dispatch_group_enter(v2);
    v3 = *(a1 + 24);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2480A94A0;
    v6[3] = &unk_278EFC400;
    v7 = v2;
    v8 = a1;
    v4 = v2;
    dispatch_barrier_async(v3, v6);
    sub_2480A8470(*(a1 + 64), v4);
    dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v5 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

void sub_2480A94A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend__shutdown(*(*(a1 + 40) + 56), a2, a3, a4, a5);
  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_2480A94E0(uint64_t a1, void *a2, char a3, int a4, dispatch_qos_class_t qos_class)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 34) = a3;
  v6 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  if (a4 == 1)
  {
    v7 = MEMORY[0x277D85CD8];
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v8 = dispatch_queue_attr_make_with_qos_class(v7, qos_class, 0);
  v9 = dispatch_queue_create("com.apple.dt.frame.activity", v8);
  v10 = *(a1 + 24);
  *(a1 + 24) = v9;

  dispatch_suspend(*(a1 + 24));
  operator new();
}

void sub_2480A95F4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 72);
  if (v4)
  {
    sub_24808AAEC(v4);
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2480A9628(uint64_t a1)
{
  sub_2480A93C0(a1);
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_24808AAEC(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_2480A9674(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    while (!sub_2480A85A4(*v2))
    {
      v2 += 2;
      if (v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = a1[1];
  }

  if (v2 != v3)
  {
    return *v2;
  }

  v5 = a1[3];
  if (v5 == v3)
  {
    return 0;
  }

  v6 = *v5;
  if (*(v6 + 34))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2480A96FC(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    while (!sub_2480A85A4(*v2))
    {
      v2 += 2;
      if (v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = a1[1];
  }

  v4 = a1[3];
  if (v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v2;
  }

  if (v4 == v3)
  {
    if (v2 != v3 && v5 != 0)
    {
LABEL_27:
      a1[3] = v2;
      v4 = v2;
LABEL_28:
      if (*(*v4 + 33) == 1)
      {
        sub_2480B4494();
      }

      return 3;
    }

    if (v2 == v3)
    {
      return 0;
    }

LABEL_45:
    sub_2480B44C0();
  }

  v6 = *v4;
  v7 = v5 != *v4;
  v8 = v5 == *v4 || v2 == v3;
  v9 = *(v6 + 33);
  v10 = *(v6 + 34) ^ 1;
  if (v2 == v3)
  {
    v11 = *(v6 + 34) ^ 1;
  }

  else
  {
    v11 = v7;
  }

  if ((v8 & v11 & 1) == 0 && (v9 & 1) == 0)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if ((v8 | v9 ^ 1))
  {
    if ((v9 ^ 1 | v11))
    {
      if (v2 == v3)
      {
        v14 = v9;
      }

      else
      {
        v14 = 0;
      }

      if (v14 & v10)
      {
        return 4;
      }

      if (v2 == v3)
      {
        if (v9)
        {
          sub_2480B4468();
        }

        return 0;
      }

      goto LABEL_45;
    }

    if ((v9 & 1) == 0)
    {
      sub_2480B443C();
    }

    return 2;
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      sub_2480B4410();
    }

    return 1;
  }
}

void sub_2480A984C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 24);
  v7 = v5;
  if (v6 == *(a1 + 8))
  {
    __assert_rtn("activateSelectedManager", "XRFrameScheduler_Private.mm", 714, "_nextReadyManager != _activityManagers.end()");
  }

  sub_2480A9044(*v6, a2, v5);
}

void sub_2480A98F0(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 24);
  if (v5 != *(a1 + 8) && *(*v5 + 33) == 1)
  {
    sub_2480A9228(*v5, a2, v6);
  }
}

void **sub_2480A9978(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_2480AB3B4();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_2480AB45C(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_2480AB4A4(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  v3[3] = v7;
  return result;
}

uint64_t sub_2480A9A90(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if (*result != v3)
  {
    do
    {
      result = sub_2480A85A4(*v2);
      if (result)
      {
        result = objc_msgSend__underrunMinorFrame_(*(*v2 + 56), v5, a2, v6, v7);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_2480A9AEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 24);
  if (v5 == *(a3 + 8))
  {
    v11 = *(result + 8);
    v12 = *(result + 24);
    if (v12 != v11 && *(*v12 + 33) == 1)
    {
      sub_2480B4544();
    }

    *(result + 24) = v11;
  }

  else
  {
    v6 = *result;
    v7 = *(result + 8);
    if (*result != v7)
    {
      v8 = *v5;
      do
      {
        if (*v6 == v8)
        {
          goto LABEL_8;
        }

        v6 += 2;
      }

      while (v6 != v7);
      *(result + 24) = v7;
LABEL_7:
      sub_2480B4518();
    }

LABEL_8:
    *(result + 24) = v6;
    if (v6 == v7)
    {
      goto LABEL_7;
    }

    v9 = *v6;
    if ((*(v9 + 34) & 1) == 0)
    {
      sub_2480B44EC();
    }

    v10 = *(v9 + 56);

    return MEMORY[0x2821F9670](v10, sel__extendingMinorFrame_, a2, a4, a5);
  }

  return result;
}

void sub_2480A9BA4(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = (*(a1 + 8) + 32 * a2);
  v7 = sub_2480A96FC(v6);
  switch(v7)
  {
    case 1:
      goto LABEL_4;
    case 3:
      sub_2480A984C(v6, a2, v5);
      break;
    case 4:
LABEL_4:
      dispatch_group_enter(v5);
      v8 = dispatch_group_create();
      sub_2480A98F0(v6, a2, v8);
      v9 = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2480A9CF0;
      block[3] = &unk_278EFC3D8;
      v12 = a1;
      v13 = a2;
      v11 = v5;
      dispatch_group_notify(v8, v9, block);

      break;
  }
}

void sub_2480A9CF0(uint64_t a1)
{
  sub_2480A9BA4(*(a1 + 40), *(a1 + 48), *(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void sub_2480A9D34(uint64_t a1, char a2, unsigned int a3, NSObject *a4)
{
  v5 = a3;
  v8 = *(a1 + 8) + 32 * a3;
  v9 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2480A9DFC;
  block[3] = &unk_278EFC420;
  block[4] = a1;
  block[5] = v8;
  v11 = v5;
  v12 = a2;
  dispatch_group_async(a4, v9, block);
}

void sub_2480A9E18(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v1 != v2)
  {
    v3 = *v1;
    v4 = v1[1];
    while (v3 != v4)
    {
      v5 = *v3;
      v3 += 2;
      sub_2480A93C0(v5);
    }

    v1 += 4;
  }
}

uint64_t sub_2480A9E78(uint64_t a1)
{
  pthread_mutex_lock((a1 + 56));
  if ((*(a1 + 120) - 1) <= 1)
  {
    *(a1 + 120) = 3;
  }

  pthread_cond_signal_thread_np((a1 + 8), *a1);

  return pthread_mutex_unlock((a1 + 56));
}

uint64_t sub_2480A9ED8(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 8);
  v6 = *(result + 16);
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = v5[1];
    while (v7 != v8)
    {
      v9 = *v7;
      v7 += 2;
      result = sub_2480A8D44(v9, a2, a3, a4, a5);
    }

    v5 += 4;
  }

  return result;
}

uint64_t sub_2480A9F28(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (1)
  {
    if (v1 == v2)
    {
      return 1;
    }

    v3 = sub_2480A9674(v1);
    if (v3)
    {
      if (sub_2480A85A4(v3))
      {
        break;
      }
    }

    v1 += 4;
  }

  return 0;
}

void *sub_2480A9F78(void *a1, unsigned int a2)
{
  *a1 = atomic_fetch_add(&qword_27EE864E8, 1uLL);
  memset(v4, 0, sizeof(v4));
  sub_2480AB52C(a1 + 1, a2);
  v5 = v4;
  sub_24808AA4C(&v5);
  a1[4] = 0;
  return a1;
}

void sub_2480A9FE0(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  sub_24808AA4C((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_2480A9FFC(uint64_t a1)
{
  result = gettimeofday(&v21, 0);
  v3 = 1000000000 * v21.tv_sec + 1000 * v21.tv_usec;
  v4 = 1000000000 * *(a1 + 160) + 1000 * *(a1 + 168);
  v5 = *(a1 + 144) + *(a1 + 128);
  if (v3 < v4)
  {
    v6 = 0;
    do
    {
      v7 = v4 - v5;
      v8 = v6 + 1;
      if (v3 >= v4 - v5)
      {
        break;
      }

      v4 -= v5;
    }

    while (v6++ < 4);
    if (v8 == 5)
    {
      v4 = v3 - v5;
    }

    else
    {
      v4 = v7;
    }
  }

  v10 = v3 - v4;
  v11 = (v3 - v4) % v5;
  if (*(a1 + 124) <= (v11 / 0x3E8 / *(a1 + 152)))
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 / 0x3E8 / *(a1 + 152);
  }

  if (v5 <= v10)
  {
    v13 = *(a1 + 124);
  }

  else
  {
    v13 = 0;
  }

  v14 = v12 + v13;
  for (i = *(a1 + 176) + 1; i < v14; ++i)
  {
    v16 = *(a1 + 184);
    v17 = *(a1 + 192);
    while (v16 != v17)
    {
      v18 = *v16;
      v16 += 2;
      v19 = i % *(a1 + 124);
      result = sub_2480A9A90(*(v18 + 8) + 32 * v19, v19);
    }
  }

  v20 = v10 - v11 + v4;
  *(a1 + 160) = v20 / 0x3B9ACA00;
  *(a1 + 168) = v20 % 0x3B9ACA00 / 0x3E8;
  *(a1 + 176) = v12;
  ++*(a1 + 272);
  return result;
}

uint64_t sub_2480AA1AC(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    sub_2480B4570();
  }

  pthread_mutex_lock((a1 + 56));
  v5 = *(a1 + 240);
  v4 = *(a1 + 248);
  if (v5 >= v4)
  {
    v7 = *(a1 + 232);
    v8 = (v5 - v7) >> 4;
    if ((v8 + 1) >> 60)
    {
      sub_2480AB3B4();
    }

    v9 = v4 - v7;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v19[4] = (a1 + 232);
    if (v11)
    {
      sub_2480AB45C(a1 + 232, v11);
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v6 = 16 * v8 + 16;
    *a2 = 0;
    a2[1] = 0;
    v13 = *(a1 + 232);
    v14 = *(a1 + 240) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(a1 + 232);
    *(a1 + 232) = v15;
    *(a1 + 240) = v6;
    v17 = *(a1 + 248);
    *(a1 + 248) = 0;
    v19[2] = v16;
    v19[3] = v17;
    v19[0] = v16;
    v19[1] = v16;
    sub_2480AB4A4(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
    *a2 = 0;
    a2[1] = 0;
  }

  *(a1 + 240) = v6;
  while (*(a1 + 232) != *(a1 + 240))
  {
    if (!*(a1 + 120))
    {
      break;
    }

    *(a1 + 120) = 3;
    pthread_cond_signal_thread_np((a1 + 8), *a1);
    pthread_cond_wait((a1 + 8), (a1 + 56));
  }

  return pthread_mutex_unlock((a1 + 56));
}

uint64_t sub_2480AA2FC(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 56));
  v5 = *(a1 + 184);
  v4 = *(a1 + 192);
  if (v5 != v4)
  {
    while (**v5 != a2)
    {
      if (++v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_10:
    v10 = 0;
  }

  else
  {
    v6 = *(a1 + 216);
    v7 = *(a1 + 224);
    if (v6 >= v7)
    {
      v11 = *(a1 + 208);
      v12 = (v6 - v11) >> 4;
      v13 = v12 + 1;
      if ((v12 + 1) >> 60)
      {
        sub_2480AB3B4();
      }

      v14 = v7 - v11;
      if (v14 >> 3 > v13)
      {
        v13 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      v24[4] = (a1 + 208);
      if (v15)
      {
        sub_2480AB45C(a1 + 208, v15);
      }

      v16 = 16 * v12;
      v17 = *v5;
      *(16 * v12) = *v5;
      if (*(&v17 + 1))
      {
        atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v9 = (v16 + 16);
      v18 = *(a1 + 208);
      v19 = *(a1 + 216) - v18;
      v20 = v16 - v19;
      memcpy((v16 - v19), v18, v19);
      v21 = *(a1 + 208);
      *(a1 + 208) = v20;
      *(a1 + 216) = v9;
      v22 = *(a1 + 224);
      *(a1 + 224) = 0;
      v24[2] = v21;
      v24[3] = v22;
      v24[0] = v21;
      v24[1] = v21;
      sub_2480AB4A4(v24);
    }

    else
    {
      v8 = *(v5 + 1);
      *v6 = *v5;
      v6[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v6 + 2;
    }

    *(a1 + 216) = v9;
    pthread_cond_signal_thread_np((a1 + 8), *a1);
    v10 = 1;
  }

  while (*(a1 + 208) != *(a1 + 216))
  {
    if (!*(a1 + 120))
    {
      break;
    }

    *(a1 + 120) = 3;
    pthread_cond_signal_thread_np((a1 + 8), *a1);
    pthread_cond_wait((a1 + 8), (a1 + 56));
  }

  pthread_mutex_unlock((a1 + 56));
  return v10;
}

void sub_2480AA4B0(uint64_t a1, unsigned int a2)
{
  group = dispatch_group_create();
  v4 = *(a1 + 184);
  for (i = *(a1 + 192); v4 != i; v4 += 16)
  {
    sub_2480A98F0(*(*v4 + 8) + 32 * a2, a2, group);
  }

  pthread_mutex_unlock((a1 + 56));
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  pthread_mutex_lock((a1 + 56));
}

void sub_2480AA570(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 124))
    {
      v2 = 0;
      while (*(a1 + 120) == 1)
      {
        sub_2480AA4B0(a1, v2++);
        if (*(a1 + 124) <= v2)
        {
          if (*(a1 + 120) != 1)
          {
            return;
          }

          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v3 = *(a1 + 184);
      v4 = *(a1 + 192);
      while (v3 != v4)
      {
        if ((sub_2480A9F28(*v3) & 1) == 0)
        {
          return;
        }

        v3 += 2;
      }

      *(a1 + 120) = 2;

      pthread_cond_broadcast((a1 + 8));
    }
  }
}

uint64_t sub_2480AA630(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  pthread_setname_np("Commutator");
  pthread_mutex_lock((a1 + 56));
  gettimeofday((a1 + 160), 0);
  *(a1 + 176) = 0;
  v77 = sub_2480A8210();
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = (a1 + 184);
    while (1)
    {
      if (v2 == 2)
      {
        do
        {
          pthread_cond_wait((a1 + 8), (a1 + 56));
        }

        while (*(a1 + 120) == 2);
        *(a1 + 256) = 1;
      }

      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 120);
      if (v5 == 4 || v5 == 1)
      {
        v7 = *(a1 + 232);
        v8 = *(a1 + 240);
        if (v7 != v8)
        {
          v9 = *(a1 + 192);
          do
          {
            v10 = *v7;
            *(*v7 + 32) = a1;
            v11 = *(a1 + 200);
            if (v9 >= v11)
            {
              v13 = (v9 - *v3) >> 4;
              if ((v13 + 1) >> 60)
              {
                sub_2480AB3B4();
              }

              v14 = v11 - *v3;
              v15 = v14 >> 3;
              if (v14 >> 3 <= (v13 + 1))
              {
                v15 = v13 + 1;
              }

              if (v14 >= 0x7FFFFFFFFFFFFFF0)
              {
                v16 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v16 = v15;
              }

              v82 = a1 + 184;
              if (v16)
              {
                sub_2480AB45C(a1 + 184, v16);
              }

              v17 = 16 * v13;
              v18 = *v7;
              *(16 * v13) = *v7;
              if (*(&v18 + 1))
              {
                atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v9 = (v17 + 16);
              v19 = *(a1 + 184);
              v20 = *(a1 + 192) - v19;
              v21 = v17 - v20;
              memcpy((v17 - v20), v19, v20);
              v22 = *(a1 + 184);
              *(a1 + 184) = v21;
              *(a1 + 192) = v9;
              v23 = *(a1 + 200);
              *(a1 + 200) = 0;
              v80 = v22;
              v81 = v23;
              v79.tv_sec = v22;
              v79.tv_nsec = v22;
              sub_2480AB4A4(&v79);
            }

            else
            {
              *v9 = v10;
              v12 = v7[1];
              v9[1] = v12;
              if (v12)
              {
                atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
              }

              v9 += 2;
            }

            *(a1 + 192) = v9;
            v7 += 2;
          }

          while (v7 != v8);
          sub_24808AAA0((a1 + 232));
          pthread_cond_broadcast((a1 + 8));
        }

        if (*(a1 + 256) == 1)
        {
          sub_2480AA4B0(a1, *(a1 + 176));
          sub_2480A9FFC(a1);
          *(a1 + 256) = 0;
        }

        v25 = *(a1 + 128);
        v24 = *(a1 + 136);
        if (v25 != v24 && (v24 > v25 || v24 < v25 && !*(a1 + 176)))
        {
          *(a1 + 128) = v24;
          v26 = v24 / *(a1 + 124) / 0x3E8;
          *(a1 + 152) = v26;
          if (v26 <= 0)
          {
            __assert_rtn("_main", "XRFrameScheduler_Private.mm", 1143, "_minorFramePeriodInMicroseconds > 0");
          }

          *(a1 + 144) = 0;
          *(a1 + 520) = 0;
          *(a1 + 528) = 0;
        }

        v27 = *(a1 + 168) + *(a1 + 152) + *(a1 + 152) * *(a1 + 176);
        if (v27 <= 999999)
        {
          v28 = *(a1 + 160);
        }

        else
        {
          v28 = *(a1 + 160) + 1;
        }

        if (v27 <= 999999)
        {
          v29 = *(a1 + 168) + *(a1 + 152) + *(a1 + 152) * *(a1 + 176);
        }

        else
        {
          v29 = v27 - 1000000;
        }

        v79.tv_sec = v28;
        v79.tv_nsec = 1000 * v29;
        when = dispatch_time(0, 0);
        v30 = dispatch_group_create();
        v31 = v77;
        v32 = os_signpost_id_make_with_pointer(v31, a1);
        if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v33 = v32;
          if (os_signpost_enabled(v31))
          {
            v34 = *(a1 + 176);
            LODWORD(buf.tv_sec) = 67109120;
            HIDWORD(buf.tv_sec) = v34;
            _os_signpost_emit_with_name_impl(&dword_248087000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v33, "Minor Frame", "Started Frame %d", &buf, 8u);
          }
        }

        do
        {
          while (1)
          {
            while (1)
            {
              if (*(a1 + 120) == 3)
              {
                *(a1 + 120) = 1;
              }

              v35 = *(a1 + 184);
              v36 = *(a1 + 192);
              while (v35 != v36)
              {
                sub_2480A9BA4(*v35, *(a1 + 176), v30);
                v35 += 2;
              }

              pthread_mutex_unlock((a1 + 56));
              dispatch_group_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
              pthread_mutex_lock((a1 + 56));
              v37 = *(a1 + 120);
              if (v37 > 2)
              {
                break;
              }

              if (v37 == 1)
              {
                if (pthread_cond_timedwait((a1 + 8), (a1 + 56), &v79) == 60)
                {
                  goto LABEL_67;
                }
              }

              else if (!v37 || v37 == 2)
              {
                abort();
              }
            }

            if (v37 != 3)
            {
              break;
            }

            gettimeofday(&buf, 0);
            v38 = buf.tv_sec < v28;
            if (buf.tv_sec == v28)
            {
              v38 = buf.tv_usec < v29;
            }

            if (!v38)
            {
LABEL_67:
              v39 = v31;
              v40 = os_signpost_id_make_with_pointer(v39, a1);
              if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v41 = v40;
                if (os_signpost_enabled(v39))
                {
                  LOWORD(buf.tv_sec) = 0;
                  _os_signpost_emit_with_name_impl(&dword_248087000, v39, OS_SIGNPOST_INTERVAL_END, v41, "Minor Frame", "End", &buf, 2u);
                }
              }

              v42 = dispatch_group_create();
              v43 = *(a1 + 184);
              v44 = *(a1 + 192);
              while (2)
              {
                if (v43 == v44)
                {
                  pthread_mutex_unlock((a1 + 56));
                  dispatch_group_wait(v42, 0xFFFFFFFFFFFFFFFFLL);
                  pthread_mutex_lock((a1 + 56));

                  goto LABEL_81;
                }

                v45 = *(a1 + 176);
                v46 = *(*v43 + 8);
                v47 = v46 + 32 * v45;
                v48 = *(v47 + 8);
                v49 = *(v47 + 24);
                if (v49 != v48 && (v50 = *v49) != 0 && *(v50 + 34) == 1)
                {
                  v51 = sub_2480A9674((v46 + 32 * ((v45 + 1) % *(a1 + 124))));
                  v52 = *v43;
                  v45 = *(a1 + 176);
                  if (v50 != v51)
                  {
                    v46 = *(v52 + 8);
                    goto LABEL_77;
                  }

                  sub_2480A9D34(v52, v45, (v45 + 1) % *(a1 + 124), v42);
                }

                else
                {
LABEL_77:
                  sub_2480A98F0(v46 + 32 * v45, v45, v42);
                }

                v43 += 2;
                continue;
              }
            }
          }
        }

        while (v37 != 4);
LABEL_81:
        v53 = dispatch_time(0, 0);
        if (dispatch_time(when, 2000 * *(a1 + 152)) >= v53)
        {
          if ((*(a1 + 256) & 1) == 0)
          {
            if (*(a1 + 120) == 4 || *(a1 + 208) != *(a1 + 216) || *(a1 + 232) != *(a1 + 240))
            {
              sub_2480AA4B0(a1, *(a1 + 176));
            }

            v58 = (*(a1 + 176) + 1) % *(a1 + 124);
            *(a1 + 176) = v58;
            if (!v58)
            {
              v59 = *(a1 + 168) + (*(a1 + 144) + *(a1 + 128)) / 0x3E8uLL;
              *(a1 + 168) = v59;
              if (v59 > 999999)
              {
                ++*(a1 + 160);
                *(a1 + 168) = v59 - 1000000;
              }

              ++*(a1 + 264);
              v60 = *(a1 + 184);
              v61 = *(a1 + 192);
              if (v60 == v61)
              {
                goto LABEL_99;
              }

              v62 = 1;
              do
              {
                while (1)
                {
                  sub_2480A9ED8(*v60, v54, v55, v56, v57);
                  if (v62)
                  {
                    break;
                  }

                  v62 = 0;
                  v60 += 2;
                  if (v60 == v61)
                  {
                    goto LABEL_100;
                  }
                }

                v63 = *v60;
                v60 += 2;
                v64 = sub_2480A9F28(v63);
                v62 = v64;
              }

              while (v60 != v61);
              if (v64)
              {
LABEL_99:
                sub_2480AA570(a1);
              }
            }
          }
        }

        else
        {
          *(a1 + 256) = 1;
          sub_2480AA4B0(a1, *(a1 + 176));
        }

LABEL_100:
      }

      objc_autoreleasePoolPop(v4);
      v2 = *(a1 + 120);
      if (v2 == 3)
      {
        break;
      }

      if (v2 == 4)
      {
        sub_2480AB838((a1 + 208), *(a1 + 216), *(a1 + 184), *(a1 + 192), (*(a1 + 192) - *(a1 + 184)) >> 4);
        sub_24808AAA0((a1 + 184));
        v2 = 0;
LABEL_105:
        *(a1 + 120) = v2;
      }

      v65 = *(a1 + 208);
      v66 = *(a1 + 216);
      if (v65 != v66)
      {
        do
        {
          v68 = *(a1 + 184);
          v67 = *(a1 + 192);
          v70 = *v65;
          v69 = v65[1];
          if (v69)
          {
            atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v68 != v67)
          {
            while (*v68 != v70)
            {
              v68 += 2;
              if (v68 == v67)
              {
                v68 = v67;
                goto LABEL_121;
              }
            }

            if (v68 != v67)
            {
              for (i = v68 + 2; i != v67; i += 2)
              {
                v72 = *i;
                if (*i != v70)
                {
                  v73 = i[1];
                  *i = 0;
                  i[1] = 0;
                  v74 = v68[1];
                  *v68 = v72;
                  v68[1] = v73;
                  if (v74)
                  {
                    sub_24808AAEC(v74);
                  }

                  v68 += 2;
                }
              }
            }
          }

LABEL_121:
          if (v69)
          {
            sub_24808AAEC(v69);
          }

          sub_2480A9E18(*v65);
          sub_2480AAEB8(a1 + 184, v68, *(a1 + 192));
          v65 += 2;
        }

        while (v65 != v66);
        sub_24808AAA0((a1 + 208));
        pthread_cond_broadcast((a1 + 8));
        v2 = *(a1 + 120);
      }

      if (!v2)
      {
        goto LABEL_126;
      }
    }

    v2 = 1;
    goto LABEL_105;
  }

LABEL_126:
  pthread_cond_broadcast((a1 + 8));
  pthread_mutex_unlock((a1 + 56));

  v75 = *MEMORY[0x277D85DE8];
  return 0;
}