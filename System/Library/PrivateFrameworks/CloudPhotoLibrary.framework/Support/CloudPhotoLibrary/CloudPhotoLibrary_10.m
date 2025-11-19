id sub_1001B5758(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = sub_100139904();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = 100;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to get a non empty batch after getting %lu batches from the pull queue - will continue to look for one", &v5, 0xCu);
    }
  }

  return [*(a2 + 32) getChangeBatchWithCompletionHandler:*(a2 + 40)];
}

void sub_1001B5820(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100139904();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10013BE4C(&_mh_execute_header, v3, v4, "Engine is returning a nil library version but no error. This is a bug", v5, v6, v7, v8, 0);
    }
  }

  v9 = +[CPLErrors missingError];
  [a1 setError:v9];
}

void sub_1001B58D8(const char *a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a1);
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ called too many times", buf, 0xCu);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectChangeSession.m"];
  v8 = NSStringFromSelector(a1);
  [v6 handleFailureInMethod:a1 object:a2 file:v7 lineNumber:169 description:{@"%@ called too many times", v8}];

  abort();
}

uint64_t sub_1001B59E8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10013D210();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      if (*(*(a1 + 32) + 49))
      {
        v3 = "some changes";
      }

      else
      {
        v3 = "no changes";
      }

      *buf = 136315138;
      v29 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Finalized push session and %s were pushed by the client", buf, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  if (*(v4 + 49) == 1 && *(v4 + 50) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 65));
    v6 = [WeakRetained syncManager];
    v7 = [v6 lastError];
    v8 = [v7 isCPLErrorWithCode:30];

    if (v8)
    {
      v9 = objc_loadWeakRetained((*(a1 + 32) + 73));
      v10 = [v9 scopes];

      v11 = objc_alloc_init(NSMutableArray);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = *(*(a1 + 32) + 97);
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            v18 = [v10 scopeWithIdentifier:{v17, v23}];
            if (v18 && [v10 valueForFlag:2 forScope:v18])
            {
              [v11 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }

      if ([v11 count])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v19 = sub_10013D210();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v11 componentsJoinedByString:{@", "}];
            *buf = 138412290;
            v29 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Resetting scheduler back-off to try to move %@ under quota", buf, 0xCu);
          }
        }

        v21 = objc_loadWeakRetained((*(a1 + 32) + 89));
        [v21 resetBackoffInterval];
      }
    }
  }

  return 1;
}

void sub_1001B5D24(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10013D210();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Automatically dropping batch in read-only mode: %@", &v5, 0xCu);
    }
  }

  *a2 = objc_alloc_init(CPLChangeBatch);
}

void sub_1001B5DF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_10013D210();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(*(*a3 + 8) + 40) incomingBatch];
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to create a diff from incoming batch:\n%@", buf, 0xCu);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = *(a1 + 64);
  v10 = *a2;
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectPushChangeSession.m"];
  v12 = [*(*(*a3 + 8) + 40) incomingBatch];
  [v8 handleFailureInMethod:v9 object:v10 file:v11 lineNumber:195 description:{@"Failed to create a diff from incoming batch:\n%@", v12}];

  abort();
}

id sub_1001B5F24(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10013D210();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Client tried to push an invalid batch: %@", &v6, 0xCu);
    }
  }

  return [a2 setError:a1];
}

void sub_1001B5FF0(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10013D210();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Engine is returning a nil library version but no error. This is a bug", v4, 2u);
    }
  }

  v3 = +[CPLErrors missingError];
  [a1 setError:v3];
}

void sub_1001B6090(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10013D210();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 65));
      v4 = [WeakRetained syncManager];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancelling upload for %@", &v7, 0xCu);
    }
  }

  v5 = objc_loadWeakRetained((*(a1 + 32) + 65));
  v6 = [v5 syncManager];
  [v6 cancelCurrentSyncSession];
}

void sub_1001B6FF4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_10013EE4C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000AF60(&_mh_execute_header, v5, v6, "invalid scope in scope storage: missing identifier", v7, v8, v9, v10, 0);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteScopeStorage.m"];
  [v11 handleFailureInMethod:a1 object:a2 file:v12 lineNumber:62 description:@"invalid scope in scope storage: missing identifier"];

  abort();
}

void sub_1001B70E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteScopeStorage.m"];
  v8 = [CPLScopeChange descriptionForScopeType:a1];
  [v6 handleFailureInMethod:a2 object:a3 file:v7 lineNumber:320 description:{@"%@ should not be directly synchronized with client", v8}];

  abort();
}

id sub_1001B7184(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10013EE4C();
    if (sub_100003424(v5))
    {
      LOWORD(v12) = 0;
      sub_100013990();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }

  result = [a1 _createInitialPrimarySyncScope];
  *a2 = result;
  return result;
}

void sub_1001B7208()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10013EE4C();
    if (sub_10000FAE0(v1))
    {
      sub_1000139A0();
      sub_100080C88();
      _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
    }
  }
}

void sub_1001B72A8(void *a1, uint64_t a2)
{
  if ([a1 changes] <= 0)
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v11 = sub_10013EE4C();
    if (sub_10000FAE0(v11))
    {
      sub_100080C88();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
    }
  }

  else
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v4 = sub_10013EE4C();
    if (sub_10000FAE0(v4))
    {
      v5 = [CPLDateFormatter stringFromDate:a2];
      sub_10000AF90();
      sub_100080C88();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }
}

void sub_1001B73A8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10013EE4C();
    if (sub_10000FAE0(v3))
    {
      v9 = *(*a1 + 24);
      sub_100080C88();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }
}

void sub_1001B7458()
{
  v1 = sub_10013EE4C();
  if (sub_10000FAE0(v1))
  {
    sub_1000139A0();
    sub_100080C88();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1001B74EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_10013EE4C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Missing scope types in order of scope types for %@", v9, v10, v11, v12, v15, v16, 2u);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteScopeStorage.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:785 description:{@"Missing scope types in order of scope types for %@", a3}];

  abort();
}

void sub_1001B75DC()
{
  v0 = sub_10013EE4C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000033B4();
    sub_1000187BC(&_mh_execute_header, v1, v2, "Failed to deserialize supervisor info for %@: %@", v3, v4, v5, v6, 2u);
  }
}

void sub_1001B7684(void *a1)
{
  v3 = sub_10013EE4C();
  if (sub_10000FAE0(v3))
  {
    [a1 changes];
    sub_10000AF90();
    sub_100080C88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_1001B771C(void *a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10013EE4C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412546;
      v6 = a1;
      sub_1000033B4();
      v7 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Invalid stored scope change %@ for %@", &v5, 0x16u);
    }
  }
}

void sub_1001B77E8(void *a1)
{
  v3 = sub_10013EE4C();
  if (sub_10000FAE0(v3))
  {
    v4 = [a1 scopeIdentifier];
    sub_10000AF90();
    sub_100080C88();
    _os_log_impl(v5, v6, v7, v8, v9, 0x20u);
  }
}

void sub_1001B78B0(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_10013EE4C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000AF60(&_mh_execute_header, v5, v6, "Unable to determine transport group class", v7, v8, v9, v10, 0);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteScopeStorage.m"];
  [v11 handleFailureInMethod:a1 object:a2 file:v12 lineNumber:1689 description:@"Unable to determine transport group class"];

  abort();
}

void sub_1001B7974(void *a1)
{
  v1 = objc_begin_catch(a1);
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_10013EE4C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Stored transport group does not seem supported anymore (%@)", &v3, 0xCu);
    }
  }

  objc_end_catch();
}

void sub_1001B7A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_10013EE4C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Can't serialize %@", v9, v10, v11, v12, v15, v16, 2u);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteScopeStorage.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:1714 description:{@"Can't serialize %@", a3}];

  abort();
}

void sub_1001B7B20()
{
  v0 = sub_10013EE4C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000139A0();
    sub_1000033B4();
    sub_1000187BC(&_mh_execute_header, v1, v2, "Can't save group %@: %@", v3, v4, v5, v6, v7);
  }
}

id sub_1001B7BB8(void *a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10013EE4C();
    if (sub_100003424(v5))
    {
      LOWORD(v12) = 0;
      sub_100013990();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }

  return [a1 _markFirstSyncOfPrimaryAsSuccessfulWithScope:{a2, v12}];
}

id sub_1001B7C3C(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10013EE4C();
    if (sub_100003424(v5))
    {
      v6 = [a1 scopeIdentifier];
      sub_10000AF90();
      sub_100013990();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  return [a2 _markFirstSyncOfPrimaryAsSuccessfulWithScope:a1];
}

void sub_1001B7EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Can't get related scoped identifier from %@", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLStoreMigrationAssistant_101386451.m"];
  [v7 handleFailureInMethod:a1 object:a2 file:v8 lineNumber:172 description:{@"Can't get related scoped identifier from %@", a3}];

  abort();
}

