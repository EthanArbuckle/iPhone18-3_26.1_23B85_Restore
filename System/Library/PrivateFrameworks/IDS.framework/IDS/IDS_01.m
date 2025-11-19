void sub_195A315A0(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v2;
  v41 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v41)
  {
    v38 = *v56;
    v4 = *MEMORY[0x1E69A4C88];
    v39 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v5;
        v6 = *(*(&v55 + 1) + 8 * v5);
        v7 = *(a1 + 32);
        v8 = [v6 _stripFZIDPrefix];
        v9 = [v7 allKeysForObject:v8];
        v43 = [v9 objectAtIndexedSubscript:0];

        v10 = [obj objectForKeyedSubscript:v6];
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v52;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v52 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v51 + 1) + 8 * i);
              v18 = [v17 familyEndpointData];

              if (v18)
              {
                v19 = objc_alloc(MEMORY[0x1E695DF90]);
                v20 = [v17 familyEndpointData];
                v21 = [v20 dictionaryRepresentation];
                v22 = [v19 initWithDictionary:v21];

                v23 = [v6 _stripFZIDPrefix];
                [v22 setObject:v23 forKey:v4];

                [v11 addObject:v22];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v51 objects:v60 count:16];
          }

          while (v14);
        }

        v3 = v39;
        [v39 setObject:v11 forKey:v43];

        v5 = v45 + 1;
      }

      while (v45 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v41);
  }

  v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v44 = *(a1 + 40);
  v25 = [v44 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v48;
    v28 = *MEMORY[0x1E69A4CA0];
    v46 = *MEMORY[0x1E69A4CA8];
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(v44);
        }

        v30 = *(*(&v47 + 1) + 8 * j);
        v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v30];
        v32 = [v30 objectForKeyedSubscript:v28];
        v33 = [v3 objectForKeyedSubscript:v32];

        if (v33)
        {
          v34 = [v30 objectForKeyedSubscript:v28];
          v35 = [v3 objectForKeyedSubscript:v34];
          [v31 setObject:v35 forKey:v46];
        }

        v36 = [objc_alloc(MEMORY[0x1E69A5268]) initWithDictionary:v31];
        [v24 addObject:v36];
      }

      v26 = [v44 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v26);
  }

  (*(*(a1 + 48) + 16))();
  v37 = *MEMORY[0x1E69E9840];
}

void sub_195A31B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A31B58(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A31CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A31CEC(void *a1)
{
  v2 = [*(a1[4] + 96) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A31E20(void *a1)
{
  v2 = [*(a1[4] + 104) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 integerValue];
}

void sub_195A31F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A32038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A32120(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 registrationFailedForAccount:*(a1 + 32) needsDeletion:*(a1 + 40)];
  }
}

void sub_195A32270(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 refreshRegistrationForAccount:*(a1 + 32)];
  }
}

void sub_195A32414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A3242C(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A325C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A325D8(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A3273C(id *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = +[IDSLogging DaemonListener];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v41 = v3;
    v42 = 2112;
    v43 = v4;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Checking for updates for device with new nsuuid { nsuuid: %@, device: %@}", buf, 0x16u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [*(a1[6] + 7) allKeys];
  v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v26)
  {
    v24 = *MEMORY[0x1E69A4C28];
    v25 = *v35;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v34 + 1) + 8 * i);
        v7 = [*(a1[6] + 7) objectForKey:v6];
        if ([v7 count])
        {
          v27 = [v7 mutableCopy];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v31;
LABEL_11:
            v12 = 0;
            while (1)
            {
              if (*v31 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v30 + 1) + 8 * v12);
              v14 = [a1[6] _uniqueIDForDevice:v13];
              if ([a1[5] isEqualToIgnoringCase:v14])
              {
                break;
              }

              if (v10 == ++v12)
              {
                v10 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
                if (v10)
                {
                  goto LABEL_11;
                }

                goto LABEL_20;
              }
            }

            v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v13];
            v16 = [v15 objectForKey:v24];
            if (([a1[4] isEqualToString:v16] & 1) != 0 || !objc_msgSend(a1[4], "length") && !objc_msgSend(v16, "length"))
            {

              goto LABEL_20;
            }

            v19 = v27;
            if ([a1[4] length])
            {
              [v15 setObject:a1[4] forKey:v24];
            }

            else
            {
              [v15 removeObjectForKey:v24];
            }

            [v27 removeObject:v13];
            [v27 addObject:v15];

            [*(a1[6] + 7) removeObjectForKey:v6];
            [*(a1[6] + 7) setObject:v27 forKey:v6];
            v20 = [MEMORY[0x1E69A6138] IDSService];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v41 = v6;
              _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "New devices for account %@", buf, 0xCu);
            }

            v21 = a1[6];
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = sub_195A32BC8;
            v28[3] = &unk_1E743F508;
            v28[4] = v6;
            v29 = v27;
            [v21 _callHandlersAsyncWithBlock:v28];
          }

          else
          {
LABEL_20:

            v17 = [MEMORY[0x1E69A6138] NSUUID];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = a1[5];
              *buf = 138412290;
              v41 = v18;
              _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "No account with device %@ and mismatched nsuuid were found.  No updates made", buf, 0xCu);
            }

            v19 = v27;
          }
        }
      }

      v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v26);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_195A32BC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) dependentDevicesUpdated:*(a1 + 40)];
  }
}

void sub_195A32D94(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(*(a1 + 32) + 40) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v13;
    *&v4 = 138412290;
    v11 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [MEMORY[0x1E69A6138] isActive];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v11;
          v17 = v8;
          _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Calling didSwitch for topic %@", buf, 0xCu);
        }

        [*(a1 + 32) _internalDidSwitchActivePairedDevice:*(a1 + 40) forService:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_195A33084(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v8 = 1;
    [v3 didSwitchActivePairedDevice:a1[4] forService:a1[5] wasHandled:&v8];
    if (v8 == 1)
    {
      *(*(a1[6] + 8) + 24) = 0;
    }

    v4 = [MEMORY[0x1E69A6138] isActive];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[5];
      if (v8)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      *buf = 138412802;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "DidSwitch callback for %@ (handler %@) was handled %@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_195A331B8(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v11 = v1;
    v12 = v2;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_195A33274;
    v7[3] = &unk_1E743E620;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    v10 = *(a1 + 48);
    [v4 _performSyncBlock:v7];
  }
}

void sub_195A33274(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] isActive];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Unhandled didSwitch callback for topic %@", buf, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 40) objectForKey:*(a1 + 32)];
  v5 = [MEMORY[0x1E69A6138] isActive];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Updating isActive state for all accounts %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = *MEMORY[0x1E69A5650];
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) objectForKey:{v10, v14}];
        [*(a1 + 40) _internalSwitchActivePairedDevice:*(a1 + 48) forAccount:v12];

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [*(a1 + 40) _internalSwitchActivePairedDevice:*(a1 + 48) forService:*(a1 + 32)];
  v13 = *MEMORY[0x1E69E9840];
}

void sub_195A33F30(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] isActive];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Unsetting active device unique ID due to quick switch or new pairing start", buf, 2u);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = [*(*(a1 + 32) + 56) allKeys];
  v52 = a1;
  v46 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v46)
  {
    v44 = *v70;
    v4 = *MEMORY[0x1E69A4C00];
    *&v3 = 138412290;
    v41 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v70 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v5;
        v6 = *(*(&v69 + 1) + 8 * v5);
        [*(*(a1 + 32) + 120) removeObjectForKey:{v6, v41}];
        v7 = [*(*(a1 + 32) + 56) objectForKey:v6];
        v8 = [v7 mutableCopy];

        v9 = [MEMORY[0x1E69A6138] isActive];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v77 = v6;
          v78 = 2112;
          v79 = v8;
          _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Current devices for account %@: %@", buf, 0x16u);
        }

        v48 = v6;

        v10 = [v8 mutableCopy];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v65 objects:v75 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v66;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v66 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v65 + 1) + 8 * i);
              v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v16];
              v18 = [MEMORY[0x1E696AD98] numberWithBool:0];
              [v17 setObject:v18 forKey:v4];

              [v8 removeObject:v16];
              [v8 addObject:v17];
            }

            v13 = [v11 countByEnumeratingWithState:&v65 objects:v75 count:16];
          }

          while (v13);
        }

        a1 = v52;
        if (v48 && v8)
        {
          [*(*(v52 + 32) + 56) setObject:v8 forKey:v48];
          v19 = [MEMORY[0x1E69A6138] isActive];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v41;
            v77 = v48;
            _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "New devices for account %@", buf, 0xCu);
          }
        }

        v20 = *(v52 + 32);
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = sub_195A34690;
        v63[3] = &unk_1E743F508;
        v63[4] = v48;
        v64 = v8;
        v21 = v8;
        [v20 _callHandlersAsyncWithBlock:v63];

        v5 = v50 + 1;
      }

      while (v50 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
    }

    while (v46);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v42 = [*(*(a1 + 32) + 64) allKeys];
  v47 = [v42 countByEnumeratingWithState:&v59 objects:v74 count:16];
  if (v47)
  {
    v45 = *v60;
    v22 = *MEMORY[0x1E69A4C00];
    do
    {
      v23 = 0;
      do
      {
        if (*v60 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v51 = v23;
        v24 = *(*(&v59 + 1) + 8 * v23);
        [*(*(a1 + 32) + 128) removeObjectForKey:v24];
        v25 = [*(*(a1 + 32) + 64) objectForKey:v24];
        v26 = [v25 mutableCopy];

        v27 = [MEMORY[0x1E69A6138] isActive];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v77 = v24;
          v78 = 2112;
          v79 = v26;
          _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "Current linked devices for service %@: %@", buf, 0x16u);
        }

        v49 = v24;

        v28 = [v26 mutableCopy];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v29 = v28;
        v30 = [v29 countByEnumeratingWithState:&v55 objects:v73 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v56;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v56 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v55 + 1) + 8 * j);
              v35 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v34];
              v36 = [MEMORY[0x1E696AD98] numberWithBool:0];
              [v35 setObject:v36 forKey:v22];

              [v26 removeObject:v34];
              [v26 addObject:v35];
            }

            v31 = [v29 countByEnumeratingWithState:&v55 objects:v73 count:16];
          }

          while (v31);
        }

        a1 = v52;
        if (v49 && v26)
        {
          [*(*(v52 + 32) + 64) setObject:v26 forKey:v49];
          v37 = [MEMORY[0x1E69A6138] isActive];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v77 = v49;
            v78 = 2112;
            v79 = v26;
            _os_log_impl(&dword_1959FF000, v37, OS_LOG_TYPE_DEFAULT, "New linked devices for service %@: %@", buf, 0x16u);
          }
        }

        v38 = *(v52 + 32);
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = sub_195A346F0;
        v53[3] = &unk_1E743F508;
        v53[4] = v49;
        v54 = v26;
        v39 = v26;
        [v38 _callHandlersAsyncWithBlock:v53];

        v23 = v51 + 1;
      }

      while (v51 + 1 != v47);
      v47 = [v42 countByEnumeratingWithState:&v59 objects:v74 count:16];
    }

    while (v47);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void sub_195A34690(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) dependentDevicesUpdated:*(a1 + 40)];
  }
}

void sub_195A346F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:*(a1 + 32) linkedDevicesUpdated:*(a1 + 40)];
  }
}

uint64_t sub_195A3483C(uint64_t a1)
{
  v1 = a1;
  v225 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKey:@"serviceInfo"];
  v3 = (v1 + 40);
  v4 = *(*(v1 + 40) + 40);
  v5 = 0x1E69A6000uLL;
  v6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_195B28F6C();
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = *(*v3 + 5);
  *(*v3 + 5) = v7;

  v150 = v1;
  if ([v2 count])
  {
    v155 = v4;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v9 = [v2 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v205 objects:v224 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v206;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v206 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v205 + 1) + 8 * i);
          v15 = [v2 objectForKey:v14];
          v16 = [v15 mutableCopy];

          [*(*v3 + 5) setObject:v16 forKey:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v205 objects:v224 count:16];
      }

      while (v11);
    }

    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v17 = [*(*v3 + 5) allKeys];
    v18 = [v17 countByEnumeratingWithState:&v201 objects:v223 count:16];
    if (!v18)
    {
      v1 = v150;
      v5 = 0x1E69A6000uLL;
      goto LABEL_30;
    }

    v19 = v18;
    v153 = v2;
    v20 = *v202;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v202 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v201 + 1) + 8 * j);
        v23 = [*(*v3 + 5) objectForKey:v22];
        v24 = *v3;
        v198[0] = MEMORY[0x1E69E9820];
        v198[1] = 3221225472;
        v198[2] = sub_195A35908;
        v198[3] = &unk_1E743F508;
        v199 = v23;
        v200 = v22;
        v25 = v23;
        [v24 _callHandlersWithBlockOnIvarQueue:v198];
      }

      v19 = [v17 countByEnumeratingWithState:&v201 objects:v223 count:16];
    }

    while (v19);
    v1 = v150;
LABEL_28:
    v5 = 0x1E69A6000;
    v2 = v153;
LABEL_30:
    v4 = v155;
    goto LABEL_31;
  }

  [*(*v3 + 5) removeAllObjects];
  v26 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "Services all disappeared, removing all accounts", buf, 2u);
  }

  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v17 = [v4 allKeys];
  v27 = [v17 countByEnumeratingWithState:&v194 objects:v222 count:16];
  if (v27)
  {
    v28 = v27;
    v153 = v2;
    v155 = v4;
    v29 = *v195;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v195 != v29)
        {
          objc_enumerationMutation(v17);
        }

        v31 = *(*(&v194 + 1) + 8 * k);
        v32 = *v3;
        v193[0] = MEMORY[0x1E69E9820];
        v193[1] = 3221225472;
        v193[2] = sub_195A35968;
        v193[3] = &unk_1E743F4E0;
        v193[4] = v31;
        [v32 _callHandlersWithBlockOnIvarQueue:v193];
      }

      v28 = [v17 countByEnumeratingWithState:&v194 objects:v222 count:16];
    }

    while (v28);
    goto LABEL_28;
  }

