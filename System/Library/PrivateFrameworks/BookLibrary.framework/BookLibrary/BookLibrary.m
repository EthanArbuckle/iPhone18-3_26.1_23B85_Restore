uint64_t sub_241D0E208(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = qword_280C4FA88;
  qword_280C4FA88 = v2;

  v4 = BLDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = qword_280C4FA88;
    _os_log_impl(&dword_241D0D000, v4, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: using singelton instance: %@", &v9, 0xCu);
  }

  result = objc_msgSend_overrideSharedInstance_(*(a1 + 32), v5, qword_280C4FA88, v6);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_241D0E308()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_280C4FA78;
  v7 = qword_280C4FA78;
  if (!qword_280C4FA78)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D0E444;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D0E444(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D0E3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D0E3E8()
{
  v0 = sub_241D0E49C();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

Class sub_241D0E444(uint64_t a1)
{
  sub_241D0E3E8();
  result = objc_getClass("MPMediaQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_280C4FA78 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_241D1828C();
    return sub_241D0E49C();
  }

  return result;
}

uint64_t sub_241D0E49C()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_280C4FA80;
  v6 = qword_280C4FA80;
  if (!qword_280C4FA80)
  {
    v7 = xmmword_278D15910;
    v8 = *off_278D15920;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_280C4FA80 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_241D0E5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_241D0E5C8()
{
  if (qword_27EC71288 != -1)
  {
    sub_241D1809C();
  }

  v1 = qword_27EC71280;

  return v1;
}

uint64_t sub_241D0E60C()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = qword_27EC71280;
  qword_27EC71280 = v0;

  objc_msgSend_setMaxConcurrentOperationCount_(qword_27EC71280, v2, -1, v3);
  objc_msgSend_setQualityOfService_(qword_27EC71280, v4, 25, v5);
  v7 = qword_27EC71280;

  return MEMORY[0x2821F9670](v7, sel_setName_, @"com.apple.BookLibrary.NSOperationQueue.HLS", v6);
}

void sub_241D0E88C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_uiManagerDelegate(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_downloadQueue(*(a1 + 32), v6, v7, v8);
  v13 = objc_msgSend_request(*(a1 + 32), v10, v11, v12);
  v14 = BLDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v39 = v5;
    _os_log_impl(&dword_241D0D000, v14, OS_LOG_TYPE_DEBUG, "[UIHostServiceProxy]: most recent uiManagerDelegate: %@", buf, 0xCu);
  }

  if (!v5)
  {
LABEL_6:
    v19 = objc_msgSend__topMostViewController(*(a1 + 32), v15, v16, v17);
LABEL_7:
    sub_241D10988();
    if (objc_opt_class())
    {
      if (v19)
      {
        v23 = BLDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v39 = v19;
          _os_log_impl(&dword_241D0D000, v23, OS_LOG_TYPE_DEBUG, "[UIHostServiceProxy]: use in-process authenticate with presenter %@", buf, 0xCu);
        }

        sub_241D10988();
        v24 = objc_alloc(objc_opt_class());
        v26 = objc_msgSend_initWithRequest_presentingViewController_(v24, v25, *(a1 + 40), v19);
        v30 = objc_msgSend_performAuthentication(v26, v27, v28, v29);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = sub_241D0EBB0;
        v36[3] = &unk_278D156F0;
        v37 = *(a1 + 48);
        objc_msgSend_addFinishBlock_(v30, v31, v36, v32);
      }

      else
      {
        v30 = objc_msgSend_fallback(*(a1 + 32), v20, v21, v22);
        objc_msgSend_handleAuthenticateRequest_withReply_(v30, v34, *(a1 + 40), *(a1 + 48));
      }
    }

    else
    {
      v30 = BLDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241D0D000, v30, OS_LOG_TYPE_ERROR, "[UIHostServiceProxy]: failed to soft link AMSUI!", buf, 2u);
      }
    }

    goto LABEL_19;
  }

  if (objc_msgSend_downloadQueue_shouldShowAuthenticateForRequest_(v5, v15, v9, v13))
  {
    v19 = objc_msgSend_downloadQueue_viewControllerToPresentAuthenticateUIForRequest_(v5, v18, v9, v13);
    if (v19)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v33 = BLDefaultLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v33, OS_LOG_TYPE_DEBUG, "[UIHostServiceProxy]: client rejected authenticate request.", buf, 2u);
  }

  v19 = MEMORY[0x245CFEDE0](*(a1 + 48));
  if (v19)
  {
    v30 = BLError();
    (v19)[2](v19, 0, v30);
LABEL_19:
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_241D0EBB0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = MEMORY[0x245CFEDE0](*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }
}

void sub_241D0ED94(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_uiManagerDelegate(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_downloadQueue(*(a1 + 32), v6, v7, v8);
  v16 = objc_msgSend_request(*(a1 + 32), v10, v11, v12);
  if (!v5)
  {
LABEL_4:
    v18 = objc_msgSend__topMostViewController(*(a1 + 32), v13, v14, v15);
LABEL_5:
    sub_241D10AC0();
    if (objc_opt_class())
    {
      sub_241D10BF8();
      if (objc_opt_class())
      {
        if (v18)
        {
          v22 = BLDefaultLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v18;
            _os_log_impl(&dword_241D0D000, v22, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: use in-process dialog with presenter %@", buf, 0xCu);
          }

          sub_241D10AC0();
          v23 = objc_alloc(objc_opt_class());
          v25 = objc_msgSend_initWithRequest_presentingViewController_(v23, v24, *(a1 + 40), v18);
          v29 = objc_msgSend_present(v25, v26, v27, v28);
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = sub_241D0F090;
          v37[3] = &unk_278D15768;
          v38 = *(a1 + 40);
          v39 = *(a1 + 48);
          objc_msgSend_addFinishBlock_(v29, v30, v37, v31);
        }

        else
        {
          v35 = objc_msgSend_fallback(*(a1 + 32), v19, v20, v21);
          objc_msgSend_handleDialogRequest_withReply_(v35, v36, *(a1 + 40), *(a1 + 48));
        }

        goto LABEL_18;
      }
    }

    v32 = BLDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D0D000, v32, OS_LOG_TYPE_ERROR, "[UIHostServiceProxy]: failed to soft link AMSUI!", buf, 2u);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (objc_msgSend_downloadQueue_shouldShowDialogForRequest_(v5, v13, v9, v16))
  {
    v18 = objc_msgSend_downloadQueue_viewControllerToPresentDialogUIForRequest_(v5, v17, v9, v16);
    if (v18)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v33 = BLDefaultLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v33, OS_LOG_TYPE_DEBUG, "[UIHostServiceProxy]: client rejected dialog request.", buf, 2u);
  }

  v18 = MEMORY[0x245CFEDE0](*(a1 + 48));
  if (v18)
  {
    v32 = BLError();
    (v18)[2](v18, 0, v32);
    goto LABEL_17;
  }

LABEL_18:

  v34 = *MEMORY[0x277D85DE8];
}