void sub_1001B7FD0()
{
  v0 = sub_10014BE6C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10000FAAC();
    _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_1001B806C()
{
  v0 = sub_10014BE6C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100021CFC();
    sub_10000FAAC();
    _os_log_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

void sub_1001B8128()
{
  v0 = sub_10014BE6C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10000FAAC();
    _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_1001B8A38(char a1, _BYTE *a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = sub_10014C718();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [a2 abstractObject];
      v5 = [v4 name];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Initializing %@", &v6, 0xCu);
    }
  }

  a2[33] = 1;
  a2[35] = 0;
}

void sub_1001B8EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_10014C718();
    if (sub_10002B0A8(v5))
    {
      sub_10002B064(&_mh_execute_header, v6, v7, "Trying to create a global variable %@ in a table", v8, v9, v10, v11, v14, v15, 2u);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001B8F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_10014C718();
    if (sub_10002B0A8(v5))
    {
      sub_10002B064(&_mh_execute_header, v6, v7, "Trying to set a value for a global variable %@ in a table", v8, v9, v10, v11, v14, v15, 2u);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001B9058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_10014C718();
    if (sub_10002B0A8(v5))
    {
      sub_10002B064(&_mh_execute_header, v6, v7, "Trying to get a value for a global variable %@ in a table", v8, v9, v10, v11, v14, v15, 2u);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001B9128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_10014C718();
    if (sub_10002B0A8(v5))
    {
      sub_10002B064(&_mh_execute_header, v6, v7, "Trying to reset a value for a global variable %@ in a table", v8, v9, v10, v11, v14, v15, 2u);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001B91F8(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_10014C718();
    if (sub_1000033C0(v5))
    {
      v16 = HIDWORD(*(a1 + 16));
      sub_10000348C(&_mh_execute_header, v6, v7, "trying to recreate main table %@ while already creating the main table", v8, v9, v10, v11, v14, v15, 2u);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
  [v12 handleFailureInMethod:a2 object:a1 file:v13 lineNumber:474 description:{@"trying to recreate main table %@ while already creating the main table", *(a1 + 16)}];

  abort();
}

void sub_1001B92DC(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_10014C718();
    if (sub_1000033C0(v5))
    {
      v6 = objc_opt_class();
      sub_10000348C(&_mh_execute_header, v7, v8, "Trying to recreate main table for %@ while it was just already created", v9, v10, v11, v12, v15, v16, 2u);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
  [v13 handleFailureInMethod:a2 object:a1 file:v14 lineNumber:475 description:{@"Trying to recreate main table for %@ while it was just already created", objc_opt_class()}];

  abort();
}

void sub_1001B9A4C(uint64_t a1, CFAbsoluteTime *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10014EDBC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v9) = 138412290;
      *(&v9 + 4) = a1;
      sub_100013984();
      _os_log_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0xCu);
    }
  }

  +[CPLSyncIndicator showSyncIndicator];
  *a2 = CFAbsoluteTimeGetCurrent();
}

id sub_1001B9B30(void *a1, uint64_t a2)
{
  *a1 = 0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10014EDBC();
    if (sub_10014FD8C(v4))
    {
      LODWORD(v11) = 138412290;
      *(&v11 + 4) = a2;
      sub_10014FD7C();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  return +[CPLSyncIndicator hideSyncIndicator];
}

id sub_1001B9BE4(void *a1, void *a2)
{
  *a1 = 0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10014EDBC();
    if (sub_10014FD8C(v4))
    {
      LODWORD(v11) = 138412290;
      *(&v11 + 4) = *a2;
      sub_10014FD7C();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  return +[CPLSyncIndicator hideSyncIndicator];
}

void sub_1001B9C9C(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ called too many times", buf, 0xCu);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Base/CPLBaseSyncManager.m"];
  v10 = NSStringFromSelector(*(a1 + 48));
  [v6 handleFailureInMethod:v7 object:v8 file:v9 lineNumber:232 description:{@"%@ called too many times", v10}];

  abort();
}

void sub_1001B9DB4(void **a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100002F50();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      sub_100013984();
      _os_log_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    }

    a2 = *a1;
  }

  [a2 unpublish];
  v8 = *a1;
  *a1 = 0;
}

void sub_1001B9E58(uint64_t a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100002F50();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 40))
      {
        v5 = " (foreground)";
      }

      else
      {
        v5 = "";
      }

      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Sync session did finish%s", &v7, 0xCu);
    }
  }

  [a1 _stopShowingIndicator:@"sync session"];
  [a1 endClientWork:@"sync session"];
  *(a1 + 56) = 14;
  [*(a1 + 48) unpublish];
  v6 = *(a1 + 48);
  *(a1 + 48) = 0;

  *a2 = 0;
}

void sub_1001B9F8C(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "We should not have a progress here", v7, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Base/CPLBaseSyncManager.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:511 description:@"We should not have a progress here"];

  abort();
}

id sub_1001BA14C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = "PLPrequeliteResourceUploadQueue";
  if (([*(*(a1 + 32) + 32) executeRaw:@"CREATE TABLE IF NOT EXISTS globals (libraryVersion TEXT)"] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v31 = sub_100150214();
      if (sub_1000033C0(v31))
      {
        v32 = [*(*(a1 + 32) + 32) lastCPLError];
        v33 = [v32 localizedDescription];
        v48 = 138412290;
        v49 = v33;
        sub_10004DA10(&_mh_execute_header, v34, v35, "Unable to create database globals table: %@", &v48);
      }
    }

    goto LABEL_36;
  }

  if (![v4 executeRaw:@"INSERT INTO globals values (NULL)"])
  {
LABEL_36:
    v11 = 0;
    goto LABEL_37;
  }

  v6 = [*(a1 + 32) abstractObject];
  v7 = [v6 engineLibrary];
  v8 = [v7 libraryOptions];

  v9 = *(*(a1 + 32) + 176);
  v10 = [NSNumber numberWithUnsignedInteger:v8];
  v11 = sub_100158D60(v10);

  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = [*(a1 + 32) abstractObject];
  v13 = [v12 storages];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v15)
  {
    v8 = v15;
    v16 = *v45;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        if (([v18 shouldBeCreatedDynamically] & 1) == 0)
        {
          v19 = [v18 platformObject];
          if (([v19 createStorage] & 1) == 0)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v40 = sub_100150214();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = [*(*(a1 + 32) + 32) lastCPLError];
                v42 = [v41 localizedDescription];
                v48 = 138412546;
                v49 = v18;
                v50 = 2112;
                v51 = v42;
                sub_10003752C(&_mh_execute_header, v40, v43, "Unable to initialize %@: %@", &v48);
              }
            }

            v11 = 0;
            goto LABEL_47;
          }
        }
      }

      v8 = [v14 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v20 = *(a1 + 32);
  v21 = [v20 createNewLibraryVersion];
  v11 = [v20 storeLibraryVersion:v21 withError:0];

  if (v11)
  {
    v5 = "@CPLPrequeliteResourceUploadQueue" + 3;
    if (sub_100158D30(*(a1 + 32), 88) && sub_100158D30(*(a1 + 32), 96))
    {
      v22 = *(*(a1 + 32) + 104);
      v23 = [*(a1 + 32) createNewClientCacheIdentifier];
      v11 = sub_100158D60(v23);

      if (!v11)
      {
        goto LABEL_37;
      }

      if (sub_100158D30(*(a1 + 32), 112))
      {
        v24 = *(*(a1 + 32) + 120);
        v25 = +[NSDate date];
        v11 = sub_100158D60(v25);

        if (!v11)
        {
          goto LABEL_37;
        }

        if (sub_100158D30(*(a1 + 32), 128) && sub_100158D30(*(a1 + 32), 136) && [*(a1 + 32) addGlobalVariable:*(*(a1 + 32) + 184) defaultValue:&off_10028F0E8 error:0] && sub_100158D30(*(a1 + 32), 192) && sub_100158D30(*(a1 + 32), 216) && objc_msgSend(*(a1 + 32), "addGlobalVariable:defaultValue:error:", *(*(a1 + 32) + 224), &off_10028F0E8, 0))
        {
          v26 = [*(a1 + 32) abstractObject];
          v27 = [v26 mainScopeIdentifier];

          if ((_CPLSilentLogging & 1) == 0)
          {
            v28 = sub_100150214();
            if (sub_10000FBAC(v28))
            {
              v48 = 138412290;
              v49 = v27;
              sub_1000374A0(&_mh_execute_header, v26, v29, "Store is created with main scope identifier %@", &v48);
            }
          }

          v30 = [*(a1 + 32) addGlobalVariable:*(*(a1 + 32) + 232) defaultValue:v27 error:{0, v44}];

          if (v30)
          {
            v11 = [*(*(a1 + 32) + 32) setUserVersion:94];
            goto LABEL_37;
          }
        }
      }
    }

    goto LABEL_36;
  }

LABEL_47:
  v5 = "@CPLPrequeliteResourceUploadQueue" + 3;
LABEL_37:
  if ((_CPLSilentLogging & 1) == 0)
  {
    v36 = sub_100150214();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 32);
      v48 = *(v5 + 413);
      v49 = v38;
      sub_10000FB94(&_mh_execute_header, v36, v37, "End of %@ initialization", &v48);
    }
  }

  return v11;
}