LABEL_31:

  v33 = [*(v1 + 32) objectForKey:@"enabledAccountsInfo"];
  v34 = [*(v5 + 312) registration];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    sub_195B28FD4();
  }

  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = *(*v3 + 6);
  *(*v3 + 6) = v35;

  if ([v33 count])
  {
    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    v37 = [v33 allKeys];
    v156 = [v37 countByEnumeratingWithState:&v189 objects:v221 count:16];
    if (v156)
    {
      v152 = *v190;
      v154 = v33;
      obj = v37;
      do
      {
        for (m = 0; m != v156; m = m + 1)
        {
          if (*v190 != v152)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v189 + 1) + 8 * m);
          v40 = [v33 objectForKey:v39];
          v41 = [v40 mutableCopy];

          [*(*v3 + 6) setObject:v41 forKey:v39];
          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          v42 = v41;
          v43 = [v42 countByEnumeratingWithState:&v185 objects:v220 count:16];
          if (v43)
          {
            v44 = v43;
            v45 = *v186;
            do
            {
              for (n = 0; n != v44; ++n)
              {
                if (*v186 != v45)
                {
                  objc_enumerationMutation(v42);
                }

                v47 = *(*(&v185 + 1) + 8 * n);
                v48 = *v3;
                v184[0] = MEMORY[0x1E69E9820];
                v184[1] = 3221225472;
                v184[2] = sub_195A359CC;
                v184[3] = &unk_1E743F508;
                v184[4] = v47;
                v184[5] = v39;
                [v48 _callHandlersWithBlockOnIvarQueue:v184];
              }

              v44 = [v42 countByEnumeratingWithState:&v185 objects:v220 count:16];
            }

            while (v44);
          }

          v33 = v154;
        }

        v37 = obj;
        v156 = [obj countByEnumeratingWithState:&v189 objects:v221 count:16];
      }

      while (v156);
      v1 = v150;
      v5 = 0x1E69A6000;
    }
  }

  else
  {
    [*(*v3 + 6) removeAllObjects];
    v37 = [*(v5 + 312) registration];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v37, OS_LOG_TYPE_DEFAULT, "Enabled accounts all disappeared, removing all enabled accounts", buf, 2u);
    }
  }

  v49 = [*(v1 + 32) objectForKey:@"dependentDevices"];
  v50 = [*(v5 + 312) registration];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = [v49 count];
    *buf = 134217984;
    v210 = v51;
    _os_log_impl(&dword_1959FF000, v50, OS_LOG_TYPE_DEFAULT, "Deferred setup on ivar queue, got %lu dependent devices", buf, 0xCu);
  }

  v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = *(*v3 + 7);
  *(*v3 + 7) = v52;

  if ([v49 count])
  {
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v54 = [v49 allKeys];
    v55 = [v54 countByEnumeratingWithState:&v180 objects:v219 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v181;
      v157 = v54;
      do
      {
        for (ii = 0; ii != v56; ++ii)
        {
          if (*v181 != v57)
          {
            objc_enumerationMutation(v157);
          }

          v59 = *(*(&v180 + 1) + 8 * ii);
          [v49 objectForKey:v59];
          v61 = v60 = v49;
          v62 = [v61 mutableCopy];

          [*(*v3 + 7) setObject:v62 forKey:v59];
          v63 = *v3;
          v178[0] = MEMORY[0x1E69E9820];
          v178[1] = 3221225472;
          v178[2] = sub_195A35AB8;
          v178[3] = &unk_1E743F508;
          v178[4] = v59;
          v179 = v62;
          v64 = v62;
          v65 = v63;
          v49 = v60;
          [v65 _callHandlersWithBlockOnIvarQueue:v178];
        }

        v54 = v157;
        v56 = [v157 countByEnumeratingWithState:&v180 objects:v219 count:16];
      }

      while (v56);
      v1 = v150;
      v5 = 0x1E69A6000;
    }
  }

  else
  {
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v66 = [*(*v3 + 7) allKeys];
    v67 = [v66 countByEnumeratingWithState:&v174 objects:v218 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v175;
      do
      {
        for (jj = 0; jj != v68; ++jj)
        {
          if (*v175 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v71 = *(*(&v174 + 1) + 8 * jj);
          v72 = *v3;
          v173[0] = MEMORY[0x1E69E9820];
          v173[1] = 3221225472;
          v173[2] = sub_195A35B18;
          v173[3] = &unk_1E743F4E0;
          v173[4] = v71;
          [v72 _callHandlersWithBlockOnIvarQueue:v173];
        }

        v68 = [v66 countByEnumeratingWithState:&v174 objects:v218 count:16];
      }

      while (v68);
    }

    [*(*v3 + 7) removeAllObjects];
    v5 = 0x1E69A6000uLL;
    v54 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v54, OS_LOG_TYPE_DEFAULT, "Dependent devices all disappeared, removing all dependent devices", buf, 2u);
    }
  }

  v73 = [*(v1 + 32) objectForKey:@"linkedDevices"];
  v74 = [*(v5 + 312) registration];
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v75 = [v73 count];
    *buf = 134217984;
    v210 = v75;
    _os_log_impl(&dword_1959FF000, v74, OS_LOG_TYPE_DEFAULT, "Deferred setup on ivar queue, got %lu linked devices", buf, 0xCu);
  }

  v76 = [v73 mutableCopy];
  v77 = *(v1 + 40);
  v78 = *(v77 + 64);
  *(v77 + 64) = v76;

  v79 = [*(v1 + 32) objectForKey:@"familyInfo"];
  v80 = [*(v5 + 312) registration];
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v80, OS_LOG_TYPE_DEFAULT, "Dealing with family members", buf, 2u);
  }

  v81 = [v79 mutableCopy];
  v82 = *(*v3 + 9);
  *(*v3 + 9) = v81;

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v158 = [*(*v3 + 9) allKeys];
  v83 = [v158 countByEnumeratingWithState:&v169 objects:v217 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v170;
    do
    {
      for (kk = 0; kk != v84; ++kk)
      {
        if (*v170 != v85)
        {
          objc_enumerationMutation(v158);
        }

        v87 = *(*(&v169 + 1) + 8 * kk);
        v88 = [*(*v3 + 9) objectForKey:v87];
        v89 = [v88 mutableCopy];

        v90 = *v3;
        v167[0] = MEMORY[0x1E69E9820];
        v167[1] = 3221225472;
        v167[2] = sub_195A35B7C;
        v167[3] = &unk_1E743F508;
        v167[4] = v87;
        v168 = v89;
        v91 = v89;
        [v90 _callHandlersWithBlock:v167];
      }

      v84 = [v158 countByEnumeratingWithState:&v169 objects:v217 count:16];
    }

    while (v84);
  }

  v92 = [*(v150 + 32) objectForKey:@"familyDevices"];
  v93 = [v92 mutableCopy];
  v94 = *(v150 + 40);
  v95 = *(v94 + 80);
  *(v94 + 80) = v93;

  v96 = [*(v150 + 32) objectForKey:@"pendingInvitationMap"];
  v97 = [v96 mutableCopy];
  v98 = *(v150 + 40);
  v99 = *(v98 + 88);
  *(v98 + 88) = v97;

  v100 = [*(v150 + 32) objectForKey:@"receivedInvitationMap"];
  v101 = [v100 mutableCopy];
  v102 = *(v150 + 40);
  v103 = *(v102 + 96);
  *(v102 + 96) = v101;

  v104 = [*(v150 + 32) objectForKey:@"maxMessageSizes"];
  v105 = [v104 mutableCopy];
  v106 = *(v150 + 40);
  v107 = *(v106 + 104);
  *(v106 + 104) = v105;

  v108 = [*(v150 + 32) objectForKey:@"restrictionReasons"];
  v109 = [v108 mutableCopy];
  v110 = *(v150 + 40);
  v111 = *(v110 + 112);
  *(v110 + 112) = v109;

  v112 = [*(v150 + 32) objectForKey:@"deviceIdentifier"];
  v113 = [v112 copy];
  v114 = *(v150 + 40);
  v115 = *(v114 + 144);
  *(v114 + 144) = v113;

  v116 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
  {
    sub_195B2903C(v3);
  }

  v117 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v118 = *(v150 + 40);
  v119 = *(v118 + 120);
  *(v118 + 120) = v117;

  v120 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v121 = *(v150 + 40);
  v122 = *(v121 + 128);
  *(v121 + 128) = v120;

  v123 = [*(v150 + 32) objectForKey:@"activeDeviceUniqueID"];
  if ([v123 length])
  {
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v124 = *(*v3 + 7);
    v125 = [v124 countByEnumeratingWithState:&v163 objects:v216 count:16];
    if (v125)
    {
      v126 = v125;
      v127 = *v164;
      do
      {
        for (mm = 0; mm != v126; ++mm)
        {
          if (*v164 != v127)
          {
            objc_enumerationMutation(v124);
          }

          [*(*v3 + 15) setObject:v123 forKey:*(*(&v163 + 1) + 8 * mm)];
        }

        v126 = [v124 countByEnumeratingWithState:&v163 objects:v216 count:16];
      }

      while (v126);
    }

    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v129 = *(*v3 + 8);
    v130 = [v129 countByEnumeratingWithState:&v159 objects:v215 count:16];
    if (v130)
    {
      v131 = v130;
      v132 = *v160;
      do
      {
        for (nn = 0; nn != v131; ++nn)
        {
          if (*v160 != v132)
          {
            objc_enumerationMutation(v129);
          }

          [*(*v3 + 16) setObject:v123 forKey:*(*(&v159 + 1) + 8 * nn)];
        }

        v131 = [v129 countByEnumeratingWithState:&v159 objects:v215 count:16];
      }

      while (v131);
    }

    v134 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
    {
      v136 = *(*v3 + 15);
      v135 = *(*v3 + 16);
      *buf = 138412802;
      v210 = v123;
      v211 = 2112;
      v212 = v136;
      v213 = 2112;
      v214 = v135;
      _os_log_impl(&dword_1959FF000, v134, OS_LOG_TYPE_DEFAULT, "Active device uniqueID from daemon: %@ account map %@ service map %@", buf, 0x20u);
    }
  }

  v137 = [*(v150 + 32) objectForKey:@"privateLoggingHash"];
  v138 = *(v150 + 40);
  v139 = *(v138 + 152);
  *(v138 + 152) = v137;

  v140 = [*(v150 + 32) objectForKey:@"maxIMLSize"];
  *(*(v150 + 40) + 160) = [v140 integerValue];

  if (_IDSSupportsDirectMessaging())
  {
    v141 = [*(v150 + 32) objectForKey:@"peerIDForDirectMsg"];
    v142 = [*(v150 + 32) objectForKey:@"directMsgAllowedForServices"];
    v143 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
    {
      sub_195B290AC();
    }

    v144 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v144 setObject:v141 forKeyedSubscript:@"peerIDForDirectMsg"];
    [v144 setObject:v142 forKeyedSubscript:@"directMsgAllowedForServices"];
    v145 = [*(v150 + 32) objectForKey:@"pidForIDSD"];
    [v144 setObject:v145 forKeyedSubscript:@"pidForIDSD"];

    v146 = *(v150 + 40);
    v147 = *(v146 + 136);
    *(v146 + 136) = v144;
  }

  *(*v3 + 170) = 1;
  result = [*v3 __postSetupComplete];
  v149 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195A35908(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accountsChanged:*(a1 + 32) forTopic:*(a1 + 40)];
  }
}

void sub_195A35968(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accountsChanged:0 forTopic:*(a1 + 32)];
  }
}

void sub_195A359CC(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accountEnabled:*(a1 + 32) onService:*(a1 + 40)];
    v4 = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Notified account enabled %@ for service %@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_195A35AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) dependentDevicesUpdatedUponReconnect:*(a1 + 40)];
  }
}

void sub_195A35B18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) dependentDevicesUpdatedUponReconnect:0];
  }
}

void sub_195A35B7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:*(a1 + 32) familyInfoUpdated:*(a1 + 40)];
  }
}

void sub_195A35CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A35CF0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 daemonConnected];
  }
}

void sub_195A35DD4(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Connection complete", v3, 2u);
  }

  *(*(a1 + 32) + 171) = 1;
  if (*(a1 + 40))
  {
    [*(a1 + 32) setupCompleteWithInfo:?];
  }
}

void sub_195A35FBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 xpcObject:*(a1 + 32) objectContext:*(a1 + 40)];
  }
}

void sub_195A3610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A36124(void *a1)
{
  v2 = [*(a1[4] + 32) _imMethodSignatureForSelector:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A36318(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_195A006B4;
  v11[4] = sub_195A03D00;
  v12 = 0;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A36490;
  v10[3] = &unk_1E743E670;
  v10[4] = v4;
  v10[5] = v11;
  [v4 _performSyncBlock:v10];
  v5 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A36504;
  v6[3] = &unk_1E743EA08;
  v9 = v11;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v5 performBlock:v6 waitUntilDone:a2];

  _Block_object_dispose(v11, 8);
}

void sub_195A36490(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 24) allObjects];
  v4 = [v3 _copyForEnumerating];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

void sub_195A36504(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(*(*(a1 + 48) + 8) + 40);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = *v15;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v15 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v14 + 1) + 8 * i);
        [*(a1 + 32) selector];
        if (objc_opt_respondsToSelector())
        {
          v6 = objc_autoreleasePoolPush();
          v7 = MEMORY[0x1E695DF50];
          v8 = [v5 methodSignatureForSelector:{objc_msgSend(*(a1 + 32), "selector")}];
          v9 = [v7 invocationWithMethodSignature:v8];

          [v9 setSelector:{objc_msgSend(*(a1 + 32), "selector")}];
          v10 = *(a1 + 32);
          JWCopyInvocationArguments();
          [v9 retainArguments];
          if (objc_opt_respondsToSelector())
          {
            [v5 performSelector:sel__setTemporaryMessageContext_ withObject:*(a1 + 40)];
          }

          [v9 invokeWithTarget:v5];
          if (objc_opt_respondsToSelector())
          {
            [v5 performSelector:sel__setTemporaryMessageContext_ withObject:0];
          }

          objc_autoreleasePoolPop(v6);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v2);
  }

  objc_autoreleasePoolPop(context);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_195A36878(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidUpdateStateToState:*(a1 + 32)];
  }
}

void sub_195A3696C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidLosePeer:*(a1 + 32)];
  }
}

void sub_195A36A38(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidStartAdvertisingOfType:*(a1 + 32)];
  }
}

void sub_195A36B04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidStopAdvertisingOfType:*(a1 + 32)];
  }
}

void sub_195A36BFC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidStopAdvertisingOfType:*(a1 + 40) withError:*(a1 + 32)];
  }
}

void sub_195A36CF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidFailToStartAdvertisingOfType:*(a1 + 40) withError:*(a1 + 32)];
  }
}

void sub_195A36DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidStartScanningForType:*(a1 + 32)];
  }
}

void sub_195A36E8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidStopScanningForType:*(a1 + 32)];
  }
}

void sub_195A36F84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidFailToStartScanningForType:*(a1 + 40) withError:*(a1 + 32)];
  }
}

void sub_195A370A8(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidDiscoverType:a1[6] withData:a1[4] fromPeer:a1[5]];
  }
}

void sub_195A371C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidDiscoverPeerWithData:*(a1 + 32) fromPeer:*(a1 + 40)];
  }
}

void sub_195A372E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidConnectToPeer:*(a1 + 32) withError:*(a1 + 40)];
  }
}

void sub_195A37400(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 continuityDidDisconnectFromPeer:*(a1 + 32) withError:*(a1 + 40)];
  }
}

void sub_195A375E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 deviceIdentifierDidChange:*(a1 + 32)];
  }
}

void sub_195A37758(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_195A37778(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_195A37794(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_195A39804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195A39830(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained activityIdentifier];
  [v3 unsubscribeActivity:v4 andSubActivity:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195A399F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A39A14(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v9[9] = v3;
    v9[10] = v4;
    v6 = *(a1 + 32);
    v7 = a2;
    v8 = [v6 activityIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195A39AD0;
    v9[3] = &unk_1E743F758;
    v9[4] = *(a1 + 40);
    [v7 checkIfListeningForActivity:v8 completion:v9];
  }
}

void sub_195A39AD0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v5)
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B29714(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

void sub_195A39C78(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 activityIdentifier];
    [v6 setShouldListen:v4 forActivity:v7 completion:&unk_1F09E5E20];
  }
}

void sub_195A39CFC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_195B29780(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void sub_195A39E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A39E90(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v9[9] = v3;
    v9[10] = v4;
    v6 = *(a1 + 32);
    v7 = a2;
    v8 = [v6 activityIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195A39F4C;
    v9[3] = &unk_1E743F7D0;
    v9[4] = *(a1 + 40);
    [v7 currentSubscriptionsForActivity:v8 completion:v9];
  }
}

void sub_195A39F4C(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Subscription completion handler called, subscriptions: %@ error %@", &v18, 0x16u);
  }

  if (v6)
  {
    v8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B297EC(v6, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    v15 = *(*(a1 + 32) + 8);
    v16 = v5;
    v8 = *(v15 + 40);
    *(v15 + 40) = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A3A16C(uint64_t a1)
{
  [*(a1 + 32) activityMonitor:*(a1 + 40) didReceiveActivityUpdate:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

uint64_t sub_195A3A49C(uint64_t a1)
{
  v2 = +[IDSDaemonController sharedInstance];
  v3 = [v2 listener];
  [v3 addHandler:*(a1 + 32)];

  v4 = dispatch_queue_create("IDSInvitations-defaultQueue", 0);
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(a1 + 32) + 48) = 0;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = v7;

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  *(v11 + 16) = v10;

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = *(a1 + 32);
  v15 = *(v14 + 24);
  *(v14 + 24) = v13;

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = *(a1 + 32);
  v18 = *(v17 + 32);
  *(v17 + 32) = v16;

  v19 = [[IDSService alloc] initWithService:*(a1 + 40)];
  v20 = *(a1 + 32);
  v21 = *(v20 + 56);
  *(v20 + 56) = v19;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A3A688(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1[7] accounts];
  v2 = [v4 anyObject];
  v3 = [v2 serviceName];
  [v1 setupInvitationsForService:v3];
}

void sub_195A3A7E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1[7] accounts];
  v2 = [v4 anyObject];
  v3 = [v2 serviceName];
  [v1 setupInvitationsForService:v3];
}

void sub_195A3B5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 240), 8);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_195A3B65C(void *a1)
{
  v2 = [*(*(a1[9] + 8) + 40) copy];
  v3 = a1[8];
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(a1[4] + 16);
    v6 = [v3 copy];
    v7 = MEMORY[0x19A8BBEF0]();
    [v5 setObject:v7 forKey:v2];
  }

  v8 = a1[5];
  v9 = *(a1[4] + 56);
  v10 = a1[6];
  v11 = a1[7];
  v12 = *(a1[9] + 8);
  v13 = *(v12 + 40);
  v14 = *(a1[11] + 8);
  v16 = *(v14 + 40);
  obj = v13;
  v15 = [v9 sendInvitation:v8 toDestination:v10 options:v11 identifier:&obj error:&v16];
  objc_storeStrong((v12 + 40), obj);
  objc_storeStrong((v14 + 40), v16);
  *(*(a1[10] + 8) + 24) = v15;
  if ((*(*(a1[10] + 8) + 24) & 1) == 0 && a1[8] && v2)
  {
    [*(a1[4] + 16) removeObjectForKey:v2];
  }
}

void sub_195A3BC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_195A3BC68(void *a1)
{
  v2 = [*(*(a1[8] + 8) + 40) copy];
  v3 = a1[7];
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(a1[4] + 8);
    v6 = [v3 copy];
    v7 = MEMORY[0x19A8BBEF0]();
    [v5 setObject:v7 forKey:*(*(a1[8] + 8) + 40)];
  }

  v8 = a1[5];
  v9 = *(a1[4] + 56);
  v10 = [v8 destination];
  v11 = a1[6];
  v12 = *(a1[8] + 8);
  v13 = *(v12 + 40);
  v14 = *(a1[10] + 8);
  v15 = *(v14 + 40);
  obj = v13;
  LOBYTE(v8) = [v9 sendInvitation:v8 toDestination:v10 options:v11 identifier:&obj error:&v15];
  objc_storeStrong((v12 + 40), obj);
  objc_storeStrong((v14 + 40), v15);
  *(*(a1[9] + 8) + 24) = v8;

  if ((*(*(a1[9] + 8) + 24) & 1) == 0 && a1[7] && v2)
  {
    [*(a1[4] + 8) removeObjectForKey:v2];
  }
}