void sub_241D0F090(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BLDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = 138412290;
    v18 = v6;
    v9 = "[UIHostServiceProxy] received error from AMSSystemAlertDialogTask:  %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 32);
    v17 = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = v5;
    v9 = "[UIHostServiceProxy] received result from AMSSystemAlertDialogTask for request %@ and calling replay block with result %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 22;
  }

  _os_log_impl(&dword_241D0D000, v10, v11, v9, &v17, v12);
LABEL_7:

  v14 = MEMORY[0x245CFEDE0](*(a1 + 40));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_241D0F33C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_uiManagerDelegate(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_downloadQueue(*(a1 + 32), v6, v7, v8);
  v13 = objc_msgSend_request(*(a1 + 32), v10, v11, v12);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_241D0F4EC;
  v27 = &unk_278D157B8;
  v14 = v5;
  v28 = v14;
  v15 = v9;
  v29 = v15;
  v16 = v13;
  v30 = v16;
  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v33 = v17;
  v31 = v18;
  v32 = v19;
  v20 = MEMORY[0x245CFEDE0](&v24);
  if (!v14)
  {
    goto LABEL_6;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      shouldShowEngagementForRequest = objc_msgSend_downloadQueue_shouldShowEngagementForRequest_(v14, v22, v15, v16, v24, v25, v26, v27, v28, v29, v30, v31);
      v20[2](v20, shouldShowEngagementForRequest);
      goto LABEL_7;
    }

LABEL_6:
    v20[2](v20, 1);
    goto LABEL_7;
  }

  objc_msgSend_downloadQueue_shouldShowEngagementForRequest_engagementRequest_completion_(v14, v21, v15, v16, *(a1 + 40), v20, v24, v25, v26, v27, v28, v29, v30, v31);
LABEL_7:
}

void sub_241D0F4EC(uint64_t a1, const char *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = objc_msgSend_downloadQueue_viewControllerToPresentEngagementUIForRequest_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48));
    if (!v6)
    {
      v6 = objc_msgSend__topMostViewController(*(a1 + 56), v3, v4, v5);
    }

    sub_241D10D30();
    if (objc_opt_class())
    {
      v7 = BLDefaultLog();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          *buf = 138412290;
          v32 = v6;
          _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: use in-process engagement with presenter %@", buf, 0xCu);
        }

        v12 = objc_msgSend_defaultBag(MEMORY[0x277CF3300], v9, v10, v11);
        sub_241D10D30();
        v13 = objc_alloc(objc_opt_class());
        v15 = objc_msgSend_initWithRequest_bag_presentingViewController_(v13, v14, *(a1 + 64), v12, v6);
        v19 = objc_msgSend_presentEngagement(v15, v16, v17, v18);
      }

      else
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: Presenter not found for engagement request", buf, 2u);
        }

        v23 = MEMORY[0x277CEE630];
        v12 = BLError();
        v19 = objc_msgSend_promiseWithError_(v23, v24, v12, v25);
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_241D0F81C;
      v29[3] = &unk_278D15790;
      v30 = *(a1 + 72);
      objc_msgSend_addFinishBlock_(v19, v26, v29, v27);
    }

    else
    {
      v21 = BLDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241D0D000, v21, OS_LOG_TYPE_ERROR, "[UIHostServiceProxy]: failed to soft link AMSUI!", buf, 2u);
      }

      v19 = MEMORY[0x245CFEDE0](*(a1 + 72));
      if (v19)
      {
        v22 = BLError();
        (v19)[2](v19, 0, v22);
      }
    }

    goto LABEL_21;
  }

  v20 = BLDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v20, OS_LOG_TYPE_DEBUG, "[UIHostServiceProxy]: client rejected engagement request.", buf, 2u);
  }

  v6 = MEMORY[0x245CFEDE0](*(a1 + 72));
  if (v6)
  {
    v19 = BLError();
    v6[2](v6, 0, v19);
LABEL_21:
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_241D0F81C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = MEMORY[0x245CFEDE0](*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }
}