uint64_t sub_1001BACA0(uint64_t a1)
{
  if ([*(a1 + 32) _upgradeToVersion:*(a1 + 48)])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v1 = *(a1 + 40);
    v3 = [v1 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v47;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v47 != v5)
          {
            objc_enumerationMutation(v1);
          }

          v7 = *(*(&v46 + 1) + 8 * i);
          v8 = [v7 platformObject];
          if ([v7 isAlive] && (objc_msgSend(v8, "upgradeStorageToVersion:", *(a1 + 48)) & 1) == 0)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v20 = sub_100150214();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = *(a1 + 48);
                v22 = [*(*(a1 + 32) + 32) lastCPLError];
                v23 = [v22 localizedDescription];
                sub_100158D4C();
                v53 = v21;
                sub_100158D98();
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to upgrade %@ to version %lld: %@", buf, 0x20u);
              }
            }

            v24 = *(a1 + 32);
            v25 = [v7 name];
            v26 = *(a1 + 48);
            v27 = [*(*(a1 + 32) + 32) lastCPLError];
            v28 = [v27 localizedDescription];
            [v24 recordUpgradeEvent:{@"Failed to upgrade %@ to %lld: %@", v25, v26, v28}];

            goto LABEL_25;
          }
        }

        v4 = [v1 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v9 = *(a1 + 32);
    if (v9[39])
    {
      v1 = [v9[39] platformObject];
      v10 = [v1 upgradeStorageToVersion:*(a1 + 48)];

      if (!v10)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v31 = sub_100150214();
          if (sub_10000FBDC(v31))
          {
            v32 = *(a1 + 32);
            v33 = *(v32 + 312);
            v34 = *(a1 + 48);
            v35 = [*(v32 + 32) lastCPLError];
            v36 = [v35 localizedDescription];
            *buf = 138412802;
            v51 = v33;
            v52 = 2048;
            v53 = v34;
            sub_100158D98();
            sub_100158DCC();
            _os_log_impl(v37, v38, v39, v40, v41, 0x20u);
          }
        }

        v42 = *(a1 + 32);
        v1 = [v42[39] name];
        v43 = *(a1 + 48);
        v44 = [*(*(a1 + 32) + 32) lastCPLError];
        v45 = [v44 localizedDescription];
        [v42 recordUpgradeEvent:{@"Failed to upgrade %@ to %lld: %@", v1, v43, v45}];

        goto LABEL_26;
      }

      v9 = *(a1 + 32);
    }

    if ([v9 _postUpgradeToVersion:*(a1 + 48)])
    {
      return 1;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v29 = sub_100150214();
      if (sub_10000FBDC(v29))
      {
        v30 = *(a1 + 48);
        v14 = [*(*(a1 + 32) + 32) lastCPLError];
        v8 = [v14 localizedDescription];
        sub_100158D4C();
        v53 = v30;
        sub_100158D98();
LABEL_19:
        sub_100158DCC();
        _os_log_impl(v15, v16, v17, v18, v19, 0x20u);

LABEL_25:
        goto LABEL_26;
      }

      goto LABEL_26;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = sub_100150214();
    if (sub_10000FBDC(v12))
    {
      v13 = *(a1 + 48);
      v14 = [*(*(a1 + 32) + 32) lastCPLError];
      v8 = [v14 localizedDescription];
      sub_100158D4C();
      v53 = v13;
      sub_100158D98();
      goto LABEL_19;
    }

LABEL_26:
  }

  return 0;
}

void sub_1001BB51C(uint64_t a1)
{
  *(*(a1 + 32) + 256) = 1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100150214();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      sub_10014FD7C();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }
}

void sub_1001BB5A4(uint64_t a1)
{
  *(*(a1 + 32) + 256) = 0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100150214();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      sub_10014FD7C();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }
}

void sub_1001BB75C(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 336))
  {
    v4 = *(v2 + 32);
    if (!v4 || ([v4 incrementalVacuum:a1[6]] & 1) == 0)
    {
      *(*(a1[5] + 8) + 24) = 0;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100150214();
    if (sub_10000FAE0(v5))
    {
      sub_100080C88();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }
}

void sub_1001BB808(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100150214();
    if (sub_10000FABC(v3))
    {
      v5 = *(a1 + 32);
      v12 = 138412290;
      v13 = v5;
      sub_1000374A0(&_mh_execute_header, v1, v4, "Suspending queue for %@", &v12);
    }
  }

  dispatch_suspend(*(*(a1 + 32) + 8));
  dispatch_suspend(*(*(a1 + 32) + 16));
  [*(a1 + 32) closeWithError:0];
  sub_1000033D8();
  v8 = 3221225472;
  v9 = sub_100157F28;
  v10 = &unk_100272000;
  v6 = *(a1 + 40);
  v11 = *(a1 + 48);
  dispatch_sync(v6, block);
}

void sub_1001BB920(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100150214();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100013984();
      _os_log_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 2u);
    }
  }

  dispatch_resume(*(a1 + 32));
}

void sub_1001BB9A0(uint64_t a1)
{
  v2 = [a1 abstractObject];
  v3 = [v2 engineLibrary];
  v4 = [v3 cloudLibraryStateStorageURL];

  v5 = [v4 URLByAppendingPathComponent:@"store.cloudphotodb" isDirectory:0];
  sub_100158DA8([v5 copy], 40);

  v6 = CPLCopyDefaultSerialQueueAttributes();
  v7 = dispatch_queue_create("com.apple.cplenginestore.sqlite", v6);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  v9 = CPLCopyDefaultSerialQueueAttributes();
  v10 = dispatch_queue_create_with_target_V2("com.apple.cplenginestore.sqlite.write", v9, *(a1 + 8));
  sub_100158DA8(v10, 16);

  *(a1 + 24) = 0;
  v11 = CPLCopyDefaultSerialQueueAttributes();
  v12 = dispatch_queue_create("com.apple.cplenginestore.sqlite.vacuum", v11);
  sub_100158DA8(v12, 328);

  sub_100158DA8(objc_alloc_init(NSMutableSet), 56);
  sub_100158DA8(objc_alloc_init(NSObject), 64);
  v13 = [CPLPrequeliteTable tableWithName:@"globals"];
  sub_100158DA8(v13, 72);
  v14 = +[CPLPrequeliteType stringType];
  v15 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v15, 80);

  v16 = [sub_100158D24() dataType];
  v17 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v17, 88);

  v18 = [sub_100158D24() dateType];
  v19 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v19, 96);

  v20 = [sub_100158D24() stringType];
  v21 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v21, 104);

  v22 = [sub_100158D24() stringType];
  v23 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v23, 112);

  v24 = [sub_100158D24() dateType];
  v25 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v25, 120);

  v26 = [sub_100158D24() dataType];
  v27 = [sub_100158D18() variableWithName:? type:?];
  v28 = *(a1 + 128);
  *(a1 + 128) = v27;

  v29 = [sub_100158D24() dataType];
  v30 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v30, 136);

  v31 = [sub_100158D24() integerType];
  v32 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v32, 176);

  v33 = [sub_100158D24() integerType];
  v34 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v34, 184);

  v35 = [sub_100158D24() dataType];
  v36 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v36, 192);

  v37 = [sub_100158D24() dataType];
  v38 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v38, 216);

  v39 = [sub_100158D24() integerType];
  v40 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v40, 224);

  v41 = [sub_100158D24() stringType];
  v42 = [sub_100158D18() variableWithName:? type:?];
  v43 = *(a1 + 232);
  *(a1 + 232) = v42;

  [*(a1 + 232) setShouldNotCacheValue:1];
  [*(a1 + 128) setShouldNotCacheValue:1];
  v44 = CPLCopyDefaultSerialQueueAttributes();
  v45 = dispatch_queue_create("com.apple.cplenginestore.sqlite.clientsync", v44);
  sub_100158DA8(v45, 248);

  *(a1 + 292) = -1;
  v46 = +[NSUserDefaults standardUserDefaults];
  *(a1 + 353) = [v46 BOOLForKey:@"CPLShowStatsForAllTransactions"];

  if (*(a1 + 353))
  {
    *(a1 + 352) = 1;
  }

  else
  {
    has_internal_content = os_variant_has_internal_content();
    *(a1 + 352) = has_internal_content;
    if ((has_internal_content & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 353))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v48 = sub_100150214();
      if (sub_10000FABC(v48))
      {
        v52 = 0;
        v49 = "Will logs statistics for all transactions";
        v50 = &v52;
LABEL_11:
        _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEFAULT, v49, v50, 2u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v51 = sub_100150214();
    if (sub_10000FABC(v51))
    {
      *buf = 0;
      v49 = "Will try to catch long transactions";
      v50 = buf;
      goto LABEL_11;
    }

LABEL_12:
  }

LABEL_13:
}

void sub_1001BBF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100158DC0();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_100150214();
    if (sub_10000FBAC(v7))
    {
      *buf = 134218242;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Was requested to schedule a reset (option #%lu) after upgrade for reason '%@'", buf, 0x16u);
    }
  }

  [a3 recordUpgradeEvent:{@"Reset option %ld requested. Reason: %@", v3, v4}];
  if (*(a3 + 289) != 1)
  {
    *(a3 + 289) = 1;
    *(a3 + 264) = v3;
    v9 = [v4 copy];
    v10 = *(a3 + 272);
    *(a3 + 272) = v9;

    return;
  }

  v8 = *(a3 + 264);
  if (v8 == 3)
  {
    if (v3 == 3)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v8 == 1)
  {
    if (v3 != 2)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!v8 && (v3 - 1) <= 1)
  {
LABEL_13:
    objc_storeStrong((a3 + 272), v4);
    *(a3 + 264) = v3;
  }
}

void sub_1001BC0F4(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 134218242;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2080;
  *(a3 + 14) = a2;
  sub_10003752C(&_mh_execute_header, a4, a3, "Failed to setup SQL tracing on %p hook: %s", a3);
}

void sub_1001BC158()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10015060C();
    if (sub_10000FAE0(v1))
    {
      sub_100080C88();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }
}

void sub_1001BC1C4(void *a1, uint8_t *buf, os_log_t log, double a4)
{
  *buf = 134218242;
  *(buf + 4) = a4;
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Transaction took %.3fs. Sorted statements:\n  %{public}@", buf, 0x16u);
}

void sub_1001BC228(uint64_t a1, double a2)
{
  *(a1 + 360) = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10015060C();
    if (sub_10000FAE0(v3))
    {
      sub_100080C88();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }
}

void sub_1001BC2E4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100150214();
    if (sub_1000033C0(v5))
    {
      sub_10000AF60(&_mh_execute_header, v6, v7, "Trying to schedule client cache drop twice", v8, v9, v10, v11, 0);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStore.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:627 description:@"Trying to schedule client cache drop twice"];

  abort();
}

id sub_1001BC3A0(id *a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100150214();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dropping clientCache now", v8, 2u);
    }

    a3 = *(*a1 + a2);
  }

  result = [a3 execute:@"DROP TABLE clientCache"];
  if (result)
  {
    return [*a1 startVacuumWithCompletionHandler:&stru_10027B4E0];
  }

  return result;
}