void sub_195A3C268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_195A3C2BC(void *a1)
{
  v2 = [*(*(a1[9] + 8) + 40) copy];
  v3 = a1[8];
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(a1[4] + 8);
    v6 = [v3 copy];
    v7 = MEMORY[0x19A8BBEF0]();
    [v5 setObject:v7 forKey:*(*(a1[9] + 8) + 40)];
  }

  v8 = a1[5];
  v9 = *(a1[4] + 56);
  v10 = a1[6];
  v11 = a1[7];
  v12 = *(a1[9] + 8);
  v13 = *(v12 + 40);
  v14 = *(a1[11] + 8);
  v16 = *(v14 + 40);
  obj = v13;
  v15 = [v9 sendInvitationUpdate:v8 toDestination:v10 options:v11 identifier:&obj error:&v16];
  objc_storeStrong((v12 + 40), obj);
  objc_storeStrong((v14 + 40), v16);
  *(*(a1[10] + 8) + 24) = v15;
  if ((*(*(a1[10] + 8) + 24) & 1) == 0 && a1[8] && v2)
  {
    [*(a1[4] + 8) removeObjectForKey:v2];
  }
}

void sub_195A3C8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_195A3C924(void *a1)
{
  v2 = [*(*(a1[9] + 8) + 40) copy];
  v3 = a1[8];
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(a1[4] + 8);
    v6 = [v3 copy];
    v7 = MEMORY[0x19A8BBEF0]();
    [v5 setObject:v7 forKey:*(*(a1[9] + 8) + 40)];
  }

  v8 = a1[5];
  v9 = *(a1[4] + 56);
  v10 = a1[6];
  v11 = a1[7];
  v12 = *(a1[9] + 8);
  v13 = *(v12 + 40);
  v14 = *(a1[11] + 8);
  v16 = *(v14 + 40);
  obj = v13;
  v15 = [v9 sendInvitationUpdate:v8 toDestination:v10 options:v11 identifier:&obj error:&v16];
  objc_storeStrong((v12 + 40), obj);
  objc_storeStrong((v14 + 40), v16);
  *(*(a1[10] + 8) + 24) = v15;
  if ((*(*(a1[10] + 8) + 24) & 1) == 0 && a1[8] && v2)
  {
    [*(a1[4] + 8) removeObjectForKey:v2];
  }
}

void sub_195A3CF4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1[7] accounts];
  v2 = [v4 anyObject];
  v3 = [v2 serviceName];
  [v1 setupInvitationsForService:v3];
}

void sub_195A3E1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A3E220(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x19A8BBEF0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_195A3E254(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = [v2 copy];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(a1[4] + 16) removeObjectForKey:a1[5]];
  v6 = [*(a1[4] + 8) objectForKey:a1[5]];
  v7 = [v6 copy];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = a1[5];
  v11 = *(a1[4] + 8);

  return [v11 removeObjectForKey:v10];
}

uint64_t sub_195A3E2F8(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 40);
  if (v2)
  {
    return (*(v3 + 16))(v3, 0);
  }

  else
  {
    return (*(v3 + 16))(v3, a1[5]);
  }
}

uint64_t sub_195A3E5C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

void sub_195A3F1E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_195A3F200(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained uuid];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "XPC interruption for client %@", &v5, 0xCu);
  }

  [WeakRetained _setupXPC];
  [WeakRetained _failMessages];

  v4 = *MEMORY[0x1E69E9840];
}

void sub_195A3F2E4(uint64_t a1, void *a2)
{
  v8 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = *(a1 + 32);
  v7 = *(v4 + 40);
  v6 = (v4 + 40);
  v5 = v7;
  if (!v7)
  {
    objc_storeStrong(v6, a2);
    v5 = *(*(a1 + 32) + 40);
  }

  [v5 addInterruptionHandler:*(a1 + 40) forTarget:?];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void sub_195A3F4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195A3F4D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 serverMessagingCollaboratorWithErrorHandler:&unk_1F09E5E40];

  v5 = [WeakRetained uuid];
  v6 = [WeakRetained topic];
  v7 = [WeakRetained commands];
  [v4 setupServerMessagingClient:WeakRetained withUUID:v5 forTopic:v6 commands:v7];
}

void sub_195A3F5A0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B2A004();
  }
}

void sub_195A3F9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195A3F9F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = [v3 serverMessagingCollaboratorWithErrorHandler:&unk_1F09E5E60];
  v6 = *(a1 + 32);
  v7 = [WeakRetained topic];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A3FB9C;
  v10[3] = &unk_1E743F8C8;
  objc_copyWeak(&v13, (a1 + 64));
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  [v5 sendMessageData:v6 onTopic:v7 withOptions:v8 identifier:v9 completion:v10];

  objc_destroyWeak(&v13);
}

void sub_195A3FB40(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B2A004();
  }
}

void sub_195A3FB9C(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [[IDSServerMessagingOutgoingContext alloc] initWithIdentifier:*(a1 + 32)];
  os_unfair_lock_lock(WeakRetained + 3);
  v8 = [(os_unfair_lock_s *)WeakRetained inFlightRequests];
  [v8 setObject:0 forKeyedSubscript:*(a1 + 32)];

  os_unfair_lock_unlock(WeakRetained + 3);
  v9 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = @"NO";
    v13 = 138412802;
    if (a2)
    {
      v11 = @"YES";
    }

    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Calling out to client completion { guid: %@, success: %@, error: %@ }", &v13, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v12 = *MEMORY[0x1E69E9840];
}

void sub_195A40170(uint64_t a1, void *a2)
{
  v3 = [a2 serverMessagingCollaboratorWithErrorHandler:&unk_1F09E5E80];
  [v3 sendCertifiedDeliveryReceipt:*(a1 + 32)];
}

void sub_195A401CC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B2A004();
  }
}

void sub_195A402F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_195A4030C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 serverMessagingCollaboratorWithErrorHandler:&unk_1F09E5EA0];

  v6 = [WeakRetained topic];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A4044C;
  v7[3] = &unk_1E743F940;
  v8 = *(a1 + 32);
  [v5 sendServerStorageFetchForTopic:v6 completion:v7];
}

void sub_195A403F0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B2A004();
  }
}

void sub_195A4044C(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    v8 = *(a1 + 32);
    if (a2)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    if (v8)
    {
      v7 = @"YES";
    }

    v15 = v5;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Calling out to client completion for storage fetch { success: %@, error: %@, hasCompletion: %@ }", &v12, 0x20u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_195A40658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195A40674(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [v3 serverMessagingCollaboratorWithErrorHandler:&unk_1F09E5EC0];

  v6 = *(a1 + 32);
  v7 = [WeakRetained topic];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A407C4;
  v8[3] = &unk_1E743F940;
  v9 = *(a1 + 40);
  [v5 cancelMessageWithIdentifier:v6 onTopic:v7 completion:v8];
}

void sub_195A40768(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B2A004();
  }
}

void sub_195A407C4(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    v8 = *(a1 + 32);
    if (a2)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    if (v8)
    {
      v7 = @"YES";
    }

    v15 = v5;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Calling out to client completion for cancel { success: %@, error: %@, hasCompletion: %@ }", &v12, 0x20u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void IDSRegistrationControlDisableRegistrationType(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B2A118();
  }

  v6 = sub_195A4179C(v8, v5);
  if (v6)
  {
    sub_195A41888();
    v7 = +[IDSDaemonController sharedInstance];
    [v7 registrationControlSetRegistrationStateForRegistrationType:a1 toState:1 requestID:v6];
  }
}

id sub_195A4179C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B2A144();
  }

  v5 = MEMORY[0x19A8BBEF0](v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A41DC8;
  v9[3] = &unk_1E743E850;
  v10 = v3;
  v6 = v3;
  v7 = sub_195A41E50(v5, v4, v9, 0);

  return v7;
}

void sub_195A41888()
{
  if (_IDSRunningInDaemon())
  {
    sub_195B2A184();
  }

  if (qword_1EAEDC0C0 != -1)
  {
    sub_195B2A170();
  }
}

void IDSRegistrationControlEnableRegistrationType(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B2A1B0();
  }

  v6 = sub_195A4179C(v8, v5);
  if (v6)
  {
    sub_195A41888();
    v7 = +[IDSDaemonController sharedInstance];
    [v7 registrationControlSetRegistrationStateForRegistrationType:a1 toState:2 requestID:v6];
  }
}

void IDSRegistrationControlGetStateForRegistrationType(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B2A208();
  }

  v7 = v5;
  v8 = v6;
  if (_IDSRunningInDaemon())
  {
    sub_195B2A1DC();
  }

  v9 = MEMORY[0x19A8BBEF0](v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A42044;
  v16[3] = &unk_1E743E850;
  v17 = v7;
  v10 = v7;
  v11 = sub_195A41E50(v9, v8, v16, 0);

  if (v11)
  {
    sub_195A41888();
    v12 = +[IDSDaemonController sharedInstance];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A41B04;
    v13[3] = &unk_1E743F9B8;
    v15 = a1;
    v14 = v11;
    [v12 forwardMethodWithReplyIsSync:0 block:v13];
  }
}

uint64_t sub_195A41B04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_registrationControlGetRegistrationStateForRegistrationType_requestID_);
}

uint64_t IDSRegistrationControlSyncGetStateForRegistrationType(uint64_t a1, void *a2)
{
  if (_IDSRunningInDaemon())
  {
    sub_195B2A234();
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_195A006E4;
  v20 = sub_195A03D18;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A41D9C;
  v15[3] = &unk_1E743F9E0;
  v15[4] = &v22;
  v15[5] = &v16;
  v4 = v15;
  if (_IDSRunningInDaemon())
  {
    __assert_rtn("_IDSScheduleSyncTimeoutForRegistrtionControlStateCompletionBlock", "IDSRegistrationControl.m", 85, "!_IDSRunningInDaemon()");
  }

  v5 = MEMORY[0x19A8BBEF0](v4);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_195A420CC;
  v26[3] = &unk_1E743E850;
  v27 = v4;
  v6 = v4;
  v7 = sub_195A41E50(v5, 0, v26, 1);

  if (v7)
  {
    sub_195A41888();
    v8 = +[IDSDaemonController sharedInstance];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195A41DBC;
    v12[3] = &unk_1E743F9B8;
    v14 = a1;
    v13 = v7;
    [v8 forwardMethodWithReplyIsSync:1 block:v12];
  }

  if (a2)
  {
    v9 = v17[5];
    if (v9)
    {
      *a2 = v9;
    }
  }

  v10 = v23[3];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v10;
}

void sub_195A41D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A41DBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_registrationControlGetRegistrationStateForRegistrationType_requestID_);
}

void sub_195A41DC8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x1E696ABC0]);
    v3 = [v2 initWithDomain:*MEMORY[0x1E69A4CB8] code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

id sub_195A41E50(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B2A260();
  }

  v10 = [[IDSDaemonResponseHandler alloc] initWithBlock:v7 queue:v8 isSync:a4];
  v11 = sub_195A41F1C();
  v12 = [v11 scheduleTimeoutWithResponseHandler:v10 timeoutInterval:v9 timeoutBlock:120.0];

  return v12;
}

id sub_195A41F1C()
{
  if (qword_1EAEDBF50 != -1)
  {
    sub_195B2A28C();
  }

  v1 = qword_1EAEDBF30;

  return v1;
}

uint64_t sub_195A41F60()
{
  qword_1EAEDBF30 = objc_alloc_init(IDSDaemonRequestTimer);

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A41F9C()
{
  v0 = [IDSRegistrationControlDaemonResponseListener alloc];
  v1 = sub_195A41F1C();
  v2 = [(IDSRegistrationControlDaemonResponseListener *)v0 initWithRequestTimer:v1];
  v3 = qword_1EAEDC0B8;
  qword_1EAEDC0B8 = v2;

  v5 = +[IDSDaemonController sharedInstance];
  v4 = [v5 listener];
  [v4 addHandler:qword_1EAEDC0B8];
}

void sub_195A42044(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x1E696ABC0]);
    v3 = [v2 initWithDomain:*MEMORY[0x1E69A4CB8] code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_195A420CC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x1E696ABC0]);
    v3 = [v2 initWithDomain:*MEMORY[0x1E69A4CB8] code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_195A42A80(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v3 = [*(a1 + 32) delegateByServiceType];
  v4 = [v3 objectForKey:v2];
  v5 = *(a1 + 40);

  if (v4 != v5)
  {
    v6 = [*(a1 + 32) delegateByServiceType];

    if (!v6)
    {
      v7 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      [*(a1 + 32) setDelegateByServiceType:v7];

      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [*(a1 + 32) setInitialStateByService:v8];
    }

    v9 = [*(a1 + 32) delegateByServiceType];
    [v9 setObject:*(a1 + 40) forKey:v2];

    v10 = [*(a1 + 32) _statusOfUsersOnService:*(a1 + 48)];
    v11 = [*(a1 + 32) initialStateByService];
    [v11 setObject:v10 forKey:v2];

    v12 = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v14 = @"iMessage";
      if (v13 != 1)
      {
        v14 = 0;
      }

      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = @"FaceTime";
      }

      v16 = v15;
      v17 = *(a1 + 40);
      *buf = 138412802;
      v39 = v16;
      v40 = 2048;
      v41 = v17;
      v42 = 2112;
      v43 = v10;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Setting delegate {service: %@, delegate: %p, status: %@}", buf, 0x20u);
    }

    v32 = v10;

    v18 = *(a1 + 32);
    v19 = [v18 _serviceNameForType:*(a1 + 48)];
    v20 = [v18 _accountControllerForName:v19];

    v21 = *(a1 + 32);
    v22 = [v21 signInQueue];
    [v20 addDelegate:v21 queue:v22];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = [v20 accounts];
    v24 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v33 + 1) + 8 * i);
          v29 = *(a1 + 32);
          v30 = [v29 signInQueue];
          [v28 addRegistrationDelegate:v29 queue:v30];
        }

        v25 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v25);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_195A42E2C(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v3 = [*(a1 + 32) delegateByServiceType];
  [v3 removeObjectForKey:v2];

  v4 = [*(a1 + 32) initialStateByService];
  [v4 removeObjectForKey:v2];

  v5 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = @"iMessage";
    if (v6 != 1)
    {
      v7 = 0;
    }

    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = @"FaceTime";
    }

    v9 = v8;
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Removing delegate {service: %@}", &v14, 0xCu);
  }

  v10 = [*(a1 + 32) delegateByServiceType];
  v11 = [v10 count];

  if (!v11)
  {
    [*(a1 + 32) setDelegateByServiceType:0];
    [*(a1 + 32) setInitialStateByService:0];
    v12 = [*(a1 + 32) accountIDDescriptionMap];

    if (!v12)
    {
      [*(a1 + 32) setServiceNameAccountControllerMap:0];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_195A43180(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = sub_195A432F0;
  v12 = &unk_1E743FA20;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v5;
  if (([v4 _actionOnAccountOfType:v2 onService:v3 actionBlock:&v9] & 1) == 0 && *(a1 + 40))
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSSignInControllerErrorDomain" code:-3000 userInfo:{0, v9, v10, v11, v12}];
    v7 = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "No matching account {error: %@}", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_195A432F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEnabled])
  {
    v7 = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v8 = "Already enabled";
      v9 = &v18;
LABEL_10:
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  [v6 enableAccount:v5];
  if ([v5 accountType] != 1)
  {
    v7 = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v8 = "Enabling phone number - completed";
      v9 = &v16;
      goto LABEL_10;
    }

LABEL_11:

    (*(*(a1 + 40) + 16))(*(a1 + 40));
    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  v11 = [v10 signInQueue];
  [v5 addRegistrationDelegate:v10 queue:v11];

  [v5 registerAccount];
  v12 = [v5 uniqueID];
  v13 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Enabling apple id - starting machine", buf, 2u);
  }

  v14 = *(a1 + 32);
  v15 = [v6 serviceName];
  [v14 _initializeStateMachineForAccountID:v12 service:v15 state:1 completion:*(a1 + 40)];

LABEL_12:
}