void sub_241D0FAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D0FACC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241D0FAE4(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  sub_241D10118();
  v2 = objc_opt_class();
  v6 = objc_msgSend_sharedApplication(v2, v3, v4, v5);
  v10 = objc_msgSend_connectedScenes(v6, v7, v8, v9);

  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v75, v79, 16);
  if (v12)
  {
    v16 = v12;
    v17 = *v76;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v76 != v17)
        {
          objc_enumerationMutation(v10);
        }

        v19 = *(*(&v75 + 1) + 8 * i);
        if (!objc_msgSend_activationState(v19, v13, v14, v15))
        {
          v20 = objc_msgSend_session(v19, v13, v14, v15);
          v24 = objc_msgSend_role(v20, v21, v22, v23);
          v25 = sub_241D10734();
          isEqualToString = objc_msgSend_isEqualToString_(v24, v26, v25, v27);

          if (isEqualToString)
          {
            v29 = objc_msgSend_delegate(v19, v13, v14, v15);
            if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_window(v29, v30, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend_rootViewController(v33, v34, v35, v36), v37 = objc_claimAutoreleasedReturnValue(), v33, !v37))
            {
              v41 = 0;
              goto LABEL_31;
            }

            if (*(*(*(a1 + 32) + 8) + 40))
            {
              v41 = v37;
LABEL_31:

              continue;
            }

            while (2)
            {
              v66 = objc_msgSend_presentedViewController(v37, v38, v39, v40);

              if (v66)
              {
                v64 = objc_msgSend_presentedViewController(v37, v67, v68, v69);
                goto LABEL_27;
              }

              sub_241D10250();
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v64 = objc_msgSend_visibleViewController(v37, v70, v71, v72);
LABEL_27:
                v41 = v64;
              }

              else
              {
                sub_241D10388();
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v37 = v37;
                  v74 = objc_msgSend_viewControllerForColumn_(v37, v42, 2, v43);
                  v46 = objc_msgSend_viewControllerForColumn_(v37, v44, 3, v45);
                  v50 = objc_msgSend_traitCollection(v37, v47, v48, v49);
                  v54 = v17;
                  v55 = v29;
                  v56 = a1;
                  v57 = v10;
                  v58 = objc_msgSend_horizontalSizeClass(v50, v51, v52, v53);

                  if (v46)
                  {
                    v59 = v58 == 1;
                  }

                  else
                  {
                    v59 = 0;
                  }

                  v10 = v57;
                  a1 = v56;
                  v29 = v55;
                  v17 = v54;
                  if (v59)
                  {
                    v60 = v46;
                  }

                  else
                  {
                    v60 = v74;
                  }

                  v41 = v60;
                }

                else
                {
                  sub_241D104C0();
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v64 = objc_msgSend_selectedViewController(v37, v61, v62, v63);
                    goto LABEL_27;
                  }

                  v65 = *(*(a1 + 32) + 8);
                  v41 = v37;
                  v37 = *(v65 + 40);
                  *(v65 + 40) = v41;
                }
              }

              v37 = v41;
              if (*(*(*(a1 + 32) + 8) + 40))
              {
                goto LABEL_31;
              }

              continue;
            }
          }
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v75, v79, 16);
    }

    while (v16);
  }

  v73 = *MEMORY[0x277D85DE8];
}