id sub_1001BC458(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100150214();
    if (sub_10000FABC(v3))
    {
      LOWORD(v9) = 0;
      sub_100013984();
      _os_log_impl(v4, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  return [a1 _scheduleClientCacheDrop];
}

id sub_1001BC4D0(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_100003448(v5))
    {
      v6 = [a1 lastError];
      sub_10000AF90();
      sub_100021D44();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  return [a2 triggerResetAfterUpgrade:0 withReason:@"failed to migrate to flat push pipeline"];
}

void sub_1001BC5A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100150214();
  if (sub_10000FBDC(v4))
  {
    v5 = [*(a2 + 32) lastCPLError];
    v6 = [v5 localizedDescription];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }
}

void sub_1001BC66C()
{
  v1 = sub_100150214();
  if (sub_10000FAE0(v1))
  {
    sub_1000139A0();
    sub_100080C88();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1001BC6FC()
{
  sub_100158DC0();
  v2 = sub_100150214();
  if (sub_10000FBDC(v2))
  {
    v3 = [v1 migrationDescription];
    sub_10000AF90();
    sub_10000FAAC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1001BC7B4(uint8_t *a1, void *a2, void *a3)
{
  v7 = sub_100150214();
  if (sub_10000FAE0(v7))
  {
    v8 = [a2 migrationDescription];
    *a1 = 138412290;
    *a3 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Migration '%@' completed successfully", a1, 0xCu);
  }
}

void sub_1001BC854()
{
  v1 = sub_100150214();
  if (sub_10000FBDC(v1))
  {
    sub_1000139A0();
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1001BC8E4()
{
  v1 = sub_100150214();
  if (sub_10000FBDC(v1))
  {
    sub_1000139A0();
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1001BC974(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100158DC0();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_100150214();
    if (sub_10002B0A8(v7))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Trying to wipe database for reason '%@' but user asked to prevent wipes", &v10, 0xCu);
    }
  }

  v8 = [CPLErrors preventWipeErrorWithReason:v4 preventedByUser:1];
  [*(v3 + 32) setLastError:v8];
  if (a3)
  {
    v9 = v8;
    *a3 = v8;
  }
}

id sub_1001BCA70(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100150214();
    if (sub_1000033C0(v4))
    {
      sub_1000139A0();
      sub_10004DA10(&_mh_execute_header, v5, v6, "Database has been marked as corrupted - wiping everything - corruption info: %@", v9);
    }
  }

  v7 = [sub_100158E24() _wipeReasonFromCorruptionInfo:?];
  [sub_100158E24() _wipeWithReason:?];

  return [a2 _deleteCorruptionInfo];
}

id sub_1001BCB3C(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100150214();
    if (sub_1000033C0(v4))
    {
      sub_1000139A0();
      sub_10004DA10(&_mh_execute_header, v5, v6, "CPL has been requested to wipe database: %@", v8);
    }
  }

  [sub_100158E24() _wipeWithReason:?];
  return [a2 _deleteWipeReason];
}

void sub_1001BCBF4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100150214();
    if (sub_1000033C0(v5))
    {
      sub_10000AF60(&_mh_execute_header, v6, v7, "Trying to open the upgrade journal twice", v8, v9, v10, v11, 0);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStore.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:1058 description:@"Trying to open the upgrade journal twice"];

  abort();
}

void sub_1001BCCB0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100158DDC(a1, a2, a3, 5.778e-34);
  sub_10003752C(&_mh_execute_header, v6, v4, "Can't create store folder at %@: %@", v5);
}

void sub_1001BCD00(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10000FB94(&_mh_execute_header, a3, a3, "Created store folder at %@", a2);
}

void sub_1001BCD50(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100158DDC(a1, a2, a3, 5.778e-34);
  sub_10003752C(&_mh_execute_header, v6, v4, "Can't open store at %@: %@: error", v5);
}

void sub_1001BCDA0()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100150214();
    if (sub_10000FBDC(v1))
    {
      sub_1000139A0();
      sub_10000FAAC();
      _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
    }
  }
}

void sub_1001BCE44()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100150214();
    if (sub_10000FAE0(v1))
    {
      sub_100080C88();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }
}

void sub_1001BCEB0(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_1000374A0(&_mh_execute_header, a3, a3, "Previously disabled features: %@ - will request an update of disabled features", a2);
}

void sub_1001BCF00()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100150214();
    if (sub_10000FBDC(v1))
    {
      sub_10000FAAC();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }
}

void sub_1001BCF6C()
{
  v1 = sub_100150214();
  if (sub_10000FBDC(v1))
  {
    sub_1000139A0();
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

id sub_1001BCFFC(char a1, id *a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = sub_100150214();
    if (sub_10000FABC(v4))
    {
      v5 = [a2[4] userVersion];
      [v5 longLongValue];
      sub_10000AF90();
      sub_100013984();
      sub_1000374A0(v6, v7, v8, v9, v10);
    }
  }

  return [a2 _scheduleClientCacheDropIfNecessary];
}

void sub_1001BD0BC(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100150214();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 40);
      sub_10014FD7C();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }
}

void sub_1001BD170(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_begin_catch(a1);
  v5 = *(*(a3 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_end_catch();
}

void sub_1001BD1C0(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100150214();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v12) = 138412290;
      *(&v12 + 4) = *(a1 + 40);
      sub_100013984();
      sub_10000FB94(v3, v4, v5, v6, v7);
    }
  }

  v8 = *(a1 + 40);
  v9 = +[CPLErrors libraryClosedError];
  [v8 setError:v9];

  v10 = *(a1 + 48);
  v11 = [*(a1 + 40) error];
  (*(v10 + 16))(v10, v11);
}

void sub_1001BD2D0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_begin_catch(a1);
  v5 = *(*(a3 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_end_catch();
}

void sub_1001BD320(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100150214();
    if (sub_1000033C0(v5))
    {
      sub_10000AF60(&_mh_execute_header, v6, v7, "Unable to determine user identifier class", v8, v9, v10, v11, 0);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStore.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:1585 description:@"Unable to determine user identifier class"];

  abort();
}

void sub_1001BD3DC(uint64_t a1, void *a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100150214();
    if (sub_100003448(v5))
    {
      sub_100021CFC();
      sub_100021D44();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  objc_end_catch();
}

void sub_1001BD49C(uint64_t *a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100150214();
    if (sub_1000033C0(v4))
    {
      sub_1000139A0();
      sub_10004DA10(&_mh_execute_header, v5, v6, "Can't decode user identifier, will use a fake user identifier (%@) and we will reset everything", v7);
    }
  }

  *a1 = v3;
}

void sub_1001BD63C()
{
  sub_100158DC0();
  v1 = sub_100150214();
  if (sub_10000FBDC(v1))
  {
    sub_100021CFC();
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1001BD6D8(uint8_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_100150214();
    if (sub_10000FBAC(v11))
    {
      *a1 = 138412290;
      *a3 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ignoring push/pull gatekeeper %@", a1, 0xCu);
    }
  }

  *a5 = a4;
}

void sub_1001BD774(void *a1)
{
  v2 = objc_begin_catch(a1);
  if (_CPLSilentLogging != 1)
  {
    v3 = sub_100150214();
    if (sub_100003448(v3))
    {
      sub_100021D44();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  objc_end_catch();
}

void sub_1001BD834(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100150214();
    if (sub_100003448(v3))
    {
      sub_100021D44();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  *a1 = 0;
}

void sub_1001BDA44(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100150214();
    if (sub_1000033C0(v5))
    {
      sub_10000AF60(&_mh_execute_header, v6, v7, "Trying to access client cache outside of authorized migration", v8, v9, v10, v11, 0);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStore.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:2086 description:@"Trying to access client cache outside of authorized migration"];

  abort();
}

void sub_1001BDB00()
{
  sub_100158DC0();
  v3 = sub_100150214();
  if (sub_10000FAE0(v3))
  {
    v4 = [NSByteCountFormatter stringFromByteCount:*v2 - v1 countStyle:0];
    sub_10000AF90();
    sub_100080C88();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

id sub_1001BDBBC()
{
  sub_10002B0F4();
  v14 = v1;
  v15 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_100150214();
    if (sub_10000FBAC(v9))
    {
      v10 = [NSByteCountFormatter stringFromByteCount:v8 countStyle:0];
      sub_10000AF90();
      sub_1000374A0(&_mh_execute_header, v0, v11, "Starting vacuum for %@", &v13);
    }
  }

  *(*v6 + v4) = 1;
  return [*v6 _vacuum:v8 withInitialDatabaseSize:{objc_msgSend(*v6, "_sizeInBytes")}];
}

void sub_1001BDCB4(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100150214();
    if (sub_10000FBDC(v3))
    {
      v9 = *(a1 + 32);
      sub_10000FAAC();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  exit(0);
}

void sub_1001BDE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100150214();
  if (sub_10000FBDC(v4))
  {
    v5 = [*(a2 + 32) lastCPLError];
    v6 = [v5 localizedDescription];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }
}

void sub_1001BDFA8(uint64_t a1, id *a2)
{
  v4 = sub_100150214();
  if (sub_10000FBDC(v4))
  {
    v5 = [*a2 lastCPLError];
    v6 = [v5 localizedDescription];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }
}

void sub_1001BE068(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100158DC0();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100150214();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Blocking write queue", v7, 2u);
    }
  }

  dispatch_suspend(v4);
  objc_storeStrong((v3 + 8), a3);
}

void sub_1001BE10C(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_10015912C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "scope index has not been set", v7, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteOutgoingResources.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:88 description:@"scope index has not been set"];

  abort();
}

void sub_1001BE1F4(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10015912C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      *buf = 138412546;
      v10 = v5;
      v11 = 2048;
      v12 = 39;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding scopeIndex column", buf, 0x16u);
    }
  }

  v6 = [a1 pqStore];
  v7 = [v6 pqlConnection];

  v8 = [a1 mainTable];
  *a2 = [v7 cplExecute:{@"ALTER TABLE %@ ADD COLUMN scopeIndex INTEGER DEFAULT 1", v8}];
}

void sub_1001BE6B4(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10015B0E8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      sub_10015F5C8();
      sub_100003528(&_mh_execute_header, v6, v7, "Upgrading %@ to version %llu: adding scopeIndex column", v8, v9, v10, v11, v15, v16, v17);
    }
  }

  v12 = [a1 pqStore];
  v13 = [v12 pqlConnection];

  v14 = [a1 mainTable];
  *a2 = [v13 cplExecute:{@"ALTER TABLE %@ ADD COLUMN scopeIndex INTEGER DEFAULT 2", v14}];
}