void sub_195A4368C(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_195A43808;
  v16 = &unk_1E743FA20;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = v5;
  if (([v4 _actionOnAccountOfType:v2 onService:v3 actionBlock:&v13] & 1) == 0)
  {
    v6 = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v7 = *(a1 + 56);
      v9 = @"iMessage";
      if (v7 != 1)
      {
        v9 = 0;
      }

      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = @"FaceTime";
      }

      v11 = v10;
      *buf = 134218242;
      v20 = v8;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "No account found -- completing {userType: %llu, service: %@}", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_195A43808(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEnabled])
  {
    v7 = *(a1 + 32);
    v8 = [v7 signInQueue];
    [v6 addDelegate:v7 queue:v8];

    [v6 disableAccount:v5];
    v9 = [v5 uniqueID];
    v10 = *(a1 + 32);
    v11 = [v6 serviceName];
    [v10 _initializeStateMachineForAccountID:v9 service:v11 state:3 completion:*(a1 + 40)];
  }

  else
  {
    v12 = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Already disabled", v13, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

IDSSignInServiceUserInfo *sub_195A43A94(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 accountType] == 1 || !objc_msgSend(v3, "accountType"))
  {
    v4 = -[IDSSignInServiceUserInfo initWithUserType:status:]([IDSSignInServiceUserInfo alloc], "initWithUserType:status:", [v3 accountType], objc_msgSend(*(a1 + 32), "_statusOfAccount:", v3));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_195A43CE8(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _statusOfUsersOnService:*(a1 + 48)];
  v3 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v5 = @"iMessage";
    if (v4 != 1)
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"FaceTime";
    }

    v7 = v6;
    v9 = 138412546;
    v10 = v2;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Finished checking user statuses {status: %@, service: %@}", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

void sub_195A440C0(uint64_t a1, void *a2, void *a3, char a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSSignInControllerInternalErrorDomain" code:-404 userInfo:0];
    v11 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696AA08];
    v20[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v9 = [v11 errorWithDomain:@"IDSSignInControllerErrorDomain" code:-1000 userInfo:v12];
  }

  v13 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Set for account password {username: %@, error: %@}", &v15, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

void sub_195A44450(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    if (v2 != 1)
    {
LABEL_9:
      v10 = 0;
      goto LABEL_10;
    }

    v3 = IDSServiceNameiMessage;
  }

  else
  {
    v3 = IDSServiceNameFaceTime;
  }

  v4 = *v3;
  if (!v4)
  {
    goto LABEL_9;
  }

  v10 = v4;
  if (*(a1 + 32))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v5 setObject:&unk_1F0A298D0 forKeyedSubscript:*MEMORY[0x1E69A5560]];
    [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69A5640]];
    [v5 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69A6448]];
    v6 = [MEMORY[0x1E696AEC0] stringGUID];
    v7 = [*(a1 + 40) _createAccountWithDictionary:v5 accountID:v6 serviceName:v10];
    [v7 addRegistrationDelegate:*(a1 + 40) queue:*(*(a1 + 40) + 40)];
    v8 = [*(a1 + 40) _accountControllerForName:v10];
    [v8 addAccount:v7];
    [v8 enableAccount:v7];
    [v8 addDelegate:*(a1 + 40) queue:*(*(a1 + 40) + 40)];
    [v7 authenticateAccount];
    v9 = *(a1 + 40);
    if (*(a1 + 64))
    {
      [v9 _initializeStateMachineForAccountID:v6 service:v10 state:0 completion:*(a1 + 48)];
    }

    else
    {
      [v9 _initializeStateMachineForAccountID:v6 service:v10 state:0 completion:0];
      (*(*(a1 + 48) + 16))();
    }

    goto LABEL_13;
  }

LABEL_10:
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSSignInControllerErrorDomain" code:-4000 userInfo:0];
  (*(*(a1 + 48) + 16))();
LABEL_13:
}

uint64_t sub_195A4485C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  return MEMORY[0x1EEE66B58](*(a1 + 32), sel_signInUsername_onService_waitUntilRegistered_withCompletion_);
}

void sub_195A44A34(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A44B60;
  v5[3] = &unk_1E743FB38;
  v5[4] = v2;
  v3 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = &v8;
  [v2 _actionOnAccountOfType:1 onService:v3 actionBlock:v5];
  if ((v9[3] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSSignInControllerErrorDomain" code:-3000 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  _Block_object_dispose(&v8, 8);
}

void sub_195A44B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A44B60(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  v8 = [v5 signInQueue];
  [v6 addDelegate:v5 queue:v8];

  [v6 disableAccount:v7];
  [v6 removeAccount:v7];
  v11 = [v7 uniqueID];

  v9 = a1[4];
  v10 = [v6 serviceName];

  [v9 _initializeStateMachineForAccountID:v11 service:v10 state:4 completion:a1[5]];
  *(*(a1[6] + 8) + 24) = 1;
}

void sub_195A44EA0(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x19A8BBEF0](*(a1 + 40));
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Calling sign in controller's client completion block {completion: %@, error: %@}", &v8, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_195A451B8(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v5 = @"NO";
    if (*(a1 + 56))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    if (*(a1 + 57))
    {
      v5 = @"YES";
    }

    v9 = 134218498;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Periodic validation fired {delay: %f, allowFuzz: %@, signOut: %@}", &v9, 0x20u);
  }

  if (*(a1 + 57))
  {
    v7 = 1;
  }

  else if (*(a1 + 56))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [WeakRetained _validateStateForAccountID:*(a1 + 32) timeoutMode:v7];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A4548C(uint64_t a1, void *a2)
{
  v3 = [a2 serviceName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t sub_195A45C60(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 134218242;
    v17 = a2;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Completed {errorCode: %llu, account: %@}", buf, 0x16u);
  }

  if (*(a1 + 56))
  {
    if (*(a1 + 72))
    {
      a2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSSignInControllerErrorDomain" code:-5000 userInfo:0];
LABEL_11:
      (*(*(a1 + 56) + 16))();

      goto LABEL_12;
    }

    if (!a2)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v14 = @"IDSSignInControllerErrorAccountKey";
      v15 = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      if (!a3)
      {
LABEL_10:
        a2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSSignInControllerErrorDomain" code:a2 userInfo:v9];

        goto LABEL_11;
      }
    }

    else
    {
      v9 = 0;
      if (!a3)
      {
        goto LABEL_10;
      }
    }

    v10 = [v9 mutableCopy];
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSSignInControllerInternalErrorDomain" code:a3 userInfo:0];
    [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696AA08]];

    v9 = v10;
    goto LABEL_10;
  }

LABEL_12:
  result = [*(a1 + 40) _cleanupStateForAccountID:*(a1 + 48)];
  *(*(*(a1 + 64) + 8) + 24) = 1;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_195A46578(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = MEMORY[0x1E696AEC0];
        v11 = [v9 type];
        v12 = [v9 status];
        v13 = [v10 stringWithFormat:@"%llu, %llu", v11, v12, v16];
        [v3 addObject:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_195A47448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A47470(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_195A474C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_reportClientEvent_withCompletion_);
}

void sub_195A47558(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A47608;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 32);
  v4 = [a2 eventReportingCollaboratorWithErrorHandler:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_195A47608(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2A420();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195A47854(void *a1)
{
  v2 = [[_IDSSession alloc] initWithAccount:a1[5] destinations:a1[6] transportType:a1[7] delegateContext:a1[4]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  os_unfair_lock_lock((a1[4] + 24));
  v5 = [*(a1[4] + 8) uniqueID];
  v6 = [v5 copy];
  v7 = a1[4];
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  v9 = (a1[4] + 24);

  os_unfair_lock_unlock(v9);
}

void sub_195A47AD4(void *a1)
{
  v2 = [[_IDSSession alloc] initWithAccount:a1[5] destinations:a1[6] options:a1[7] delegateContext:a1[4]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  os_unfair_lock_lock((a1[4] + 24));
  v5 = [*(a1[4] + 8) uniqueID];
  v6 = [v5 copy];
  v7 = a1[4];
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  v9 = (a1[4] + 24);

  os_unfair_lock_unlock(v9);
}

void sub_195A47E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A47F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A47FA8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) socket];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195A481C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A481E0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) state];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195A48468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A48480(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) initialLinkType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_195A4875C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  return MEMORY[0x1EEE66B58](*(*(a1 + 32) + 8), sel_sendInvitationWithData_declineOnError_);
}

void sub_195A48944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A4895C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) getPreferences];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_195A49180(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](*(a1[4] + 8), sel_sendSessionMessage_toDestinations_);
}

void sub_195A493DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A493F4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) getAudioEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195A495B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A495C8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) getMuted];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195A49708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A49720(void *a1)
{
  result = [*(a1[4] + 8) sendData:a1[5] error:a1[7]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195A498D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A498EC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) inviteTimeout];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195A49A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A49AA8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) sessionEndedReason];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195A49CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A49CD0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) linkSelectionStrategy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A49EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A49ECC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) shouldUseSocketForTransport];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195A49FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A49FF4(void *a1)
{
  result = [*(a1[4] + 8) MTUForAddressFamily:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t IDSCTSIMSlotFromSubscriptionSlot(uint64_t a1)
{
  if (a1)
  {
    return a1 == 2;
  }

  else
  {
    return 2;
  }
}

uint64_t IDSSubscriptionSlotFromCTSIMSlot(uint64_t a1)
{
  v1 = 1;
  if (a1 == 1)
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

id sub_195A4A460(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [MEMORY[0x1E69A51E8] sharedInstance];
  v3 = [v2 currentSIMsWithError:0];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v1 subscriptionSlot];
        if (v8)
        {
          v9 = v8 == 2;
        }

        else
        {
          v9 = 2;
        }

        if (v9 == [v7 slot])
        {
          v4 = v7;
          goto LABEL_14;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_195A4AEA0(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[3])
  {
    v3 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195A4B02C;
    v9[3] = &unk_1E743FD20;
    v9[4] = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v9];
    v4 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 24);
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Updated local cache to %@", buf, 0xCu);
    }

    v2 = *(a1 + 32);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A4B0F4;
  v7[3] = &unk_1E743FD48;
  v8 = *(a1 + 40);
  [v2 _callDelegatesWithBlock:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void sub_195A4B02C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _cacheForService:v7];
  v9 = [v8 mutableCopy];

  if (v9)
  {
    [v9 addEntriesFromDictionary:v6];
  }

  else
  {
    v9 = [v6 mutableCopy];
  }

  [*(*(a1 + 32) + 24) setObject:v9 forKey:v7];
}

void sub_195A4B0F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195A4B19C;
    v5[3] = &unk_1E743FD20;
    v6 = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void sub_195A4B19C(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _IDSServiceFromRegistrationServiceType();
  v6 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Notifying delegate %@ about ID status update", buf, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:{v14, v20}];
        v16 = [v14 prefixedURI];
        [v8 setObject:v15 forKeyedSubscript:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = *(a1 + 32);
  v18 = [v8 copy];
  [v17 idStatusUpdatedForDestinations:v18 service:v5];

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A4BAB0(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_195A4BB04(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A4BBAC;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 40);
  v4 = [a2 phoneNumberCredentialVendorCollaboratorWithErrorHandler:v5];
  [v4 requestPhoneNumberCredentialForService:*(a1 + 48) simLabelID:*(a1 + 32) requestOption:*(a1 + 56) withCompletion:*(a1 + 40)];
}

void sub_195A4BBAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2A754();
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_195A4BDAC(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_195A4BE00(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A4BEA4;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 32);
  v4 = [a2 phoneNumberCredentialVendorCollaboratorWithErrorHandler:v5];
  [v4 fetchPhoneNumbersOfType:*(a1 + 40) withCompletion:*(a1 + 32)];
}

void sub_195A4BEA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2A754();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195A4C28C(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 48));
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v2 initWithArray:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  v7 = *MEMORY[0x1E69E9840];
}

void sub_195A4C61C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A4C700;
  v11[3] = &unk_1E743FE10;
  v12 = v6;
  v8 = *(a1 + 40);
  v14 = v5;
  v15 = v8;
  v13 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

uint64_t sub_195A4C700(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 8), *(a1 + 48));
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void sub_195A4C768(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A4C824;
  v6[3] = &unk_1E743FC50;
  v7 = *(a1 + 40);
  v5 = [a2 firewallCollaboratorForService:v4 withErrorHandler:v6];
  [v5 impactedServicesForService:*(*(a1 + 32) + 16) withCompletion:*(a1 + 40)];
}

void sub_195A4C824(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Error fetching firewall collaborator {error: %@}", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void sub_195A4CBB0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A4F9C8;
  v11[3] = &unk_1E743FEB0;
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = v5;
  [IDSXPCDaemonController performDaemonControllerTask:v11];
}

void sub_195A4CC98(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A4CD3C;
  v6[3] = &unk_1E743F138;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 addEntries:v4 withCompletion:v6];
}

void sub_195A4CD3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4CDF0;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4CE04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4CEB8;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4D17C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A4D220;
  v6[3] = &unk_1E743F138;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 removeDonatedEntries:v4 withCompletion:v6];
}

void sub_195A4D220(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4D2D4;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4D2E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4D39C;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4D660(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A4D704;
  v6[3] = &unk_1E743F138;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 removeEntries:v4 withCompletion:v6];
}

void sub_195A4D704(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4D7B8;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4D7CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4D880;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4DAD8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A4DB80;
  v6[3] = &unk_1E743F138;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 replaceEntries:v4 replaceAll:0 withCompletion:v6];
}

void sub_195A4DB80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4DC34;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4DC48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4DCFC;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4DF50(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A4DFF8;
  v6[3] = &unk_1E743F138;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 replaceEntries:v4 replaceAll:1 withCompletion:v6];
}

void sub_195A4DFF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4E0AC;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4E0C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4E174;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4E354(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A4FB58;
  v11[3] = &unk_1E743FEB0;
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = v5;
  [IDSXPCDaemonController performDaemonControllerTask:v11];
}

void sub_195A4E43C(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A4E4D0;
  v5[3] = &unk_1E743FE60;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 currentDonatedEntries:v5];
}

void sub_195A4E4D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A4E5AC;
    block[3] = &unk_1E743F1D8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void sub_195A4E5C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A4E6A0;
    block[3] = &unk_1E743F1D8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void sub_195A4E884(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A4E918;
  v5[3] = &unk_1E743FE60;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 currentEntries:v5];
}