uint64_t sub_241D0FEF8()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC71290;
  v6 = qword_27EC71290;
  if (!qword_27EC71290)
  {
    v7 = xmmword_278D15800;
    v8 = *off_278D15810;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_27EC71290 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_241D1000C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D10024(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC71290 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_241D100BC()
{
  v0 = sub_241D0FEF8();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id sub_241D10118()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC71298;
  v7 = qword_27EC71298;
  if (!qword_27EC71298)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D101F8;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D101F8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D101E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D101F8(uint64_t a1)
{
  sub_241D100BC();
  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC71298 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241D180B0();
    return sub_241D10250(v3);
  }

  return result;
}

id sub_241D10250()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712A0;
  v7 = qword_27EC712A0;
  if (!qword_27EC712A0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D10330;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D10330(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D10330(uint64_t a1)
{
  sub_241D100BC();
  result = objc_getClass("UINavigationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241D180D8();
    return sub_241D10388(v3);
  }

  return result;
}

id sub_241D10388()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712A8;
  v7 = qword_27EC712A8;
  if (!qword_27EC712A8)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D10468;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D10468(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D10468(uint64_t a1)
{
  sub_241D100BC();
  result = objc_getClass("UISplitViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712A8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241D18100();
    return sub_241D104C0(v3);
  }

  return result;
}

id sub_241D104C0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712B0;
  v7 = qword_27EC712B0;
  if (!qword_27EC712B0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D105A0;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D105A0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D105A0(uint64_t a1)
{
  sub_241D100BC();
  result = objc_getClass("UITabBarController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241D18128();
    return sub_241D105F8(v3);
  }

  return result;
}

uint64_t sub_241D105F8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC712B8;
  v6 = qword_27EC712B8;
  if (!qword_27EC712B8)
  {
    v1 = sub_241D100BC();
    v4[3] = dlsym(v1, "UIWindowSceneSessionRoleApplication");
    qword_27EC712B8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241D106CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_241D106E4(uint64_t a1)
{
  v2 = sub_241D100BC();
  result = dlsym(v2, "UIWindowSceneSessionRoleApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC712B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_241D10734()
{
  v0 = sub_241D105F8();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    sub_241D18150();
    return sub_241D10768();
  }
}

uint64_t sub_241D10768()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC712C0;
  v6 = qword_27EC712C0;
  if (!qword_27EC712C0)
  {
    v7 = xmmword_278D15850;
    v8 = *off_278D15860;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_27EC712C0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_241D1087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D10894(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC712C0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_241D1092C()
{
  v0 = sub_241D10768();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id sub_241D10988()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712C8;
  v7 = qword_27EC712C8;
  if (!qword_27EC712C8)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D10A68;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D10A68(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D10A68(uint64_t a1)
{
  sub_241D1092C();
  result = objc_getClass("AMSUIAuthenticateTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241D18174();
    return sub_241D10AC0(v3);
  }

  return result;
}

id sub_241D10AC0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712D0;
  v7 = qword_27EC712D0;
  if (!qword_27EC712D0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D10BA0;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D10BA0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D10BA0(uint64_t a1)
{
  sub_241D1092C();
  result = objc_getClass("AMSUIAlertDialogTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241D1819C();
    return sub_241D10BF8(v3);
  }

  return result;
}

id sub_241D10BF8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712D8;
  v7 = qword_27EC712D8;
  if (!qword_27EC712D8)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D10CD8;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D10CD8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D10CD8(uint64_t a1)
{
  sub_241D1092C();
  result = objc_getClass("AMSSystemAlertDialogTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241D181C4();
    return sub_241D10D30(v3);
  }

  return result;
}

id sub_241D10D30()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712E0;
  v7 = qword_27EC712E0;
  if (!qword_27EC712E0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D10E10;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D10E10(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D10E10(uint64_t a1)
{
  sub_241D1092C();
  result = objc_getClass("AMSUIEngagementTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712E0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241D181EC();
    return sub_241D10E68(v3, v4, v5, v6);
  }

  return result;
}

void sub_241D10E74(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7FCA0];
  v3 = a2;
  v7 = objc_msgSend_activeAccount(v2, v4, v5, v6);
  objc_msgSend_setIdentity_(v3, v8, v7, v9);

  v13 = objc_msgSend_defaultIdentityStore(MEMORY[0x277D7FCA8], v10, v11, v12);
  objc_msgSend_setIdentityStore_(v3, v14, v13, v15);

  v16 = objc_alloc(MEMORY[0x277D7FA48]);
  v19 = objc_msgSend_initWithSystemApplicationType_(v16, v17, 2, v18);
  objc_msgSend_setClientInfo_(v3, v20, v19, v21);

  v22 = objc_alloc(MEMORY[0x277D7FC40]);
  v36 = objc_msgSend_initWithUserInteractionLevel_(v22, v23, 5, v24);
  objc_msgSend_setAuthenticationProvider_(v3, v25, v36, v26);
  v27 = objc_alloc_init(MEMORY[0x277D7FC18]);
  objc_msgSend_setAllowsHandlingNonAuthenticationDialogs_(v27, v28, 0, v29);
  v30 = objc_alloc(MEMORY[0x277D7FC10]);
  v33 = objc_msgSend_initWithConfiguration_(v30, v31, v27, v32);
  objc_msgSend_setStoreDialogResponseHandler_(v3, v34, v33, v35);
}

void sub_241D110CC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 304);
  *(v2 + 304) = 0;
}

void sub_241D111F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241D11218(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (!v6 || v7)
  {
    v12 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_241D0D000, v12, OS_LOG_TYPE_ERROR, "Failed to retrieve acquireSlot URL from the bag.", v15, 2u);
    }

    if (!v7)
    {
      v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v13, *MEMORY[0x277CF32E0], 28, 0);
    }

    objc_msgSend_finishWithError_(v11, v13, v7, v14);
  }

  else
  {
    objc_msgSend__acquireSlotWithURL_(WeakRetained, v9, v6, v10);
  }
}

void sub_241D11614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241D11644(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CF32E0];
    v13 = objc_msgSend_userInfo(v6, v7, v8, v9);
    v15 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v14, v12, 40, v13);
  }

  else
  {
    objc_opt_class();
    v19 = objc_msgSend_parsedBodyDictionary(v5, v16, v17, v18);
    v22 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"status", v21);
    v23 = BUDynamicCast();
    v27 = objc_msgSend_integerValue(v23, v24, v25, v26);

    if (!v27)
    {
      goto LABEL_9;
    }

    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CF32E0];
    v13 = objc_msgSend_parsedBodyDictionary(v5, v28, v29, v30);
    v15 = objc_msgSend_errorWithDomain_code_userInfo_(v31, v33, v32, 40, v13);
  }

  if (v15)
  {
    v34 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v42 = 138412290;
      v43 = v15;
      _os_log_impl(&dword_241D0D000, v34, OS_LOG_TYPE_ERROR, "AcquireSlot returned an error. %@", &v42, 0xCu);
    }

    objc_msgSend_finishWithError_(WeakRetained, v35, v15, v36);
    goto LABEL_12;
  }

LABEL_9:
  v37 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    LOWORD(v42) = 0;
    _os_log_impl(&dword_241D0D000, v37, OS_LOG_TYPE_INFO, "AcquireSlot was successful.", &v42, 2u);
  }

  objc_msgSend_finish(WeakRetained, v38, v39, v40);
LABEL_12:

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t sub_241D118C8(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_280C4FA80 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_241D11960()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712E8;
  v7 = qword_27EC712E8;
  if (!qword_27EC712E8)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D11A40;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D11A40(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D11A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D11A40(uint64_t a1)
{
  sub_241D0E3E8();
  result = objc_getClass("MPMediaItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712E8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241D18214();
    return sub_241D11A98(v3);
  }

  return result;
}

id sub_241D11A98()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712F0;
  v7 = qword_27EC712F0;
  if (!qword_27EC712F0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D11B78;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D11B78(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D11B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D11B78(uint64_t a1)
{
  sub_241D0E3E8();
  result = objc_getClass("MPMediaPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712F0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241D1823C();
    return sub_241D11BD0(v3);
  }

  return result;
}

id sub_241D11BD0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712F8;
  v7 = qword_27EC712F8;
  if (!qword_27EC712F8)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D11CB0;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D11CB0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D11C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D11CB0(uint64_t a1)
{
  sub_241D0E3E8();
  result = objc_getClass("MPMediaPropertyPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712F8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241D18264();
    return sub_241D11D08(v3);
  }

  return result;
}

uint64_t sub_241D11D08()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC71300;
  v6 = qword_27EC71300;
  if (!qword_27EC71300)
  {
    v1 = sub_241D0E3E8();
    v4[3] = dlsym(v1, "MPMediaItemPropertyBitRate");
    qword_27EC71300 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241D11DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_241D11DF4(uint64_t a1)
{
  v2 = sub_241D0E3E8();
  result = dlsym(v2, "MPMediaItemPropertyBitRate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC71300 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_241D11E44()
{
  v0 = sub_241D11D08();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    sub_241D18150();
    return sub_241D11E78();
  }
}

uint64_t sub_241D11E78()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC71308;
  v6 = qword_27EC71308;
  if (!qword_27EC71308)
  {
    v1 = sub_241D0E3E8();
    v4[3] = dlsym(v1, "MPMediaItemPropertyHLSOfflinePlaybackKeys");
    qword_27EC71308 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241D11F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_241D11F64(uint64_t a1)
{
  v2 = sub_241D0E3E8();
  result = dlsym(v2, "MPMediaItemPropertyHLSOfflinePlaybackKeys");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC71308 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_241D11FB4()
{
  v0 = sub_241D11E78();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    v3 = sub_241D18150();
    return sub_241D11FE8(v3);
  }
}

uint64_t sub_241D11FE8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC71310;
  v6 = qword_27EC71310;
  if (!qword_27EC71310)
  {
    v1 = sub_241D0E3E8();
    v4[3] = dlsym(v1, "MPMediaItemPropertyHLSPlaylistURL");
    qword_27EC71310 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241D120BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_241D120D4(uint64_t a1)
{
  v2 = sub_241D0E3E8();
  result = dlsym(v2, "MPMediaItemPropertyHLSPlaylistURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC71310 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_241D12124()
{
  v0 = sub_241D11FE8();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    sub_241D18150();
    return sub_241D12158();
  }
}

uint64_t sub_241D12158()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC71318;
  v6 = qword_27EC71318;
  if (!qword_27EC71318)
  {
    v1 = sub_241D0E3E8();
    v4[3] = dlsym(v1, "MPMediaItemPropertyStoreRedownloadParameters");
    qword_27EC71318 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241D1222C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_241D12244(uint64_t a1)
{
  v2 = sub_241D0E3E8();
  result = dlsym(v2, "MPMediaItemPropertyStoreRedownloadParameters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC71318 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_241D12294()
{
  v0 = sub_241D12158();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    sub_241D18150();
    return sub_241D122C8();
  }
}

uint64_t sub_241D122C8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC71320;
  v6 = qword_27EC71320;
  if (!qword_27EC71320)
  {
    v1 = sub_241D0E3E8();
    v4[3] = dlsym(v1, "MPMediaItemPropertyPersistentID");
    qword_27EC71320 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241D1239C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_241D123B4(uint64_t a1)
{
  v2 = sub_241D0E3E8();
  result = dlsym(v2, "MPMediaItemPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC71320 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BLHLSKeyFetcher *sub_241D12404()
{
  v0 = sub_241D122C8();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    v3 = sub_241D18150();
    return [(BLHLSKeyFetcher *)v3 init];
  }
}

uint64_t sub_241D12570(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_27EC71328 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

void sub_241D12758(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 134217984;
    v10 = v5;
    _os_log_impl(&dword_241D0D000, v4, OS_LOG_TYPE_DEFAULT, "Fetch completed for online keys for %llu.", &v9, 0xCu);
  }

  if (v3)
  {
    v6 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 134218242;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_241D0D000, v6, OS_LOG_TYPE_ERROR, "Failed to load streaming HLS key for %llu with error  %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_241D12B50(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_msgSend_title(*(a1 + 32), v8, v9, v10);
    v20 = 138412290;
    v21 = v11;
    _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_DEFAULT, "Fetch completed for offline keys for '%@'.", &v20, 0xCu);
  }

  if (v6)
  {
    v12 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_msgSend_title(*(a1 + 32), v13, v14, v15);
      v20 = 138412546;
      v21 = v16;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_241D0D000, v12, OS_LOG_TYPE_ERROR, "Failed to load offline HLS key for '%@' with error  %@", &v20, 0x16u);
    }
  }

  v17 = MEMORY[0x245CFEDE0](*(a1 + 40));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 16))(v17, v5, v6);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_241D1301C(uint64_t a1)
{
  v2 = [BLUIHostServiceProxy alloc];
  v11 = objc_msgSend_initWithUIManager_forRequest_inDownloadQueue_(v2, v3, *(a1 + 32), *(a1 + 40), *(a1 + 48));
  if (*(a1 + 56))
  {
    v4 = *(a1 + 56);
  }

  else
  {
    v4 = &unk_2853E0B10;
  }

  v5 = MEMORY[0x245CFEDE0](v4);
  v9 = objc_msgSend_serviceProxy(*(a1 + 48), v6, v7, v8);
  objc_msgSend_requestDownloadsWithManifestRequest_uiHostProxy_reply_(v9, v10, *(a1 + 40), v11, v5);
}

void sub_241D13204(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = &unk_2853E0B30;
  }

  v11 = MEMORY[0x245CFEDE0](v2);
  v3 = [BLUIHostServiceProxy alloc];
  v5 = objc_msgSend_initWithUIManager_forRequest_inDownloadQueue_(v3, v4, *(a1 + 32), 0, *(a1 + 40));
  v9 = objc_msgSend_serviceProxy(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setAutomaticDownloadEnabled_uiHostProxy_reply_(v9, v10, *(a1 + 56), v5, v11);
}

void sub_241D13498(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 328);
  (*(*(a1 + 40) + 16))();
  objc_msgSend_setDelegate_queue_(*(*(a1 + 32) + 304), v3, 0, 0);
  v4 = *(a1 + 32);
  v5 = *(v4 + 352);
  *(v4 + 352) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 360);
  *(v6 + 360) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 304);
  *(v8 + 304) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 328);
  *(v10 + 328) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 344);
  *(v12 + 344) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 392);
  *(v14 + 392) = 0;
}

void sub_241D137E0(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v9 = objc_msgSend_bodyData(a2, v6, v7, v8);
  if (objc_msgSend_length(v9, v10, v11, v12))
  {
    objc_storeStrong((*(a1 + 32) + 336), v9);
    objc_msgSend__createSPCData(*(a1 + 32), v13, v14, v15);
  }

  else
  {
    v16 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      *buf = 138543618;
      v30 = v17;
      v31 = 2112;
      v32 = v5;
      _os_log_impl(&dword_241D0D000, v16, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to load certificate data with error:  %@", buf, 0x16u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D7F900];
    if (v5)
    {
      v27 = *MEMORY[0x277CCA7E8];
      v28 = v5;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, &v28, &v27, 1);
      v23 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v22, v20, -7300, v21);
    }

    else
    {
      v23 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v18, *MEMORY[0x277D7F900], -7300, 0);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v24, v23, v25);
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t sub_241D139D0()
{
  qword_27EC71330 = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

void sub_241D14114(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 312);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D14200;
  v12[3] = &unk_278D15A60;
  v13 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void sub_241D14200(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v99 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_parsedBodyDictionary(*(a1 + 32), a2, a3, a4);
  if (objc_msgSend_count(v5, v6, v7, v8))
  {
    v11 = objc_msgSend_objectForKey_(v5, v9, @"fairplay-streaming-response", v10);
    if (!_NSIsNSDictionary())
    {
      v34 = BLHLSKeyFetchingLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 48);
        *buf = 138543362;
        v95 = v35;
        _os_log_impl(&dword_241D0D000, v34, OS_LOG_TYPE_ERROR, "[%{public}@]: Invalid response format.", buf, 0xCu);
      }

      v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v36, *MEMORY[0x277CF32E0], 39, 0);
      objc_msgSend_finishWithError_(*(a1 + 48), v37, v14, v38);
LABEL_35:

      goto LABEL_36;
    }

    v14 = objc_msgSend_objectForKey_(v11, v12, @"streaming-keys", v13);
    if (_NSIsNSArray())
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v15 = v14;
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v88, v98, 16);
      if (v17)
      {
        v18 = v17;
        v19 = *v89;
LABEL_6:
        v20 = 0;
        while (1)
        {
          if (*v89 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v88 + 1) + 8 * v20);
          if (_NSIsNSDictionary())
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v22, &v88, v98, 16);
            if (v18)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }

        v42 = v21;

        if (!v42)
        {
          goto LABEL_30;
        }

        objc_opt_class();
        v45 = objc_msgSend_objectForKey_(v42, v43, @"status", v44);
        v46 = BUDynamicCast();

        if (objc_opt_respondsToSelector())
        {
          v50 = objc_msgSend_integerValue(v46, v47, v48, v49);
          if (v50 == -1004)
          {
            v74 = BLHLSKeyFetchingLog();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              v75 = *(a1 + 48);
              *buf = 138543618;
              v95 = v75;
              v96 = 2114;
              v97 = v42;
              _os_log_impl(&dword_241D0D000, v74, OS_LOG_TYPE_ERROR, "[%{public}@]: Received transfer lock in response: %{public}@", buf, 0x16u);
            }

            objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v76, *MEMORY[0x277CF32E0], 40, 0);
          }

          else
          {
            if (!v50)
            {
              goto LABEL_28;
            }

            v77 = BLHLSKeyFetchingLog();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              v78 = *(a1 + 48);
              *buf = 138543618;
              v95 = v78;
              v96 = 2114;
              v97 = v42;
              _os_log_impl(&dword_241D0D000, v77, OS_LOG_TYPE_ERROR, "[%{public}@]: Received failure in response: %{public}@", buf, 0x16u);
            }

            objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v79, *MEMORY[0x277CF32E0], 39, 0);
          }
          v51 = ;
          objc_msgSend_finishWithError_(*(a1 + 48), v80, v51, v81);
LABEL_59:

          goto LABEL_34;
        }