void sub_1001BE7CC(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10015B0E8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      sub_10015F5C8();
      sub_100003528(&_mh_execute_header, v6, v7, "Upgrading %@ to version %llu: adding otherScopeIndex and stagedOtherScopeIndex columns", v8, v9, v10, v11, v19, v20, v21);
    }
  }

  v12 = [a1 pqStore];
  v13 = [v12 pqlConnection];

  v14 = [a1 mainTable];
  v15 = [v13 cplExecute:{@"ALTER TABLE %@ ADD COLUMN otherScopeIndex INTEGER DEFAULT 0", v14}];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = [a1 createIndexOnColumn:@"otherScopeIndex" error:0];
  if (v16)
  {
    v17 = [a1 mainTable];
    v18 = [v13 cplExecute:{@"ALTER TABLE %@ ADD COLUMN stagedOtherScopeIndex INTEGER DEFAULT 0", v17}];

    if (v18)
    {
      LOBYTE(v16) = [a1 createIndexOnColumn:@"stagedOtherScopeIndex" error:0];
      goto LABEL_10;
    }

LABEL_9:
    LOBYTE(v16) = 0;
  }

LABEL_10:
  *a2 = v16;
}

void sub_1001BE958(void *a1, unsigned __int8 *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10015B0E8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      sub_10015F5C8();
      sub_100003528(&_mh_execute_header, v6, v7, "Upgrading %@ to version %llu: adding confirmed column", v8, v9, v10, v11, v17, v18, v19);
    }
  }

  v12 = [a1 pqStore];
  v13 = [v12 pqlConnection];

  v14 = [a1 mainTable];
  v15 = [v13 cplExecute:{@"ALTER TABLE %@ ADD COLUMN confirmed INTEGER DEFAULT 1", v14}];

  if (v15)
  {
    v16 = [a1 createIndexOnColumn:@"confirmed" error:0];
  }

  else
  {
    v16 = 0;
  }

  *a2 = v16;
}

void sub_1001BEAB0()
{
  sub_10015F5DC();
  v2 = sub_10015B0E8();
  if (sub_10000FBDC(v2))
  {
    v3 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1001BEC50()
{
  sub_10015F5DC();
  v2 = sub_10015B0E8();
  if (sub_10000FBDC(v2))
  {
    v3 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1001BECFC()
{
  sub_10015F5DC();
  v2 = sub_10015B0E8();
  if (sub_10000FBDC(v2))
  {
    v3 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1001BEE9C()
{
  sub_10015F5DC();
  v2 = sub_10015B0E8();
  if (sub_10000FBDC(v2))
  {
    v3 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1001BEF48()
{
  sub_10015F5DC();
  v2 = sub_10015B0E8();
  if (sub_10000FBDC(v2))
  {
    v3 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1001BEFF4()
{
  v1 = sub_10015B0E8();
  if (sub_10000FBDC(v1))
  {
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1001BF088()
{
  sub_10015F5DC();
  v2 = sub_10015B0E8();
  if (sub_10000FBDC(v2))
  {
    v3 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1001BF504(void *a1)
{
  v3 = sub_10015B0E8();
  if (sub_10000FBDC(v3))
  {
    v4 = [a1 lastCPLError];
    sub_10000AF90();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_1001BF5A8(void *a1)
{
  v3 = sub_10015B0E8();
  if (sub_10000FBDC(v3))
  {
    v4 = [a1 lastCPLError];
    sub_10000AF90();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_1001BF64C(void *a1)
{
  v3 = sub_10015B0E8();
  if (sub_10000FBDC(v3))
  {
    v4 = [a1 lastCPLError];
    sub_10000AF90();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_1001BF6F0(void *a1)
{
  v3 = sub_10015B0E8();
  if (sub_10000FBDC(v3))
  {
    v4 = [a1 lastCPLError];
    sub_10000AF90();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_1001BF7A8(const char *a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a1);
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ does not support type DATA", buf, 0xCu);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteUtilites.m"];
  v8 = NSStringFromSelector(a1);
  [v6 handleFailureInMethod:a1 object:a2 file:v7 lineNumber:118 description:{@"%@ does not support type DATA", v8}];

  abort();
}

void sub_1001BF8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = v7;
      *buf = 138413058;
      v14 = a3;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = a1;
      v9 = v18;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid value for %@ (%@): %@ '%@'", buf, 0x2Au);
    }
  }

  v10 = +[NSAssertionHandler currentHandler];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteUtilites.m"];
  v12 = objc_opt_class();
  [v10 handleFailureInMethod:a2 object:a3 file:v11 lineNumber:141 description:{@"Invalid value for %@ (%@): %@ '%@'", a3, v12, objc_opt_class(), a1}];

  abort();
}

void sub_1001BFA0C()
{
  v0 = sub_1001635D8();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006D044(&_mh_execute_header, v1, v2, "Removing stale mapping of cloud identifier %@ to local identifier %@", v3, v4, v5, v6, 2u);
  }
}

void sub_1001BFAB8(uint64_t a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1001635D8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412546;
      v8 = a1;
      v9 = 2112;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Mapping cloud identifier %@ to local identifier %@ is already known", &v7, 0x16u);
    }
  }
}

void sub_1001BFBA0(uint64_t a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_1001635D8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [CPLRecordChange descriptionForDirection:a2];
      sub_10006D044(&_mh_execute_header, v4, v5, "Updated 'add event' for already existing mapping of %@ (direction %@)", v6, v7, v8, v9, 2u);
    }
  }
}

void sub_1001BFDA0()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = sub_1001645FC();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "scope index should have already been set", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001BFE6C(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1001645FC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      sub_10015F5C8();
      sub_100003528(&_mh_execute_header, v6, v7, "Upgrading %@ to version %llu: adding intent column", v8, v9, v10, v11, v15, v16, v17);
    }
  }

  v12 = [a1 pqStore];
  v13 = [v12 pqlConnection];

  v14 = [a1 mainTable];
  *a2 = [v13 cplExecute:{@"ALTER TABLE %@ ADD COLUMN intent INTEGER DEFAULT 1", v14}];
}

void sub_1001BFF84(_BYTE *a1, char *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1001645FC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      sub_10015F5C8();
      sub_100003528(&_mh_execute_header, v6, v7, "Upgrading %@ to version %llu: adding scopeIndex column", v8, v9, v10, v11, v17, v18, v19);
    }
  }

  v12 = [a1 pqStore];
  v13 = [v12 pqlConnection];

  v14 = [a1 mainTable];
  v15 = [v13 cplExecute:{@"ALTER TABLE %@ ADD COLUMN scopeIndex INTEGER DEFAULT 1", v14}];

  if (v15 && [a1 dropIndexWithName:@"resource" error:0] && (v16 = 1, objc_msgSend(a1, "createIndexWithName:withDefinition:unique:error:", @"resource", @"itemIdentifier, scopeIndex, resourceType", 1, 0)))
  {
    a1[52] = 1;
  }

  else
  {
    v16 = 0;
  }

  *a2 = v16;
}

void sub_1001C0100()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = sub_1001645FC();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "scope index should have been set here", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C01B8()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = sub_1001645FC();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "Scope index should be set here", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C0270()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = sub_1001645FC();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "scope index should be set here", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C0328()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = sub_1001645FC();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "Scope index should be set here", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C03E0()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = sub_1001645FC();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "Scope index should be set here", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C0498()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = sub_1001645FC();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "scope index should be set here", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

BOOL sub_1001C0550(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = [a1 mergeRecordChangeWithNewRecordChange:a2 direction:2];
  *a3 = v6;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_100167254();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412802;
      v10 = a2;
      v11 = 2112;
      v12 = a1;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Merging %@ and %@: %@", &v9, 0x20u);
    }
  }

  return v6 == 0;
}

void sub_1001C064C(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100167254();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Can't serialize %@", buf, 0xCu);
    }
  }

  v5 = [[NSString alloc] initWithFormat:@"can't serialize %@", objc_opt_class()];
  if (a2)
  {
    *a2 = [CPLErrors invalidCloudCacheErrorWithReason:v5];
  }
}

void sub_1001C0774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100167254();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Getting a remapped change from transient repository without an identifier: %@", v9, v10, v11, v12, v15, v16, 2u);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteTransientRepository.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:419 description:{@"Getting a remapped change from transient repository without an identifier: %@", a3}];

  abort();
}

void sub_1001C0850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100167254();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Popping a remapped change from transient repository without an identifier: %@", v9, v10, v11, v12, v15, v16, 2u);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteTransientRepository.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:439 description:{@"Popping a remapped change from transient repository without an identifier: %@", a3}];

  abort();
}

void sub_1001C092C()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v0 = sub_100167254();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000187A4();
      sub_100080C88();
      _os_log_impl(v1, v2, v3, v4, v5, 0x16u);
    }
  }
}

void sub_1001C09E0()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v0 = sub_100167254();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      sub_100080C88();
      _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
    }
  }
}

void sub_1001C0A8C()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v0 = sub_100167254();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000187A4();
      sub_100080C88();
      _os_log_impl(v1, v2, v3, v4, v5, 0x16u);
    }
  }
}