void sub_195A4E918(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A4E9F4;
    block[3] = &unk_1E743F1D8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void sub_195A4EA0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A4EAE8;
    block[3] = &unk_1E743F1D8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void sub_195A4ECCC(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A4ED60;
  v5[3] = &unk_1E743F138;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 removeAllDonatedEntries:v5];
}

void sub_195A4ED60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4EE14;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4EE28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4EEDC;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4F0BC(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A4F150;
  v5[3] = &unk_1E743F138;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 removeAllEntries:v5];
}

void sub_195A4F150(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4F204;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4F218(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195A4F2CC;
    v6[3] = &unk_1E743F110;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_195A4F4AC(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A4F540;
  v5[3] = &unk_1E743FE60;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 recentlyBlockedEntries:v5];
}

void sub_195A4F540(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A4F61C;
    block[3] = &unk_1E743F1D8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void sub_195A4F634(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A4F710;
    block[3] = &unk_1E743F1D8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void sub_195A4F9C8(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A4FA84;
  v6[3] = &unk_1E743FC50;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = [a2 firewallCollaboratorForService:v4 withErrorHandler:v6];
  (*(*(a1 + 48) + 16))();
}

void sub_195A4FA84(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Error fetching firewall collaborator {error: %@}", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void sub_195A4FB58(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A4FC14;
  v6[3] = &unk_1E743FC50;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = [a2 firewallCollaboratorForService:v4 withErrorHandler:v6];
  (*(*(a1 + 48) + 16))();
}

void sub_195A4FC14(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Error fetching firewall collaborator {error: %@}", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void sub_195A4FE7C()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("IDSBatchIDQueryControllerQueue", v2);
  v1 = qword_1EAEDC070;
  qword_1EAEDC070 = v0;
}

uint64_t sub_195A4FEE0(void *a1)
{
  v2 = [[_IDSBatchIDQueryController alloc] initWithService:a1[5] delegate:a1[6] queue:a1[7] parent:a1[4]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A4FFD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

id IDSProcessVMRequest(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_IDSRunningInDaemon())
  {
    sub_195B2A924();
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_195A00704;
  v28 = sub_195A03D28;
  v29 = 0;
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x3032000000;
  v22[2] = sub_195A00704;
  v22[3] = sub_195A03D28;
  v23 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_195A510F8;
  v20[3] = &unk_1E743FEE8;
  v20[4] = &v24;
  v20[5] = &v21;
  v2 = v20;
  if (_IDSRunningInDaemon())
  {
    v15 = 41;
    v16 = "_IDSScheduleSyncTimeoutForVMCompletionBlock";
    goto LABEL_20;
  }

  v3 = [IDSDaemonResponseHandler alloc];
  v4 = MEMORY[0x19A8BBEF0](v2);
  v5 = [(IDSDaemonResponseHandler *)v3 initWithBlock:v4 queue:0 isSync:1];

  v6 = sub_195A5118C();
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v31 = sub_195A511D0;
  v32 = &unk_1E743E850;
  v33 = v2;
  v7 = v2;
  v8 = [v6 scheduleTimeoutWithResponseHandler:v5 timeoutInterval:&buf timeoutBlock:120.0];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [MEMORY[0x1E69A6138] vm];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Sending VM data request ID %@ to daemon", &buf, 0xCu);
  }

  if (_IDSRunningInDaemon())
  {
    v15 = 30;
    v16 = "_IDSListenForVMResponses";
LABEL_20:
    __assert_rtn(v16, "IDSVM.m", v15, "!_IDSRunningInDaemon()");
  }

  if (qword_1EAEDC0D8 != -1)
  {
    sub_195B2A86C();
  }

  v10 = +[IDSDaemonController sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195A51180;
  v17[3] = &unk_1E743FF10;
  v18 = v1;
  v19 = v8;
  [v10 forwardMethodWithReplyIsSync:1 block:v17];

LABEL_10:
  if (*(v22[0] + 40))
  {
    v11 = [MEMORY[0x1E69A6138] vm];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B2A894(v8, v22, v11);
    }
  }

  v12 = v25[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v24, 8);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void sub_195A510C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_195A510F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

uint64_t sub_195A51180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_requestVMData_requestID_);
}

id sub_195A5118C()
{
  if (qword_1EAEDBF58 != -1)
  {
    sub_195B2A950();
  }

  v1 = qword_1EAEDBF38;

  return v1;
}

void sub_195A511D0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x1E696ABC0]);
    v3 = [v2 initWithDomain:*MEMORY[0x1E69A51A8] code:3 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_195A51258()
{
  qword_1EAEDBF38 = objc_alloc_init(IDSDaemonRequestTimer);

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A51294()
{
  v0 = [IDSVMDaemonResponseListener alloc];
  v1 = sub_195A5118C();
  v2 = [(IDSVMDaemonResponseListener *)v0 initWithRequestTimer:v1];
  v3 = qword_1EAEDC0D0;
  qword_1EAEDC0D0 = v2;

  v5 = +[IDSDaemonController sharedInstance];
  v4 = [v5 listener];
  [v4 addHandler:qword_1EAEDC0D0];
}

uint64_t sub_195A5133C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_195A513DC()
{
  v24[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A52D08];
  v1 = qword_1ED5DDE40;
  qword_1ED5DDE40 = v0;

  v2 = qword_1ED5DDE40;
  v3 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_fetchIdentityForPinningWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = qword_1ED5DDE40;
  v7 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v9 = [v7 setWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_pinIdentityBlob_withCompletion_ argumentIndex:0 ofReply:0];

  v10 = qword_1ED5DDE40;
  v11 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v13 = [v11 setWithArray:v12];
  [v10 setClasses:v13 forSelector:sel_pinIdentityBlob_withCompletion_ argumentIndex:0 ofReply:1];

  v14 = qword_1ED5DDE40;
  v15 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:3];
  v17 = [v15 setWithArray:{v16, v19, v20}];
  [v14 setClasses:v17 forSelector:sel_fetchAllPinnedIdentitiesWithCompletion_ argumentIndex:0 ofReply:1];

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A5167C()
{
  qword_1EAEDC058 = objc_alloc_init(IDSOffGridConnectionMonitor);

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A52028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A5217C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A52194(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) account];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A522B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A522CC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) isActive];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195A5261C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A52634(void *a1)
{
  result = [*(a1[4] + 8) sendProtobuf:a1[5] toDestinations:a1[6] priority:a1[9] options:a1[7] identifier:a1[10] error:a1[11]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195A527E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A527FC(void *a1)
{
  result = [*(a1[4] + 8) sendMessage:a1[5] toDestinations:a1[6] priority:a1[9] options:a1[7] identifier:a1[10] error:a1[11]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195A529AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A529C4(void *a1)
{
  result = [*(a1[4] + 8) sendData:a1[5] toDestinations:a1[6] priority:a1[9] options:a1[7] identifier:a1[10] error:a1[11]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195A5380C()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A52D68];
  v1 = qword_1ED5DDE48;
  qword_1ED5DDE48 = v0;

  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v8 = [v2 initWithObjects:{v3, v4, objc_opt_class(), 0}];
  [qword_1ED5DDE48 setClasses:v8 forSelector:sel_getPairingRecordsWithCompletion_ argumentIndex:1 ofReply:1];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [qword_1ED5DDE48 setClasses:v7 forSelector:sel_getPairingDevicesWithCompletion_ argumentIndex:0 ofReply:1];
  [qword_1ED5DDE48 setClasses:v7 forSelector:sel_getPairedDevicesWithCompletion_ argumentIndex:0 ofReply:1];
}

void sub_195A559A4()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A52DC8];
  v1 = qword_1ED5DDE50;
  qword_1ED5DDE50 = v0;

  v2 = qword_1ED5DDE50;
  v3 = +[IDSXPCPairingInterface interface];
  [v2 setInterface:v3 forSelector:sel_pairingCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v4 = qword_1ED5DDE50;
  v5 = +[IDSXPCReunionSyncInterface interface];
  [v4 setInterface:v5 forSelector:sel_reunionSyncCollaboratorForClientProcessName_withCompletion_ argumentIndex:0 ofReply:1];

  v6 = qword_1ED5DDE50;
  v7 = +[IDSXPCPairedDeviceManagerInterface interface];
  [v6 setInterface:v7 forSelector:sel_pairedDeviceManagerCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v8 = qword_1ED5DDE50;
  v9 = +[IDSXPCOpportunisticInterface interface];
  [v8 setInterface:v9 forSelector:sel_opportunisticCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v10 = qword_1ED5DDE50;
  v11 = +[IDSXPCRegistrationInterface interface];
  [v10 setInterface:v11 forSelector:sel_registrationCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v12 = qword_1ED5DDE50;
  v13 = +[IDSXPCActivityMonitorInterface interface];
  [v12 setInterface:v13 forSelector:sel_activityMonitorCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v14 = qword_1ED5DDE50;
  v15 = +[IDSXPCServerMessagingInterface interface];
  [v14 setInterface:v15 forSelector:sel_serverMessagingCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v16 = qword_1ED5DDE50;
  v17 = +[IDSXPCOffGridMessengerInterface interface];
  [v16 setInterface:v17 forSelector:sel_offGridMessengerCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v18 = qword_1ED5DDE50;
  v19 = +[IDSXPCOffGridStateManagerInterface interface];
  [v18 setInterface:v19 forSelector:sel_offGridStateManagerCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v20 = qword_1ED5DDE50;
  v21 = +[IDSXPCKeyTransparencyInterface interface];
  [v20 setInterface:v21 forSelector:sel_keyTransparencyCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v22 = qword_1ED5DDE50;
  v23 = +[IDSXPCPinnedIdentityInterface interface];
  [v22 setInterface:v23 forSelector:sel_pinnedIdentityCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v24 = qword_1ED5DDE50;
  v25 = +[IDSXPCPhoneNumberCredentialVendorInterface interface];
  [v24 setInterface:v25 forSelector:sel_phoneNumberCredentialVendorCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v26 = qword_1ED5DDE50;
  v27 = +[IDSXPCFirewallInterface interface];
  [v26 setInterface:v27 forSelector:sel_firewallCollaboratorForService_withCompletion_ argumentIndex:0 ofReply:1];

  v28 = qword_1ED5DDE50;
  v29 = +[IDSXPCGroupSessionKeyValueDeliveryProviderInterface interface];
  [v28 setInterface:v29 forSelector:sel_groupSessionKeyValueDeliveryProviderCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v30 = qword_1ED5DDE50;
  v31 = +[IDSXPCFeatureTogglerInterface interface];
  [v30 setInterface:v31 forSelector:sel_featureTogglerForService_withCompletion_ argumentIndex:0 ofReply:1];

  v32 = qword_1ED5DDE50;
  v33 = +[IDSXPCBAASignerInterface interface];
  [v32 setInterface:v33 forSelector:sel_baaSignerCollaboratorForTopic_withCompletion_ argumentIndex:0 ofReply:1];

  v34 = qword_1ED5DDE50;
  v35 = +[IDSXPCEventReportingInterface interface];
  [v34 setInterface:v35 forSelector:sel_eventReportingCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v36 = qword_1ED5DDE50;
  v37 = +[IDSXPCInternalTestingInterface interface];
  [v36 setInterface:v37 forSelector:sel_interalTestingCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];

  v38 = qword_1ED5DDE50;
  v39 = +[IDSXPCDiagnosticHandlingInterface interface];
  [v38 setInterface:v39 forSelector:sel_diagnosticHandlingCollaboratorWithCompletion_ argumentIndex:0 ofReply:1];
}

uint64_t sub_195A55E74()
{
  qword_1EAEDC0E0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A52E28];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_195A56084()
{
  qword_1ED5DE068 = objc_alloc_init(IDSPairedDeviceManager);

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A562EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A563F4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[IDSPairedDeviceManager setAllowedTrafficClassifiers:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "%s: received new traffic classifiers %@", &v5, 0x16u);
  }

  objc_storeStrong((*(a1 + 40) + 48), *(a1 + 32));
  v4 = *MEMORY[0x1E69E9840];
}

void sub_195A56514()
{
  v0 = +[IDSDaemonController sharedInstance];
  [v0 dropAllMessagesWithoutAnyAllowedClassifier];
}

void sub_195A56640(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Received paired device info, sending to daemon for saving", v4, 2u);
  }

  v3 = +[IDSDaemonController sharedInstance];
  [v3 setPairedDeviceInfo:*(a1 + 32)];
}

void sub_195A568CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A5697C;
  v7[3] = &unk_1E743F110;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_195A56990(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69A6138];
  v4 = a2;
  v5 = [v3 registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[IDSPairedDeviceManager deletePairedDevice:withCompletionBlock:queue:]_block_invoke_4";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%s: device CBUUID: %@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A56B3C;
  v12[3] = &unk_1E743FC50;
  v13 = *(a1 + 48);
  v7 = [v4 pairingCollaboratorWithErrorHandler:v12];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A56B50;
  v10[3] = &unk_1E743FC50;
  v8 = *(a1 + 40);
  v11 = *(a1 + 48);
  [v7 deletePairedDeviceWithID:v8 completion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void sub_195A56D28(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A56DD8;
  v7[3] = &unk_1E743F110;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_195A56DEC(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A56EEC;
  v7[3] = &unk_1E743FC50;
  v8 = *(a1 + 32);
  v4 = [a2 pairedDeviceManagerCollaboratorWithErrorHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A56F68;
  v5[3] = &unk_1E74402B8;
  v6 = *(a1 + 32);
  [v4 getLocalDeviceInfoWithCompletion:v5];
}

void sub_195A56EEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2AF08();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195A56F68(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Received local device info from daemon, device: %@", &v10, 0xCu);
  }

  if (v6)
  {
    v8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B2AF70();
    }
  }

  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

void sub_195A5724C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A572FC;
  v7[3] = &unk_1E743F110;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_195A57310(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A57410;
  v7[3] = &unk_1E743FC50;
  v8 = *(a1 + 32);
  v4 = [a2 pairedDeviceManagerCollaboratorWithErrorHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A57490;
  v5[3] = &unk_1E74402B8;
  v6 = *(a1 + 32);
  [v4 getPairedDeviceInfoWithCompletion:v5];
}

void sub_195A57410(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B050();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195A57490(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Received paired device info from daemon, device: %@", &v10, 0xCu);
  }

  if (v6)
  {
    v8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B0B8();
    }
  }

  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

void sub_195A576C4(void *a1)
{
  v2 = [[_IDSCompletionHandler alloc] initWithHandler:a1[6] queue:a1[5]];
  v3 = a1[4];
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = +[IDSDaemonController sharedInstance];
  [v5 getDeliveryStats];
}

void sub_195A5790C(uint64_t a1)
{
  v1 = [*(a1 + 32) handler];
  v1[2](v1, 0);
}

void sub_195A57A3C(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v2[2](v2, *(a1 + 40));
}

void sub_195A57B6C(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A57C10;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 40);
  v4 = [a2 registrationCollaboratorWithErrorHandler:v5];
  [v4 constructRAResponseDictionaryForServices:*(a1 + 32) completionHandler:*(a1 + 40)];
}

void sub_195A57C10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B1A4();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195A57EF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_195A57F1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[IDSXPCDaemonController weakSharedInstance];
  [WeakRetained setDaemonController:v1];

  [WeakRetained _setupInterruptionHandler];
  [WeakRetained _setupXPC];
}

void sub_195A58044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195A58060(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained uuid];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "XPC interruption for client %@", &v5, 0xCu);
  }

  [WeakRetained _setupXPC];
  v4 = *MEMORY[0x1E69E9840];
}

void sub_195A58280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195A582A4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 offGridStateManagerCollaboratorWithErrorHandler:&unk_1F09E60A0];
    v5 = [WeakRetained uuid];
    [v4 setupOffGridStateManagerClient:WeakRetained withUUID:v5 completion:&unk_1F09E60C0];
  }
}

void sub_195A5834C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B20C();
  }
}

void sub_195A5858C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_195A585B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B274();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_195A58628(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B2DC();
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

void sub_195A58878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_195A5889C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B274();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_195A58914(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B344();
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

void sub_195A58AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A58AB8(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x19A8BBEF0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_195A58AEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v7 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 32) + 8) + 40));
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = MEMORY[0x19A8BBEF0](v7);
  if (v10)
  {
    (v10)[2](v10, a2, a3, v11);
  }
}

void sub_195A58D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v10 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 - 72));
  _Unwind_Resume(a1);
}

void sub_195A58D4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemonController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A58E1C;
  v7[3] = &unk_1E7440468;
  v4 = *(a1 + 64);
  v7[4] = *(a1 + 32);
  v9 = v4;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  [v3 performTask:v7];
}

void sub_195A58E1C(void *a1, void *a2)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A58F04;
  v10[3] = &unk_1E74403F0;
  v3 = a1[6];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = [a2 offGridStateManagerCollaboratorWithErrorHandler:v10];
  v6 = a1[4];
  v5 = a1[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A59048;
  v9[3] = &unk_1E7440440;
  v8 = a1[6];
  v7 = a1[7];
  v9[4] = v6;
  v9[5] = v8;
  [v4 setOffGridMode:v7 options:v5 completion:v9];
}

void sub_195A58F04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B20C();
  }

  v5 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = MEMORY[0x19A8BBEF0](v5);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A5902C;
    v10[3] = &unk_1E743F110;
    v12 = v8;
    v11 = v3;
    dispatch_async(v9, v10);
  }
}