LABEL_28:
        v51 = objc_msgSend_objectForKey_(v42, v47, @"ckc", v49);
        if (_NSIsNSString())
        {
          v52 = objc_alloc(MEMORY[0x277CBEA90]);
          v54 = objc_msgSend_initWithBase64EncodedString_options_(v52, v53, v51, 0);
        }

        else
        {
          if (!_NSIsNSData())
          {
            goto LABEL_44;
          }

          v54 = v51;
        }

        v61 = v54;
        if (v54)
        {
          v62 = *(a1 + 40);
          v87 = 0;
          v63 = objc_msgSend_persistableContentKeyFromKeyVendorResponse_options_error_(v62, v55, v61, 0, &v87);
          v64 = v87;

          if (v64)
          {
            v65 = BLHLSKeyFetchingLog();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              v66 = *(a1 + 48);
              *buf = 138543362;
              v95 = v66;
              _os_log_impl(&dword_241D0D000, v65, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to create persistable content key from content key context data.", buf, 0xCu);
            }

            objc_msgSend_finishWithError_(*(a1 + 48), v67, v64, v68);
          }

          else
          {
            objc_storeStrong((*(a1 + 48) + 328), v63);
            v82 = BLHLSKeyFetchingLog();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
            {
              v83 = *(a1 + 48);
              *buf = 138543362;
              v95 = v83;
              _os_log_impl(&dword_241D0D000, v82, OS_LOG_TYPE_INFO, "[%{public}@]: Loaded successfully.", buf, 0xCu);
            }

            objc_msgSend_finish(*(a1 + 48), v84, v85, v86);
          }

LABEL_58:
          goto LABEL_59;
        }