uint64_t sub_1001C1294(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    result = sub_1001C1B3C(result, [result totalResourceSize] + a2, a3);
    if (result)
    {
      if (+[CPLResource largeResourceSizeThreshold]< a2)
      {

        return sub_1001C1A00(v5, a2, a3);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

id sub_1001C1324(id result, uint64_t a2)
{
  if (result)
  {
    v2 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [result totalOriginalResourceSize] + a2);
    v3 = sub_10016AA88(44);

    return v3;
  }

  return result;
}

uint64_t sub_1001C1394(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = [a1 totalResourceSize];
  v7 = v6 - a2;
  if (v6 < a2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10016A144();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v21 = 134218240;
        v22 = a2;
        v23 = 2048;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Total resource size inconsistency (removing %llu from %llu)", &v21, 0x16u);
      }
    }

    v7 = 0;
  }

  if (v6 >> 24 >= 0x19 && v7 >> 24 <= 0x18)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10016A144();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = NSLocalizedFileSizeDescription();
        v12 = NSLocalizedFileSizeDescription();
        v21 = 138412546;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resource storage went under %@ (%@)", &v21, 0x16u);
      }
    }

    v13 = [a1 abstractObject];
    v14 = [v13 engineStore];
    v15 = [v14 engineLibrary];
    [v15 requestAttachedLibrary];
  }

  if (!sub_1001C1B3C(a1, v7, a3))
  {
    return 0;
  }

  if (+[CPLResource largeResourceSizeThreshold]>= a2)
  {
    return 1;
  }

  v16 = [a1 valueForVariable:*(a1 + 52)];
  if (v16 && (+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", a2), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 compare:v17], v17, v18 != 1))
  {
    v19 = [a1 _refreshLargestResourceSizeWithError:a3];
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

id sub_1001C1620(void *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a1 totalOriginalResourceSize];
  v4 = &v3[-a2];
  if (v3 < a2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = v3;
      v6 = sub_10016A144();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = 134218240;
        v11 = a2;
        v12 = 2048;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Total original resource size inconsistency (removing %llu from %llu)", &v10, 0x16u);
      }
    }

    v4 = 0;
  }

  v7 = [NSNumber numberWithUnsignedLongLong:v4];
  v8 = sub_10016AA88(44);

  return v8;
}

uint64_t sub_1001C1A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = [a1 valueForVariable:*(a1 + 52)];
  if (!v6 || (+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", a2), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 compare:v7], v7, v8 == -1))
  {
    v9 = [NSNumber numberWithUnsignedLongLong:a2];
    v10 = [a1 setValue:v9 forVariable:*(a1 + 52) error:a3];

    if (!v10)
    {
      v14 = 0;
      goto LABEL_8;
    }

    v11 = [a1 abstractObject];
    v12 = [v11 engineStore];
    v13 = [NSNumber numberWithUnsignedLongLong:a2];
    [v12 predictSyncSessionValue:v13 ofType:CPLSyncSessionPredictionTypeLargestResourceSize];
  }

  v14 = 1;
LABEL_8:

  return v14;
}

uint64_t sub_1001C1B3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = [NSNumber numberWithUnsignedLongLong:a2];
    LODWORD(a3) = [v5 setValue:v6 forVariable:*(v5 + 36) error:a3];

    if (a3)
    {
      v7 = [v5 abstractObject];
      v8 = [v7 engineStore];
      v9 = [NSNumber numberWithUnsignedLongLong:a2];
      [v8 predictSyncSessionValue:v9 ofType:CPLSyncSessionPredictionTypeUploadResourceSize];

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1001C1C1C(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10016A144();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Upgrading store to version 20 and Resource Storage is not empty. We must trigger a reset sync", v4, 2u);
    }
  }

  v3 = [a1 pqStore];
  [v3 triggerResetAfterUpgrade:0 withReason:@"Upgrade to version 20"];
}

id sub_1001C1CD0(uint64_t a1, uint64_t a2)
{
  result = sub_1001C1B3C(a1, 0, a2);
  if (result)
  {
    v5 = *(a1 + 44);

    return [a1 setValue:&off_10028F148 forVariable:v5 error:a2];
  }

  return result;
}

void sub_1001C1D50(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10016BF70();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      *buf = 138412546;
      v10 = v5;
      v11 = 2048;
      v12 = 39;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding scopeIndex column", buf, 0x16u);
    }
  }

  v6 = [a1 pqStore];
  v7 = [v6 pqlConnection];

  v8 = [a1 mainTable];
  *a2 = [v7 cplExecute:{@"ALTER TABLE %@ ADD COLUMN scopeIndex INTEGER DEFAULT 1", v8}];
}

uint64_t sub_1001C1E98(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10016BF70();
    if (sub_10000FBDC(v3))
    {
      v12 = [a1 abstractObject];
      sub_10016DC94(&_mh_execute_header, v4, v5, "Pull marker %lu should always be less than push marker %lu for %@", v6, v7, v8, v9, 2u);
    }
  }

  v10 = _CPLStoreFailure();
  return sub_1001C1F4C(v10);
}

void sub_1001C1F4C(uint64_t a1, void *a2, uint64_t *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10016BF70();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable to serialize %@", &v8, 0xCu);
    }
  }

  v7 = [a2 abstractObject];
  *a3 = [CPLErrors unableToSerializeRecordError:a1 inStorage:v7];
}

void sub_1001C2044(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_10016BF70();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000AF60(&_mh_execute_header, v5, v6, "scope index should be set here", v7, v8, v9, v10, 0);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteChangePipe.m"];
  [v11 handleFailureInMethod:a1 object:a2 file:v12 lineNumber:241 description:@"scope index should be set here"];

  abort();
}

void sub_1001C2108(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10016BF70();
    if (sub_10000FBDC(v3))
    {
      v4 = [a1 abstractObject];
      sub_10016DCB4();
      sub_10016DC94(&_mh_execute_header, v5, v6, "Inconsistency when popping one batch %@ (pull marker: %lu / push marker: %lu)", v7, v8, v9, v10, v12);
    }
  }

  v11 = _CPLStoreFailure();
  sub_1001C21A8(v11);
}

void sub_1001C21A8(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_10016BF70();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000AF60(&_mh_execute_header, v5, v6, "scope index should be set here", v7, v8, v9, v10, 0);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteChangePipe.m"];
  [v11 handleFailureInMethod:a1 object:a2 file:v12 lineNumber:281 description:@"scope index should be set here"];

  abort();
}

uint64_t sub_1001C226C(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10016BF70();
    if (sub_10000FBDC(v3))
    {
      v4 = [a1 abstractObject];
      sub_10016DCB4();
      sub_10016DC94(&_mh_execute_header, v5, v6, "Inconsistency getting next batch %@ (pull marker: %lu / push marker: %lu)", v7, v8, v9, v10, v13);
    }
  }

  v11 = _CPLStoreFailure();
  return sub_1001C230C(v11);
}

uint64_t sub_1001C230C(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10016BF70();
    if (sub_10000FBDC(v3))
    {
      v4 = [a1 abstractObject];
      sub_10016DCB4();
      sub_10016DC94(&_mh_execute_header, v5, v6, "Inconsistency when popping next batch from %@ (pull marker: %lu / push marker: %lu)", v7, v8, v9, v10, v13);
    }
  }

  v11 = _CPLStoreFailure();
  return sub_1001C23AC(v11);
}

void sub_1001C23AC(uint64_t a1, uint64_t a2)
{
  v4 = __CPLGenericOSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = a1;
    v7 = 2112;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to find resource %@ in cache: %@", &v5, 0x16u);
  }
}

void sub_1001C2468(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412546;
      v8 = a1;
      v9 = 2048;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to migrate %@ (alteration: %lu)", &v7, 0x16u);
    }
  }

  *a3 = 1;
}

