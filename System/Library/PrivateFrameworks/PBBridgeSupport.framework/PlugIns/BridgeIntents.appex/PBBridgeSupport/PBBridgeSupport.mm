void sub_100000FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100001758(uint64_t a1)
{
  v2 = sub_1000017A8();
  result = dlsym(v2, "NTKCollectionIdentifierLibraryFaces");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10000D278 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000017A8()
{
  v3[0] = 0;
  if (!qword_10000D280)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000018A8;
    v3[4] = &unk_1000081E8;
    v3[5] = v3;
    v4 = off_1000081D0;
    v5 = 0;
    qword_10000D280 = _sl_dlopen();
  }

  v0 = qword_10000D280;
  v1 = v3[0];
  if (!qword_10000D280)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1000018A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000D280 = result;
  return result;
}

Class sub_10000191C(uint64_t a1)
{
  sub_1000017A8();
  result = objc_getClass("NTKPersistentFaceCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100002DBC();
  }

  qword_10000D288 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100001AD0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 localizedDescription];
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "completing face list with error: %@", &v12, 0xCu);
  }

  v10 = [COSListGizmoFacesIntentResponse alloc];
  if (v7)
  {
    v11 = [(COSListGizmoFacesIntentResponse *)v10 initWithCode:5 userActivity:0];
  }

  else
  {
    v11 = [(COSListGizmoFacesIntentResponse *)v10 initWithCode:4 userActivity:0];
    [(COSListGizmoFacesIntentResponse *)v11 setWatchFaces:v6];
    RecordWatchFaceShortcutTriggered(@"GetAllFaces");
  }

  (*(*(a1 + 40) + 16))();
}

void RecordWatchFaceShortcutTriggered(void *a1)
{
  v1 = a1;
  v2 = [NSMutableDictionary alloc];
  v5 = @"IntentID";
  v6 = v1;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  v4 = [v2 initWithDictionary:v3];
  AnalyticsSendEvent();
}

void sub_100001DE0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 localizedDescription];
    *buf = 138412290;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "completing current face with error: %@", buf, 0xCu);
  }

  v10 = [COSGetCurrentGizmoFaceIntentResponse alloc];
  if (v7)
  {
    v11 = [(COSGetCurrentGizmoFaceIntentResponse *)v10 initWithCode:5 userActivity:0];
  }

  else
  {
    v11 = [(COSGetCurrentGizmoFaceIntentResponse *)v10 initWithCode:4 userActivity:0];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v6;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [v17 isActive];
          v19 = [v18 BOOLValue];

          if (v19)
          {
            [(COSGetCurrentGizmoFaceIntentResponse *)v11 setWatchFace:v17];
            goto LABEL_15;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    RecordWatchFaceShortcutTriggered(@"GetCurrentFace");
    v6 = v20;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000020E8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v9 = [v6 log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "completing face options", v10, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100002450(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "handle: got watch faces, finishing up...", buf, 2u);
  }

  v8 = [*(a1 + 40) face];
  v9 = [*(a1 + 32) log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 40) face];
    v11 = [v10 identifier];
    *buf = 138412290;
    v64 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "selected face with identifier: %@", buf, 0xCu);
  }

  v12 = [v8 identifier];
  if (v12)
  {
    v13 = v12;
    v14 = [v8 identifier];
    v15 = [v14 length];

    if (v15)
    {
      v16 = [*(a1 + 32) log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "finding face by identifier", buf, 2u);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v17 = v6;
      v18 = [v17 countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (v18)
      {
        v19 = v18;
        v47 = a1;
        v49 = v6;
        v51 = v5;
        v20 = *v58;
        v21 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v58 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v57 + 1) + 8 * i);
            v24 = [v8 identifier];
            v25 = [v23 identifier];
            v26 = [v24 isEqualToString:v25];

            if (v26)
            {
              v21 = [v17 indexOfObject:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v57 objects:v62 count:16];
        }

        while (v19);

        v6 = v49;
        v5 = v51;
        a1 = v47;
        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }
    }
  }

  v27 = [v8 displayString];
  if (v27)
  {
    v28 = v27;
    v29 = [v8 displayString];
    v30 = [v29 length];

    if (v30)
    {
      v31 = [*(a1 + 32) log];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "finding face by displayString", buf, 2u);
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v32 = v6;
      v33 = [v32 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v33)
      {
        v34 = v33;
        v48 = a1;
        v50 = v6;
        v52 = v5;
        v35 = *v54;
        v21 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v54 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v53 + 1) + 8 * j);
            v38 = [v8 displayString];
            v39 = [v37 displayString];
            v40 = [v38 caseInsensitiveCompare:v39];

            if (!v40)
            {
              v21 = [v32 indexOfObject:v37];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v34);

        v6 = v50;
        v5 = v52;
        a1 = v48;
        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_35:
          v41 = [*(a1 + 32) log];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v64 = v21;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "match found! setting face to %li", buf, 0xCu);
          }

          [v5 setSelectedFaceIndex:v21 suppressingCallbackToObserver:0];
          v42 = 4;
          goto LABEL_42;
        }
      }

      else
      {
      }
    }
  }

  v43 = [*(a1 + 32) log];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "could not find face match, no changes made", buf, 2u);
  }

  v42 = 5;
LABEL_42:
  RecordWatchFaceShortcutTriggered(@"SetWatchFace");
  v44 = [*(a1 + 32) log];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "handle: done", buf, 2u);
  }

  v45 = *(a1 + 48);
  v46 = [[COSSetGizmoFaceIntentResponse alloc] initWithCode:v42 userActivity:0];
  (*(v45 + 16))(v45, v46);
}

void sub_100002D98()
{
  dlerror();
  v0 = abort_report_np();
  sub_100002DBC(v0);
}