LABEL_44:
        v69 = BLHLSKeyFetchingLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = *(a1 + 48);
          *buf = 138543362;
          v95 = v70;
          _os_log_impl(&dword_241D0D000, v69, OS_LOG_TYPE_ERROR, "[%{public}@]: Missing content key context data in response.", buf, 0xCu);
        }

        v63 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v71, *MEMORY[0x277CF32E0], 39, 0);
        objc_msgSend_finishWithError_(*(a1 + 48), v72, v63, v73);
        goto LABEL_58;
      }

LABEL_12:

LABEL_30:
      v39 = BLHLSKeyFetchingLog();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      v56 = *(a1 + 48);
      *buf = 138543362;
      v95 = v56;
      v41 = "[%{public}@]: Missing streaming key dictionary in response.";
    }

    else
    {
      v39 = BLHLSKeyFetchingLog();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      v40 = *(a1 + 48);
      *buf = 138543362;
      v95 = v40;
      v41 = "[%{public}@]: Missing second-level dictionary key in response.";
    }

    _os_log_impl(&dword_241D0D000, v39, OS_LOG_TYPE_ERROR, v41, buf, 0xCu);
LABEL_33:

    v42 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v57, *MEMORY[0x277CF32E0], 39, 0);
    objc_msgSend_finishWithError_(*(a1 + 48), v58, v42, v59);