void sub_1001C2554()
{
  sub_10015F5DC();
  v2 = sub_10016F3DC();
  if (sub_10000FBDC(v2))
  {
    v3 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1001C2600()
{
  v1 = sub_10016F3DC();
  if (sub_10000FBDC(v1))
  {
    sub_1000139A0();
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1001C26A4()
{
  sub_10015F5DC();
  v2 = sub_10016F3DC();
  if (sub_10000FBDC(v2))
  {
    v3 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1001C2750()
{
  sub_10015F5DC();
  v2 = sub_10016F3DC();
  if (sub_10000FBDC(v2))
  {
    v3 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1001C27FC(uint64_t a1)
{
  v3 = sub_10016F3DC();
  if (sub_10000FBDC(v3))
  {
    v9 = *(a1 + 32);
    sub_10000FAAC();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_1001C2894()
{
  sub_10015F5DC();
  v2 = sub_10016F3DC();
  if (sub_10000FBDC(v2))
  {
    v3 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1001C2940()
{
  v1 = sub_10016F3DC();
  if (sub_10000FBDC(v1))
  {
    sub_1000139A0();
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1001C29D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100170EF4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@ should have a scope index set here", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePendingRecordChecks.m"];
  [v7 handleFailureInMethod:a1 object:a2 file:v8 lineNumber:60 description:{@"%@ should have a scope index set here", a3}];

  abort();
}

void sub_1001C2AD0(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = objc_opt_class();
      v5 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteClientCacheMigrator.m"];
  [v6 handleFailureInMethod:a2 object:a1 file:v7 lineNumber:19 description:{@"No platform object specified for %@", objc_opt_class()}];

  abort();
}

void sub_1001C2BD0(void *a1, unsigned __int8 *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1001718C0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      *buf = 138412546;
      v15 = v5;
      v16 = 2048;
      v17 = 89;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding adjustmentFingerprint column, renaming date column, and dropping fileURL column", buf, 0x16u);
    }
  }

  v6 = [a1 pqStore];
  v7 = [v6 pqlConnection];

  v8 = [a1 mainTable];
  v9 = [v7 cplExecute:{@"ALTER TABLE %@ ADD COLUMN adjustmentFingerprint TEXT DEFAULT NULL", v8}];

  if (v9 && ([a1 mainTable], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "cplExecute:", @"ALTER TABLE %@ RENAME COLUMN date TO lastUpdatedDate", v10), v10, v11))
  {
    v12 = [a1 mainTable];
    v13 = [v7 cplExecute:{@"ALTER TABLE %@ DROP COLUMN fileURL", v12}];
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_1001C2D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_1001718C0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Missing file storage identifier for %@", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteRecordComputeStatePushQueue.m"];
  [v7 handleFailureInMethod:a1 object:a2 file:v8 lineNumber:137 description:{@"Missing file storage identifier for %@", a3}];

  abort();
}

id sub_1001C2E78(id a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = CPLPrequelitePushedChange;
    a1 = objc_msgSendSuper2(&v21, "init");
    if (a1)
    {
      v6 = [v5 stringAtIndex:a3];
      v7 = NSClassFromString(v6);
      v8 = *(a1 + 3);
      *(a1 + 3) = v7;

      *(a1 + 4) = [v5 integerAtIndex:(a3 + 1)];
      v9 = [v5 stringAtIndex:(a3 + 2)];
      v10 = *(a1 + 5);
      *(a1 + 5) = v9;

      *(a1 + 6) = [v5 intAtIndex:(a3 + 3)];
      v11 = [v5 stringAtIndex:(a3 + 4)];
      v12 = *(a1 + 7);
      *(a1 + 7) = v11;

      v13 = [v5 stringAtIndex:(a3 + 5)];
      v14 = *(a1 + 8);
      *(a1 + 8) = v13;

      *(a1 + 9) = [v5 longAtIndex:(a3 + 6)];
      *(a1 + 8) = [v5 intAtIndex:(a3 + 7)] == 1;
      v15 = [v5 stringAtIndex:(a3 + 8)];
      v16 = [[CPLRecordPushContext alloc] initWithUploadIdentifier:v15 flags:objc_msgSend(v5 priority:{"integerAtIndex:", (a3 + 9)), objc_msgSend(v5, "unsignedIntegerAtIndex:", (a3 + 10))}];
      v17 = *(a1 + 10);
      *(a1 + 10) = v16;

      *(a1 + 3) = [v5 intAtIndex:(a3 + 11)];
      v18 = [v5 dataAtIndex:(a3 + 12)];
      v19 = *(a1 + 2);
      *(a1 + 2) = v18;
    }
  }

  return a1;
}

void *sub_1001C3044(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = a1[11];
      if (v4 && v2[6] != 1024)
      {
        v5 = [v4 copy];
        [v5 clearIdentifiers];
        [v5 prepareForStorage];
        v6 = [CPLArchiver archivedDataWithRootObject:v5];
        v7 = v2[2];
        v2[2] = v6;

        v3 = v2[2];
      }

      else
      {
        v3 = 0;
      }
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_1001C30DC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v12 = v4;
    objc_storeStrong((a1 + 88), a2);
    v5 = [v12 relatedIdentifier];
    v6 = [v5 copy];
    v7 = *(a1 + 56);
    *(a1 + 56) = v6;

    v8 = [v12 secondaryIdentifier];
    v9 = [v8 copy];
    v10 = *(a1 + 64);
    *(a1 + 64) = v9;

    *(a1 + 72) = [v12 dequeueOrder];
    if ([v12 isDelete])
    {
      v11 = 1;
    }

    else
    {
      v11 = [v12 inTrash];
    }

    *(a1 + 8) = v11;
    v4 = v12;
  }
}

void sub_1001C31AC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_1001C31BC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

id sub_1001C3814(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 unsignedIntegerAtIndex:0];
  v4 = sub_1001C2E78([CPLPrequelitePushedChange alloc], v3, 1);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  return v6;
}

void sub_1001C38A8()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = sub_1001749DC();
    if (sub_1000033C0(v1))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Scope index should have been set here", v4, 2u);
    }
  }

  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C3970(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [a1 identifier];
  v9 = [v8 copy];
  v10 = *(a2 + 40);
  *(a2 + 40) = v9;

  *(a2 + 48) = [a3 changeType];
  v11 = [a3 relatedIdentifier];
  v12 = [v11 copy];
  v13 = *(a2 + 56);
  *(a2 + 56) = v12;

  v14 = [a3 secondaryIdentifier];
  v15 = [v14 copy];
  v16 = *(a2 + 64);
  *(a2 + 64) = v15;

  *(a2 + 72) = [a3 dequeueOrder];
  if ([a3 isDelete])
  {
    v17 = 1;
  }

  else
  {
    v17 = [a3 inTrash];
  }

  *(a2 + 8) = v17;
  objc_storeStrong((a2 + 80), a4);
  if ([a3 _shouldNotTrustCloudCache])
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  *(a2 + 12) = v18;
  objc_storeStrong((a2 + 88), a3);
}

void sub_1001C3A94(void *a1, void *a2, uint64_t a3, void *a4)
{
  [a2 setScopeIndex:*a1];
  if (*(a3 + 48) == 1024)
  {
    v6 = [*(a3 + 24) newDeleteChangeWithScopedIdentifier:a2];
  }

  else
  {
    v7 = *(a3 + 88);
    if (v7)
    {
      v6 = [v7 copy];
      [v6 setScopedIdentifier:a2];
    }

    else
    {
      v8 = *(a3 + 16);
      if (v8)
      {
        v6 = [CPLArchiver unarchiveObjectWithData:v8 ofClass:objc_opt_class()];
        [v6 setScopedIdentifier:a2];
        [v6 setRelatedIdentifier:*(a3 + 56)];
        [v6 setSecondaryIdentifier:*(a3 + 64)];
        [v6 awakeFromStorage];
      }

      else
      {
        v6 = [*(a3 + 24) newChangeWithScopedIdentifier:a2 changeType:?];
        [v6 setRelatedIdentifier:*(a3 + 56)];
        [v6 setSecondaryIdentifier:*(a3 + 64)];
      }
    }
  }

  *a4 = v6;
  [v6 _setPushContext:*(a3 + 80)];
  if (*(a3 + 12) == 2)
  {
    [v6 _setShouldNotTrustCloudCache:1];
  }
}

void sub_1001C3BD4(void *a1)
{
  v2 = sub_1001749DC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1 mainTable];
    v4 = 138412546;
    v5 = v3;
    v6 = 2048;
    v7 = 84;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding indexes for local conflict resolution", &v4, 0x16u);
  }
}

void sub_1001C3C9C()
{
  sub_1000587D4();
  v17 = v0;
  v18 = v1;
  v3 = v2;
  v5 = v4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1001749DC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 mainTable];
      sub_10015F5C8();
      v16 = 83;
      sub_10017AA9C(&_mh_execute_header, v8, v9, "Upgrading %@ to version %llu: adding priority column", &v15);
    }
  }

  v10 = [v5 pqStore];
  v11 = [v10 pqlConnection];

  v12 = [v5 mainTable];
  v13 = [v11 cplExecute:{@"ALTER TABLE %@ ADD COLUMN priority INTEGER DEFAULT 0", v12}];

  if (v13)
  {
    v14 = [v5 _createIndexesWithPriority:1];
  }

  else
  {
    v14 = 0;
  }

  *v3 = v14;
}

void sub_1001C3DD8()
{
  sub_1000587D4();
  v17 = v0;
  v18 = v1;
  v3 = v2;
  v5 = v4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1001749DC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 mainTable];
      sub_10015F5C8();
      v16 = 75;
      sub_10017AA9C(&_mh_execute_header, v8, v9, "Upgrading %@ to version %llu: adding flags column", &v15);
    }
  }

  v10 = [v5 pqStore];
  v11 = [v10 pqlConnection];

  v12 = [v5 mainTable];
  v13 = [v11 cplExecute:{@"ALTER TABLE %@ ADD COLUMN flags INTEGER DEFAULT 0", v12}];

  if (v13)
  {
    v14 = [v5 createIndexWithName:@"flags" withDefinition:@"scopeIndex unique:flags" error:{0, 0}];
  }

  else
  {
    v14 = 0;
  }

  *v3 = v14;
}