void sub_195A59048(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v21 = a2;
    v22 = 2048;
    v23 = a3;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Submitted request to set offgrid mode. Current mode: %ld publish: %ld error: %@", buf, 0x20u);
  }

  v9 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = MEMORY[0x19A8BBEF0](v9);
  if (v12)
  {
    v13 = *(*(a1 + 32) + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195A591EC;
    v15[3] = &unk_1E7440418;
    v17 = v12;
    v18 = a2;
    v19 = a3;
    v16 = v7;
    dispatch_async(v13, v15);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_195A5941C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_195A59440(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B274();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_195A594B8(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 allObjects];
  [v2 addObjectsFromArray:v3];
}

void sub_195A596B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  objc_destroyWeak((v10 + 56));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  objc_destroyWeak((v11 - 72));
  _Unwind_Resume(a1);
}

void sub_195A596F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemonController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A597A4;
  v4[3] = &unk_1E7440558;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v3 performTask:v4];
}

void sub_195A597A4(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A59898;
  v6[3] = &unk_1E7440508;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v3 = [a2 offGridStateManagerCollaboratorWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A599E4;
  v4[3] = &unk_1E7440530;
  v5 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v4[4] = *(a1 + 32);
  [v3 invitedHandlesWithCompletion:v4];
}

void sub_195A59898(void *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B20C();
  }

  v5 = MEMORY[0x19A8BBEF0](*(*(a1[5] + 8) + 40));
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = MEMORY[0x19A8BBEF0](v5);
  if (v8)
  {
    v9 = *(a1[4] + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A599C4;
    block[3] = &unk_1E74404E0;
    v10 = v8;
    v11 = a1[6];
    v14 = v10;
    v15 = v11;
    v13 = v3;
    dispatch_async(v9, block);
  }
}

void sub_195A599E4(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Fetched invited handles %@ with error %@", buf, 0x16u);
  }

  if (!v6)
  {
    v8 = *(*(a1[5] + 8) + 40);
    v9 = [v5 allObjects];
    [v8 addObjectsFromArray:v9];
  }

  v10 = MEMORY[0x19A8BBEF0](*(*(a1[6] + 8) + 40));
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  v13 = MEMORY[0x19A8BBEF0](v10);
  if (v13)
  {
    v14 = *(a1[4] + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A59BB4;
    block[3] = &unk_1E74404E0;
    v15 = v13;
    v16 = a1[5];
    v20 = v15;
    v21 = v16;
    v19 = v6;
    dispatch_async(v14, block);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_195A59D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v12 + 72));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 - 72));
  _Unwind_Resume(a1);
}

void sub_195A59DB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained daemonController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A59EA8;
  v9[3] = &unk_1E7440620;
  v12 = *(a1 + 64);
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 performTask:v9];
}

void sub_195A59EA8(uint64_t a1, void *a2)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A59FC0;
  v12[3] = &unk_1E74405A8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = *(a1 + 64);
  v12[4] = v4;
  v13 = v5;
  v14 = *(a1 + 48);
  v6 = [a2 offGridStateManagerCollaboratorWithErrorHandler:v12];
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A5A180;
  v11[3] = &unk_1E74405F8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 64);
  v11[4] = *(a1 + 32);
  v11[5] = v10;
  [v6 inviteHandles:v7 fromSenderHandle:v9 withDictionaryPayload:v8 completion:v11];
}

void sub_195A59FC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B20C();
  }

  v5 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 56) + 8) + 40));
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = MEMORY[0x19A8BBEF0](v5);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A5A110;
    v10[3] = &unk_1E743F228;
    v14 = v8;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = v3;
    dispatch_async(v9, v10);
  }
}

void sub_195A5A110(void *a1)
{
  v2 = a1[7];
  v3 = [MEMORY[0x1E695DFD8] set];
  (*(v2 + 16))(v2, v3, a1[4], a1[5], a1[6]);
}

void sub_195A5A180(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v9;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Invited handles %@ with error %@", buf, 0x16u);
  }

  if (!v12)
  {
    v14 = *(*(a1 + 32) + 8);
    v15 = [v9 allObjects];
    [v14 addObjectsFromArray:v15];
  }

  v16 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  v19 = MEMORY[0x19A8BBEF0](v16);
  if (v19)
  {
    v20 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A5A3A0;
    block[3] = &unk_1E74405D0;
    v27 = v19;
    v23 = v9;
    v24 = v10;
    v25 = v11;
    v26 = v12;
    dispatch_async(v20, block);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_195A5A518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v10 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 - 56));
  _Unwind_Resume(a1);
}

void sub_195A5A548(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemonController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A5A610;
  v6[3] = &unk_1E7440698;
  v6[4] = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [v3 performTask:v6];
}

void sub_195A5A610(void *a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A5A6F8;
  v8[3] = &unk_1E74403F0;
  v3 = a1[6];
  v8[4] = a1[4];
  v8[5] = v3;
  v4 = [a2 offGridStateManagerCollaboratorWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A5A88C;
  v7[3] = &unk_1E7440670;
  v5 = a1[5];
  v6 = a1[6];
  v7[4] = a1[4];
  v7[5] = v6;
  [v4 removeInvitedHandles:v5 completion:v7];
}

void sub_195A5A6F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B20C();
  }

  v5 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = MEMORY[0x19A8BBEF0](v5);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A5A820;
    v10[3] = &unk_1E743F110;
    v12 = v8;
    v11 = v3;
    dispatch_async(v9, v10);
  }
}

void sub_195A5A820(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E695DFD8] set];
  (*(v2 + 16))(v2, v3, *(a1 + 32));
}

void sub_195A5A88C(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Removed invited handles %@ with error %@", buf, 0x16u);
  }

  if (v5 && !v6)
  {
    [*(*(a1 + 32) + 8) minusSet:v5];
  }

  v8 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = MEMORY[0x19A8BBEF0](v8);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A5AA50;
    block[3] = &unk_1E743F1D8;
    v17 = v11;
    v15 = v5;
    v16 = v6;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_195A5AB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_195A5ABCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained daemonController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A5AC70;
  v4[3] = &unk_1E74406E8;
  v5 = *(a1 + 32);
  [v3 performTask:v4];
}

void sub_195A5AC70(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A5AD50;
  v6[3] = &unk_1E74403F0;
  v7 = *(a1 + 32);
  v3 = [a2 offGridStateManagerCollaboratorWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A5AEE4;
  v4[3] = &unk_1E7440670;
  v5 = *(a1 + 32);
  [v3 removeAllInvitedHandlesWithCompletion:v4];
}

void sub_195A5AD50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B20C();
  }

  v5 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = MEMORY[0x19A8BBEF0](v5);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A5AE78;
    v10[3] = &unk_1E743F110;
    v12 = v8;
    v11 = v3;
    dispatch_async(v9, v10);
  }
}

void sub_195A5AE78(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E695DFD8] set];
  (*(v2 + 16))(v2, v3, *(a1 + 32));
}

void sub_195A5AEE4(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Removed all invited handles %@ with error %@", buf, 0x16u);
  }

  if (!v6)
  {
    [*(*(a1 + 32) + 8) removeAllObjects];
  }

  v8 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = MEMORY[0x19A8BBEF0](v8);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A5B0A0;
    block[3] = &unk_1E743F1D8;
    v17 = v11;
    v15 = v5;
    v16 = v6;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_195A5B1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v10 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 - 56));
  _Unwind_Resume(a1);
}

void sub_195A5B224(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained daemonController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A5B2D0;
  v4[3] = &unk_1E7440760;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  [v3 performTask:v4];
}

void sub_195A5B2D0(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A5B3B4;
  v7[3] = &unk_1E74403F0;
  v8 = *(a1 + 32);
  v3 = [a2 offGridStateManagerCollaboratorWithErrorHandler:v7];
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A5B548;
  v5[3] = &unk_1E7440738;
  v6 = *(a1 + 32);
  [v3 fetchContactsOfType:v4 completion:v5];
}

void sub_195A5B3B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B20C();
  }

  v5 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = MEMORY[0x19A8BBEF0](v5);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A5B4DC;
    v10[3] = &unk_1E743F110;
    v12 = v8;
    v11 = v3;
    dispatch_async(v9, v10);
  }
}

void sub_195A5B4DC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] array];
  (*(v2 + 16))(v2, v3, *(a1 + 32));
}

void sub_195A5B548(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Calling out to client completion in fetchContactsOfType", buf, 2u);
  }

  v8 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = MEMORY[0x19A8BBEF0](v8);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A5B6B0;
    block[3] = &unk_1E743F1D8;
    v16 = v11;
    v14 = v5;
    v15 = v6;
    dispatch_async(v12, block);
  }
}

void sub_195A5B7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_195A5B82C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained daemonController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A5B8D0;
  v4[3] = &unk_1E74406E8;
  v5 = *(a1 + 32);
  [v3 performTask:v4];
}

void sub_195A5B8D0(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A5B9B0;
  v6[3] = &unk_1E74403F0;
  v7 = *(a1 + 32);
  v3 = [a2 offGridStateManagerCollaboratorWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A5BAF4;
  v4[3] = &unk_1E74407D8;
  v5 = *(a1 + 32);
  [v3 fetchStewieAvailabilityWithCompletion:v4];
}

void sub_195A5B9B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B20C();
  }

  v5 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = MEMORY[0x19A8BBEF0](v5);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A5BAD8;
    v10[3] = &unk_1E743F110;
    v12 = v8;
    v11 = v3;
    dispatch_async(v9, v10);
  }
}

void sub_195A5BAF4(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = MEMORY[0x19A8BBEF0](v8);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A5BBFC;
    v13[3] = &unk_1E74407B0;
    v17 = a2;
    v15 = v11;
    v16 = a3;
    v14 = v7;
    dispatch_async(v12, v13);
  }
}

void sub_195A5BD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_195A5BD7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained daemonController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A5BE20;
  v4[3] = &unk_1E74406E8;
  v5 = *(a1 + 32);
  [v3 performTask:v4];
}

void sub_195A5BE20(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A5BF00;
  v6[3] = &unk_1E74403F0;
  v7 = *(a1 + 32);
  v3 = [a2 offGridStateManagerCollaboratorWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A5C03C;
  v4[3] = &unk_1E74403F0;
  v5 = *(a1 + 32);
  [v3 connectStewieWithCompletion:v4];
}

void sub_195A5BF00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B20C();
  }

  v5 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = MEMORY[0x19A8BBEF0](v5);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A5C028;
    v10[3] = &unk_1E743F110;
    v12 = v8;
    v11 = v3;
    dispatch_async(v9, v10);
  }
}

void sub_195A5C03C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x19A8BBEF0](v4);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195A5C130;
    v9[3] = &unk_1E743F110;
    v11 = v7;
    v10 = v3;
    dispatch_async(v8, v9);
  }
}

void sub_195A5C278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_195A5C2A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained daemonController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A5C34C;
  v4[3] = &unk_1E74406E8;
  v5 = *(a1 + 32);
  [v3 performTask:v4];
}

void sub_195A5C34C(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A5C42C;
  v6[3] = &unk_1E74403F0;
  v7 = *(a1 + 32);
  v3 = [a2 offGridStateManagerCollaboratorWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A5C568;
  v4[3] = &unk_1E74403F0;
  v5 = *(a1 + 32);
  [v3 disconnectStewieWithCompletion:v4];
}

void sub_195A5C42C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B2B20C();
  }

  v5 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = MEMORY[0x19A8BBEF0](v5);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A5C554;
    v10[3] = &unk_1E743F110;
    v12 = v8;
    v11 = v3;
    dispatch_async(v9, v10);
  }
}

void sub_195A5C568(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 40) + 8) + 40));
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x19A8BBEF0](v4);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195A5C65C;
    v9[3] = &unk_1E743F110;
    v11 = v7;
    v10 = v3;
    dispatch_async(v8, v9);
  }
}

void sub_195A5C8CC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) changedOffGridModeStatus:*(a1 + 48) currentState:*(a1 + 56) context:*(a1 + 40)];
}

void sub_195A5C924(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) offGridModeUpdated:*(a1 + 48) publishStatus:*(a1 + 56) context:*(a1 + 40)];
}

void sub_195A5CA5C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "contactInfoUpdated called for updated contacts: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  [v4 manager:*(a1 + 40) contactInfoUpdated:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

void sub_195A5D2D0(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _isPhoneCertificateVendorSupported];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 _scheduleTimeoutForPhoneAuthenticationCertificateRequestCompletionBlock:*(a1 + 40)];
    v5 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Client request to authenticate phone {uuid: %@}", &v9, 0xCu);
    }

    if (v4)
    {
      v6 = +[IDSDaemonController sharedInstance];
      [v6 authenticatePhoneWithRequestUUID:v4];
    }
  }

  else
  {
    v4 = [v3 _clientErrorForCode:-4000 underlyingError:0];
    v7 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Client requested authenticate phone on an unsupported platform -- failing request {clientError: %@}", &v9, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_195A5D530(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _isPhoneCertificateVendorSupported];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 _scheduleTimeoutForPhoneAuthenticationSignatureRequestCompletionBlock:*(a1 + 48)];
    v5 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Client request to generate phone authentication signature over data {uuid: %@}", &v9, 0xCu);
    }

    if (v4)
    {
      v6 = +[IDSDaemonController sharedInstance];
      [v6 generatePhoneAuthenticationSignatureOverData:*(a1 + 40) withRequestUUID:v4];
    }
  }

  else
  {
    v4 = [v3 _clientErrorForCode:-4000 underlyingError:0];
    v7 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Client requested phone authentication signature on an unsupported platform -- failing request {clientError: %@}", &v9, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_195A5D794(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _isPhoneCertificateVendorSupported];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 _scheduleTimeoutForCarrierTokenCompletionBlock:*(a1 + 48)];
    v5 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Client request for carrier token {uuid: %@}", &v12, 0xCu);
    }

    if (v4)
    {
      v6 = +[IDSDaemonController sharedInstance];
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "subscriptionSource")}];
      v8 = [*(a1 + 40) IMEI];
      v9 = [*(a1 + 40) carrierNonce];
      [v6 requestCarrierTokenForSubscriptionSource:v7 IMEI:v8 carrierNonce:v9 requestUUID:v4];
    }
  }

  else
  {
    v4 = [v3 _clientErrorForCode:-4000 underlyingError:0];
    v10 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Client requested carrier token on an unsupported platform -- failing request {clientError: %@}", &v12, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_195A5DC48(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && (v2 = [objc_alloc(MEMORY[0x1E69A51C0]) initWithDataRepresentation:*(a1 + 32)]) != 0)
  {
    v3 = v2;
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) _clientErrorForCode:-1000 underlyingError:*(a1 + 48)];
    v3 = 0;
  }

  v5 = [*(a1 + 40) daemonRequestTimer];
  v6 = [v5 invalidateTimeoutAndReturnHandlerForRequestID:*(a1 + 56)];

  v7 = [v6 block];
  v8 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 56);
    if (*(a1 + 32))
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = MEMORY[0x19A8BBEF0](v7);
    v13 = 138413314;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Received authenticate phone response from daemon {uuid: %@, phoneCertificateData: %@, handler: %@, completion: %@, clientError: %@}", &v13, 0x34u);
  }

  if (v7)
  {
    (v7)[2](v7, v3, v4);
  }

  [*(a1 + 40) _updateSelfRetentionBasedOnInFlightRequestCount];

  v12 = *MEMORY[0x1E69E9840];
}