LABEL_34:

    goto LABEL_35;
  }

  v23 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 48);
    v25 = *(a1 + 56);
    *buf = 138543618;
    v95 = v24;
    v96 = 2112;
    v97 = v25;
    _os_log_impl(&dword_241D0D000, v23, OS_LOG_TYPE_ERROR, "[%{public}@]: Key server request returned error:  %@", buf, 0x16u);
  }

  v27 = MEMORY[0x277CCA9B8];
  v28 = *MEMORY[0x277CF32E0];
  v29 = *(a1 + 56);
  if (v29)
  {
    v92 = *MEMORY[0x277CCA7E8];
    v93 = v29;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, &v93, &v92, 1);
    v11 = objc_msgSend_errorWithDomain_code_userInfo_(v27, v31, v28, 39, v30);
  }

  else
  {
    v11 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v26, *MEMORY[0x277CF32E0], 39, 0);
  }

  objc_msgSend_finishWithError_(*(a1 + 48), v32, v11, v33);
LABEL_36:

  v60 = *MEMORY[0x277D85DE8];
}

void sub_241D14C7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 312);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D14D64;
  v11[3] = &unk_278D15A60;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

uint64_t sub_241D14D64(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && !*(a1 + 40))
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2821F9670](v10, sel__ksq_fetchCKCDataUsingSPC_forKeyRequest_, v2, v11);
  }

  else
  {
    v3 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 48) + 384);
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_241D0D000, v3, OS_LOG_TYPE_ERROR, "Failed to create SPC data for %@ with error:  %@", &v13, 0x16u);
    }

    result = objc_msgSend_processContentKeyResponseError_(*(a1 + 56), v6, *(a1 + 40), v7);
    v9 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_241D15274(void *a1, uint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = BLServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_msgSend_URLRequest(a1, v9, v10, v11);
    *buf = 134218242;
    v23 = a1;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_241D0D000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadManifestRequest] Start download manifest request %p: urlRequest=%@", buf, 0x16u);
  }

  v16 = objc_msgSend_sharedInstance(BLDownloadQueue, v13, v14, v15);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_241D153E8;
  v20[3] = &unk_278D15AD8;
  v20[4] = a1;
  v21 = v6;
  v17 = v6;
  objc_msgSend_addDownloadsWithManifestRequest_uiManager_completion_(v16, v18, a1, v7, v20);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_241D153E8(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BLServiceLog();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    v17 = 134218242;
    v18 = v9;
    v19 = 2112;
    v20 = v6;
    v10 = "[DownloadManifestRequest] addDownloadsWithManifestRequest for request %p returned error:  %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 32);
    v17 = 134218242;
    v18 = v13;
    v19 = 2112;
    v20 = v5;
    v10 = "[DownloadManifestRequest] addDownloadsWithManifestRequest for request %p completed with response %@.";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_241D0D000, v11, v12, v10, &v17, 0x16u);
LABEL_7:

  v14 = MEMORY[0x245CFEDE0](*(a1 + 40));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_241D15D34(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 304);
  *(v2 + 304) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 312);
  *(v4 + 312) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 320);
  *(v6 + 320) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 328);
  *(v8 + 328) = 0;
}

void sub_241D15EA0(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    v9 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1 + 32) + 320);
      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_241D0D000, v9, OS_LOG_TYPE_ERROR, "Metadata request for item %@ failed with error  %@", &v18, 0x16u);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v11, v8, v12);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = objc_msgSend_hlsAsset(a2, v5, v6, v7);
    objc_msgSend__performStreamingKeyRequestForHLSAsset_(v13, v15, v14, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_241D160F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 328);
  v9 = a3;
  objc_msgSend_finishAssetResourceLoadingRequest_withError_(a2, v6, v5, v9);
  objc_msgSend_finishWithError_(*(a1 + 32), v7, v9, v8);
}

void sub_241D16338(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(a1 + 32) + 328))
  {
    v4 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_241D0D000, v4, OS_LOG_TYPE_DEFAULT, "metadata request - returning nil store metadata", v14, 2u);
    }

    v5 = *(*(a1 + 32) + 328);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *(a1 + 32);
  v7 = *(v6 + 320);
  *(v6 + 320) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 304);
  *(v8 + 304) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 328);
  *(v10 + 328) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 312);
  *(v12 + 312) = 0;
}