void sub_1001C3F28(void *a1, char *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1001749DC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      v32 = 138412546;
      v33 = v5;
      v34 = 2048;
      v35 = 63;
      sub_10017AA9C(&_mh_execute_header, v6, v7, "Upgrading %@ to version %llu: adding serializedRecord column", &v32);
    }
  }

  v8 = [a1 pqStore];
  v9 = [v8 pqlConnection];

  v10 = [a1 mainTable];
  v11 = [v9 cplExecute:{@"ALTER TABLE %@ ADD COLUMN serializedRecord DATA DEFAULT NULL", v10}];

  if (v11)
  {
    v12 = [a1 pqStore];
    v13 = [v12 clientCache];
    v14 = [v13 mainTable];

    v15 = [a1 mainTable];
    v16 = [v9 cplFetch:{@"SELECT %@.rowid, %@.changeType, %@.serializedRecord FROM %@, %@ WHERE %@.scopeIndex = %@.scopeIndex AND %@.identifier = %@.identifier AND (changeType != %ld AND changeType != %ld)", v15, v15, v14, v15, v14, v15, v14, v15, v14, 1024, 0}];
    v31 = 0;
    while ([v16 next])
    {
      while (1)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = [v16 integerAtIndex:0];
        v19 = [v16 integerAtIndex:1];
        v20 = [v16 cplChangeAtIndex:2];
        if (v20)
        {
          break;
        }

        objc_autoreleasePoolPop(v17);
        if (([v16 next] & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v21 = v20;
      v30 = a2;
      v22 = [v20 copyChangeType:v19];
      v23 = [CPLArchiver archivedDataWithRootObject:v22];
      v24 = v23;
      if (v23)
      {
        v25 = [v9 execute:{@"UPDATE %@ SET serializedRecord = %@ WHERE rowid = %ld", v15, v23, v18}];
        v26 = v25;
        v31 += v25;
      }

      else
      {
        v26 = 1;
      }

      objc_autoreleasePoolPop(v17);
      a2 = v30;
      if ((v26 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_17:
    if (![v9 execute:{@"UPDATE %@ SET serializedRecord = (SELECT serializedRecord FROM %@ WHERE scopeIndex = %@.scopeIndex AND identifier = %@.identifier) WHERE changeType = %ld", v15, v14, v15, v15, 0}])
    {
LABEL_21:
      v27 = 0;
      goto LABEL_22;
    }

    v28 = [v9 changes] + v31;
    if (v28 >= 1)
    {
      v29 = [a1 pqStore];
      [v29 recordUpgradeEvent:{@"Transferred %lld records from client cache to push repository", v28}];
    }

    v27 = 1;
LABEL_22:
  }

  else
  {
    v27 = 0;
  }

  *a2 = v27;
}

void sub_1001C4240()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C42B4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C4328()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

id sub_1001C4468(char a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    v29 = NSStringFromClass(0);
    v7 = 0;
    v6 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v22 = 0;
    v8 = 0;
  }

  else
  {
    v29 = NSStringFromClass(*(a2 + 24));
    v25 = *(a2 + 32);
    v27 = *(a2 + 40);
    v24 = *(a2 + 48);
    v26 = *(a2 + 56);
    v6 = *(a2 + 64);
    v7 = *(a2 + 8);
    v8 = *(a2 + 80);
    v22 = *(a2 + 72);
  }

  v23 = v8;
  v9 = [v23 uploadIdentifier];
  if (a1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a2 + 80);
  }

  v11 = v10;
  v12 = [v11 flags];
  if (a1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 80);
  }

  v14 = v13;
  v15 = [v14 priority];
  if (a1)
  {
    v17 = sub_1001C3044(0);
    v18 = 0;
    v16 = 0;
    v19 = 0;
  }

  else
  {
    v16 = *(a2 + 12);
    v17 = sub_1001C3044(a2);
    v18 = *(a2 + 32);
    v19 = *(a2 + 40);
  }

  v20 = [a3 cplExecute:{@"UPDATE %@ SET class = %@, scopeIndex = %ld, identifier = %@, changeType = %i, relatedIdentifier = %@, secondaryIdentifier = %@, dequeueOrder = %ld, trashed = %i, uploadIdentifier = %@, flags = %ld, priority = %lu, trustLevel = %i, serializedRecord = %@ WHERE scopeIndex = %ld AND identifier = %@", a4, v29, v25, v27, v24, v26, v6, v22, v7, v9, v12, v15, v16, v17, v18, v19}];

  return v20;
}

id sub_1001C47F0(void *a1)
{
  result = [0 uploadIdentifier];
  *a1 = result;
  return result;
}

void sub_1001C4A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10002B0F4();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  if (_CPLSilentLogging != 1)
  {
    v24 = sub_1001749DC();
    if (sub_1000033C0(v24))
    {
      v25 = [v23 abstractObject];
      LODWORD(a11) = 138412290;
      *(&a11 + 4) = v25;
      sub_1000139CC(&_mh_execute_header, v19, v26, "%@ should not manage the extracted batch", &a11);
    }
  }

  v27 = +[NSAssertionHandler currentHandler];
  v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  v29 = [v23 abstractObject];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C4B80(void *a1)
{
  v1 = objc_begin_catch(a1);
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_1001749DC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v1;
      sub_1000139CC(&_mh_execute_header, v2, v3, "Stored extracted batch does not seem supported anymore (%@)", &v4);
    }
  }

  objc_end_catch();
}

void sub_1001C4C48()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v0 = sub_1001749DC();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Failed to decode extracted batch", v2, 2u);
    }
  }

  v1 = _CPLStoreFailure();
  sub_1001C4CBC(v1);
}

void sub_1001C4CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1000587D4();
  a20 = v22;
  a21 = v23;
  v25 = v24;
  if (_CPLSilentLogging != 1)
  {
    v26 = sub_1001749DC();
    if (sub_1000033C0(v26))
    {
      v27 = [v25 abstractObject];
      LODWORD(a11) = 138412290;
      *(&a11 + 4) = v27;
      sub_1000139CC(&_mh_execute_header, v21, v28, "%@ should not manage the extracted batch", &a11);
    }
  }

  v29 = +[NSAssertionHandler currentHandler];
  v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  v31 = [v25 abstractObject];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C4DC8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1001749DC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218242;
      v8 = a2;
      v9 = 2114;
      v10 = a1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reset priority for %llu records in %{public}@", &v7, 0x16u);
    }
  }

  *a3 = 1;
}

void sub_1001C52B0(uint8_t *a1, uint64_t a2, void *a3)
{
  v6 = sub_1001749DC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *a1 = 138412290;
    *a3 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ still has contributors to update", a1, 0xCu);
  }
}

void sub_1001C5410(uint64_t a1)
{
  v2 = sub_1001749DC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Acknowledged %lu contributors updates", &v3, 0xCu);
  }
}

id sub_1001C58A4(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10017AAD4();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Running on a undetermined OS build", v4, 2u);
    }
  }

  return [*(a1 + 8) removeObjectForKey:@"lastSeenOSBuildVersion"];
}

id *sub_1001C5930(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = CPLPrequeliteRemappedRecord;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

void sub_1001C59CC(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10017BE9C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing unused deleteDate column", v7, 2u);
    }
  }

  v5 = [a1 pqStore];
  v6 = [v5 pqlConnection];

  *a2 = [v6 cplExecute:@"ALTER TABLE remappedDeletes DROP COLUMN deleteDate"];
}

void sub_1001C5AA0(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10017BE9C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removed %@ from remapped records", &v3, 0xCu);
    }
  }
}

void sub_1001C5CB0(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10017DA04();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      *buf = 138412546;
      v20 = v5;
      v21 = 2048;
      v22 = 63;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding class column", buf, 0x16u);
    }
  }

  v6 = [a1 pqStore];
  v7 = [v6 pqlConnection];

  v8 = [a1 mainTable];
  v9 = [v7 cplExecute:{@"ALTER TABLE %@ ADD COLUMN class TEXT DEFAULT NULL", v8}];

  if (v9)
  {
    v10 = [a1 pqStore];
    v11 = [v10 clientCache];
    v12 = [v11 mainTable];

    v13 = [a1 mainTable];
    v14 = [v7 cplExecute:{@"UPDATE %@ SET class = (SELECT class FROM %@ WHERE identifier = %@.localIdentifier AND scopeIndex = %@.scopeIndex)", v13, v12, v13, v13}];
    v15 = v14;
    if (v14)
    {
      v16 = [v7 changes];
      if (v16 >= 1)
      {
        v17 = v16;
        v18 = [a1 pqStore];
        [v18 recordUpgradeEvent:{@"Updated quarantined record classes from client cache for %lld records", v17}];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  *a2 = v15;
}

void sub_1001C5EE0(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v8 = 0x404E000000000000;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Expiration interval should be greater or equal to %f", buf, 0xCu);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteTodoVar.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:53 description:{@"Expiration interval should be greater or equal to %f", 0x404E000000000000}];

  abort();
}

void sub_1001C7A04(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_1001805BC();
    if (sub_1000033C0(v5))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Trying to store a file without an finger print", v8, 2u);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Resources/CPLBucketFileStorage.m"];
  [v6 handleFailureInMethod:a1 object:a2 file:v7 lineNumber:77 description:@"Trying to store a file without an finger print"];

  abort();
}

void sub_1001C7AE4()
{
  sub_10015F5DC();
  v2 = sub_1001805BC();
  if (sub_10000FAE0(v2))
  {
    v3 = [v1 lastPathComponent];
    sub_1000ACA54();
    sub_100181C30();
    _os_log_impl(v4, v5, v6, v7, v8, v9);
  }
}

void sub_1001C7B94()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_10015F5DC();
    v2 = sub_1001805BC();
    if (sub_10000FAE0(v2))
    {
      v3 = [v1 lastPathComponent];
      sub_1000ACA54();
      sub_100181C30();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }
  }
}

void sub_1001C7C54()
{
  sub_10015F5DC();
  v2 = sub_1001805BC();
  if (sub_10000FAE0(v2))
  {
    v3 = [v1 lastPathComponent];
    sub_1000ACA54();
    sub_100181C30();
    _os_log_impl(v4, v5, v6, v7, v8, v9);
  }
}

void sub_1001C7D04()
{
  sub_10015F5DC();
  v2 = sub_1001805BC();
  if (sub_10000FAE0(v2))
  {
    v3 = [v1 lastPathComponent];
    sub_1000ACA54();
    sub_100181C30();
    _os_log_impl(v4, v5, v6, v7, v8, v9);
  }
}

void sub_1001C7F4C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_1001821D8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ got test notification of external changes: %@", &v7, 0x16u);
    }
  }

  v6 = [v4 abstractObject];
  [v6 noteServerHasChanges];
}

void sub_1001C8038(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_1001821D8();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Initializing %@", &v9, 0xCu);
    }
  }

  v3 = CPLCopyDefaultSerialQueueAttributes();
  v4 = dispatch_queue_create("com.apple.cpl.scheduler", v3);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;

  v6 = CPLCopyDefaultSerialQueueAttributes();
  v7 = dispatch_queue_create("com.apple.cpl.scheduler.sequenceNumber", v6);
  v8 = *(a1 + 24);
  *(a1 + 24) = v7;
}

void sub_1001C8168(void **a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_1001821D8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*a1 + a2);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting requested %@ after dropping persisted sync session", &v8, 0xCu);
    }

    a3 = *a1;
  }

  v7 = [a3 abstractObject];
  [v7 startRequiredSyncSessionNow:*(*a1 + a2)];
}

void sub_1001C8254(void *a1, uint64_t a2)
{
  v4 = sub_1001821D8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*a1 + a2);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Delaying start of %@ while still looking for persisted sync session", &v6, 0xCu);
  }
}

uint64_t dispatch thunk of Decoder.decodeSingularDoubleField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

NSSize NSSizeFromString(NSString *aString)
{
  v3 = _NSSizeFromString(aString);
  height = v3.height;
  width = v3.width;
  result.height = height;
  result.width = width;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}