void sub_195A5DFAC(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) __imArrayByApplyingBlock:&unk_1F09E60E0];
  if (![v2 count])
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = -1000;
    goto LABEL_7;
  }

  if (!*(a1 + 56) || !*(a1 + 64))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = -2000;
LABEL_7:
    v4 = [v5 _clientErrorForCode:v7 underlyingError:v6];
    v3 = 0;
    goto LABEL_8;
  }

  v3 = [[IDSAuthenticationSigningResult alloc] initWithSubscriptionIdentifiers:*(a1 + 72) authenticationCertificates:v2 inputData:*(a1 + 80) nonce:*(a1 + 64) signature:*(a1 + 56)];
  v4 = 0;
LABEL_8:
  v8 = [(IDSAuthenticationSigningResult *)v3 authenticationCertificateSignatures];
  v9 = [v8 count];

  if (!v9 && !v4)
  {
    v4 = [*(a1 + 40) _clientErrorForCode:-900 underlyingError:*(a1 + 48)];
  }

  v10 = [*(a1 + 40) daemonRequestTimer];
  v11 = [v10 invalidateTimeoutAndReturnHandlerForRequestID:*(a1 + 88)];

  v12 = [v11 block];
  v13 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 88);
    if (*(a1 + 56))
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = MEMORY[0x19A8BBEF0](v12);
    v18 = 138413570;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v3;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v16;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Received phone authentication signature response from daemon {uuid: %@, signature: %@, signingResult: %@, handler: %@, completion: %@, clientError: %@}", &v18, 0x3Eu);
  }

  if (v12)
  {
    (v12)[2](v12, v3, v4);
  }

  [*(a1 + 40) _updateSelfRetentionBasedOnInFlightRequestCount];

  v17 = *MEMORY[0x1E69E9840];
}

id sub_195A5E1F4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = MEMORY[0x1E69A51C0];
    v3 = a2;
    v4 = [[v2 alloc] initWithDataRepresentation:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_195A5E358(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) _clientErrorForCode:-1100 underlyingError:*(a1 + 48)];
  }

  v3 = [*(a1 + 40) daemonRequestTimer];
  v4 = [v3 invalidateTimeoutAndReturnHandlerForRequestID:*(a1 + 56)];

  v5 = [v4 block];
  v6 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 56);
    if (*(a1 + 32))
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = MEMORY[0x19A8BBEF0](v5);
    v12 = 138413314;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v2;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Received carrier token response from daemon {uuid: %@, carrierToken: %@, handler: %@, completion: %@, clientError: %@}", &v12, 0x34u);
  }

  if (v5)
  {
    if (*(a1 + 32))
    {
      v10 = [[IDSCarrierToken alloc] initWithTokenString:*(a1 + 32)];
    }

    else
    {
      v10 = 0;
    }

    (v5)[2](v5, v10, v2);
  }

  [*(a1 + 40) _updateSelfRetentionBasedOnInFlightRequestCount];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A5E69C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x19A8BBEF0](*(a1 + 40));
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Timed out phone authentication signature request -- calling completion block with timeout error {completionBlock: %@}", &v8, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [*(a1 + 32) _clientErrorForCode:-3000 underlyingError:0];
    (*(v4 + 16))(v4, 0, v5);
  }

  result = [*(a1 + 32) _updateSelfRetentionBasedOnInFlightRequestCount];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195A5E8DC(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x19A8BBEF0](*(a1 + 40));
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Timed out phone authentication certificate request -- calling completion block with timeout error {completionBlock: %@}", &v8, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [*(a1 + 32) _clientErrorForCode:-3000 underlyingError:0];
    (*(v4 + 16))(v4, 0, v5);
  }

  result = [*(a1 + 32) _updateSelfRetentionBasedOnInFlightRequestCount];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195A5EB1C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x19A8BBEF0](*(a1 + 40));
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Timed out phone carrier token operation -- calling completion block with timeout error {completionBlock: %@}", &v8, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [*(a1 + 32) _clientErrorForCode:-3000 underlyingError:0];
    (*(v4 + 16))(v4, 0, v5);
  }

  result = [*(a1 + 32) _updateSelfRetentionBasedOnInFlightRequestCount];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195A5ED68(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E695DEF0];
  v6 = a3;
  v8 = [a2 tokenString];
  v7 = [v5 __imDataWithHexString:v8];
  (*(v4 + 16))(v4, v7, v6);
}

void sub_195A5EEC0(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _isPhoneCertificateVendorSupported];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 _scheduleTimeoutForPhoneSubscriptionSourceCompletionBlock:*(a1 + 40)];
    v5 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Client request to set current phone subscription source {uuid: %@}", &v10, 0xCu);
    }

    if (v4)
    {
      v6 = +[IDSDaemonController sharedInstance];
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
      [v6 setPhoneUserSubscriptionSource:v7 withRequestUUID:v4];
    }
  }

  else
  {
    v4 = [v3 _clientErrorForCode:-4000 underlyingError:0];
    v8 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Client requested to set current phone user subscription source on an unsupported platform -- failing request {clientError: %@}", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_195A5F120(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _isPhoneCertificateVendorSupported];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 _scheduleTimeoutForPhoneSubscriptionSourceCompletionBlock:*(a1 + 40)];
    v5 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Client request for current phone subscription source {uuid: %@}", &v9, 0xCu);
    }

    if (v4)
    {
      v6 = +[IDSDaemonController sharedInstance];
      [v6 fetchPhoneUserSubscriptionSourceWithRequestUUID:v4];
    }
  }

  else
  {
    v4 = [v3 _clientErrorForCode:-4000 underlyingError:0];
    v7 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Client requested current phone user subscription source on an unsupported platform -- failing request {clientError: %@}", &v9, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A5F4BC()
{
  result = MEMORY[0x19A8BAE00](@"FTSelectedPNRSubscription", @"FTServices");
  qword_1EAEDC0F0 = result;
  return result;
}

uint64_t sub_195A5F624(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x19A8BBEF0](*(a1 + 40));
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Timed out phone subscription source operation -- calling completion block with timeout error {completionBlock: %@}", &v8, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [*(a1 + 32) _clientErrorForCode:-3000 underlyingError:0];
    (*(v4 + 16))(v4, 0, v5);
  }

  result = [*(a1 + 32) _updateSelfRetentionBasedOnInFlightRequestCount];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195A5F82C(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) _clientErrorForCode:-900 underlyingError:*(a1 + 48)];
  }

  v3 = [*(a1 + 40) daemonRequestTimer];
  v4 = [v3 invalidateTimeoutAndReturnHandlerForRequestID:*(a1 + 56)];

  v5 = [v4 block];
  v6 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = MEMORY[0x19A8BBEF0](v5);
    v11 = 138413314;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v2;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Received response after setting current phone user subscription from daemon {uuid: %@, subscriptionSource: %@, handler: %@, completion: %@, clientError: %@}", &v11, 0x34u);
  }

  if (v5)
  {
    (v5)[2](v5, [*(a1 + 32) integerValue], v2);
  }

  [*(a1 + 40) _updateSelfRetentionBasedOnInFlightRequestCount];

  v10 = *MEMORY[0x1E69E9840];
}

void sub_195A5FABC(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) _clientErrorForCode:-900 underlyingError:*(a1 + 48)];
  }

  v3 = [*(a1 + 40) daemonRequestTimer];
  v4 = [v3 invalidateTimeoutAndReturnHandlerForRequestID:*(a1 + 56)];

  v5 = [v4 block];
  v6 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = MEMORY[0x19A8BBEF0](v5);
    v11 = 138413314;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v2;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Received current phone user subscription response from daemon {uuid: %@, subscriptionSource: %@, handler: %@, completion: %@, clientError: %@}", &v11, 0x34u);
  }

  if (v5)
  {
    (v5)[2](v5, [*(a1 + 40) _subscriptionSourceFromIntegerValue:{objc_msgSend(*(a1 + 32), "integerValue")}], v2);
  }

  [*(a1 + 40) _updateSelfRetentionBasedOnInFlightRequestCount];

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A5FF6C(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  return (*(a1[5] + 16))();
}

void sub_195A60A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_195A60A24(uint64_t *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = &qword_1ED5DE000;
  v3 = (a1 + 4);
  v4 = [qword_1ED5DE018 objectForKey:a1[4]];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(a1[6] + 8) + 40))
  {
    *(*(a1[7] + 8) + 24) = 1;
    v7 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_195B2B768((a1 + 6), a1 + 4, v7);
    }
  }

  if (![*v3 length])
  {
    v8 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B800(v8);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v9 = [[_IDSAccountController alloc] initWithService:a1[4] delegateContext:a1[5]];
    v10 = a1[5];
    v11 = *(v10 + 8);
    *(v10 + 8) = v9;

    v12 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = a1[5];
      *buf = 138412290;
      v34 = v13;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_INFO, "Couldn't find existing IDSAccountController adding new one %@", buf, 0xCu);
    }

    v14 = qword_1ED5DE018;
    if (!qword_1ED5DE018)
    {
      v15 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v16 = qword_1ED5DE018;
      qword_1ED5DE018 = v15;

      v14 = qword_1ED5DE018;
    }

    [v14 setObject:a1[5] forKey:a1[4]];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = qword_1ED5DE018;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v18)
    {
      v20 = v18;
      v21 = *v30;
      *&v19 = 138412546;
      v28 = v19;
      do
      {
        v22 = 0;
        do
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v29 + 1) + 8 * v22);
          v24 = [IDSLogging IDSAccountController:v28];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            [v2[3] objectForKey:v23];
            v26 = v25 = v2;
            *buf = v28;
            v34 = v23;
            v35 = 2048;
            v36 = v26;
            _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_INFO, "    %@ -> %p", buf, 0x16u);

            v2 = v25;
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v20);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_195A61154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A6116C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) accounts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A612E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A61300(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) enabledAccounts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A6147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A61494(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) serviceName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A61664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A6167C(void *a1)
{
  v2 = [*(a1[4] + 8) accountWithLoginID:a1[5] service:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A61824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A6183C(void *a1)
{
  v2 = [*(a1[4] + 8) accountWithUniqueID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_195A619B4(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  return MEMORY[0x1EEE66B58](*(a1[4] + 8), sel_setupAccountWithLoginID_aliases_password_completionHandler_);
}

uint64_t sub_195A61AD0(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  return MEMORY[0x1EEE66B58](*(a1[4] + 8), sel_setupAccountWithLoginID_password_completionHandler_);
}

void sub_195A61C7C(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v4 isEqual:*MEMORY[0x1E69A4920]];
  v7 = [MEMORY[0x1E69A6138] registration];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v13) = 0;
      v9 = "  => password : REDACTED";
      v10 = v7;
      v11 = 2;
LABEL_6:
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    }
  }

  else if (v8)
  {
    v13 = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v9 = "  => %@ : %@";
    v10 = v7;
    v11 = 22;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A61D9C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  return MEMORY[0x1EEE66B58](*(a1[4] + 8), sel_setupAccountWithSetupParameters_aliases_completionHandler_);
}

void sub_195A64728(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 _stripFZIDPrefix];
  v5 = [v4 isEqual:*(*(a1 + 32) + 64)];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 154)];
    if (v6)
    {
      CFDictionarySetValue(*(a1 + 40), v3, v6);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_195B2C610();
    }

    v7 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 154))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "currentURL: %@, _isLightweightParticipant: %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_195A64C1C(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 _stripFZIDPrefix];
  v5 = [v4 isEqual:*(*(a1 + 32) + 64)];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 154)];
    if (v6)
    {
      CFDictionarySetValue(*(a1 + 40), v3, v6);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_195B2C610();
    }

    v7 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 154))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "currentURL: %@, _isLightweightParticipant: %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_195A654D4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[IDSLogging _IDSGroupSession_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "%@ joinWithOptions: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_195A65590(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = WeakRetained[3];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Disable callScreening mode for session: %@, due to default.", &v5, 0xCu);
  }

  [WeakRetained setCallScreeningMode:0];
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A65658(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  return MEMORY[0x1EEE66B58](a2, sel_joinGroupSession_withOptions_);
}

void sub_195A65EC4(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A278];
  v7[0] = @"No participants provided.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.identityservices.error" code:0 userInfo:v3];

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void sub_195A65FA8(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A278];
  v7[0] = @"GroupSession is invalidated.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.identityservices.error" code:0 userInfo:v3];

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A661C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  return MEMORY[0x1EEE66B58](a2, sel_registerPluginForGroup_options_);
}

uint64_t sub_195A66304(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  return MEMORY[0x1EEE66B58](a2, sel_unregisterPluginForGroup_options_);
}

uint64_t sub_195A6685C(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isGeneratedLocally];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_195A67434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A6744C(void *a1, void *a2, _BYTE *a3)
{
  v5 = [a2 unsignedLongLongValue];
  v6 = a1[4];
  result = IDSIDAliasHashUInt64();
  if (result == a1[6])
  {
    *(*(a1[5] + 8) + 24) = v5;
    *a3 = 1;
  }

  return result;
}

void sub_195A67DD4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[IDSLogging _IDSGroupSession_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Session %@ full received report: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_195A67E90(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didReceiveReport:*(a1 + 40)];
  }
}

void sub_195A680C8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 groupSessionDidInitialize:v3 error:*(a1 + 40)];
  }
}

void sub_195A68310(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 groupSessionDidTerminate:v3];
  }
}

void sub_195A68554(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 groupSessionDidConnectUnderlyingLinks:v3];
  }
}

void sub_195A68798(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 groupSessionDidDisconnectUnderlyingLinks:v3];
  }
}

void sub_195A68A48(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 groupSessionEnded:v3 withReason:*(a1 + 48) error:*(a1 + 40)];
  }
}

void sub_195A68DA0(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[IDSLogging _IDSGroupSession_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Group session %@, existing participants for did join %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_195A68E5C(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 8) object];
    [v4 sessionDidJoinGroup:v3 participantInfo:a1[5] error:a1[6]];
  }
}

void sub_195A691B8(uint64_t a1, void *a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(*(a1 + 32) + 8) object];
    [v3 sessionDidJoinGroup:v4 participantUpdate:*(a1 + 40) error:*(a1 + 48)];
  }

  else if (objc_opt_respondsToSelector())
  {
    v11[0] = *MEMORY[0x1E69A4D90];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "participantIdentifier")}];
    v12[0] = v5;
    v11[1] = *MEMORY[0x1E69A4D88];
    v6 = [*(a1 + 40) participantData];
    v12[1] = v6;
    v11[2] = *MEMORY[0x1E69A4DB0];
    v7 = [*(a1 + 40) relaySessionID];
    v12[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

    v9 = [*(*(a1 + 32) + 8) object];
    [v3 sessionDidJoinGroup:v9 participantInfo:v8 error:*(a1 + 48)];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_195A69564(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 sessionDidLeaveGroup:v3 error:*(a1 + 40)];
  }
}

void sub_195A697FC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 participantDidJoinGroupWithInfo:*(a1 + 40)];
  }
}

void sub_195A69A94(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 participantDidLeaveGroupWithInfo:*(a1 + 40)];
  }
}

void sub_195A69F28(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[IDSLogging _IDSGroupSession_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "didReceiveActiveParticipants: %@ for group session: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_195A69FE4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didReceiveActiveParticipants:*(a1 + 40) success:*(a1 + 48)];
  }
}

void sub_195A6A47C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[IDSLogging _IDSGroupSession_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "didReceiveActiveLightweightParticipants: %@ for group session: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_195A6A538(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didReceiveActiveLightweightParticipants:*(a1 + 40) success:*(a1 + 48)];
  }
}

void sub_195A6A824(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didRegisterPluginAllocationInfo:*(a1 + 40)];
  }
}

void sub_195A6AB0C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didUnregisterPluginAllocationInfo:*(a1 + 40)];
  }
}