void sub_241D165DC(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v9 = BLError();
    }

    v37 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v65 = v9;
      _os_log_impl(&dword_241D0D000, v37, OS_LOG_TYPE_ERROR, "Failed to retreive bag with error  %@", buf, 0xCu);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v38, v9, v39);
  }

  else
  {
    v9 = objc_msgSend_stringForBagKey_(v5, v7, @"fps-cert", v8);
    v12 = objc_msgSend_stringForBagKey_(v5, v10, @"audiobook-fps-request", v11);
    v13 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_msgSend_title(*(*(a1 + 32) + 312), v14, v15, v16);
      *buf = 138412290;
      v65 = v17;
      _os_log_impl(&dword_241D0D000, v13, OS_LOG_TYPE_DEFAULT, "Received bag for '%@'.", buf, 0xCu);
    }

    if (objc_msgSend_length(v9, v18, v19, v20) && objc_msgSend_length(v12, v21, v22, v23))
    {
      v25 = objc_msgSend__responseDictionaryForKeyCertificateURL_keyServerURL_(*(a1 + 32), v24, v9, v12);
      v26 = objc_alloc(MEMORY[0x277D7FC20]);
      v28 = objc_msgSend_initWithItemResponseDictionary_urlBag_(v26, v27, v25, v5);
      objc_storeStrong((*(a1 + 32) + 328), v28);
      v29 = BLHLSKeyFetchingLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_msgSend_title(*(*(a1 + 32) + 312), v30, v31, v32);
        *buf = 138412290;
        v65 = v33;
        _os_log_impl(&dword_241D0D000, v29, OS_LOG_TYPE_DEFAULT, "Successfully read meta data for '%@' from the bag", buf, 0xCu);
      }

      objc_msgSend_finish(*(a1 + 32), v34, v35, v36);
    }

    else
    {
      v40 = *(*(a1 + 32) + 312);
      v41 = sub_241D12294();
      v25 = objc_msgSend_valueForProperty_(v40, v42, v41, v43);

      if (!objc_msgSend_length(v25, v44, v45, v46))
      {
        v47 = BLHLSKeyFetchingLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v51 = objc_msgSend_title(*(*(a1 + 32) + 312), v48, v49, v50);
          *buf = 138412290;
          v65 = v51;
          _os_log_impl(&dword_241D0D000, v47, OS_LOG_TYPE_ERROR, "Missing buy parameters for item %@", buf, 0xCu);
        }
      }

      v52 = objc_alloc(MEMORY[0x277D7FA40]);
      v54 = objc_msgSend_initWithRequestContext_buyParametersString_includeKeybagSyncData_(v52, v53, *(a1 + 40), v25, 1);
      v55 = *(a1 + 32);
      v56 = *(v55 + 320);
      *(v55 + 320) = v54;

      v57 = *(a1 + 32);
      v58 = *(v57 + 320);
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = sub_241D169C4;
      v62[3] = &unk_278D15B78;
      v62[4] = v57;
      v63 = v5;
      objc_msgSend_performRequestWithResponseHandler_(v58, v59, v62, v60);
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

void sub_241D169C4(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 32) + 312);
      v37 = 138412546;
      v38 = v8;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_ERROR, "Purchase request for item %@ failed with error  %@", &v37, 0x16u);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v9, v6, v10);
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D7FB10]);
    v15 = objc_msgSend_date(MEMORY[0x277CBEAA8], v12, v13, v14);
    v17 = objc_msgSend_initWithResponseDictionary_requestDate_urlBag_(v11, v16, v5, v15, *(a1 + 40));

    v21 = objc_msgSend_items(v17, v18, v19, v20);
    v25 = objc_msgSend_firstObject(v21, v22, v23, v24);
    v26 = *(a1 + 32);
    v27 = *(v26 + 328);
    *(v26 + 328) = v25;

    v28 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_msgSend_title(*(*(a1 + 32) + 312), v29, v30, v31);
      v37 = 138412290;
      v38 = v32;
      _os_log_impl(&dword_241D0D000, v28, OS_LOG_TYPE_DEFAULT, "Successfully fetched meta data from buy product request for '%@'", &v37, 0xCu);
    }

    objc_msgSend_finish(*(a1 + 32), v33, v34, v35);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_241D17228(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 352);
  (*(*(a1 + 40) + 16))();
  v6 = objc_msgSend_defaultIdentityStore(MEMORY[0x277D7FCA8], v3, v4, v5);
  objc_msgSend_synchronize(v6, v7, v8, v9);

  v10 = *(a1 + 32);
  v11 = *(v10 + 352);
  *(v10 + 352) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 304);
  *(v12 + 304) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 312);
  *(v14 + 312) = 0;

  v16 = *(a1 + 32);
  v17 = *(v16 + 344);
  *(v16 + 344) = 0;
}

void sub_241D17498(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v10 = objc_msgSend_hlsAsset(v5, v7, v8, v9);
  v11 = *(a1 + 32);
  v12 = *(v11 + 320);
  *(v11 + 320) = v10;

  v13 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend_title(*(*(a1 + 32) + 336), v14, v15, v16);
    v33 = 138412802;
    v34 = v17;
    v35 = 2112;
    v36 = v5;
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_241D0D000, v13, OS_LOG_TYPE_DEFAULT, "Received asset info for '%@' (%@, %@).", &v33, 0x20u);
  }

  if (!v6)
  {
    v28 = *(a1 + 32);
    if (v28[40])
    {
      objc_msgSend__performOfflineKeyRequest(v28, v18, v19, v20);
      goto LABEL_9;
    }

    v6 = BLError();
    if (!v6)
    {
      objc_msgSend__performOfflineKeyRequest(*(a1 + 32), v30, v31, v32);
      goto LABEL_9;
    }
  }

  v21 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v25 = objc_msgSend_title(*(*(a1 + 32) + 336), v22, v23, v24);
    v33 = 138412546;
    v34 = v25;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_241D0D000, v21, OS_LOG_TYPE_ERROR, "Metadata request for '%@' failed with error  %@", &v33, 0x16u);
  }

  objc_msgSend_finishWithError_(*(a1 + 32), v26, v6, v27);
LABEL_9:

  v29 = *MEMORY[0x277D85DE8];
}

void sub_241D179B0(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(a1 + 32) + 352), a2);
  v6 = a2;
  v9 = a3;
  objc_msgSend_finishWithError_(*(a1 + 32), v7, v9, v8);
}

void sub_241D17C08(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = MEMORY[0x245CFEDE0](*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }
}

void sub_241D17DB4(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BLDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = 138412290;
    v18 = v6;
    v9 = "[UIHostServiceProxy] received error from AMSSystemAlertDialogTask:  %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 32);
    v17 = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = v5;
    v9 = "[UIHostServiceProxy] received result from AMSSystemAlertDialogTask for request %@ and calling replay block with result %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 22;
  }

  _os_log_impl(&dword_241D0D000, v10, v11, v9, &v17, v12);
LABEL_7:

  v14 = MEMORY[0x245CFEDE0](*(a1 + 40));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_241D1801C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = MEMORY[0x245CFEDE0](*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }
}

uint64_t sub_241D18150()
{
  dlerror();
  abort_report_np();
  return sub_241D18174();
}