void sub_195A6ADDC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didReceiveBlockedParticipantIDs:*(a1 + 40) withCode:*(a1 + 48) withType:*(a1 + 52) isTruncated:*(a1 + 54)];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didReceiveBlockedParticipantIDs:*(a1 + 40) withCode:*(a1 + 48) isTruncated:*(a1 + 54)];
  }

LABEL_6:
}

void sub_195A6B0EC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didReceiveQueryBlockedParticipantIDs:*(a1 + 40) withCode:*(a1 + 48) isTruncated:*(a1 + 52)];
  }
}

void sub_195A6B3B4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didRemoveParticipantIDs:*(a1 + 40) withCode:*(a1 + 48) isTruncated:*(a1 + 52)];
  }
}

void sub_195A6B5E8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 rejectedKeyRecoveryRequestFromURI:*(a1 + 40) reason:*(a1 + 48)];
  }
}

void sub_195A6B988(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 sessiondidReceiveKeyUpdate:v3];
  }
}

void sub_195A6BEC0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 sessionDidReceiveParticipantUpgrade:v3 participantType:*(a1 + 48) error:*(a1 + 40)];
  }
}

void sub_195A6C1FC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 sessionDidReceiveParticipantUpgrade:v3 participantType:*(a1 + 56) requestIdentifier:*(a1 + 48) error:*(a1 + 40)];
  }
}

void sub_195A6C490(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 8) object];
    [v4 session:v3 didReceiveJoinedParticipantID:a1[6] withContext:a1[5]];
  }
}

void sub_195A6C720(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 8) object];
    [v4 session:v3 didReceiveParticipantUpdateParticipantID:a1[6] withContext:a1[5]];
  }
}

void sub_195A6C9B0(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 8) object];
    [v4 session:v3 didReceiveLeftParticipantID:a1[6] withContext:a1[5]];
  }
}

void sub_195A6CC58(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didReceiveParticipantIDs:*(a1 + 40) withCode:*(a1 + 48) managementType:*(a1 + 52)];
  }
}

void sub_195A6D098(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 participantUpdatedForSession:v3];
  }
}

void sub_195A6D674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_195A6D6A4(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 first];
  v9 = [v8 isEqual:a1[4]];

  if (v9)
  {
    v10 = [v7 second];
    v11 = *(a1[5] + 88);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195A6D7B0;
    v14[3] = &unk_1E7440988;
    v12 = a1[8];
    v15 = v10;
    v16 = v12;
    v13 = v10;
    dispatch_async(v11, v14);
    *(*(a1[6] + 8) + 24) = 1;
    *(*(a1[7] + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_195A6DA1C(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 8) object];
    [v4 session:v3 didReceiveDataBlob:a1[5] forParticipant:a1[6]];
  }
}

void sub_195A6DD0C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didReceiveData:*(a1 + 40) dataType:*(a1 + 56) forParticipant:*(a1 + 48)];
  }
}

void sub_195A6DF74(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didReceiveServerErrorCode:*(a1 + 40)];
  }
}

void sub_195A6E6C0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 groupContext];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_195A6E94C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E69956C0]);
  v5 = *(a1 + 32);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v4 initWithInput:v5 initialValue:v6];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A6EAC0;
  v14[3] = &unk_1E7440C58;
  v14[4] = *(a1 + 40);
  v15 = v3;
  v8 = v3;
  [v7 setReducerBlock:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A6EC3C;
  v11[3] = &unk_1E7440C80;
  v10 = *(a1 + 32);
  v9 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v13 = *(a1 + 48);
  [v7 reduceWithCompletion:v11];
}

void sub_195A6EAC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  v5 = *(a1 + 40);
  v6 = [v3 currentItem];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A6EB98;
  v8[3] = &unk_1E7440C30;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  [v5 fetchGroupWithGroupID:v6 completion:v8];
}

void sub_195A6EB98(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  if (v7)
  {
    v4 = [*(a1 + 40) currentResult];
    [v4 addObject:v7];
  }

  v5 = *(a1 + 40);
  v6 = [v5 currentResult];
  [v5 continueWithResult:v6];
}

void sub_195A6EC3C(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  v5 = [v3 state];
  if (!v5)
  {
    v11 = [MEMORY[0x1E699BB90] groupContext];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v3 value];
      v16 = 134217984;
      v17 = [v12 count];
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_INFO, "Fetched groups with success {groups.count: %ld}", &v16, 0xCu);
    }

    v13 = [MEMORY[0x1E699BB90] groupContext];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_195B2E66C(v3, v13);
    }

    v14 = *(a1 + 48);
    v10 = [v3 value];
    (*(v14 + 16))(v14, v10, 0);
    goto LABEL_11;
  }

  if (v5 == 1)
  {
    v6 = [MEMORY[0x1E699BB90] groupContext];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 error];
      v8 = *(a1 + 40);
      v16 = 138543619;
      v17 = v7;
      v18 = 2113;
      v19 = v8;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Failed to fetch groups {error: %{public}@, groupIDs: %{private}@}", &v16, 0x16u);
    }

    v9 = *(a1 + 48);
    v10 = [v3 error];
    (*(v9 + 16))(v9, 0, v10);
LABEL_11:
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_195A6EF64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  (*(*(a1 + 40) + 16))();
}

void sub_195A6F100(uint64_t a1, void *a2)
{
  v3 = [a2 cloudKitContainer];
  v4 = [v3 transportLog];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A6F1BC;
  v6[3] = &unk_1E7440CF8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 fetchChangesSinceToken:v5 completion:v6];
}

void sub_195A6F1BC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = MEMORY[0x1E699BB90];
  v9 = a5;
  v10 = a4;
  v11 = a2;
  v12 = [v8 groupContext];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_INFO, "Fetched messages from transport log", v13, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195A6F418(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E699BB90] groupContext];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Account identity for task handler - failed to get content - fail {error: %{public}@}", &v15, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) delegate];
    v9 = [v8 groupContextController:*(a1 + 32) accountsForAlises:*(a1 + 40)];

    v10 = [IDSTransactionLogTaskHandlerAccountInfo alloc];
    v11 = [v5 accountIdentity];
    v12 = [*(a1 + 32) serviceName];
    v13 = [(IDSTransactionLogTaskHandlerAccountInfo *)v10 initWithAccountIdentity:v11 aliasToAccountsMap:v9 serviceName:v12];

    (*(*(a1 + 48) + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_195A6F684(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A6F724;
  v3[3] = &unk_1E7440D70;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 groupContextWithCompletion:v3];
}

uint64_t sub_195A6F724(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel__didCreateGroup_completion_);
}

void sub_195A6F808(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A6F8A8;
  v3[3] = &unk_1E7440D70;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 groupContextWithCompletion:v3];
}

uint64_t sub_195A6F8A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel__didCacheGroup_completion_);
}

void sub_195A6F9B4(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A6FA68;
  v3[3] = &unk_1E7440CA8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 groupContextWithCompletion:v3];
}

uint64_t sub_195A6FA68(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  return MEMORY[0x1EEE66B58](a2, sel__didUpdateGroup_withNewGroup_completion_);
}

void sub_195A6FB50(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A6FBF0;
  v3[3] = &unk_1E7440D70;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 groupContextWithCompletion:v3];
}

uint64_t sub_195A6FBF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel__didReceiveDecryptionFailureForGroup_completion_);
}

uint64_t sub_195A6FC84(uint64_t a1)
{
  v2 = [MEMORY[0x1E699BB90] groupContext];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Registration identities updated - clearing client cache", v4, 2u);
  }

  return [*(a1 + 32) setSeal:0];
}

void sub_195A70054(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) object];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 delegate];
    [v5 groupContextController:*(a1 + 40) didCreateGroup:v6];
  }
}

void sub_195A701D4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 state];
  if (v3 == 1)
  {
    v5 = [v6 error];
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v5);
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 32);
    v5 = [v6 value];
    (*(v4 + 16))(v4, v5, 0);
  }

LABEL_6:
}

void sub_195A71978(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 72))
  {
    v4 = *(v2 + 40);
    v5 = a2;
    v6 = [v4 _internal];
    v7 = [v6 serviceName];

    if ([v7 isEqualToIgnoringCase:@"com.apple.private.alloy.pbbridge"])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v7 isEqualToIgnoringCase:@"com.apple.private.alloy.accountssync"];
    }

    v9 = [*(a1 + 32) daemonController];
    v10 = [v9 setCapabilities:*(*(a1 + 32) + 72) forListenerID:*(*(a1 + 32) + 56) shouldLog:v8];

    v11 = [*(a1 + 32) daemonController];
    [v11 addedDelegateForService:v7 withCompletion:v5];

    if (v8)
    {
      v12 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = *(v13 + 72);
        v15 = @"NO";
        v16 = *(v13 + 56);
        if (v10)
        {
          v15 = @"YES";
        }

        v18[0] = 67109634;
        v18[1] = v14;
        v19 = 2112;
        v20 = v16;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "setCapabilities %u  %@, result = %@", v18, 0x1Cu);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

id sub_195A72124(uint64_t a1)
{
  if (*(a1 + 72))
  {
    if (*(a1 + 80) == 1)
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        (*(v2 + 16))(v2, 0);
      }
    }

    v3 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
    if (*(a1 + 81) == 1)
    {
      v4 = *(a1 + 64);
      if (v4)
      {
        (*(v4 + 16))(v4, 0);
      }
    }
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  v7 = *(a1 + 32);
  v8 = objc_opt_self();
  v9 = *(a1 + 40);
  return objc_opt_self();
}

void sub_195A76ACC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 16) object];
    [v4 connection:v3 isActiveChanged:*(a1 + 40)];
  }
}

void sub_195A76C50(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 16) object];
    [v4 connection:v3 devicesChanged:*(a1 + 40)];
  }
}

void sub_195A76DD4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 16) object];
    [v4 connection:v3 nearbyDevicesChanged:*(a1 + 40)];
  }
}

void sub_195A76F58(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 16) object];
    [v4 connection:v3 connectedDevicesChanged:*(a1 + 40)];
  }
}

void sub_195A77778(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(*(a1 + 32) + 16) object];
    [v3 connection:v4 messageIdentifier:*(a1 + 40) alternateCallbackID:*(a1 + 48) updatedWithResponseCode:*(a1 + 72) error:*(a1 + 56) lastCall:*(a1 + 80) messageContext:*(a1 + 64)];

    v5 = +[IDSTransportLog IDSConnection];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 40);
      *buf = 138412802;
      v16 = v7;
      v17 = 2048;
      v18 = v3;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "  => <%@:%p> finished handling message guid: %@  (connection:messageIdentifier:alternateCallbackID:updatedWithResponseCode:error:lastCall:)", buf, 0x20u);
    }
  }

  if (*(a1 + 80) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [*(*(a1 + 32) + 16) object];
    [v3 connection:v9 identifier:*(a1 + 40) didSendWithSuccess:*(a1 + 81) error:*(a1 + 56) context:*(a1 + 64)];

    v10 = +[IDSTransportLog IDSConnection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = *(a1 + 40);
      *buf = 138412802;
      v16 = v12;
      v17 = 2048;
      v18 = v3;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "  => <%@:%p> finished handling message guid: %@  (connection:identifier:didSendWithSuccess:error:context:)", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_195A77C84(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1[4] + 16) object];
    [v3 connection:v4 identifier:a1[5] alternateCallbackID:a1[6] willSendToDestinations:a1[7] skippedDestinations:a1[8] registrationPropertyToDestinations:a1[9]];

    v5 = +[IDSTransportLog IDSConnection];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = a1[5];
      v10 = 138412802;
      v11 = v7;
      v12 = 2048;
      v13 = v3;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "  => <%@:%p> finished handling message guid: %@  (connection:identifier:alternateCallbackID:willSendToDestinations:skippedDestinations:registrationPropertyToDestinations:)", &v10, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_195A78190(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 identifier:a1[5] fromURI:a1[6] hasBeenDeliveredWithContext:a1[7]];
  }
}

void sub_195A78210(uint64_t a1)
{
  if (*(a1 + 32) || *(a1 + 40))
  {
    v8 = [*(a1 + 48) daemonController];
    v2 = *(a1 + 32);
    v3 = *(a1 + 56);
    v4 = [*(*(a1 + 48) + 40) _internal];
    v5 = [v4 uniqueID];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 64) priority];
    [v8 acknowledgeMessageWithStorageGUID:v2 realGUID:v3 forAccountWithUniqueID:v5 broadcastTime:v6 messageSize:0 priority:v7 broadcastID:objc_msgSend(*(a1 + 64) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 64), "connectionType")}];
  }
}

void sub_195A78520(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 didSendOpportunisticDataWithIdentifier:a1[5] toIDs:a1[6]];
  }
}

void sub_195A7877C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 16) object];
    [v4 connection:v3 didCancelMessageWithSuccess:*(a1 + 56) error:*(a1 + 40) identifier:*(a1 + 48)];
  }
}

void sub_195A792D4(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 incomingOpportunisticData:a1[5] withIdentifier:a1[6] fromURI:a1[7] context:a1[8]];
  }
}

void sub_195A79B40(_Unwind_Exception *a1)
{
  os_activity_scope_leave((v1 - 232));
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195A79BA0(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 incomingMessage:a1[5] fromURI:a1[6]];
  }
}

void sub_195A79C1C(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 incomingMessage:a1[5] fromURI:a1[6] context:a1[7]];
  }
}

void sub_195A79C9C(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 incomingTopLevelMessage:a1[5] fromURI:a1[6] messageContext:a1[7]];
  }
}

void sub_195A79D1C(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 81) == 1)
    {
      v2 = [*(a1 + 32) directMessageConnection];
      [v2 sendAppAckWithGUID:*(a1 + 40)];
    }

    else
    {
      v3 = [*(a1 + 48) connectionType];
      v2 = [*(a1 + 32) daemonController];
      v4 = *(a1 + 40);
      v5 = [*(a1 + 56) prefixedURI];
      v6 = [*(*(a1 + 32) + 40) _internal];
      v7 = [v6 uniqueID];
      [v2 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v7 connectionType:v3];
    }
  }

  if ((*(a1 + 81) & 1) == 0 && (*(a1 + 64) || *(a1 + 72)))
  {
    v14 = [*(a1 + 32) daemonController];
    v8 = [*(a1 + 48) storageGuid];
    v9 = [*(a1 + 48) outgoingResponseIdentifier];
    v10 = [*(*(a1 + 32) + 40) _internal];
    v11 = [v10 uniqueID];
    v12 = *(a1 + 72);
    v13 = [*(a1 + 48) priority];
    [v14 acknowledgeMessageWithStorageGUID:v8 realGUID:v9 forAccountWithUniqueID:v11 broadcastTime:v12 messageSize:0 priority:v13 broadcastID:objc_msgSend(*(a1 + 48) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 48), "connectionType")}];
  }
}

void sub_195A7A294(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 16) object];
    [v4 connection:v3 incomingBatchMessage:*(a1 + 40)];
  }
}

void sub_195A7A924(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 incomingData:a1[5] fromURI:a1[6] context:a1[7]];
  }
}

void sub_195A7A9A4(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 89) == 1)
    {
      v2 = [*(a1 + 32) directMessageConnection];
      [v2 sendAppAckWithGUID:*(a1 + 40)];
    }

    else
    {
      v3 = [*(a1 + 48) connectionType];
      v2 = [*(a1 + 32) daemonController];
      v4 = *(a1 + 40);
      v5 = [*(a1 + 56) prefixedURI];
      v6 = [*(*(a1 + 32) + 40) _internal];
      v7 = [v6 uniqueID];
      [v2 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v7 connectionType:v3];
    }
  }

  if ((*(a1 + 89) & 1) == 0 && (*(a1 + 64) || *(a1 + 72)))
  {
    v15 = [*(a1 + 32) daemonController];
    v8 = [*(a1 + 48) storageGuid];
    v9 = [*(a1 + 48) outgoingResponseIdentifier];
    v10 = [*(*(a1 + 32) + 40) _internal];
    v11 = [v10 uniqueID];
    v12 = *(a1 + 72);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 80), "length")}];
    v14 = [*(a1 + 48) priority];
    [v15 acknowledgeMessageWithStorageGUID:v8 realGUID:v9 forAccountWithUniqueID:v11 broadcastTime:v12 messageSize:v13 priority:v14 broadcastID:objc_msgSend(*(a1 + 48) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 48), "connectionType")}];
  }
}