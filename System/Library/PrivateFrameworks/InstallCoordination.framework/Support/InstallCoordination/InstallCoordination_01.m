id IXCreateUserPresentableError(unint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = objc_opt_new();
    v7 = v6;
    if (v5)
    {
      [v6 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];
      v8 = [v5 userInfo];
      v9 = [v8 objectForKeyedSubscript:NSLocalizedDescriptionKey];

      if (v9)
      {
        [v7 setObject:v9 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
        [v7 setObject:v9 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
      }
    }

    if (a2)
    {
      [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"AlertUser"];
    }

    v10 = IXStringForIXError(@"IXUserPresentableErrorDomain", a1);
    [v7 setObject:v10 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    if (a1 >= 0x13)
    {
      v11 = [NSString stringWithFormat:@"Unhandled IXUserPresentableErrorCode %lu", a1];
    }

    else
    {
      v11 = off_1001022E8[a1 - 1];
    }

    [v7 setObject:v11 forKeyedSubscript:NSLocalizedDescriptionKey];

    v13 = [NSError errorWithDomain:@"IXUserPresentableErrorDomain" code:a1 userInfo:v7];
  }

  else
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10009E518(v12);
    }

    v13 = 0;
  }

  return v13;
}

uint64_t IXUserPresentableErrorCodeIsHardError(unint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1D)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = 0xF7FFFFDu >> a2;
  }

  if (((1 << a1) & 0x34010) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (((1 << a1) & 0xA1E4) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a1 > 0x11)
  {
    v4 = 0;
  }

  return v4 & 1;
}

id sub_100039AA4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) seed];
  [v3 setTransferPath:v2];

  v4 = *(a1 + 32);

  return [v4 saveState];
}

id sub_100039BAC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) seed];
  [v3 setShouldCopy:v2];

  v4 = *(a1 + 32);

  return [v4 saveState];
}

id sub_100039CB8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) seed];
  [v3 setTryDeltaCopy:v2];

  v4 = *(a1 + 32);

  return [v4 saveState];
}

void sub_10003A03C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  v12 = v6;
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    if (!v12)
    {
      goto LABEL_7;
    }

    v8 = [[IXAppRemovabilityMetadata alloc] initWithMetadataDictionary:v12];
    v9 = v8;
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = [NSNumber numberWithUnsignedInteger:[(IXAppRemovabilityMetadata *)v8 client]];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }
  }

  v7 = v12;
LABEL_7:
  *a4 = 0;
}

void sub_10003A250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003A274(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003A28C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = v7;
  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 40))
  {
    v10 = *(*(*(a1 + 40) + 8) + 24);
    if (v10 >= [v7 removability])
    {
      goto LABEL_5;
    }

    v9 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v9 + 40), a3);
  *(*(*(a1 + 40) + 8) + 24) = [*(*(*(a1 + 32) + 8) + 40) removability];
LABEL_5:
  *a4 = 0;
}

void sub_10003A708(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = [a3 description];
  [v5 addObject:v6];

  *a4 = 0;
}

void sub_10003A894(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = [a3 dictionaryRepresentation];
  [v5 addObject:v6];

  *a4 = 0;
}

BOOL sub_10003AB94(void *a1)
{
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  if (v2 >= 0x20)
  {
    [NSException raise:NSInvalidArgumentException format:@"Identifier %s must be less <= %d bytes in length but was %ld bytes", v1, 31, v2];
  }

  v3 = sem_open(v1, 0);
  v4 = v3;
  if (v3 != -1)
  {
    sem_close(v3);
  }

  return v4 == -1;
}

void sub_10003AC28(void *a1)
{
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  if (v2 >= 0x20)
  {
    [NSException raise:NSInvalidArgumentException format:@"Identifier %s must be less <= %d bytes in length but was %ld bytes", v1, 31, v2];
  }

  v3 = sem_open(v1, 512, 256, 0);
  if (v3 == -1)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 136315650;
      v8 = "IXSetOncePerBootWorkCompleted";
      v9 = 2080;
      v10 = v1;
      v11 = 2080;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to create semaphore %s: %s", buf, 0x20u);
    }
  }

  else
  {

    sem_close(v3);
  }
}

BOOL sub_10003AD98(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_10003AB94(v3);
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v4[2](v4);
    objc_autoreleasePoolPop(v6);
    sub_10003AC28(v3);
  }

  return v5;
}

__CFString *sub_10003AE14(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [NSString stringWithFormat:@"Unknown Coordinator Scope Requirement: %hhu", a1];
  }

  else
  {
    v2 = off_1001023F0[a1];
  }

  return v2;
}

uint64_t sub_10003AF28(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = atomic_load(byte_100121D70);
  if (v6)
  {
    if (qword_100121D88 != -1)
    {
      sub_10009E59C();
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_10003B0AC;
    v19 = sub_10003B0BC;
    v20 = 0;
    v7 = qword_100121D78;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003B0C4;
    v10[3] = &unk_100102438;
    v11 = v5;
    v12 = &v15;
    v13 = &v21;
    v14 = a2;
    dispatch_sync(v7, v10);
    v8 = *(v22 + 24);
    if (a3 && (v22[3] & 1) != 0)
    {
      *a3 = v16[5];
      v8 = *(v22 + 24);
    }

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_10003B0AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003B0C4(uint64_t a1)
{
  v2 = qword_100121D80;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003B168;
  v3[3] = &unk_100102410;
  v4 = *(a1 + 32);
  v6 = *(a1 + 56);
  v5 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_10003B168(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if ([v13 mode] == *(a1 + 56))
          {
            v14 = [v13 testSpecificValidationData];
            v15 = v14;
            if (v14)
            {
              v16 = [v14 copy];
              v17 = *(*(a1 + 40) + 8);
              v18 = *(v17 + 40);
              *(v17 + 40) = v16;
            }

            *(*(*(a1 + 48) + 8) + 24) = 1;
            *a4 = 1;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }
}

void sub_10003B2E8(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (qword_100121D88 != -1)
  {
    sub_10009E59C();
  }

  v7 = qword_100121D78;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B3CC;
  block[3] = &unk_1001018D0;
  v12 = v5;
  v13 = a2;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_sync(v7, block);
}

void sub_10003B3CC(void *a1)
{
  v3 = [[TestModeMetadata alloc] initWithMode:a1[6] testSpecificValidationData:a1[4]];
  v2 = [qword_100121D80 objectForKeyedSubscript:a1[5]];
  if (!v2)
  {
    v2 = [NSMutableArray arrayWithCapacity:0];
    [qword_100121D80 setObject:v2 forKeyedSubscript:a1[5]];
  }

  [v2 addObject:v3];
}

void sub_10003B494()
{
  atomic_store(0, byte_100121D70);
  if (qword_100121D88 != -1)
  {
    sub_10009E59C();
  }

  v1 = qword_100121D78;

  dispatch_sync(v1, &stru_100102458);
}

void sub_10003B4F8(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.installcoordinationd.TestMode", v1);
  v3 = qword_100121D78;
  qword_100121D78 = v2;

  qword_100121D80 = [NSMutableDictionary dictionaryWithCapacity:0];

  _objc_release_x1();
}

uint64_t sub_10003B61C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121D90 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

uint64_t sub_10003B9C4(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1000BAC48[a1 - 1];
  }
}

uint64_t sub_10003C94C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121DA0 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10003D208(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingOperationIdentities];
  v3 = [v2 containsObject:*(a1 + 40)];

  v4 = sub_1000031B0(off_100121958);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009EC40((a1 + 40));
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v8 = 136315394;
      v9 = "[IXSPendingOperationsTracker beginPendingOperationForIdentity:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Beginning pending operation for %@", &v8, 0x16u);
    }

    v7 = [*(a1 + 32) pendingOperationIdentities];
    [v7 addObject:*(a1 + 40)];

    [*(a1 + 32) _onQueue_writePendingWork];
  }
}

void sub_10003D3FC(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingOperationIdentities];
  v3 = [v2 containsObject:*(a1 + 40)];

  v4 = sub_1000031B0(off_100121958);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v8 = 136315394;
      v9 = "[IXSPendingOperationsTracker endPendingOperationForIdentity:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Ending pending operation for %@", &v8, 0x16u);
    }

    v7 = [*(a1 + 32) pendingOperationIdentities];
    [v7 removeObject:*(a1 + 40)];

    [*(a1 + 32) _onQueue_writePendingWork];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009ECB8((a1 + 40));
    }
  }
}

void sub_10003D640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003D658(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003D670(uint64_t a1)
{
  v5 = [*(a1 + 32) pendingOperationIdentities];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10003D75C(uint64_t a1)
{
  v2 = [*(a1 + 32) sentinelPath];
  v3 = +[IXFileManager defaultManager];
  v7 = 0;
  v4 = [v3 removeItemAtURL:v2 error:&v7];
  v5 = v7;

  if (v4)
  {
    v6 = [*(a1 + 32) pendingOperationIdentities];
    [v6 removeAllObjects];
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009ED30();
    }
  }
}

__CFString *sub_10003E49C(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [NSString stringWithFormat:@"Unknown uninstall disposition: %lu", a1];
  }

  else
  {
    v2 = off_100102520[a1];
  }

  return v2;
}

uint64_t sub_10003E50C(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1000BAC88[a1 - 1];
  }
}

uint64_t IXRemoveItemAtURL(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = removefile_state_alloc();
  v8 = v6;
  value = 0;
  if (!v5)
  {
    v18 = NSPOSIXErrorDomain;
    v19 = @"nil url passed to -removeItemAtURL:error:";
    v20 = 54;
    v21 = 14;
LABEL_19:
    sub_1000405FC("IXRemoveItemAtURL", v20, v18, v21, 0, 0, v19, v7, v28);
    goto LABEL_20;
  }

  if (removefile_state_set(v6, 3u, sub_10003E810))
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 136315394;
      v31 = "IXRemoveItemAtURL";
      v32 = 2080;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: removefile_state_set REMOVEFILE_STATE_ERROR_CALLBACK failed: %s", buf, 0x16u);
    }
  }

  if (removefile_state_set(v8, 4u, &value))
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 136315394;
      v31 = "IXRemoveItemAtURL";
      v32 = 2080;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: removefile_state_set REMOVEFILE_STATE_ERROR_CONTEXT failed: %s", buf, 0x16u);
    }
  }

  if (a2)
  {
    v15 = 3;
  }

  else
  {
    v15 = 1;
  }

  if (removefile([v5 fileSystemRepresentation], v8, v15) && *__error() != 2)
  {
    v22 = *__error();
    v23 = __error();
    v28 = v5;
    strerror(*v23);
    v19 = @"removefile of %@ failed: %s";
    v20 = 75;
    v18 = NSPOSIXErrorDomain;
    v21 = v22;
    goto LABEL_19;
  }

  v16 = value;
  if ((value & 0xFFFFFFFD) == 0)
  {
    removefile_state_free(v8);
    v24 = 0;
    v26 = 1;
    goto LABEL_24;
  }

  strerror(value);
  sub_1000405FC("IXRemoveItemAtURL", 81, NSPOSIXErrorDomain, v16, 0, 0, @"removefile of %@ failed: %s", v17, v5);
  v24 = LABEL_20:;
  removefile_state_free(v8);
  if (a3)
  {
    v25 = v24;
    v26 = 0;
    *a3 = v24;
  }

  else
  {
    v26 = 0;
  }

LABEL_24:

  return v26;
}

uint64_t sub_10003E810(_removefile_state *a1, uint64_t a2, _DWORD *a3)
{
  dst = 0;
  if (removefile_state_get(a1, 5u, &dst))
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "_removefile_error_callback";
      v12 = 2080;
      v13 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: removefile hit error for %s but we failed to get the error number", buf, 0x16u);
    }

    dst = 2;
  }

  else if (dst != 2)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = strerror(dst);
      *buf = 136315650;
      v11 = "_removefile_error_callback";
      v12 = 2080;
      v13 = a2;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: removefile hit error for %s : %s", buf, 0x20u);
    }
  }

  if (a3 && !*a3)
  {
    *a3 = dst;
  }

  return 0;
}

BOOL IXCopyItemAtURL(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  if ((a3 & 1) != 0 || (memset(&v19, 0, sizeof(v19)), !lstat([v7 fileSystemRepresentation], &v19)))
  {
    if (!copyfile([v7 fileSystemRepresentation], objc_msgSend(v8, "fileSystemRepresentation"), 0, 0x10C800Fu))
    {
      v17 = 0;
      v10 = 1;
      goto LABEL_14;
    }

    v11 = *__error();
    v12 = __error();
    strerror(*v12);
    v17 = sub_1000405FC("IXCopyItemAtURL", 121, NSPOSIXErrorDomain, v11, 0, 0, @"copyfile of %@ to %@ failed: %s", v13, v7);
    v10 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = *__error();
    v10 = v9 == 2;
    if (v9 == 2)
    {
      v17 = 0;
      if (!a4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = *__error();
      v15 = __error();
      strerror(*v15);
      v17 = sub_1000405FC("IXCopyItemAtURL", 106, NSPOSIXErrorDomain, v14, 0, 0, @"stat of %@ failed: %s", v16, v7);
      if (!a4)
      {
        goto LABEL_14;
      }
    }
  }

  if (!v10)
  {
    v17 = v17;
    v10 = 0;
    *a4 = v17;
  }

LABEL_14:

  return v10;
}

BOOL IXItemExistsAtURL(void *a1, BOOL *a2, void *a3)
{
  v5 = a1;
  memset(&v13, 0, sizeof(v13));
  v6 = lstat([v5 fileSystemRepresentation], &v13);
  if (v6)
  {
    v7 = *__error();
    if (v7 != 2)
    {
      v8 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = strerror(v7);
        *buf = 136315650;
        v15 = "IXItemExistsAtURL";
        v16 = 2112;
        v17 = v5;
        v18 = 2080;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to determine if %@ exists: %s", buf, 0x20u);
      }
    }

    if (a3)
    {
      v10 = [v5 fileSystemRepresentation];
      strerror(v7);
      *a3 = sub_1000405FC("IXItemExistsAtURL", 155, NSPOSIXErrorDomain, v7, 0, 0, @"lstat of %s failed: %s", v11, v10);
    }
  }

  else if (a2)
  {
    *a2 = (v13.st_mode & 0xF000) == 0x4000;
  }

  return v6 == 0;
}

BOOL IXCreateDirectoryAtURL(void *a1, int a2, mode_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = [v9 fileSystemRepresentation];
  if (a2)
  {
    v11 = mkpath_np(v10, a3);
    if (v11)
    {
      v12 = v11;
      if (v11 != 17)
      {
        v13 = [v9 path];
        strerror(v12);
        v15 = sub_1000405FC("IXCreateDirectoryAtURL", 171, NSPOSIXErrorDomain, v12, 0, 0, @"mkpath_np of %@ failed: %s", v14, v13);

        goto LABEL_15;
      }
    }
  }

  else if (mkdir(v10, a3) && *__error() != 17)
  {
    v29 = *__error();
    v26 = [v9 path];
    v30 = __error();
    strerror(*v30);
    sub_1000405FC("IXCreateDirectoryAtURL", 177, NSPOSIXErrorDomain, v29, 0, 0, @"mkdir of %@ failed: %s", v31, v26);
    goto LABEL_14;
  }

  if (a4 == -1)
  {
    v15 = 0;
    v20 = 1;
    goto LABEL_21;
  }

  v16 = opendir([v9 fileSystemRepresentation]);
  if (!v16)
  {
    v25 = *__error();
    v26 = [v9 path];
    v27 = __error();
    strerror(*v27);
    sub_1000405FC("IXCreateDirectoryAtURL", 189, NSPOSIXErrorDomain, v25, 0, 0, @"opendir of %@ failed: %s", v28, v26);
    v15 = LABEL_14:;

LABEL_15:
    v20 = 0;
    if (!a5)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v17 = v16;
  v18 = dirfd(v16);
  v19 = fcntl(v18, 64, a4);
  v20 = v19 == 0;
  if (v19)
  {
    v21 = *__error();
    v22 = [v9 path];
    v23 = __error();
    strerror(*v23);
    v15 = sub_1000405FC("IXCreateDirectoryAtURL", 195, NSPOSIXErrorDomain, v21, 0, 0, @"Failed to setclass(%d) on directory %@: %s", v24, a4);
  }

  else
  {
    v15 = 0;
  }

  closedir(v17);
  if (a5)
  {
LABEL_19:
    if (!v20)
    {
      v32 = v15;
      v20 = 0;
      *a5 = v15;
    }
  }

LABEL_21:

  return v20;
}

id IXUrlsForItemsInDirectoryAtURL(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = objc_opt_new();
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v7 = v35;
  v35[0] = sub_10003F340;
  v35[1] = &unk_100102558;
  v38 = a2;
  v8 = v5;
  v36 = v8;
  v9 = v6;
  v37 = v9;
  v10 = v8;
  v11 = v34;
  memset(&v41, 0, 512);
  v39 = 0;
  v12 = open([v10 fileSystemRepresentation], 1048832);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = fdopendir(v12);
    if (v13)
    {
      v14 = v13;
      v32 = v9;
      v33 = a3;
      while (1)
      {
        v15 = readdir_r(v14, &v41, &v39);
        if (v15 || !v39)
        {
LABEL_17:
          closedir(v14);
          v9 = v32;
          a3 = v33;
          goto LABEL_19;
        }

        v16 = objc_autoreleasePoolPush();
        v17 = v39;
        if (!v39->d_type)
        {
          break;
        }

LABEL_16:
        v25 = (v35[0])(v11, v17);
        objc_autoreleasePoolPop(v16);
        if ((v25 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v18 = v7;
      memset(&v40, 0, sizeof(v40));
      d_namlen = v39->d_namlen;
      v20 = v10;
      v21 = [NSString stringWithFileSystemRepresentation:v17->d_name length:d_namlen];
      v22 = [v20 URLByAppendingPathComponent:v21 isDirectory:0];

      if (!lstat([v22 fileSystemRepresentation], &v40))
      {
        v23 = v40.st_mode & 0xF000;
        switch(v23)
        {
          case 16384:
            v24 = 4;
            goto LABEL_14;
          case 32768:
            v24 = 8;
            goto LABEL_14;
          case 40960:
            v24 = 10;
LABEL_14:
            v17->d_type = v24;
            break;
        }
      }

      v17 = v39;
      v7 = v18;
      goto LABEL_16;
    }
  }

  v15 = *__error();
LABEL_19:

  if (v15)
  {
    v26 = [v10 fileSystemRepresentation];
    strerror(v15);
    v28 = sub_1000405FC("IXUrlsForItemsInDirectoryAtURL", 298, NSPOSIXErrorDomain, v15, 0, 0, @"_IterateDirectory for %s returned %s", v27, v26);
    v29 = 0;
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v29 = [v9 copy];
    v28 = 0;
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  if (!v29)
  {
    v30 = v28;
    *a3 = v28;
  }

LABEL_25:

  return v29;
}

uint64_t sub_10003F340(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 21;
  if (*(a2 + 21) != 46 || *(a2 + 22) && (*(a2 + 22) != 46 || *(a2 + 23)))
  {
    if (*(a2 + 20) == 10 && *(a1 + 48) == 1)
    {
      v5 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10009EDCC(a1, v4, v5);
      }
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = [NSString stringWithFileSystemRepresentation:a2 + 21 length:*(a2 + 18)];
      v5 = [v6 URLByAppendingPathComponent:v7 isDirectory:*(a2 + 20) == 4];

      if (v5)
      {
        [*(a1 + 40) addObject:v5];
      }

      else
      {
        v8 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(a1 + 32) path];
          v11 = 136315650;
          v12 = "IXUrlsForItemsInDirectoryAtURL_block_invoke";
          v13 = 2080;
          v14 = v4;
          v15 = 2112;
          v16 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to create URL by appending %s to %@", &v11, 0x20u);
        }
      }
    }
  }

  return 1;
}

id IXCreateTemporaryDirectoryInDirectoryURL(void *a1, void *a2)
{
  v3 = [a1 URLByAppendingPathComponent:@"temp.XXXXXX" isDirectory:1];
  v4 = strdup([v3 fileSystemRepresentation]);
  if (mkdtemp(v4))
  {
    v5 = [NSURL fileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0];
    v6 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = __error();
    v6 = sub_1000405FC("IXCreateTemporaryDirectoryInDirectoryURL", 321, NSPOSIXErrorDomain, *v7, 0, 0, @"Failed to create temp dir at path %s", v8, v4);
    v5 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if (!v5)
  {
    v9 = v6;
    *a2 = v6;
  }

LABEL_7:
  free(v4);

  return v5;
}

id sub_10003FB30()
{
  if (qword_100121DB8 != -1)
  {
    sub_10009EE80();
  }

  v1 = qword_100121DB0;

  return v1;
}

void sub_10003FB74(id a1)
{
  v5 = objc_opt_new();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.installcoordination.IXSInstallProgressServer", v1);

  v3 = [[IPProgressServer alloc] initWithDelegate:v5 delegateQueue:v2];
  v4 = qword_100121DB0;
  qword_100121DB0 = v3;
}

void sub_10003FDD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"resume";
      v6 = *(a1 + 32);
      v8 = "[IXSInstallProgressServer _setIsPaused:forIdentity:]_block_invoke";
      v7 = 136315650;
      v9 = 2112;
      if (v6)
      {
        v5 = @"pause";
      }

      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to %@ coordinator, ignoring request: %@", &v7, 0x20u);
    }
  }
}

id sub_100040078(void *a1, void *a2)
{
  v3 = a1;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:v3 forKey:NSKeyedArchiveRootObjectKey];
  v5 = [v4 encodedData];

  if (a2 && !v5)
  {
    v6 = 0;
    *a2 = 0;
  }

  return v5;
}

id sub_100040430(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v17)
  {
    v19 = [v17 mutableCopy];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  v21 = IXStringForIXError(v15, a4);
  [v20 setObject:v21 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

  if (v18)
  {
    v22 = [[NSString alloc] initWithFormat:v18 arguments:a8];
    [v20 setObject:v22 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v23 = [NSString stringWithUTF8String:a1];
  [v20 setObject:v23 forKeyedSubscript:@"FunctionName"];

  v24 = [NSNumber numberWithInt:a2];
  [v20 setObject:v24 forKeyedSubscript:@"SourceFileLine"];

  v25 = [NSError errorWithDomain:v15 code:a4 userInfo:v20];

  return v25;
}

id sub_1000405FC(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_100040430(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

uint64_t sub_1000406DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121DC0 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

BOOL sub_10004142C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 88);
  v4 = v3 > 0xC;
  v5 = (1 << v3) & 0x110A;
  if (v4 || v5 == 0)
  {
    return 1;
  }

  v9 = *(a2 + 48);
  v10 = lchmod(v9, *(a1 + 32));
  if (a3 && v10)
  {
    v11 = *__error();
    v12 = v11;
    v17 = *(a1 + 32);
    strerror(v11);
    v14 = sub_1000405FC("[IXFileManager setPermissions:onAllChildrenOfPath:error:]_block_invoke", 304, NSPOSIXErrorDomain, v12, 0, 0, @"Failed to lchmod %s to mode 0%o : %s", v13, v9);
    v15 = v14;
    result = 0;
    *a3 = v14;
    return result;
  }

  return !v10;
}

BOOL sub_1000415C0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 88);
  v4 = v3 > 0xC;
  v5 = (1 << v3) & 0x110A;
  if (v4 || v5 == 0)
  {
    return 1;
  }

  v9 = *(a2 + 48);
  v10 = lchown(v9, *(a1 + 32), *(a1 + 36));
  if (a3 && v10)
  {
    v11 = *__error();
    v12 = v11;
    v13 = *(a1 + 32);
    v18 = *(a1 + 36);
    strerror(v11);
    v15 = sub_1000405FC("[IXFileManager standardizeOwnershipAtURL:toUID:toGID:error:]_block_invoke", 337, NSPOSIXErrorDomain, v12, 0, 0, @"Failed to lchown %s with uid/gid %d/%d : %s", v14, v9);
    v16 = v15;
    result = 0;
    *a3 = v15;
    return result;
  }

  return !v10;
}

uint64_t sub_10004186C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 88);
  result = 1;
  v6 = v4 > 8;
  v7 = (1 << v4) & 0x10A;
  if (!v6 && v7 != 0)
  {
    v10 = *(a2 + 48);
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10009F494(v10, v11);
    }

    if (!acl_set_link_np(v10, ACL_TYPE_EXTENDED, *(a1 + 32)))
    {
      return 1;
    }

    v13 = *__error();
    if (*(a1 + 40) == 1)
    {
      v14 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v18 = "[IXFileManager copyACLFrom:toAllChildrenOfPath:ignoringCopyErrors:error:]_block_invoke";
        v19 = 2080;
        v20 = strerror(v13);
        v21 = 2080;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Ignoring error %s from acl_set_link_np for %s", buf, 0x20u);
      }

      return 1;
    }

    if (a3)
    {
      v15 = sub_1000405FC("[IXFileManager copyACLFrom:toAllChildrenOfPath:ignoringCopyErrors:error:]_block_invoke", 398, NSPOSIXErrorDomain, v13, 0, 0, @"acl_set_link_np for %s failed", v12, v10);
      v16 = v15;
      result = 0;
      *a3 = v15;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100044134(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void sub_100044164(void *a1, char *a2, unint64_t a3, int a4, void *a5)
{
  v9 = a5;
  v10 = [a1 path];
  bzero(&v75, 0x878uLL);
  if (!statfs([v10 fileSystemRepresentation], &v75))
  {
    v16 = v75.f_bavail * v75.f_bsize;
    if (v16 >> 23 <= 0x18)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16 - 209715200;
    }

    v18 = &a2[-a3];
    if (a2 < a3)
    {
      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v56 = "IXPreflightWithCacheDelete";
        v57 = 2112;
        v58 = v10;
        v59 = 2048;
        v60 = a2;
        v61 = 2048;
        v62 = a3;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: Preflight for %@: bytes consumed (%llu) greater than total bytes needed (%llu): space needed cannot be determined.", buf, 0x2Au);
      }

      goto LABEL_13;
    }

    if (v18 <= v17)
    {
      v12 = sub_1000031B0(off_100121958);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      *buf = 136315906;
      v56 = "IXPreflightWithCacheDelete";
      v57 = 2112;
      v58 = v10;
      v59 = 2048;
      v60 = v18;
      v61 = 2048;
      v62 = v17;
      v13 = "%s: Preflight for %@: %llu bytes needed, %llu bytes available.";
      v14 = v12;
      v15 = 42;
      goto LABEL_4;
    }

    v73 = @"CACHE_DELETE_VOLUME";
    v74 = v10;
    v20 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v21 = CacheDeleteCopyPurgeableSpaceWithInfo();
    v22 = [v21 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];

    v46 = v21;
    if (v22)
    {
      v23 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v21 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
        *buf = 136315394;
        v56 = "IXPreflightWithCacheDelete";
        v57 = 2112;
        v58 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: Failed to get purgable space from Cache Delete: %@", buf, 0x16u);
      }

      v71[0] = @"AdditionalDiskSpaceRequired";
      v25 = [NSNumber numberWithUnsignedLongLong:&v18[-v17]];
      v72[0] = v25;
      v71[1] = @"TotalDiskSpaceRequired";
      v26 = [NSNumber numberWithUnsignedLongLong:v18];
      v72[1] = v26;
      v27 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];

      v28 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v56 = "IXPreflightWithCacheDelete";
        v57 = 2112;
        v58 = v10;
        v59 = 2048;
        v60 = v18;
        v61 = 2048;
        v62 = v17;
        v63 = 2048;
        v64 = v17;
        v65 = 2112;
        v66 = 0;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: Not enough space for %@ : %llu bytes needed, %llu bytes available (%llu free, purgable unavailable). : %@", buf, 0x3Eu);
      }

      sub_1000405FC("IXPreflightWithCacheDelete", 72, @"IXUserPresentableErrorDomain", 0xBuLL, 0, v27, @"Not enough space for %@ : %llu bytes needed, %llu bytes available (%llu free, purgable unavailable).", v29, v10);
    }

    else
    {
      v45 = v20;
      v30 = [v21 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
      v31 = [v30 unsignedLongLongValue];

      v44 = v31;
      v32 = &v31[v17];
      if (v18 <= &v31[v17])
      {
        v53[1] = @"CACHE_DELETE_AMOUNT";
        v54[0] = v10;
        v53[0] = @"CACHE_DELETE_VOLUME";
        v39 = [NSNumber numberWithUnsignedLongLong:&v18[-v17]];
        v54[1] = v39;
        v40 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];

        v41 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v56 = "IXPreflightWithCacheDelete";
          v57 = 2112;
          v58 = v10;
          v59 = 2048;
          v60 = v18;
          v61 = 2048;
          v62 = v17;
          v63 = 2048;
          v64 = v44;
          v65 = 2048;
          v66 = &v18[-v17];
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s: %@ : %llu bytes needed, %llu bytes available.  %llu bytes can be purged, requesting %llu bytes be purged.", buf, 0x3Eu);
        }

        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_100044980;
        v47[3] = &unk_100102620;
        v50 = &v18[-v17];
        v48 = v10;
        v49 = v9;
        v51 = v17;
        v52 = v18;
        v42 = objc_retainBlock(v47);
        v38 = v46;
        if (a4)
        {
          v43 = CacheDeletePurgeSpaceWithInfoSync();
        }

        else
        {
          v43 = CacheDeletePurgeSpaceWithInfo();
        }

        if (v43)
        {
          CFRelease(v43);
        }

        v27 = v48;
        v20 = v40;
        goto LABEL_29;
      }

      v69[0] = @"AdditionalDiskSpaceRequired";
      v33 = [NSNumber numberWithUnsignedLongLong:v18 - &v31[v17]];
      v70[0] = v33;
      v69[1] = @"TotalDiskSpaceRequired";
      v34 = [NSNumber numberWithUnsignedLongLong:v18];
      v70[1] = v34;
      v27 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];

      v35 = sub_1000031B0(off_100121958);
      v20 = v45;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v56 = "IXPreflightWithCacheDelete";
        v57 = 2112;
        v58 = v10;
        v59 = 2048;
        v60 = v18;
        v61 = 2048;
        v62 = v32;
        v63 = 2048;
        v64 = v17;
        v65 = 2048;
        v66 = v44;
        v67 = 2112;
        v68 = 0;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: Not enough space for %@ : %llu bytes needed, %llu bytes available (%llu free, %llu purgable). : %@", buf, 0x48u);
      }

      sub_1000405FC("IXPreflightWithCacheDelete", 85, @"IXUserPresentableErrorDomain", 0xBuLL, 0, v27, @"Not enough space for %@ : %llu bytes needed, %llu bytes available (%llu free, %llu purgable).", v36, v10);
    }
    v37 = ;
    (*(v9 + 2))(v9, v37);

    v38 = v46;
LABEL_29:

    goto LABEL_14;
  }

  v11 = *__error();
  v12 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v56 = "IXPreflightWithCacheDelete";
    v57 = 2112;
    v58 = v10;
    v59 = 2080;
    v60 = strerror(v11);
    v13 = "%s: Failed to get available space on device for %@: %s";
    v14 = v12;
    v15 = 32;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
  }

LABEL_5:

LABEL_13:
  (*(v9 + 2))(v9, 0);
LABEL_14:
}

void sub_100044980(uint64_t *a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v5 = [v4 unsignedLongLongValue];

  if (v5 >= a1[6])
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[4];
      *buf = 136315650;
      v20 = "IXPreflightWithCacheDelete_block_invoke";
      v21 = 2112;
      v22 = v15;
      v23 = 2048;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Path %@ : %llu bytes purged, enough available", buf, 0x20u);
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v6 = a1[8];
    v7 = &v5[a1[7]];
    v31[0] = @"AdditionalDiskSpaceRequired";
    v8 = [NSNumber numberWithUnsignedLongLong:v6 - v7];
    v32[0] = v8;
    v31[1] = @"TotalDiskSpaceRequired";
    v9 = [NSNumber numberWithUnsignedLongLong:a1[8]];
    v32[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];

    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = a1[4];
      v17 = a1[8];
      *buf = 136316418;
      v20 = "IXPreflightWithCacheDelete_block_invoke";
      v21 = 2112;
      v22 = v16;
      v23 = 2048;
      v24 = v17;
      v25 = 2048;
      v26 = v7;
      v27 = 2048;
      v28 = v5;
      v29 = 2112;
      v30 = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: Not enough space for for %@ : %llu bytes needed, %llu bytes available (%llu bytes were purged). : %@", buf, 0x3Eu);
    }

    v18 = a1[8];
    v13 = sub_1000405FC("IXPreflightWithCacheDelete_block_invoke", 111, @"IXUserPresentableErrorDomain", 0xBuLL, 0, v10, @"Not enough space for for %@ : %llu bytes needed, %llu bytes available (%llu bytes were purged).", v12, a1[4]);
    (*(a1[5] + 16))();
  }
}

void sub_1000456DC(id a1)
{
  v1 = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 1);
  qword_100121DD0 = v1;
  if (v1)
  {
    off_100121DD8 = dlsym(v1, "BREntitledContainerIdentifiersForPropertyList");
    if (off_100121DD8)
    {
      return;
    }

    v2 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[IXSUninstallAlert appHasiCloudDataOrDocuments]_block_invoke";
      v6 = 2080;
      v7 = dlerror();
      v3 = "%s: No CloudDocs entitlement checking because BREntitledContainerIdentifiersForPropertyList function was not found: %s";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, &v4, 0x16u);
    }
  }

  else
  {
    v2 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[IXSUninstallAlert appHasiCloudDataOrDocuments]_block_invoke";
      v6 = 2080;
      v7 = dlerror();
      v3 = "%s: No CloudDocs entitlement checking because CloudDocs framework failed to open: %s";
      goto LABEL_7;
    }
  }
}

void sub_100046474(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSURL URLWithString:*(a1 + 32)];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v9 = 0;
  v6 = [v5 openSensitiveURL:v4 withOptions:0 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10009F9A8();
    }
  }

  v3[2](v3, 1, 0);
}

void sub_100047638(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009FBAC(a1, v5, v6);
    }
  }
}

__CFString *IXStringForUninstallDisposition(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [NSString stringWithFormat:@"Unknown uninstall disposition: %lu", a1];
  }

  else
  {
    v2 = off_100102838[a1];
  }

  return v2;
}

void sub_100047B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100047B3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100047B54(uint64_t a1)
{
  v2 = [*(a1 + 32) stagingBaseDir];
  v3 = [v2 URLByAppendingPathComponent:@"Data.data" isDirectory:0];

  v4 = a1 + 48;
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v5 writeToURL:v3 options:268435457 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    [*(a1 + 32) _internal_setStagedPath:v3];
    [*(a1 + 32) setComplete:1];
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10009FC38(v3, v4, v8);
    }

    v9 = *(*(*v4 + 8) + 40);
    v10 = [v3 path];
    v12 = sub_1000405FC("[IXSPromisedInMemoryData initWithSeed:data:error:]_block_invoke", 58, @"IXErrorDomain", 1uLL, v9, 0, @"Could not write data promise data to disk at %@", v11, v10);

    v13 = *(*v4 + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

__CFString *IXStringForCoordinatorScope(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [NSString stringWithFormat:@"Unknown IXCoordinatorScope value %hhu", a1];
  }

  else
  {
    v2 = off_100102860[a1];
  }

  return v2;
}

uint64_t sub_100048B88(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121DE8 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

id sub_100048F64(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"/"];
  v2 = v1;
  if (v1 && [v1 count] == 2)
  {
    v3 = [v2 objectAtIndexedSubscript:1];
    v4 = [[NSUUID alloc] initWithUUIDString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1000491D4(uint64_t a1, void *a2)
{
  v3 = off_100121958;
  v4 = a2;
  v5 = sub_1000031B0(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[IXSAppUpdateScheduler _onQueue_registerUpdateRequestForTask:]_block_invoke";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Running opportunistic install for: %@", buf, 0x16u);
  }

  [v4 identifier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000493AC;
  v7 = v12[3] = &unk_1001010A0;
  v13 = v7;
  [v4 setExpirationHandler:v12];
  v8 = [*(a1 + 40) internalQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100049474;
  v10[3] = &unk_100100ED8;
  v10[4] = *(a1 + 40);
  v11 = v7;
  v9 = v7;
  sub_100071134(v8, v10);

  [v4 setTaskCompleted];
}

void sub_1000493AC(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[IXSAppUpdateScheduler _onQueue_registerUpdateRequestForTask:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Expiration handler invoked for %@", &v4, 0x16u);
  }
}

void sub_100049A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100049A7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100049A94(uint64_t a1)
{
  v2 = sub_100049C7C(*(a1 + 32));
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _onQueue_registerUpdateRequestForTask:v2];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 56) + 8);
    obj = *(v4 + 40);
    v5 = [v3 _onQueue_scheduleUpdateRequestForTask:v2 error:&obj];
    objc_storeStrong((v4 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v5;
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 136315650;
        v11 = "[IXSAppUpdateScheduler scheduleUpdateInstallForCoordinatorUUID:error:]_block_invoke";
        v12 = 2112;
        v13 = v2;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to schedule install for %@; running immediately (scheduling error: %@)", buf, 0x20u);
      }

      [*(a1 + 40) _onQueue_deregisterTaskWithDASWithIdentifier:v2];
    }
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[IXSAppUpdateScheduler scheduleUpdateInstallForCoordinatorUUID:error:]_block_invoke";
      v12 = 2112;
      v13 = v2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to schedule install for %@; running immediately", buf, 0x16u);
    }
  }
}

id sub_100049C7C(void *a1)
{
  v1 = [a1 UUIDString];
  v2 = [NSString stringWithFormat:@"com.apple.installcoordination/%@", v1];

  return v2;
}

void sub_100049D9C(uint64_t a1)
{
  v2 = sub_100049C7C(*(a1 + 32));
  v3 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10009FFCC();
  }

  [*(a1 + 40) _onQueue_deregisterTaskWithDASWithIdentifier:v2];
}

id sub_10004AE84(uint64_t a1)
{
  *(*(a1 + 32) + 128) = 0;
  *(*(a1 + 32) + 144) = 0;
  *(*(a1 + 32) + 136) = 0;
  *(*(a1 + 32) + 152) = 0;
  *(*(a1 + 32) + 208) = 1;
  if ([*(a1 + 32) shouldEnablePostProcessingByDefault])
  {
    v2 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v5 = 136315394;
      v6 = "[IXSCoordinatedAppInstall _internalInitWithSeed:scopedToConnection:error:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: %@: Enabling post processing by default", &v5, 0x16u);
    }

    *(*(a1 + 32) + 8) = 1;
  }

  return [*(a1 + 32) _onQueue_internal_saveState];
}

void sub_10004BA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004BA80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004BA98(uint64_t a1)
{
  v1 = a1;
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) identity];
  v4 = *(v2[1] + 1);
  obj = *(v4 + 40);
  v5 = [v3 resolvePersonaWithError:&obj];
  objc_storeStrong((v4 + 40), obj);

  if ((v5 & 1) == 0)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*v2 identity];
      *buf = 136315394;
      v253 = "[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke";
      v254 = 2112;
      v255 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to resolve persona for %@", buf, 0x16u);
    }
  }

  v8 = [*v2 placeholderPromiseUUID];

  p_superclass = &OBJC_METACLASS___IXSHealthKitDataUninstallAlert.superclass;
  if (v8)
  {
    v10 = +[IXSDataPromiseManager sharedInstance];
    v11 = [*v2 placeholderPromiseUUID];
    v12 = [v10 promiseForUUID:v11 ofType:objc_opt_class()];

    v13 = *v2;
    if (v12)
    {
      v247[0] = _NSConcreteStackBlock;
      v247[1] = 3221225472;
      v247[2] = sub_10004D3A8;
      v247[3] = &unk_100100ED8;
      v247[4] = v13;
      v14 = v12;
      v248 = v14;
      [v13 _runWithExternalPropertyLock:v247];
      v15 = [v14 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004D3B4;
      block[3] = &unk_100100ED8;
      v16 = v14;
      v17 = *v2;
      v245 = v16;
      v246 = v17;
      dispatch_sync(v15, block);
    }

    else
    {
      v18 = v13[42];
      if (v18 == 7 || v18 == 9)
      {
        v19 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*v2 identity];
          v21 = [*v2 placeholderPromiseUUID];
          *buf = 136315650;
          v253 = "[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke";
          v254 = 2112;
          v255 = v20;
          v256 = 2112;
          v257 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: %@: Unable to find placeholder promise with UUID %@; proceeding because it's not needed", buf, 0x20u);
        }
      }

      else
      {
        v22 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1000A014C();
        }

        v23 = [*(v1 + 32) identity];
        v180 = [*(v1 + 32) placeholderPromiseUUID];
        v25 = sub_1000405FC("[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke", 925, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate IXSPlaceholder instance with UUID %@ after deserialization", v24, v23);

        v26 = *(*(v1 + 48) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;
      }
    }

    p_superclass = &OBJC_METACLASS___IXSHealthKitDataUninstallAlert.superclass;
  }

  v28 = [*v2 appAssetPromiseUUID];

  if (v28)
  {
    v29 = +[IXSDataPromiseManager sharedInstance];
    v30 = [*v2 appAssetPromiseUUID];
    v31 = [v29 promiseForUUID:v30 ofType:objc_opt_class()];

    v32 = *v2;
    if (v31)
    {
      v242[0] = _NSConcreteStackBlock;
      v242[1] = 3221225472;
      v242[2] = sub_10004D3BC;
      v242[3] = &unk_100100ED8;
      v242[4] = v32;
      v33 = v31;
      v243 = v33;
      [v32 _runWithExternalPropertyLock:v242];
      v34 = [v33 accessQueue];
      v239[0] = _NSConcreteStackBlock;
      v239[1] = 3221225472;
      v239[2] = sub_10004D3C8;
      v239[3] = &unk_100100ED8;
      v35 = v33;
      v36 = *v2;
      v240 = v35;
      v241 = v36;
      dispatch_sync(v34, v239);
    }

    else
    {
      v37 = v32[43];
      v38 = sub_1000031B0(off_100121958);
      v39 = v38;
      if (v37 == 7)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [*v2 identity];
          v41 = [*v2 appAssetPromiseUUID];
          *buf = 136315650;
          v253 = "[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke";
          v254 = 2112;
          v255 = v40;
          v256 = 2112;
          v257 = v41;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s: %@: Unable to find app asset promise with UUID %@; proceeding because it's not needed", buf, 0x20u);
        }
      }

      else
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_1000A01FC();
        }

        v42 = [*(v1 + 32) identity];
        v181 = [*(v1 + 32) appAssetPromiseUUID];
        v44 = sub_1000405FC("[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke", 944, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate app asset promise with UUID %@ after deserialization", v43, v42);

        v45 = *(*(v1 + 48) + 8);
        v46 = *(v45 + 40);
        *(v45 + 40) = v44;
      }
    }

    p_superclass = &OBJC_METACLASS___IXSHealthKitDataUninstallAlert.superclass;
  }

  v47 = [*v2 initialODRAssetPromiseUUIDs];

  v189 = v1;
  v190 = v2;
  if (v47)
  {
    v48 = objc_opt_new();
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v186 = [*v2 initialODRAssetPromiseUUIDs];
    v49 = [v186 countByEnumeratingWithState:&v235 objects:v260 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v236;
      do
      {
        v52 = 0;
        do
        {
          if (*v236 != v51)
          {
            objc_enumerationMutation(v186);
          }

          v53 = *(*(&v235 + 1) + 8 * v52);
          v54 = +[IXSDataPromiseManager sharedInstance];
          v55 = [v54 promiseForUUID:v53 ofType:objc_opt_class()];

          if (v55)
          {
            [v48 addObject:v55];
            v56 = [v55 accessQueue];
            v232[0] = _NSConcreteStackBlock;
            v232[1] = 3221225472;
            v232[2] = sub_10004D3D0;
            v232[3] = &unk_100100ED8;
            v57 = v55;
            v58 = *v2;
            v233 = v57;
            v234 = v58;
            dispatch_sync(v56, v232);

            v59 = v233;
          }

          else
          {
            v60 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v65 = [*v2 identity];
              *buf = 136315906;
              v253 = "[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke_3";
              v254 = 2112;
              v255 = v65;
              v256 = 2112;
              v257 = v53;
              v258 = 2112;
              v259 = 0;
              _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%s: %@: Failed to locate initial ODR promise instance with UUID %@ after deserialization : %@", buf, 0x2Au);
            }

            v61 = [*(v189 + 32) identity];
            v63 = sub_1000405FC("[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke", 964, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate initial ODR promise instance with UUID %@ after deserialization", v62, v61);

            v64 = *(*(v189 + 48) + 8);
            v59 = *(v64 + 40);
            *(v64 + 40) = v63;
            p_superclass = &OBJC_METACLASS___IXSHealthKitDataUninstallAlert.superclass;
          }

          v52 = v52 + 1;
        }

        while (v50 != v52);
        v50 = [v186 countByEnumeratingWithState:&v235 objects:v260 count:16];
      }

      while (v50);
    }

    v66 = v48;
    v67 = [v48 copy];
    v68 = *v2;
    v230[0] = _NSConcreteStackBlock;
    v230[1] = 3221225472;
    v230[2] = sub_10004D3D8;
    v230[3] = &unk_100100ED8;
    v230[4] = v68;
    v231 = v67;
    v69 = v67;
    [v68 _runWithExternalPropertyLock:v230];

    v1 = v189;
  }

  v70 = [*v2 userDataPromiseUUID];

  if (v70)
  {
    v71 = +[IXSDataPromiseManager sharedInstance];
    v72 = [*v2 userDataPromiseUUID];
    v73 = [v71 promiseForUUID:v72 ofType:objc_opt_class()];

    if (v73)
    {
      v74 = *v2;
      v228[0] = _NSConcreteStackBlock;
      v228[1] = 3221225472;
      v228[2] = sub_10004D3E4;
      v228[3] = &unk_100100ED8;
      v228[4] = v74;
      v75 = v73;
      v229 = v75;
      [v74 _runWithExternalPropertyLock:v228];
      v76 = [v75 accessQueue];
      v225[0] = _NSConcreteStackBlock;
      v225[1] = 3221225472;
      v225[2] = sub_10004D3F0;
      v225[3] = &unk_100100ED8;
      v77 = v75;
      v78 = *v2;
      v226 = v77;
      v227 = v78;
      dispatch_sync(v76, v225);
    }

    else
    {
      v79 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        sub_1000A02AC();
      }

      v80 = [*(v1 + 32) identity];
      v182 = [*(v1 + 32) userDataPromiseUUID];
      v82 = sub_1000405FC("[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke", 983, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate user data promise with UUID %@ after deserialization", v81, v80);

      v83 = *(*(v1 + 48) + 8);
      v84 = *(v83 + 40);
      *(v83 + 40) = v82;
    }

    p_superclass = &OBJC_METACLASS___IXSHealthKitDataUninstallAlert.superclass;
  }

  v85 = [*v2 preparationPromiseUUID];

  if (v85)
  {
    v86 = +[IXSDataPromiseManager sharedInstance];
    v87 = [*v2 preparationPromiseUUID];
    v88 = [v86 promiseForUUID:v87 ofType:objc_opt_class()];

    if (v88)
    {
      v89 = *v2;
      v223[0] = _NSConcreteStackBlock;
      v223[1] = 3221225472;
      v223[2] = sub_10004D3F8;
      v223[3] = &unk_100100ED8;
      v223[4] = v89;
      v90 = v88;
      v224 = v90;
      [v89 _runWithExternalPropertyLock:v223];
      v91 = [v90 accessQueue];
      v220[0] = _NSConcreteStackBlock;
      v220[1] = 3221225472;
      v220[2] = sub_10004D404;
      v220[3] = &unk_100100ED8;
      v92 = v90;
      v93 = *v2;
      v221 = v92;
      v222 = v93;
      dispatch_sync(v91, v220);
    }

    else
    {
      v94 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        sub_1000A035C();
      }

      v95 = [*(v1 + 32) identity];
      v183 = [*(v1 + 32) preparationPromiseUUID];
      v97 = sub_1000405FC("[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke", 998, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate preparation promise with UUID %@ after deserialization", v96, v95);

      v98 = *(*(v1 + 48) + 8);
      v99 = *(v98 + 40);
      *(v98 + 40) = v97;
    }

    p_superclass = &OBJC_METACLASS___IXSHealthKitDataUninstallAlert.superclass;
  }

  v100 = [*v2 installOptionsPromiseUUID];

  if (v100)
  {
    v101 = +[IXSDataPromiseManager sharedInstance];
    v102 = [*v2 installOptionsPromiseUUID];
    v103 = [v101 promiseForUUID:v102 ofType:objc_opt_class()];

    if (v103)
    {
      v104 = *v2;
      v218[0] = _NSConcreteStackBlock;
      v218[1] = 3221225472;
      v218[2] = sub_10004D40C;
      v218[3] = &unk_100100ED8;
      v218[4] = v104;
      v105 = v103;
      v219 = v105;
      [v104 _runWithExternalPropertyLock:v218];
      v106 = [v105 accessQueue];
      v215[0] = _NSConcreteStackBlock;
      v215[1] = 3221225472;
      v215[2] = sub_10004D418;
      v215[3] = &unk_100100ED8;
      v107 = v105;
      v108 = *v2;
      v216 = v107;
      v217 = v108;
      dispatch_sync(v106, v215);
    }

    else
    {
      v109 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        sub_1000A040C();
      }

      v110 = [*(v1 + 32) identity];
      v184 = [*(v1 + 32) installOptionsPromiseUUID];
      v112 = sub_1000405FC("[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke", 1013, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate install options promise with UUID %@ after deserialization", v111, v110);

      v113 = *(*(v1 + 48) + 8);
      v114 = *(v113 + 40);
      *(v113 + 40) = v112;
    }

    p_superclass = &OBJC_METACLASS___IXSHealthKitDataUninstallAlert.superclass;
  }

  v115 = [*v2 deviceSecurityPromiseUUID];

  if (v115)
  {
    v116 = +[IXSDataPromiseManager sharedInstance];
    v117 = [*v2 deviceSecurityPromiseUUID];
    v118 = [v116 promiseForUUID:v117 ofType:objc_opt_class()];

    if (v118)
    {
      v119 = *v2;
      v213[0] = _NSConcreteStackBlock;
      v213[1] = 3221225472;
      v213[2] = sub_10004D420;
      v213[3] = &unk_100100ED8;
      v213[4] = v119;
      v120 = v118;
      v214 = v120;
      [v119 _runWithExternalPropertyLock:v213];
      v121 = [v120 accessQueue];
      v210[0] = _NSConcreteStackBlock;
      v210[1] = 3221225472;
      v210[2] = sub_10004D42C;
      v210[3] = &unk_100100ED8;
      v122 = v120;
      v123 = *v2;
      v211 = v122;
      v212 = v123;
      dispatch_sync(v121, v210);
    }

    else
    {
      v124 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        sub_1000A04BC();
      }

      v125 = [*(v1 + 32) identity];
      v185 = [*(v1 + 32) deviceSecurityPromiseUUID];
      v127 = sub_1000405FC("[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke", 1028, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate device security promise with UUID %@ after deserialization", v126, v125);

      v128 = *(*(v1 + 48) + 8);
      v129 = *(v128 + 40);
      *(v128 + 40) = v127;
    }

    p_superclass = &OBJC_METACLASS___IXSHealthKitDataUninstallAlert.superclass;
  }

  v130 = [*v2 essentialAssetPromiseUUIDs];

  if (v130)
  {
    v131 = objc_opt_new();
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v187 = [*v2 essentialAssetPromiseUUIDs];
    v132 = [v187 countByEnumeratingWithState:&v206 objects:v251 count:16];
    if (v132)
    {
      v133 = v132;
      v134 = *v207;
      do
      {
        v135 = 0;
        do
        {
          if (*v207 != v134)
          {
            objc_enumerationMutation(v187);
          }

          v136 = *(*(&v206 + 1) + 8 * v135);
          v137 = +[IXSDataPromiseManager sharedInstance];
          v138 = [v137 promiseForUUID:v136 ofType:objc_opt_class()];

          if (v138)
          {
            [v131 addObject:v138];
            v139 = [v138 accessQueue];
            v203[0] = _NSConcreteStackBlock;
            v203[1] = 3221225472;
            v203[2] = sub_10004D434;
            v203[3] = &unk_100100ED8;
            v140 = v138;
            v141 = *v190;
            v204 = v140;
            v205 = v141;
            dispatch_sync(v139, v203);

            v142 = v204;
          }

          else
          {
            v143 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
            {
              v148 = [*v190 identity];
              *buf = 136315906;
              v253 = "[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke";
              v254 = 2112;
              v255 = v148;
              v256 = 2112;
              v257 = v136;
              v258 = 2112;
              v259 = 0;
              _os_log_error_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "%s: %@: Failed to locate essential asset promise instance with UUID %@ after deserialization : %@", buf, 0x2Au);
            }

            v144 = [*(v189 + 32) identity];
            v146 = sub_1000405FC("[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke", 1069, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate essential asset promise instance with UUID %@ after deserialization", v145, v144);

            v147 = *(*(v189 + 48) + 8);
            v142 = *(v147 + 40);
            *(v147 + 40) = v146;
            p_superclass = &OBJC_METACLASS___IXSHealthKitDataUninstallAlert.superclass;
          }

          v135 = v135 + 1;
        }

        while (v133 != v135);
        v133 = [v187 countByEnumeratingWithState:&v206 objects:v251 count:16];
      }

      while (v133);
    }

    v149 = v131;
    v150 = [v131 copy];
    v2 = v190;
    v151 = *v190;
    v201[0] = _NSConcreteStackBlock;
    v201[1] = 3221225472;
    v201[2] = sub_10004D43C;
    v201[3] = &unk_100100ED8;
    v201[4] = v151;
    v202 = v150;
    v152 = v150;
    [v151 _runWithExternalPropertyLock:v201];

    v1 = v189;
  }

  v153 = [*v2 dataImportPromiseUUIDs];

  if (v153)
  {
    v154 = objc_opt_new();
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v188 = [*v2 dataImportPromiseUUIDs];
    v155 = [v188 countByEnumeratingWithState:&v197 objects:v250 count:16];
    if (v155)
    {
      v156 = v155;
      v157 = *v198;
      do
      {
        v158 = 0;
        do
        {
          if (*v198 != v157)
          {
            objc_enumerationMutation(v188);
          }

          v159 = *(*(&v197 + 1) + 8 * v158);
          v160 = [p_superclass + 24 sharedInstance];
          v161 = [v160 promiseForUUID:v159 ofType:objc_opt_class()];

          if (v161)
          {
            [v154 addObject:v161];
            v162 = [v161 accessQueue];
            v194[0] = _NSConcreteStackBlock;
            v194[1] = 3221225472;
            v194[2] = sub_10004D448;
            v194[3] = &unk_100100ED8;
            v163 = v161;
            v164 = *v190;
            v195 = v163;
            v196 = v164;
            dispatch_sync(v162, v194);

            v165 = v195;
          }

          else
          {
            v166 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
            {
              v171 = [*v190 identity];
              *buf = 136315906;
              v253 = "[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke";
              v254 = 2112;
              v255 = v171;
              v256 = 2112;
              v257 = v159;
              v258 = 2112;
              v259 = 0;
              _os_log_error_impl(&_mh_execute_header, v166, OS_LOG_TYPE_ERROR, "%s: %@: Failed to locate data import promise instance with UUID %@ after deserialization : %@", buf, 0x2Au);
            }

            v167 = [*(v189 + 32) identity];
            v169 = sub_1000405FC("[IXSCoordinatedAppInstall awakeFromSerializationWithError:]_block_invoke", 1090, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate data import promise instance with UUID %@ after deserialization", v168, v167);

            v170 = *(*(v189 + 48) + 8);
            v165 = *(v170 + 40);
            *(v170 + 40) = v169;
            p_superclass = (&OBJC_METACLASS___IXSHealthKitDataUninstallAlert + 8);
          }

          v158 = v158 + 1;
        }

        while (v156 != v158);
        v156 = [v188 countByEnumeratingWithState:&v197 objects:v250 count:16];
      }

      while (v156);
    }

    v172 = v154;
    v173 = [v154 copy];
    v2 = v190;
    v174 = *v190;
    v192[0] = _NSConcreteStackBlock;
    v192[1] = 3221225472;
    v192[2] = sub_10004D450;
    v192[3] = &unk_100100ED8;
    v192[4] = v174;
    v193 = v173;
    v175 = v173;
    [v174 _runWithExternalPropertyLock:v192];

    v1 = v189;
  }

  v176 = sub_10003FB30();
  v177 = [*(v1 + 32) identity];
  v178 = [v176 resumeProgressForIdentity:v177];
  [*(v1 + 32) setPublishedInstallProgress:v178];

  if (!*(*(*(v1 + 48) + 8) + 40) && !*(*(*(v1 + 40) + 8) + 40))
  {
    v179 = [*v2 internalQueue];
    v191[0] = _NSConcreteStackBlock;
    v191[1] = 3221225472;
    v191[2] = sub_10004D45C;
    v191[3] = &unk_1001010A0;
    v191[4] = *v2;
    sub_100071134(v179, v191);
  }
}

id sub_10004D800(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[IXSCoordinatedAppInstall handleFirstUnlockNotification]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Handling first unlock for %@", &v5, 0x16u);
  }

  return [*(a1 + 32) _onQueue_checkState];
}

id sub_10004E418(uint64_t a1)
{
  result = [*(a1 + 32) isComplete];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10004E44C(uint64_t a1)
{
  result = [*(a1 + 32) isComplete];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10004E480(uint64_t a1)
{
  result = [*(a1 + 32) isComplete];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

id sub_10004E4B8(uint64_t a1)
{
  result = [*(a1 + 32) isComplete];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10004E4EC(uint64_t a1)
{
  result = [*(a1 + 32) isComplete];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10004E520(uint64_t a1)
{
  result = [*(a1 + 32) isComplete];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

id sub_10004E558(uint64_t a1)
{
  result = [*(a1 + 32) isComplete];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

void sub_10004E99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004E9CC(uint64_t a1)
{
  v2 = [*(a1 + 32) appReference];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10004F198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004F1B0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  dispatch_group_leave(v2);
}

void sub_10004F300(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) outstandingInstallOperationsGroup];
  dispatch_group_leave(v2);
}

id sub_100050058(uint64_t a1)
{
  result = dispatch_source_testcancel(*(a1 + 32));
  if (!result)
  {
    v3 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 136315394;
      v6 = "[IXSCoordinatedAppInstall _onQueue_handleAssertionAcquisitionFailureForPlaceholder:withError:]_block_invoke";
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Retrying assertion for %@", &v5, 0x16u);
    }

    return [*(a1 + 40) _onQueue_acquireAssertionForPlaceholder:*(a1 + 48) forceAcquisition:0];
  }

  return result;
}

void sub_100050DEC(uint64_t a1, void *a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = [a2 objectForKeyedSubscript:kMICallbackPercentCompleteKey];
    v4 = [v3 unsignedLongValue];
    v5 = *(a1 + 32);
    if (v5)
    {
      [v5 setTotalUnitCount:100];
      [*(a1 + 32) setCompletedUnitCount:v4];
    }

    v6 = [*(a1 + 40) internalQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100050ED4;
    v7[3] = &unk_100100DF8;
    v7[4] = *(a1 + 40);
    v7[5] = v4;
    sub_100071134(v6, v7);
  }
}

id sub_100050ED4(uint64_t a1)
{
  v2 = [*(a1 + 32) coordinatorProgress];
  [v2 setTotalUnits:100];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) coordinatorProgress];
  [v4 setTotalUnitsCompleted:v3];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40) / 100.0;

  return [v5 _onQueue_setInstallProgressPercentComplete:1 forPhase:v6];
}

id sub_100050F60(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 _onQueue_finishProgress:v4];
  }

  else
  {
    return [v3 _onQueue_cancelProgress:v4];
  }
}

void sub_10005138C(uint64_t a1)
{
  v2 = [*(a1 + 32) assertionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005141C;
  block[3] = &unk_1001010A0;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

id sub_10005141C(uint64_t a1)
{
  result = [*(a1 + 32) needsPostProcessing];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _onAssertionQueue_setTermAssertion:0];
  }

  return result;
}

uint64_t sub_10005146C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(LSOperationRequestContext);
  v8 = [NSNumber numberWithUnsignedInt:geteuid()];
  [v7 setTargetUserID:v8];

  if ((*(a1 + 80) & 1) == 0 && [*(a1 + 32) effectiveIntent] == 2)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) identity];
    v11 = [v10 bundleID];
    v36 = 0;
    v12 = [v9 sendNotificationOfType:0 forApplicationWithBundleIdentifier:v11 requestContext:v7 error:&v36];
    v13 = v36;

    if (v12)
    {
      goto LABEL_12;
    }

    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000A0AF8();
    }

LABEL_10:

    goto LABEL_11;
  }

  if ([*(a1 + 32) effectiveIntent] == 6)
  {
    v15 = *(a1 + 40);
    v16 = [*(a1 + 32) identity];
    v17 = [v16 bundleID];
    v35 = 0;
    v18 = [v15 sendNotificationOfType:1 forApplicationWithBundleIdentifier:v17 requestContext:v7 error:&v35];
    v13 = v35;

    if (v18)
    {
      goto LABEL_12;
    }

    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000A0BB0();
    }

    goto LABEL_10;
  }

LABEL_11:
  v13 = 0;
LABEL_12:
  if (*(a1 + 48))
  {
    if (*(a1 + 80) == 1)
    {
      block[6] = 0;
      v19 = *(a1 + 64);
      StagedUpdateLiveForIdentifier = MobileInstallationInstallParallelPlaceholderForStagedUpdate();
    }

    else
    {
      block[5] = 0;
      v31 = *(a1 + 64);
      StagedUpdateLiveForIdentifier = MobileInstallationMakeStagedUpdateLiveForIdentifier();
    }

    v29 = 0;
    if (StagedUpdateLiveForIdentifier)
    {
LABEL_21:
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v29);
      v30 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    v21 = [*(a1 + 32) identity];
    v22 = [v21 bundleID];
    v23 = sub_10003B2E0(v22, 16);

    if (v23)
    {
      v24 = [*(a1 + 32) internalQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100051818;
      block[3] = &unk_1001010A0;
      block[4] = *(a1 + 32);
      dispatch_async(v24, block);
    }

    v25 = [*(a1 + 32) identity];
    v26 = [v25 miAppIdentity];
    [*(a1 + 32) installationDomain];
    v27 = *(a1 + 56);
    v33 = *(a1 + 64);
    v28 = MobileInstallationInstallApp();
    v29 = 0;

    if (v28)
    {
      goto LABEL_21;
    }
  }

  v30 = 0;
LABEL_22:

  return v30;
}

void sub_100051818(uint64_t a1)
{
  v2 = [*(a1 + 32) identity];
  v3 = [v2 bundleID];
  v5 = sub_1000405FC("[IXSCoordinatedAppInstall _limitedConcurrency_installApplication:isPlaceholder:options:hasStagedUpdateWithIdentifier:retries:error:]_block_invoke", 2282, @"IXErrorDomain", 0x36uLL, 0, 0, @"Testing preemptive cancelation of coordinator for %@", v4, v3);

  [*(a1 + 32) _onQueue_internal_cancelForReason:v5 client:15];
}

void sub_100051E64(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
  if (v4)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) bundleID];
      v7 = 136315650;
      v8 = "[IXSCoordinatedAppInstall _finishPlaceholderInstallAtURL:result:recordPromise:error:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to purge cache for app with bundleID '%@': %@", &v7, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100051F9C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) placeholderFailureInfo];

  if (v3)
  {
    v4 = *v2;
    v5 = [*v2 placeholderFailureInfo];
    v6 = [v5 installType];
    v7 = [*v2 placeholderFailureInfo];
    v8 = [v7 reason];
    v9 = [*v2 placeholderFailureInfo];
    v10 = [v9 underlyingError];
    v11 = [*v2 placeholderFailureInfo];
    [v4 _asyncUpdatePlaceholderMetadataWithInstallType:v6 reason:v8 underlyingError:v10 client:{objc_msgSend(v11, "client")}];

    [*v2 setPlaceholderFailureInfo:0];
  }

  v12 = [*v2 error];

  if (v12)
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *v2;
      *buf = 136315394;
      v21 = "[IXSCoordinatedAppInstall _finishPlaceholderInstallAtURL:result:recordPromise:error:]_block_invoke_2";
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: %@: Placeholder install completed successfully but coordinator was canceled while install was in flight; ignoring", buf, 0x16u);
    }
  }

  else
  {
    v15 = [*v2 placeholderPromise];
    v13 = v15;
    if (v15)
    {
      v16 = [v15 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005222C;
      block[3] = &unk_1001010A0;
      v19 = v13;
      dispatch_sync(v16, block);

      v17 = v19;
    }

    else
    {
      v17 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000A0D98(v2);
      }
    }

    [*(a1 + 32) setPlaceholderInstallState:7 withLSRecordPromiseForCompletion:*(a1 + 40)];
    [*(a1 + 32) _onQueue_checkState];
  }
}

void sub_100053468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose((v58 - 176), 8);
  _Block_object_dispose((v58 - 248), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000534F8(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isComplete];
  v2 = [*(a1 + 32) stagedPath];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) metadata];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) installType];
  v8 = [*(a1 + 32) sinfData];
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return _objc_release_x1();
}

uint64_t sub_1000535BC(uint64_t result)
{
  if ((result - 1) >= 6)
  {
    return 0;
  }

  return result;
}

id sub_1000535CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _finishPlaceholderInstallAtURL:*(*(*(a1 + 48) + 8) + 40) result:a3 == 0 recordPromise:0 error:a3];
  v4 = *(a1 + 40);

  return [v4 invalidate];
}

void sub_100053624(uint64_t a1)
{
  v2 = *(*(*(a1 + 64) + 8) + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = 0;
  v6 = [v3 _limitedConcurrency_installApplication:v2 isPlaceholder:1 options:v4 hasStagedUpdateWithIdentifier:v5 retries:5 error:&v8];
  v7 = v8;
  [*(a1 + 32) _finishPlaceholderInstallAtURL:*(*(*(a1 + 64) + 8) + 40) result:v6 != 0 recordPromise:v6 error:v7];
  [*(a1 + 56) invalidate];
}

void sub_100053D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100053DA4(uint64_t a1)
{
  v2 = [*(a1 + 32) stagedPath];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_100054530(uint64_t a1)
{
  [*(a1 + 32) setTermAssertion:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _onQueue_handleCancelForInstallFailure:v3];
}

void sub_100054570(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    v3 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[IXSCoordinatedAppInstall _finishAppInstallAtURL:result:recordPromise:error:]_block_invoke_2";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: %@: App completed installation successfully but coordinator was canceled while install was in flight; ignoring.", &v7, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) setCompletedRecordPromise:*(a1 + 40)];
    v5 = [*(a1 + 32) stagedUpdateMetadata];

    if (v5)
    {
      [*(a1 + 32) setPlaceholderInstallState:7];
      [*(a1 + 32) setStagedUpdateMetadata:0];
    }

    [*(a1 + 32) setAppInstallState:7];
    [*(a1 + 32) _onQueue_saveState];
    v6 = *(a1 + 32);

    [v6 _onQueue_checkState];
  }
}

void sub_1000548EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100054908(uint64_t a1)
{
  v2 = [*(a1 + 32) appReference];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_100054E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _finishAppInstallAtURL:*(a1 + 40) result:a3 == 0 recordPromise:0 error:a3];
  v4 = *(a1 + 48);

  return [v4 invalidate];
}

void sub_1000555E8(uint64_t a1)
{
  v2 = [*(a1 + 32) stagedPath];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) targetLastPathComponent];
  if (v5)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(*(*(a1 + 40) + 8) + 40) path];
      v11 = 136315650;
      v12 = "[IXSCoordinatedAppInstall _onQueue_doInstall]_block_invoke";
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Updating the promise path from %@ based on the last path component for the target %@", &v11, 0x20u);
    }

    v8 = [*(*(*(a1 + 40) + 8) + 40) URLByAppendingPathComponent:v5 isDirectory:1];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_100055740(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v15 = 0;
  v5 = [v3 stageUpdateFromAppAsset:v2 options:v4 retries:5 error:&v15];
  v6 = v15;
  v7 = [*(a1 + 32) internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100055840;
  v11[3] = &unk_100101300;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  sub_100071134(v7, v11);
}

id sub_100055840(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 setAppInstallState:3];
    [*(a1 + 40) setStagedUpdateMetadata:*(a1 + 32)];
    v4 = [*(a1 + 40) appAssetPromise];
    v5 = [v4 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100055A48;
    block[3] = &unk_1001010A0;
    block[4] = *(a1 + 40);
    dispatch_sync(v5, block);

    [*(a1 + 40) _onQueue_saveState];
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = [v7 stagedUpdateMetadata];
      *buf = 136315650;
      v16 = "[IXSCoordinatedAppInstall _onQueue_doInstall]_block_invoke_2";
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@: Staged application for later install with staged metadata: %@", buf, 0x20u);
    }

    v9 = [*(a1 + 40) identity];
    v10 = [v9 bundleID];
    v11 = sub_10003B2E0(v10, 19);

    if (v11)
    {
      exit(1);
    }

    return [*(a1 + 40) _onQueue_checkState];
  }

  else
  {
    v13 = *(a1 + 48);

    return [v2 _onQueue_handleCancelForInstallFailure:v13];
  }
}

void sub_100055A48(uint64_t a1)
{
  v1 = [*(a1 + 32) appAssetPromise];
  [v1 setStagedPathMayNotExistWhenAwakening:1];
}

void sub_100055A90(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = *(*(*(v3 + 24) + 8) + 40);
  v6 = *(v3 + 8);
  v16 = 0;
  v7 = [v2 _limitedConcurrency_installApplication:v5 isPlaceholder:0 options:v6 hasStagedUpdateWithIdentifier:v4 retries:5 error:&v16];
  v8 = v16;
  if (*(v3 + 32))
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (*(v3 + 32))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = [*v3 identity];
    v12 = [*v3 installationDomain];
    v15 = 0;
    v9 = sub_100015F48(v11, v12, &v15);
    v13 = v15;

    if (!v9)
    {
      v14 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000A16AC(v3);
      }
    }
  }

  [*(a1 + 32) _finishAppInstallAtURL:*(*(*(a1 + 56) + 8) + 40) result:v7 != 0 recordPromise:v9 error:v8];
}

void sub_100056A44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) error];
  [v2 _client_coordinatorWithUUID:v3 didCancelWithReason:v4 client:{objc_msgSend(*(a1 + 48), "errorSourceIdentifier")}];
}

uint64_t sub_100056AC8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v3 = [v1 accessQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006E6D0;
    v6[3] = &unk_100101268;
    v8 = &v9;
    v7 = v2;
    dispatch_sync(v3, v6);

    v4 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_100056BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100056E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100056E54(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) stagedIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100056F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *sub_100056F7C(uint64_t a1)
{
  result = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = (result - 27) < 5;
  return result;
}

void sub_10005707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100057094(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) stagedDiskUsage];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000571B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100057708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_100057754(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = [v5 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E740;
    block[3] = &unk_1001018D0;
    v9 = v5;
    v10 = v6;
    v11 = a3;
    dispatch_sync(v7, block);
  }
}

void sub_100057828(void *a1)
{
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 32));
  v2 = a1[5];
  if (v2 == *(*(a1[7] + 8) + 40))
  {
    v3 = *(a1[8] + 8);
    v4 = 1;
    goto LABEL_5;
  }

  if (a1[9] >= 6uLL)
  {
    v3 = *(a1[8] + 8);
    v4 = 2;
LABEL_5:
    *(v3 + 24) = v4;
    return;
  }

  objc_storeStrong((a1[4] + 32), v2);
  v5 = a1[6];
  v6 = (a1[4] + 272);

  objc_storeStrong(v6, v5);
}

void sub_1000579D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100057EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_100057F2C(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 40));
  v2 = *(a1 + 40);
  if (v2 == *(*(*(a1 + 56) + 8) + 40))
  {
    v3 = *(*(a1 + 64) + 8);
    v4 = 1;
    goto LABEL_6;
  }

  if (*(a1 + 88) == 1)
  {
    if ((*(a1 + 72) | 2) == 6)
    {
      v3 = *(*(a1 + 64) + 8);
      v4 = 3;
LABEL_6:
      *(v3 + 24) = v4;
      return;
    }

    if (*(a1 + 80) >= 0x14uLL)
    {
      v3 = *(*(a1 + 64) + 8);
      v4 = 2;
      goto LABEL_6;
    }
  }

  objc_storeStrong((*(a1 + 32) + 40), v2);
  v5 = *(a1 + 48);
  v6 = (*(a1 + 32) + 280);

  objc_storeStrong(v6, v5);
}

void sub_10005819C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100058418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100058AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Unwind_Resume(a1);
}

id sub_100058B68(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) uniqueIdentifier];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

void sub_100058CB0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(a1 + 32) + 288) copy];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(a1 + 80) < 0xDuLL)
  {
    objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
    v8 = *(a1 + 48);
    v9 = (*(a1 + 32) + 288);

    objc_storeStrong(v9, v8);
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

void sub_100058E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000592B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1000592E8(void *a1)
{
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 64));
  v2 = a1[5];
  if (v2 == *(*(a1[7] + 8) + 40))
  {
    v3 = *(a1[8] + 8);
    v4 = 1;
    goto LABEL_5;
  }

  if (a1[9] >= 0xBuLL)
  {
    v3 = *(a1[8] + 8);
    v4 = 2;
LABEL_5:
    *(v3 + 24) = v4;
    return;
  }

  objc_storeStrong((a1[4] + 64), v2);
  v5 = a1[6];
  v6 = (a1[4] + 296);

  objc_storeStrong(v6, v5);
}

void sub_100059498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000598C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1000598F8(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 72));
  v2 = *(a1 + 40);
  if (v2 == *(*(*(a1 + 48) + 8) + 40))
  {
    v3 = *(*(a1 + 56) + 8);
    v4 = 1;
    goto LABEL_5;
  }

  if (*(a1 + 64) >= 0x12uLL)
  {
    v3 = *(*(a1 + 56) + 8);
    v4 = 2;
LABEL_5:
    *(v3 + 24) = v4;
    return;
  }

  objc_storeStrong((*(a1 + 32) + 72), v2);
  v5 = [*(a1 + 40) uniqueIdentifier];
  v6 = *(a1 + 32);
  v7 = *(v6 + 304);
  *(v6 + 304) = v5;

  _objc_release_x1();
}

void sub_100059AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100059DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100059E04(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 80));
  v2 = *(a1 + 40);
  if (v2 == *(*(*(a1 + 48) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 80), v2);
    v3 = [*(a1 + 40) uniqueIdentifier];
    v4 = *(a1 + 32);
    v5 = *(v4 + 312);
    *(v4 + 312) = v3;

    _objc_release_x1();
  }
}

void sub_100059FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005A454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_10005A490(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 88));
  v2 = *(a1 + 40);
  if (*(*(*(a1 + 48) + 8) + 40) == v2)
  {
    v3 = *(*(a1 + 56) + 8);
    v4 = 1;
    goto LABEL_6;
  }

  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 64) == 4)
    {
      v3 = *(*(a1 + 56) + 8);
      v4 = 3;
LABEL_6:
      *(v3 + 24) = v4;
      return;
    }

    if (*(a1 + 72) >= 0x11uLL)
    {
      v3 = *(*(a1 + 56) + 8);
      v4 = 2;
      goto LABEL_6;
    }
  }

  objc_storeStrong((*(a1 + 32) + 88), v2);
  v5 = [*(a1 + 40) uniqueIdentifier];
  v6 = *(a1 + 32);
  v7 = *(v6 + 264);
  *(v6 + 264) = v5;

  _objc_release_x1();
}

void sub_10005A704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005A8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005A8E4(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 32);
  if (v1 == *(v2 + 8))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  else
  {
    *(v2 + 8) = v1;
  }

  return result;
}

void sub_10005AA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005B084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

void sub_10005B0E8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(a1 + 32) + 440) copy];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(a1 + 80) < 0x1EuLL)
  {
    objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
    v8 = *(a1 + 48);
    v9 = (*(a1 + 32) + 440);

    objc_storeStrong(v9, v8);
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

void sub_10005B1A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uniqueIdentifier];
  LOBYTE(v2) = [v2 containsObject:v3];

  if ((v2 & 1) == 0)
  {
    v4 = *(a1 + 40);

    [v4 supersede];
  }
}

void sub_10005B2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005B8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

void sub_10005B95C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) copy];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(a1 + 32) + 448) copy];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(a1 + 80) < 0x20uLL)
  {
    objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
    v8 = *(a1 + 48);
    v9 = (*(a1 + 32) + 448);

    objc_storeStrong(v9, v8);
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

void sub_10005BA14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uniqueIdentifier];
  LOBYTE(v2) = [v2 containsObject:v3];

  if ((v2 & 1) == 0)
  {
    v4 = *(a1 + 40);

    [v4 supersede];
  }
}

uint64_t sub_10005BECC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = +[IXSAppInstallObserverManager sharedInstance];
  v4 = v3;
  v5 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 coordinatorShouldPause:v5];
  }

  else
  {
    [v3 coordinatorShouldResume:v5];
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void sub_10005C0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10005C100(uint64_t a1)
{
  result = [*(a1 + 32) isPaused];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10005C438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void *sub_10005C470(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 120);
  v1 = result[7];
  if (*(*(result[5] + 8) + 24) == v1)
  {
    *(*(result[6] + 8) + 24) = 1;
  }

  else
  {
    *(result[4] + 120) = v1;
  }

  return result;
}

void sub_10005C55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005CCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005D028(uint64_t a1)
{
  v2 = +[IXSAppInstallObserverManager sharedInstance];
  [v2 coordinatorShouldPrioritize:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10005D89C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) identity];
  v23 = kMIUninstallParallelPlaceholderKey;
  v24 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v5 = IXStringForClientID([*v2 creator]);
  v6 = [NSString stringWithFormat:@"Parallel placeholder cleanup for %@ after post processing, creator: %@", v3, v5];

  v16[1] = 0;
  v7 = sub_100013E64(v3, v4, v6);
  v8 = 0;
  if ((v7 & 1) == 0)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = "[IXSCoordinatedAppInstall setComplete:]_block_invoke";
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to uninstall parallel placeholder %@: %@", buf, 0x20u);
    }
  }

  sub_10001554C(@"Resync after uninstalling parallel placeholder");
  v10 = [*(a1 + 32) installationDomain];
  v16[0] = 0;
  v11 = sub_100015F48(v3, v10, v16);
  v12 = v16[0];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000A1818(v2);
    }
  }
}

void sub_10005DAE8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E738;
    block[3] = &unk_1001010A0;
    v5 = v2;
    dispatch_sync(v3, block);
  }
}

void sub_10005DB90(uint64_t a1)
{
  v2 = +[IXSAppInstallObserverManager sharedInstance];
  [v2 coordinatorDidCompleteSuccessfully:*(a1 + 32) forRecordPromise:*(a1 + 40)];
}

void sub_10005DDAC(uint64_t a1)
{
  v2 = [*(a1 + 32) identity];
  v3 = [v2 bundleID];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = MobileInstallationUpdatePlaceholderMetadata();

  if (v8)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) identity];
      v11 = 136315650;
      v12 = "[IXSCoordinatedAppInstall _asyncUpdatePlaceholderMetadataWithInstallType:reason:underlyingError:client:]_block_invoke";
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to update placeholder metadata for %@ : %@", &v11, 0x20u);
    }
  }
}

void sub_10005E5B0(uint64_t a1)
{
  v2 = +[IXSAppInstallObserverManager sharedInstance];
  [v2 coordinatorShouldBeginRestoringUserData:*(a1 + 32)];
}

void sub_10005E738(uint64_t a1)
{
  v14 = kMIUninstallParallelPlaceholderKey;
  v15 = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v3 = [*(a1 + 32) identity];
  v4 = sub_100013E64(v3, v2, *(a1 + 40));
  v5 = 0;

  if ((v4 & 1) == 0)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) identity];
      *buf = 136315650;
      v9 = "[IXSCoordinatedAppInstall _onQueue_removeParallelPlaceholder:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to uninstall parallel placeholder %@: %@", buf, 0x20u);
    }
  }
}

void sub_10005EA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005EA2C(uint64_t a1)
{
  v2 = [*(a1 + 32) metadata];
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 40) + 8) + 24) = [v2 deviceBasedVPP];
    v2 = v3;
  }
}

void sub_10005EE0C(uint64_t a1)
{
  v16 = @"UninstallPlaceholdersOnly";
  v2 = [NSNumber numberWithBool:*(a1 + 48)];
  v17 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  v4 = [*(a1 + 32) identity];
  v5 = sub_100013E64(v4, v3, *(a1 + 40));
  v6 = 0;

  if ((v5 & 1) == 0)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) identity];
      v9 = [v8 bundleID];
      *buf = 136315650;
      v11 = "[IXSCoordinatedAppInstall _onQueue_cancelPlaceholderIfNeededForReason:client:needsLSDatabaseSync:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to uninstall placeholder %@: %@", buf, 0x20u);
    }
  }
}

void sub_10005F0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10005F0D4(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_internal_cancelForReason:*(a1 + 40) client:*(a1 + 56) needsLSDatabaseSync:*(a1 + 64) error:*(a1 + 72)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10005F37C(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [NSSet setWithObjects:*(a1 + 32), 0];
  v3 = MobileInstallationCancelUpdateForStagedIdentifiersWithError();
  v4 = 0;

  if ((v3 & 1) == 0)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000A1908(v1);
    }
  }
}

void sub_10005FFA4(void *a1)
{
  v2 = +[IXSAppInstallObserverManager sharedInstance];
  [v2 coordinator:a1[4] canceledWithReason:a1[5] client:a1[6]];
}

void sub_100060424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100060704(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    v3 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "_IsPendingInstallState";
      v7 = 2048;
      v8 = a1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Unknown install state: %lu", &v5, 0x16u);
    }

    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = 0x7Eu >> a1;
  }

  return v2 & 1;
}

void sub_100060A34(uint64_t a1)
{
  v2 = +[IXSAppInstallObserverManager sharedInstance];
  [v2 coordinatorDidInstallPlaceholder:*(a1 + 32) forRecordPromise:*(a1 + 40)];
}

void sub_100060A8C(uint64_t a1)
{
  v2 = +[IXSAppInstallObserverManager sharedInstance];
  [v2 coordinatorShouldBeginRestoringUserData:*(a1 + 32)];
}

uint64_t sub_100060C8C(void *a1, char a2, char a3, char a4)
{
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v9 = [v7 accessQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006E7AC;
    v11[3] = &unk_100101268;
    v13 = &v14;
    v12 = v8;
    dispatch_sync(v9, v11);

    if (*(v15 + 24))
    {
      a4 = a2;
    }

    else
    {
      a4 = a3;
    }

    _Block_object_dispose(&v14, 8);
  }

  return a4;
}

void sub_100060D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000612F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100061470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100061578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100061590(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(result + 48) != *(*(result + 32) + 12);
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    *(*(result + 32) + 12) = *(result + 48);
  }

  return result;
}

void sub_1000616B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000616D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 192));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return _objc_release_x1();
}

void sub_1000618AC(uint64_t a1)
{
  v2 = [*(a1 + 32) appAssetPromise];

  if (v2)
  {
    v3 = [*(a1 + 32) appAssetPromise];
    v4 = [v3 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100062014;
    block[3] = &unk_100100ED8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v93 = v5;
    v94 = v6;
    dispatch_sync(v4, block);
  }

  v7 = [*(a1 + 32) placeholderPromise];

  if (v7)
  {
    v8 = [*(a1 + 32) placeholderPromise];
    v9 = [v8 accessQueue];
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_1000620B4;
    v89[3] = &unk_100100ED8;
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v90 = v10;
    v91 = v11;
    dispatch_sync(v9, v89);
  }

  v12 = [*(a1 + 32) initialODRAssetPromises];

  if (v12)
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v13 = [*(a1 + 32) initialODRAssetPromises];
    v14 = [v13 countByEnumeratingWithState:&v85 objects:v97 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v86;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v86 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v85 + 1) + 8 * i);
          v19 = [v18 accessQueue];
          v82[0] = _NSConcreteStackBlock;
          v82[1] = 3221225472;
          v82[2] = sub_100062154;
          v82[3] = &unk_100100ED8;
          v83 = *(a1 + 40);
          v84 = v18;
          dispatch_sync(v19, v82);
        }

        v15 = [v13 countByEnumeratingWithState:&v85 objects:v97 count:16];
      }

      while (v15);
    }
  }

  v20 = [*(a1 + 32) userDataPromise];

  if (v20)
  {
    v21 = [*(a1 + 32) userDataPromise];
    v22 = [v21 accessQueue];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_1000621D4;
    v79[3] = &unk_100100ED8;
    v23 = *(a1 + 40);
    v24 = *(a1 + 32);
    v80 = v23;
    v81 = v24;
    dispatch_sync(v22, v79);
  }

  v25 = [*(a1 + 32) deviceSecurityPromise];

  if (v25)
  {
    v26 = [*(a1 + 32) deviceSecurityPromise];
    v27 = [v26 accessQueue];
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_100062274;
    v76[3] = &unk_100100ED8;
    v28 = *(a1 + 40);
    v29 = *(a1 + 32);
    v77 = v28;
    v78 = v29;
    dispatch_sync(v27, v76);
  }

  v30 = [*(a1 + 32) preparationPromise];

  if (v30)
  {
    v31 = [*(a1 + 32) preparationPromise];
    v32 = [v31 accessQueue];
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_100062314;
    v73[3] = &unk_100100ED8;
    v33 = *(a1 + 40);
    v34 = *(a1 + 32);
    v74 = v33;
    v75 = v34;
    dispatch_sync(v32, v73);
  }

  v35 = [*(a1 + 32) installOptionsPromise];

  if (v35)
  {
    v36 = [*(a1 + 32) installOptionsPromise];
    v37 = [v36 accessQueue];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_1000623B4;
    v70[3] = &unk_100100ED8;
    v38 = *(a1 + 40);
    v39 = *(a1 + 32);
    v71 = v38;
    v72 = v39;
    dispatch_sync(v37, v70);
  }

  v40 = [*(a1 + 32) essentialAssetPromises];

  if (v40)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v41 = [*(a1 + 32) essentialAssetPromises];
    v42 = [v41 countByEnumeratingWithState:&v66 objects:v96 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v67;
      do
      {
        for (j = 0; j != v43; j = j + 1)
        {
          if (*v67 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v66 + 1) + 8 * j);
          v47 = [v46 accessQueue];
          v63[0] = _NSConcreteStackBlock;
          v63[1] = 3221225472;
          v63[2] = sub_100062454;
          v63[3] = &unk_100100ED8;
          v64 = *(a1 + 40);
          v65 = v46;
          dispatch_sync(v47, v63);
        }

        v43 = [v41 countByEnumeratingWithState:&v66 objects:v96 count:16];
      }

      while (v43);
    }
  }

  v48 = [*(a1 + 32) dataImportPromises];

  if (v48)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v49 = [*(a1 + 32) dataImportPromises];
    v50 = [v49 countByEnumeratingWithState:&v59 objects:v95 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v60;
      do
      {
        for (k = 0; k != v51; k = k + 1)
        {
          if (*v60 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v59 + 1) + 8 * k);
          v55 = [v54 accessQueue];
          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_1000624D4;
          v56[3] = &unk_100100ED8;
          v57 = *(a1 + 40);
          v58 = v54;
          dispatch_sync(v55, v56);
        }

        v51 = [v49 countByEnumeratingWithState:&v59 objects:v95 count:16];
      }

      while (v51);
    }
  }
}

void sub_100062014(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) appAssetPromise];
  v4 = [v3 uniqueIdentifier];
  [v2 addObject:v4];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) appAssetPromise];
  v6 = [v7 subPromiseUUIDs];
  [v5 unionSet:v6];
}

void sub_1000620B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) placeholderPromise];
  v4 = [v3 uniqueIdentifier];
  [v2 addObject:v4];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) placeholderPromise];
  v6 = [v7 subPromiseUUIDs];
  [v5 unionSet:v6];
}

void sub_100062154(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uniqueIdentifier];
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) subPromiseUUIDs];
  [v4 unionSet:v5];
}

void sub_1000621D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userDataPromise];
  v4 = [v3 uniqueIdentifier];
  [v2 addObject:v4];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) userDataPromise];
  v6 = [v7 subPromiseUUIDs];
  [v5 unionSet:v6];
}

void sub_100062274(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceSecurityPromise];
  v4 = [v3 uniqueIdentifier];
  [v2 addObject:v4];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) deviceSecurityPromise];
  v6 = [v7 subPromiseUUIDs];
  [v5 unionSet:v6];
}

void sub_100062314(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) preparationPromise];
  v4 = [v3 uniqueIdentifier];
  [v2 addObject:v4];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) preparationPromise];
  v6 = [v7 subPromiseUUIDs];
  [v5 unionSet:v6];
}

void sub_1000623B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) installOptionsPromise];
  v4 = [v3 uniqueIdentifier];
  [v2 addObject:v4];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) installOptionsPromise];
  v6 = [v7 subPromiseUUIDs];
  [v5 unionSet:v6];
}

void sub_100062454(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uniqueIdentifier];
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) subPromiseUUIDs];
  [v4 unionSet:v5];
}

void sub_1000624D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uniqueIdentifier];
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) subPromiseUUIDs];
  [v4 unionSet:v5];
}

id sub_100062974(uint64_t a1)
{
  [*(a1 + 32) pause];
  v2 = *(a1 + 32);

  return [v2 setInstallState:2];
}

void sub_100062AA0(id a1, NSProgress *a2)
{
  if (a2)
  {
    v2 = a2;
    [(NSProgress *)v2 resume];
    [(NSProgress *)v2 setInstallState:0];
  }
}

void sub_1000630F4(uint64_t a1)
{
  v2 = [*(a1 + 32) placeholderPromise];
  *(*(*(a1 + 40) + 8) + 24) = [v2 installType];
}

id sub_100063150(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1 + 8;
  v6 = a1[8];
  if (v6 == 2)
  {
    v12 = a1[4];
    v13 = a1[6];

    return [v12 _limitedConcurrency_fetchPostProcessingProgressAndRun:{v13, a4, a5}];
  }

  else if (v6)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1000A1A08(a1, v7, v14);
    }

    return (*(a1[6] + 16))();
  }

  else
  {
    v8 = a1[6];
    v9 = *(*(a1[7] + 8) + 24);
    v10 = a1[4];
    v11 = a1[5];

    return [v10 _limitedConcurrency_fetchLoadingProgressForPlaceholderInstallType:v9 progressHint:v11 andRun:v8];
  }
}

id sub_100063234(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [NSString stringWithFormat:@"Unknown progress value %lu", a1];
  }

  else
  {
    v2 = *(&off_100102ED8 + a1);
  }

  return v2;
}

id sub_10006337C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (!*(v3 + 320))
    {
      objc_storeStrong((v3 + 320), v2);
    }
  }

  if ([*(a1 + 40) isPaused])
  {
    [*(a1 + 40) _pauseProgressObject:*(a1 + 32)];
  }

  v4 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [*(a1 + 40) pendingProgressRequests];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        (*(v10 + 16))(v10, *(a1 + 32));
        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return [*(a1 + 40) setPendingProgressRequests:0];
}

id sub_100063854(uint64_t a1)
{
  result = [*(a1 + 32) originalInstallType];
  if (!result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setOriginalInstallType:v4];
  }

  return result;
}

id sub_100063964(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [a3 doubleValue];
  v7 = (v6 * 10000.0);
  v8 = [v5 unsignedIntegerValue];

  return [v4 setTotalUnitCount:v7 forPhase:v8];
}

void sub_10006472C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Unwind_Resume(a1);
}

id sub_100064780(uint64_t a1)
{
  [*(a1 + 32) percentComplete];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  result = [*(a1 + 32) totalBytesForProgress];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id sub_1000647C8(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isComplete];
  [*(a1 + 32) percentComplete];
  *(*(*(a1 + 48) + 8) + 24) = v2;
  result = [*(a1 + 32) totalBytesForProgress];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

id sub_100064824(uint64_t a1)
{
  [*(a1 + 32) percentComplete];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  result = [*(a1 + 32) totalBytesForProgress];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10006486C(uint64_t a1)
{
  v3 = [*(a1 + 32) preparationPromise];
  [v3 percentComplete];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

void sub_1000648C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A1D38(a1);
    }

    goto LABEL_10;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) identity];
      v7 = 136315394;
      v8 = "[IXSCoordinatedAppInstall _onQueue_updateLoadingProgress]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@: Not updating loading progress: no relevant promises set", &v7, 0x16u);
    }

LABEL_10:

    goto LABEL_11;
  }

  [v3 setInstallState:1];
  if ([v4 totalUnitCount] != *(a1 + 40))
  {
    [v4 setTotalUnitCount:?];
  }

  [v4 setCompletedUnitCount:*(a1 + 48)];
LABEL_11:
}

void sub_1000651CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

id sub_1000651FC(uint64_t a1)
{
  [*(a1 + 32) percentComplete];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  result = [*(a1 + 32) totalBytesForProgress];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id sub_100065244(uint64_t a1)
{
  [*(a1 + 32) percentComplete];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  result = [*(a1 + 32) totalBytesForProgress];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10006528C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 totalUnitCount] != *(a1 + 40))
    {
      [v4 setTotalUnitCount:?];
    }

    [v4 setCompletedUnitCount:*(a1 + 48)];
  }

  else
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A1F04(a1);
    }
  }
}

void sub_1000653D8(uint64_t a1)
{
  v2 = +[IXSAppInstallObserverManager sharedInstance];
  [v2 coordinator:*(a1 + 32) didUpdateProgress:*(a1 + 48) forPhase:*(a1 + 40) overallProgress:*(a1 + 56)];
}

void sub_1000656D8(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionStepForPromise:*(a1 + 40)];
  if (v2 != 18)
  {
    v3 = v2;
    if ((v2 - 1) > 0x10)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(&off_100102FF8 + (v2 - 1));
    }

    v5 = [*(a1 + 32) state];
    if (v5 > 0x20)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(&off_100102EF0 + v5);
    }

    v7 = [NSString stringWithFormat:@"%@ began. Coordinator State: %@", v4, v6];
    v8 = [*(a1 + 32) identity];
    v9 = [v8 bundleID];
    [AITransactionLog logStep:v3 byParty:4 phase:1 success:1 forBundleID:v9 description:v7];
  }

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) placeholderPromise];

  if (v10 == v11)
  {
    v23 = 0;
    v24 = 1;
    goto LABEL_25;
  }

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) appAssetPromise];

  if (v12 == v13)
  {
    v23 = 1;
    v24 = 2;
    goto LABEL_25;
  }

  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) userDataPromise];

  if (v14 == v15)
  {
    v23 = 0;
    v24 = 4;
    goto LABEL_25;
  }

  v16 = *(a1 + 40);
  v17 = [*(a1 + 32) deviceSecurityPromise];

  if (v16 == v17)
  {
    v23 = 0;
    v24 = 6;
    goto LABEL_25;
  }

  v18 = *(a1 + 40);
  v19 = [*(a1 + 32) preparationPromise];

  if (v18 == v19)
  {
    v23 = 0;
    v24 = 5;
    goto LABEL_25;
  }

  v20 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [*(a1 + 32) initialODRAssetPromises];
    v22 = [v21 containsObject:*(a1 + 40)];

    if (v22)
    {
      v23 = 0;
      v24 = 3;
LABEL_25:
      v28 = [*(a1 + 32) delegateCallQueue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100065B40;
      v37[3] = &unk_100100DF8;
      v37[4] = *(a1 + 32);
      v37[5] = v24;
      sub_100071134(v28, v37);

      if (v23 && ([*(a1 + 32) sentBeginRestoringUserData] & 1) == 0 && objc_msgSend(*(a1 + 32), "shouldBeginRestoringUserData"))
      {
        [*(a1 + 32) setSentBeginRestoringUserData:1];
        v29 = [*(a1 + 32) delegateCallQueue];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100065B98;
        v36[3] = &unk_1001010A0;
        v36[4] = *(a1 + 32);
        sub_100071134(v29, v36);
LABEL_29:

        return;
      }

      return;
    }
  }

  v25 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [*(a1 + 32) essentialAssetPromises];
    v27 = [v26 containsObject:*(a1 + 40)];

    if (v27)
    {
      v23 = 0;
      v24 = 8;
      goto LABEL_25;
    }
  }

  v30 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [*(a1 + 32) dataImportPromises];
    v32 = [v31 containsObject:*(a1 + 40)];

    if (v32)
    {
      v23 = 0;
      v24 = 9;
      goto LABEL_25;
    }
  }

  v33 = *(a1 + 40);
  v34 = [*(a1 + 32) installOptionsPromise];

  if (v33 != v34)
  {
    v29 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 40);
      *buf = 136315394;
      v39 = "[IXSCoordinatedAppInstall promiseDidBegin:]_block_invoke";
      v40 = 2112;
      v41 = v35;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s: Got promise did begin for unknown promise %@", buf, 0x16u);
    }

    goto LABEL_29;
  }
}

void sub_100065B40(uint64_t a1)
{
  v2 = +[IXSAppInstallObserverManager sharedInstance];
  [v2 coordinator:*(a1 + 32) configuredPromiseDidBeginFulfillment:*(a1 + 40)];
}

void sub_100065B98(uint64_t a1)
{
  v2 = +[IXSAppInstallObserverManager sharedInstance];
  [v2 coordinatorShouldBeginRestoringUserData:*(a1 + 32)];
}

id sub_100065D48(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionStepForPromise:*(a1 + 40)];
  if (v2 != 18)
  {
    v3 = v2;
    if ((v2 - 1) > 0x10)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(&off_100102FF8 + (v2 - 1));
    }

    v5 = [*(a1 + 32) state];
    if (v5 > 0x20)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(&off_100102EF0 + v5);
    }

    v7 = [NSString stringWithFormat:@"%@ completed. Coordinator State: %@", v4, v6];
    v8 = [*(a1 + 32) identity];
    v9 = [v8 bundleID];
    [AITransactionLog logStep:v3 byParty:4 phase:2 success:1 forBundleID:v9 description:v7];
  }

  v10 = *(a1 + 32);

  return [v10 _onQueue_checkState];
}

id sub_100065EF0(uint64_t a1)
{
  v2 = [*(a1 + 32) sentBeginPostProcessing];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _onQueue_updatePostProcessingProgress];
  }

  else
  {

    return [v3 _onQueue_updateLoadingProgress];
  }
}

void sub_1000661B4(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionStepForPromise:*(a1 + 40)];
  if (v2 != 18)
  {
    v3 = v2;
    if ((v2 - 1) > 0x10)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(&off_100102FF8 + (v2 - 1));
    }

    v5 = IXStringForClientID(*(a1 + 56));
    v8 = [NSString stringWithFormat:@"%@ canceled by client %@ for reason %@", v4, v5, *(a1 + 48)];

    v6 = [*(a1 + 32) identity];
    v7 = [v6 bundleID];
    [AITransactionLog logStep:v3 byParty:4 phase:2 success:0 forBundleID:v7 description:v8];
  }
}

void sub_100066494(uint64_t a1)
{
  v2 = +[IXSAppInstallObserverManager sharedInstance];
  [v2 coordinatorShouldBeginPostProcessing:*(a1 + 32) forRecordPromise:*(a1 + 40)];
}

void sub_100066640(uint64_t a1)
{
  v2 = [*(a1 + 32) _createPowerAssertion];
  [*(a1 + 32) setAppInstallPowerAssertion:v2];
}

id sub_100066698(uint64_t a1)
{
  [*(a1 + 32) setUpdateScheduleState:2];
  v2 = *(a1 + 32);

  return [v2 _onQueue_checkState];
}

id sub_10006678C(uint64_t a1)
{
  [*(a1 + 32) setCacheDeleteCallback:*(a1 + 40)];
  result = [*(a1 + 32) isUpdateScheduled];
  if (result)
  {
    v3 = +[IXSAppUpdateScheduler sharedInstance];
    v4 = [*(a1 + 32) uniqueIdentifier];
    [v3 removeUpdateRequestForCoordinatorUUID:v4];

    [*(a1 + 32) setUpdateScheduleState:2];
    [*(a1 + 32) _onQueue_saveState];
    v5 = *(a1 + 32);

    return [v5 _onQueue_checkState];
  }

  return result;
}

void sub_100066960(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) termAssertion];

  if (v2)
  {
    if ([*v1 expectTermAssertionCallback])
    {
      [*v1 setExpectTermAssertionCallback:0];
      [*v1 setAssertionTransaction:0];
      v3 = [*v1 postProcessingAssertionState];
      v5 = *v1;
      if (v3 == 4)
      {

        [v5 _onQueue_runPostProcessingAssertionHandler];
      }

      else
      {
        v8 = [v5 state] < 8;

        [v5 _onQueue_runAssertionHandlerForPlaceholder:v8];
      }
    }

    else
    {
      v7 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1000A2038(v1);
      }
    }
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[IXSCoordinatedAppInstall assertionTargetProcessDidExit:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: We didn't have a termination assertion that we're tracking, so not acting on the callback from RBS", &v9, 0xCu);
    }
  }
}

void sub_1000672BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000672EC(uint64_t a1)
{
  v5 = [*(a1 + 32) clientSeed];
  v2 = [v5 location];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000677E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000677FC(uint64_t a1)
{
  v2 = [*(a1 + 32) placeholderPromise];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accessQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000678C0;
    v5[3] = &unk_100101268;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

uint64_t sub_1000678C0(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000679EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100067A04(uint64_t a1)
{
  v2 = [*(a1 + 32) placeholderPromise];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_100067D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100067DAC(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = [v2 identity];

  v4 = [*(a1 + 40) identity];
  v5 = [*(a1 + 32) clientSeed];
  v6 = [v5 installationDomain];

  v7 = [*(a1 + 40) installationDomain];
  if (([v3 isEqual:v4] & 1) == 0)
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2268();
    }

    v11 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setAppAssetPromiseUUID:fromConnection:completion:]_block_invoke", 7370, @"IXErrorDomain", 0x33uLL, 0, 0, @"Client attempted to set an app reference with identity %@ that did not match the coordinator's identity, %@", v13, v3);
    goto LABEL_9;
  }

  if (v6 != v7)
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = MIStringForInstallationDomain();
      v17 = MIStringForInstallationDomain();
      *buf = 136316162;
      v20 = "[IXSCoordinatedAppInstall(IPCMethods) _remote_setAppAssetPromiseUUID:fromConnection:completion:]_block_invoke";
      v21 = 2112;
      v22 = v3;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Client attempted to set an app reference with identity %@ in installation domain %@ that did not match the coordinator's installation domain %@. : %@", buf, 0x34u);
    }

    v9 = MIStringForInstallationDomain();
    v18 = MIStringForInstallationDomain();
    v11 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setAppAssetPromiseUUID:fromConnection:completion:]_block_invoke", 7372, @"IXErrorDomain", 0x34uLL, 0, 0, @"Client attempted to set an app reference with identity %@ in installation domain %@ that did not match the coordinator's installation domain %@.", v10, v3);

LABEL_9:
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v11;
  }
}

id sub_100068040(uint64_t a1)
{
  [*(a1 + 32) setAppAssetPromise:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setAppAssetPromiseSetterCanInstallLocalProvisionedContent:v2];
}

void sub_10006818C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000681A4(uint64_t a1)
{
  v2 = [*(a1 + 32) appAssetPromise];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accessQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100068268;
    v5[3] = &unk_100101268;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

uint64_t sub_100068268(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100068394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000683AC(uint64_t a1)
{
  v2 = [*(a1 + 32) appAssetPromise];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_10006856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100068594(uint64_t a1)
{
  v2 = [*(a1 + 32) appAssetPromise];
  v3 = v2;
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v4 = [v2 accessQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100068668;
    v5[3] = &unk_100101268;
    v7 = *(a1 + 48);
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

id sub_100068668(uint64_t a1)
{
  result = [*(a1 + 32) hasBegun];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006877C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100068794(uint64_t a1)
{
  result = [*(a1 + 32) appAssetPromiseDRI];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_1000691F0(uint64_t a1)
{
  result = [*(a1 + 32) isComplete];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100069314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006932C(uint64_t a1)
{
  v2 = [*(a1 + 32) installOptionsPromise];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_1000694E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100069504(void *a1)
{
  v2 = a1[4];
  v8 = 0;
  v3 = [v2 _onQueue_fetchInstallOptionsWithError:&v8];
  v4 = v8;
  v5 = v8;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  if (!*(*(a1[5] + 8) + 40))
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }
}

void sub_100069838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100069850(uint64_t a1)
{
  result = [*(a1 + 32) importance];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100069B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_100069B44(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100069B78(uint64_t a1)
{
  v10 = [*(a1 + 32) priorityBoostCompletion];
  if (v10 && *(a1 + 72) != 1)
  {
    v5 = [*(a1 + 32) priorityBoostSourceInfo];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = objc_retainBlock(*(a1 + 48));
    v9 = *(*(a1 + 56) + 8);
    v2 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v2 = sub_100069C48(*(a1 + 40));
    [*(a1 + 32) setPriorityBoostCompletion:*(a1 + 48) withSourceInfo:v2];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

id sub_100069C48(void *a1)
{
  v1 = [a1 processIdentifier];
  v2 = qos_class_self();
  v3 = sub_10000D5C4();
  v4 = sub_10000DA00(v2);
  v5 = [NSString stringWithFormat:@"completion from %@ (%u), %@ (0x%x)", v3, v1, v4, v2];

  return v5;
}

void sub_100069EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100069EF4(uint64_t a1)
{
  v2 = [*(a1 + 32) targetGizmoPairingID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10006A308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006A320(uint64_t a1)
{
  v2 = [*(a1 + 32) initialODRAssetPromises];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = v2;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 accessQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10006A4C8;
          block[3] = &unk_100101268;
          v13 = *(a1 + 40);
          block[4] = v11;
          block[5] = v13;
          dispatch_sync(v12, block);
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v2 = v14;
  }
}

void sub_10006A4C8(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2 = [*(a1 + 32) clientSeed];
  [v1 addObject:v2];
}

void sub_10006A604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006A61C(uint64_t a1)
{
  v2 = [*(a1 + 32) initialODRAssetPromises];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_10006A93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006A954(uint64_t a1)
{
  v2 = [*(a1 + 32) userDataPromise];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accessQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006AA18;
    v5[3] = &unk_100101268;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

uint64_t sub_10006AA18(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10006AB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006AB5C(uint64_t a1)
{
  v2 = [*(a1 + 32) userDataPromise];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_10006AC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006ACA4(uint64_t a1)
{
  result = [*(a1 + 32) shouldBeginRestoringUserData];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006AFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006AFC0(uint64_t a1)
{
  v2 = [*(a1 + 32) preparationPromise];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accessQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006B084;
    v5[3] = &unk_100101268;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

uint64_t sub_10006B084(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10006B3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B3B8(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceSecurityPromise];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accessQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006B47C;
    v5[3] = &unk_100101268;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

uint64_t sub_10006B47C(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10006B5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B5C0(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceSecurityPromise];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_10006B998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006B9B0(uint64_t a1)
{
  result = [*(a1 + 32) needsPostProcessing];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006BAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006BADC(uint64_t a1)
{
  result = [*(a1 + 32) shouldBeginPostProcessing];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10006BFCC(uint64_t a1)
{
  result = [*(a1 + 32) needsPostProcessing];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006C294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10006C2C0(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) needsPostProcessing];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) essentialAssetPromises];
    if (v2)
    {
      v3 = objc_opt_new();
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = v2;
      v6 = v2;
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            v12 = [v11 accessQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10006C490;
            block[3] = &unk_100101268;
            v13 = *(a1 + 48);
            block[4] = v11;
            block[5] = v13;
            dispatch_sync(v12, block);
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }

      v2 = v14;
    }
  }
}

void sub_10006C490(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2 = [*(a1 + 32) clientSeed];
  [v1 addObject:v2];
}

void sub_10006C738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10006C764(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) needsPostProcessing];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) essentialAssetPromises];
    *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
  }
}

id sub_10006CCA4(uint64_t a1)
{
  result = [*(a1 + 32) needsPostProcessing];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006CF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10006CF98(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) needsPostProcessing];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) dataImportPromises];
    if (v2)
    {
      v3 = objc_opt_new();
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = v2;
      v6 = v2;
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            v12 = [v11 accessQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10006D168;
            block[3] = &unk_100101268;
            v13 = *(a1 + 48);
            block[4] = v11;
            block[5] = v13;
            dispatch_sync(v12, block);
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }

      v2 = v14;
    }
  }
}

void sub_10006D168(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2 = [*(a1 + 32) clientSeed];
  [v1 addObject:v2];
}

void sub_10006D410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10006D43C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) needsPostProcessing];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) dataImportPromises];
    *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
  }
}

void sub_10006D5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006D5B8(uint64_t a1)
{
  result = [*(a1 + 32) isComplete];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006D72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006D750(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) errorSourceIdentifier];
  v2 = [*(a1 + 32) error];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10006DA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006DA58(uint64_t a1)
{
  result = [*(a1 + 32) isPaused];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006DC18(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = [*(a1 + 32) delegateCallQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006DCCC;
  v4[3] = &unk_100102E10;
  v5 = *(a1 + 40);
  v6 = v2;
  sub_100071134(v3, v4);
}

id sub_10006DDFC(uint64_t a1)
{
  result = [*(a1 + 32) coordinatorScope];
  if (result == 1)
  {
    v3 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 136315394;
      v7 = "[IXSCoordinatedAppInstall(IPCMethods) _remote_convertToGloballyScopedWithCompletion:]_block_invoke";
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Converting to global scope: %@", &v6, 0x16u);
    }

    v5 = +[IXSCoordinatorManager sharedInstance];
    [v5 convertProcessScopedCoordinatorToGlobalScoped:*(a1 + 32)];

    [*(a1 + 32) setCoordinatorScope:2];
    return [*(a1 + 32) setScopedToConnection:0];
  }

  return result;
}

void sub_10006E230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006E248(uint64_t a1)
{
  result = [*(a1 + 32) placeholderDisposition];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006E468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006E480(uint64_t a1)
{
  v2 = [*(a1 + 32) progressHint];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10006E684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006E69C(uint64_t a1)
{
  result = [*(a1 + 32) newRemovability];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10006E6D0(uint64_t a1)
{
  result = [*(a1 + 32) hasBegun];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10006E704(uint64_t a1)
{
  result = [*(a1 + 32) isComplete];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006E740(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (!v2)
  {
    [*(a1 + 32) setDelegate:0];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v3 cancelForReason:v4 client:v5 error:0];
  }
}

id sub_10006E7AC(uint64_t a1)
{
  result = [*(a1 + 32) isComplete];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t *sub_10006E898@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_10006E8A4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t sub_10006E8C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

void sub_10006EBE8(id a1)
{
  qword_100121E00 = objc_alloc_init(IXSContainerRefreshManager);

  _objc_release_x1();
}

uint64_t sub_10006F24C(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = [v4 bundleID];
  if (container_query_create())
  {
    container_query_operation_set_flags();
    v6 = xpc_string_create([v5 UTF8String]);
    container_query_set_identifiers();

    container_query_set_transient();
    if (![v4 isPersonalPersonaPlaceholder])
    {
      v9 = [v4 personaUniqueString];
      [v9 UTF8String];
    }

    container_query_set_persona_unique_string();
    container_query_set_class();
    if (container_query_get_single_result())
    {
      if (container_delete_all_container_content() == 1)
      {
        container_query_free();
        v10 = 0;
        v11 = 1;
        goto LABEL_24;
      }

      container_get_error_description();
      v18 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000A321C();
      }

      sub_1000405FC("_ClearContainer", 131, @"IXErrorDomain", 0x23uLL, 0, 0, @"Failed to wipe container for identifier %@ : %s", v19, v5);
    }

    else
    {
      if (container_query_get_last_error())
      {
        v12 = container_error_copy_unlocalized_description();
        posix_errno = container_error_get_posix_errno();
        if (posix_errno)
        {
          v14 = posix_errno;
          v15 = strerror(posix_errno);
          v17 = sub_1000405FC("_ClearContainer", 118, NSPOSIXErrorDomain, v14, 0, 0, @"Underlying errno set by container manager is %s", v16, v15);
        }

        else
        {
          v17 = 0;
        }

        v24 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1000A32A0();
        }

        v10 = sub_1000405FC("_ClearContainer", 120, @"IXErrorDomain", 0x23uLL, v17, 0, @"container_query_get_single_result failed : %s", v25, v12);
        free(v12);

        goto LABEL_21;
      }

      v20 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3334();
      }

      sub_1000405FC("_ClearContainer", 123, @"IXErrorDomain", 0x23uLL, 0, 0, @"Failed to fetch container for identity %@ of class %llu", v21, v4);
    }
  }

  else
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A33B8();
    }

    sub_1000405FC("_ClearContainer", 96, @"IXErrorDomain", 0x23uLL, 0, 0, @"Failed to create container query for %@", v8, v5);
  }
  v10 = ;
LABEL_21:
  container_query_free();
  if (a3)
  {
    v22 = v10;
    v11 = 0;
    *a3 = v10;
  }

  else
  {
    v11 = 0;
  }

LABEL_24:

  return v11;
}

void sub_10006F6F4(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) coordinatorForIdentity:*(a1 + 40)];
  if (!v3 || [*(a1 + 48) allowRefreshDuringPostProcessing] && (objc_msgSend(v3, "inPostProcessingPhase") & 1) != 0)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 40) bundleID];
    v6 = *(a1 + 48);
    v19 = 0;
    v20 = 0;
    v7 = [v4 _onQueue_terminateBundleID:v5 withOptions:v6 terminationAssertion:&v20 error:&v19];
    v8 = v20;
    v9 = v19;

    if (v7)
    {
      v10 = *(a1 + 56);
      v11 = [*(a1 + 48) containerTypes];
      v12 = *(a1 + 40);
      v18 = v9;
      v13 = [v10 _onQueue_refreshContainerTypes:v11 forAppWithIdentity:v12 error:&v18];
      v14 = v18;

      if (v8)
      {
        [v8 invalidate];
        if (v13)
        {
          goto LABEL_19;
        }

        v17 = v8;
      }

      else
      {
        v17 = 0;
        if (v13)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (v8)
      {
        [v8 invalidate];
        v17 = v8;
      }

      else
      {
        v17 = 0;
      }

      v14 = v9;
    }
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3440(v2);
    }

    v14 = sub_1000405FC("[IXSContainerRefreshManager refreshContainerTypesWithOptions:forAppWithIdentity:completion:]_block_invoke", 197, @"IXErrorDomain", 5uLL, 0, 0, @"Failed to refresh container %@ because a coordinator already existed: %@", v16, *v2);
    v17 = 0;
  }

  v8 = v17;
LABEL_19:
  (*(*(a1 + 64) + 16))();
}

void sub_1000701A4(void *a1)
{
  v1 = a1;
  v2 = +[NSThread currentThread];
  v3 = [v2 name];

  v4 = [objc_allocWithZone(NSMutableString) initWithString:@"** INTERNAL ERROR: Uncaught Exception **\n"];
  [v4 appendString:@"Exception: "];
  if (v3)
  {
    [v4 appendString:@"<"];
    [v4 appendString:v3];
    [v4 appendString:@"> "];
  }

  v5 = [v1 name];

  if (v5)
  {
    v6 = [v1 name];
    [v4 appendString:v6];

    [v4 appendString:@": "];
  }

  v7 = [v1 reason];

  if (v7)
  {
    v8 = [v1 reason];
    [v4 appendString:v8];
  }

  [v4 appendString:@"\nStack:\n"];
  v9 = [v1 callStackSymbols];
  v10 = [v9 componentsJoinedByString:@"\n"];
  [v4 appendString:v10];

  pthread_mutex_lock(&stru_100121918);
  if (v4)
  {
    qword_100121AE8 = strdup([v4 UTF8String]);
  }

  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void sub_1000703F8(id a1)
{
  if (!dlopen("/System/Library/Frameworks/HealthKit.framework/HealthKit", 1))
  {
    v5 = dlerror();
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A36C8(v5, v4);
    }

    goto LABEL_14;
  }

  qword_100121E20 = NSClassFromString(@"HKHealthStore");
  qword_100121E28 = NSClassFromString(@"HKSourceStore");
  v1 = NSClassFromString(@"_HKBehavior");
  qword_100121E30 = v1;
  if (qword_100121E20)
  {
    v2 = qword_100121E28 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || v1 == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A3618(v4);
    }

LABEL_14:
  }
}

void sub_1000705C4(id a1)
{
  v1 = [(objc_class *)+[IXSHealthKitDataUninstallAlert hkBehaviorClass](IXSHealthKitDataUninstallAlert sharedBehavior];
  byte_100121E10 = [v1 healthAppSupportedOnDevice];
}

void sub_100070ACC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_1000031B0(off_100121958);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3768(a1, v5, v7);
    }

    a2 = 0;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "is not";
    v11 = "+[IXSHealthKitDataUninstallAlert healthKitDataPresentForAppWithBundleID:completion:]_block_invoke";
    v9 = *(a1 + 32);
    v10 = 136315650;
    if (a2)
    {
      v8 = "is";
    }

    v12 = 2080;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: HealthKit data %s present for app with bundle ID %@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
}

void sub_100071054(NSObject *a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000710E8;
  block[3] = &unk_1001013A0;
  v5 = a2;
  v3 = v5;
  dispatch_async(a1, block);
}

void sub_1000710E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100071134(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100071200;
  v7[3] = &unk_1001028F8;
  v8 = os_transaction_create();
  v9 = v3;
  v5 = v8;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_100071200(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

dispatch_queue_global_t sub_10007124C()
{
  v0 = qos_class_self();

  return dispatch_get_global_queue(v0, 0);
}

void sub_100071328(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_100121E38;
  qword_100121E38 = v2;

  if (!dlopen("/System/Library/Frameworks/Photos.framework/Photos", 1))
  {
    dlerror();
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1000A38A8();
    }

    goto LABEL_11;
  }

  qword_100121E50 = NSClassFromString(@"PHAsset");
  v4 = NSClassFromString(@"PHPhotoLibrary");
  qword_100121E58 = v4;
  if (qword_100121E50)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1000A3804(v6);
    }

LABEL_11:
  }

  if (dlopen("/System/Library/PrivateFrameworks/IMCore.framework/IMCore", 1))
  {
    qword_100121E48 = NSClassFromString(@"IMCloudKitHooks");
    if (qword_100121E48)
    {
      return;
    }

    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1000A391C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    dlerror();
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1000A39A8();
    }
  }
}

char *sub_100071B4C(void *a1)
{
  v1 = a1;
  v36 = 0;
  v2 = sub_10003AF28(v1, 17, &v36);
  v3 = v36;
  v4 = v3;
  if (!v2 || !v3 || (([v3 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_NUM_INSTALLED_APPS_KEY"], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v6 = v5, (objc_opt_isKindOfClass() & 1) == 0) ? (v7 = 0) : (v7 = v6), v6, v6, !v7))
  {
    v29 = v4;
    v9 = [LSApplicationRecord enumeratorWithOptions:128];
    v10 = [v1 isEqualToString:@"com.apple.AppStore"];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = v9;
    v11 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (!v11)
    {
      v31 = 0;
      goto LABEL_28;
    }

    v12 = v11;
    v30 = v7;
    v31 = 0;
    v13 = *v33;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [v15 iTunesMetadata];
        v17 = [v16 distributorInfo];

        if (v10)
        {
          v18 = v1;
          v19 = +[MCProfileConnection sharedConnection];
          v20 = [v19 managedAppBundleIDs];

          v21 = [v15 bundleIdentifier];
          if ([v20 containsObject:v21])
          {

            v1 = v18;
          }

          else
          {
            v24 = [v15 iTunesMetadata];
            v25 = [v24 isDeviceBasedVPP];

            if ((v25 & 1) == 0)
            {
              v26 = [v17 distributorType];
              v27 = v31;
              if (v26 == 1)
              {
                v27 = v31 + 1;
              }

              v31 = v27;
            }

            v1 = v18;
            v7 = v30;
          }
        }

        else
        {
          v20 = [v17 distributorID];
          if ([v20 isEqualToString:v1])
          {
            v22 = [v15 bundleIdentifier];
            v23 = ~[v22 isEqualToString:v1];

            v7 = v30;
            v31 += v23 & 1;
            goto LABEL_24;
          }
        }

LABEL_24:
      }

      v12 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (!v12)
      {
LABEL_28:

        v4 = v29;
        v8 = v31;
        goto LABEL_29;
      }
    }
  }

  v8 = [v7 unsignedIntegerValue];
LABEL_29:

  return v8;
}

uint64_t sub_1000729C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100121E60 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_1000734BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073580;
  v7[3] = &unk_100101B08;
  v8 = v4;
  v9 = *(a1 + 32);
  v6 = v4;
  dispatch_sync(v5, v7);
}

void sub_100073860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100073878(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100073890(uint64_t a1)
{
  v2 = [*(a1 + 32) uuidToPromiseMap];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (([*(*(*(a1 + 48) + 8) + 40) isTracked] & 1) == 0)
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

void sub_100073A94(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) uuidToPromiseMap];
  v4 = [*(a1 + 40) uniqueIdentifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = [*(a1 + 40) accessQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100073B78;
  v8[3] = &unk_100100ED8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  sub_100071134(v5, v8);
}

id sub_100073B78(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 saveState];
}

void sub_100073C68(uint64_t a1)
{
  v2 = [*(a1 + 32) uuidToPromiseMap];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100073D08;
  v3[3] = &unk_100103240;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_100073D08(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 isTracked] && ((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    *a4 = 1;
  }
}

void sub_100073E30(uint64_t a1)
{
  v3 = [*(a1 + 32) uuidToPromiseMap];
  v2 = [*(a1 + 40) uniqueIdentifier];
  [v3 removeObjectForKey:v2];
}

void sub_10007418C(uint64_t a1)
{
  v5 = [*(a1 + 32) uuidToPromiseMap];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000741F4(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (!v2)
  {
    v4 = *(a1 + 32);
    v6 = sub_1000405FC("[IXSDataPromiseManager clearAllPromisesForCreator:]_block_invoke_2", 262, @"IXErrorDomain", 1uLL, 0, 0, @"Clearing all promises", v3, v5);
    [v4 cancelForReason:v6 client:15 error:0];
  }
}

void sub_100074398(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) delegate];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    [v4 cancelForReason:v5 client:v6 error:0];
  }
}

void sub_100074E14(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[IXSClientConnection addInterestedCoordinatorUUIDs:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: %@: Interested in UUIDs: %@", &v6, 0x20u);
  }

  v5 = [*(a1 + 32) interestedCoordinatorUUIDs];
  [v5 unionSet:*(a1 + 40)];
}

void sub_100074FB4(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[IXSClientConnection addInterestedCoordinatorUUID:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: %@: Interested in UUID: %@", &v6, 0x20u);
  }

  v5 = [*(a1 + 32) interestedCoordinatorUUIDs];
  [v5 addObject:*(a1 + 40)];
}

void sub_100075154(uint64_t a1)
{
  v2 = &off_100121958;
  v3 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 136315650;
    v37 = "[IXSClientConnection removeInterestedCoordinatorUUIDs:]_block_invoke";
    v38 = 2112;
    v39 = v4;
    v40 = 2112;
    v41 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: %@: No longer interested in UUIDs: %@", buf, 0x20u);
  }

  v6 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v7 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 40);
  v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v8)
  {
    v28 = 0;
    v10 = 0;
    goto LABEL_27;
  }

  v9 = v8;
  v28 = 0;
  v10 = 0;
  v11 = *v32;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v32 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v31 + 1) + 8 * i);
      v14 = [v6 countForObject:v13];
      if (v14)
      {
        if (v14 != 1)
        {
          continue;
        }

        [v7 addObject:v13];
        if (!v10)
        {
          v10 = +[IXSCoordinatorManager sharedInstance];
        }

        v15 = [v10 coordinatorForUUID:v13];
        v16 = v15;
        if (v15 && [v15 coordinatorScope]== 1)
        {
          v29 = v10;
          v17 = v7;
          v18 = v2;
          v19 = a1;
          v20 = *(a1 + 32);
          v21 = [v16 scopedToConnection];

          if (v20 == v21)
          {
            a1 = v19;
            v23 = v28;
            if (!v28)
            {
              v24 = [*(a1 + 32) clientName];
              v23 = sub_1000405FC("[IXSClientConnection removeInterestedCoordinatorUUIDs:]_block_invoke", 218, @"IXErrorDomain", 0x21uLL, 0, 0, @"Process-scoped coordinator no longer referenced by client %@", v25, v24);
            }

            v28 = v23;
            [v16 cancelForReason:v23 client:15 error:0];
          }

          else
          {
            a1 = v19;
          }

          v2 = v18;
          v7 = v17;
          v10 = v29;
        }
      }

      else
      {
        v16 = sub_1000031B0(*v2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          v22 = *(a1 + 32);
          *buf = 136315650;
          v37 = "[IXSClientConnection removeInterestedCoordinatorUUIDs:]_block_invoke";
          v38 = 2112;
          v39 = v22;
          v40 = 2112;
          v41 = v13;
          _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s: %@: Client is no longer interested in %@ but we didn't know they were interested", buf, 0x20u);
        }
      }
    }

    v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v9);
LABEL_27:

  [v6 minusSet:*(a1 + 40)];
  if ([v7 count])
  {
    v26 = sub_1000031B0(*v2);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      *buf = 136315650;
      v37 = "[IXSClientConnection removeInterestedCoordinatorUUIDs:]_block_invoke";
      v38 = 2112;
      v39 = v27;
      v40 = 2112;
      v41 = v7;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s: %@: Removed last reference for UUIDs: %@", buf, 0x20u);
    }
  }
}

void sub_100075694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000756AC(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

void sub_100075838(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) interestedPromiseUUIDs];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) cancelPromiseForUUIDIfNotAssociatedWithAnyCoordinator:*(*(&v8 + 1) + 8 * v6) withReason:*(a1 + 48) client:15];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) interestedPromiseUUIDs];
  [v7 removeAllObjects];
}

void sub_100075A00(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[IXSClientConnection addInterestedPromiseUUID:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: %@: Interested in UUID: %@", &v6, 0x20u);
  }

  v5 = [*(a1 + 32) interestedPromiseUUIDs];
  [v5 addObject:*(a1 + 40)];
}

void sub_100075BA0(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[IXSClientConnection addInterestedPromiseUUIDs:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: %@: Interested in UUIDs: %@", &v6, 0x20u);
  }

  v5 = [*(a1 + 32) interestedPromiseUUIDs];
  [v5 unionSet:*(a1 + 40)];
}

void sub_100075D40(uint64_t a1)
{
  v2 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136315650;
    v24 = "[IXSClientConnection removeInterestedPromiseUUIDs:]_block_invoke";
    v25 = 2112;
    v26 = v3;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: %@: No longer interested in UUIDs: %@", buf, 0x20u);
  }

  v5 = [*(a1 + 32) interestedPromiseUUIDs];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_19;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v19;
  do
  {
    v12 = 0;
    do
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v18 + 1) + 8 * v12);
      if ([v5 countForObject:v13] == 1)
      {
        if (v10)
        {
          if (v9)
          {
LABEL_11:
            [v10 cancelPromiseForUUIDIfNotAssociatedWithAnyCoordinator:v13 withReason:v9 client:15];
            goto LABEL_12;
          }
        }

        else
        {
          v10 = +[IXSDataPromiseManager sharedInstance];
          if (v9)
          {
            goto LABEL_11;
          }
        }

        v14 = [*(a1 + 32) clientName];
        v9 = sub_1000405FC("[IXSClientConnection removeInterestedPromiseUUIDs:]_block_invoke", 306, @"IXErrorDomain", 0x12uLL, 0, 0, @"Promise was not attached to a coordinator and is no longer referenced by client %@", v15, v14);

        goto LABEL_11;
      }

LABEL_12:
      v12 = v12 + 1;
    }

    while (v8 != v12);
    v16 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    v8 = v16;
  }

  while (v16);
LABEL_19:

  v17 = [*(a1 + 32) interestedPromiseUUIDs];
  [v17 minusSet:*(a1 + 40)];
}

void sub_1000760F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007610C(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedPromiseUUIDs];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

void sub_10007647C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000764A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000764B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 issueSandboxExtensionWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) clientSeed];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_100076838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_10007685C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 issueSandboxExtensionWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) clientSeed];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_100076BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100076BD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 issueSandboxExtensionWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) clientSeed];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_100076EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100076F00(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000771E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000771FC(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000774CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000774E4(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000777B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000777CC(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSeed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100077AA8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) clientSeed];
  (*(v1 + 16))(v1, v2, 0);
}

IXSCoordinatedAppInstall *sub_1000788C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v5 = [*(a1 + 32) xpcConnection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v7 = [IXSCoordinatedAppInstall alloc];
  v8 = *(a1 + 40);
  v14[0] = v15;
  v14[1] = v16;
  v9 = [(IXSCoordinatedAppInstall *)v7 initWithSeed:v8 scopedToConnection:v4 creatorAuditToken:v14 error:a2];
  v10 = v9;
  v11 = *(*(a1 + 48) + 8);
  if (v9)
  {
    *(v11 + 24) = 1;
    v12 = v9;
  }

  else
  {
    *(v11 + 24) = 0;
  }

  return v10;
}

BOOL sub_1000789BC(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    if ([v3 coordinatorScope] == 1)
    {
      v5 = a2 == 1;
    }

    else
    {
      v5 = a2 == 2;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

__CFString *sub_100078A18(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [NSString stringWithFormat:@"Unknown intent value %lu", a1];
  }

  else
  {
    v2 = off_100103838[a1];
  }

  return v2;
}

uint64_t sub_100078C90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 originalIntent];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = v5 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v3 seed];
    [v7 addObject:v8];
  }

  return 1;
}

uint64_t sub_100078DF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (!v5 || v5 == [v3 creatorIdentifier])
  {
    v6 = *(a1 + 32);
    v7 = [v4 description];
    [v6 addObject:v7];
  }

  return 1;
}

void sub_100079938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose((v50 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100079994(uint64_t a1, char a2, void *a3)
{
  v9 = a3;
  if (v9)
  {
    v6 = *(*(a1 + 40) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      objc_storeStrong(v7, a3);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) |= a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_100079A24(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = [*(a1 + 32) userInfo];
    v3 = [v2 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v4 = +[IXSErrorPresenter sharedPresenter];
    [v4 presentErrorForIdentities:*(a1 + 40) code:objc_msgSend(*(a1 + 32) underlyingError:"code") errorSource:{v3, *(a1 + 80)}];
  }

  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = [NSNumber numberWithBool:*(*(*(a1 + 64) + 8) + 24)];
  [v5 addObject:v6];

  v7 = *(*(*(a1 + 56) + 8) + 40);
  v8 = *(*(*(a1 + 72) + 8) + 40);
  v9 = *(*(a1 + 48) + 16);

  return v9();
}

uint64_t sub_10007C830(void *a1)
{
  if (sub_10007127C())
  {
    if ((+[ICLFeatureFlags switchingPersonasEnabled]& 1) != 0)
    {
      v2 = 0;
      v3 = 1;
      goto LABEL_13;
    }

    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5378();
    }

    v6 = @"Switching personas is not available on this platform";
    v7 = 1353;
  }

  else
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000A52F4();
    }

    v6 = @"Switching personas is not available on this build";
    v7 = 1348;
  }

  v2 = sub_1000405FC("_IsPersonaSwitchingSupported", v7, @"IXErrorDomain", 0x22uLL, 0, 0, v6, v5, v10);
  if (a1)
  {
    v2 = v2;
    v3 = 0;
    *a1 = v2;
  }

  else
  {
    v3 = 0;
  }

LABEL_13:

  return v3;
}

void sub_10007D990(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [a3 mostRestrictiveRemovabilityMetadata];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];

  *a4 = 0;
}

void sub_10007E078(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = sub_10003E50C(a2);
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10007F018(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) coordinatorForIdentity:*(a1 + 40)];
  if (v3)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5CA8(v2);
    }

    v6 = sub_1000405FC("[IXSClientConnection _remote_updateSINFForAppWithIdentity:sinfData:options:completion:]_block_invoke", 1862, @"IXErrorDomain", 0x1DuLL, 0, 0, @"Failed to update the SINF for %@ because a coordinator already existed: %@", v5, *v2);
  }

  else
  {
    v9 = [*(a1 + 40) bundleID];
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = MobileInstallationUpdateSinfDataForInstallCoordination();
    v6 = 0;

    if (v12)
    {
      (*(*(a1 + 64) + 16))();

      goto LABEL_12;
    }
  }

  if (!v6)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5D30(v2);
    }

    v6 = sub_1000405FC("[IXSClientConnection _remote_updateSINFForAppWithIdentity:sinfData:options:completion:]_block_invoke", 1878, @"IXErrorDomain", 0xEuLL, 0, 0, @"Updating SINF for %@ returned NO but did not set an error.", v8, *v2);
  }

  (*(*(a1 + 64) + 16))();
LABEL_12:
}

void sub_10007F458(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) coordinatorForIdentity:*(a1 + 40)];
  if (v3)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5DA8(v2);
    }

    v6 = sub_1000405FC("[IXSClientConnection _remote_updateiTunesMetadata:forAppWithIdentity:completion:]_block_invoke", 1915, @"IXErrorDomain", 0x1DuLL, 0, 0, @"Failed to update the iTunesMetadata for %@ because a coordinator already existed: %@", v5, *v2);
  }

  else
  {
    v7 = [*(a1 + 40) bundleID];
    v8 = *(a1 + 48);
    v9 = MobileInstallationUpdateiTunesMetadataForInstallCoordination();
    v6 = 0;

    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (!v6)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5E30(v2);
    }

    v6 = sub_1000405FC("[IXSClientConnection _remote_updateiTunesMetadata:forAppWithIdentity:completion:]_block_invoke", 1930, @"IXErrorDomain", 0xEuLL, 0, 0, @"Updating iTunesMetadata for %@ returned NO but did not set an error.", v11, *v2);
  }

LABEL_10:
  (*(*(a1 + 56) + 16))();
}

void sub_10007FBB0(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A5F4C();
    }
  }
}

void sub_10007FE20(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A5FE4();
    }
  }
}

void sub_100080064(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A607C();
    }
  }
}

void sub_10008029C(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6114();
    }
  }
}

void sub_100080328(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000803B8;
  v4[3] = &unk_100103410;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 _remote_getAppAssetPromise:v4];
}

void sub_1000803B8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = *(a1 + 32);
    v7 = [v8 uniqueIdentifier];
    [v6 addInterestedPromiseUUID:v7];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000805FC(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A61AC();
    }
  }
}

void sub_100080838(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6244();
    }
  }
}

void sub_100080A74(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A62DC();
    }
  }
}

void sub_100080CB4(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6374();
    }
  }
}

void sub_100080D40(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100080DD0;
  v4[3] = &unk_100103438;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 _remote_getInitialODRAssetPromises:v4];
}

void sub_100080DD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(a1 + 32);
        v12 = [*(*(&v13 + 1) + 8 * v10) uniqueIdentifier];
        [v11 addInterestedPromiseUUID:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000810B8(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A640C();
    }
  }
}

void sub_1000812F4(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A64A4();
    }
  }
}

void sub_100081534(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A653C();
    }
  }
}

void sub_1000815C0(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100081650;
  v4[3] = &unk_100103410;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 _remote_getPlaceholderPromise:v4];
}

void sub_100081650(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = *(a1 + 32);
    v7 = [v8 uniqueIdentifier];
    [v6 addInterestedPromiseUUID:v7];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100081898(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A65D4();
    }
  }
}

void sub_100081924(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000819B4;
  v4[3] = &unk_100103410;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 _remote_getPreparationPromise:v4];
}

void sub_1000819B4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = *(a1 + 32);
    v7 = [v8 uniqueIdentifier];
    [v6 addInterestedPromiseUUID:v7];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100081BFC(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A666C();
    }
  }
}

void sub_100081C88(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100081D18;
  v4[3] = &unk_100103410;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 _remote_getUserDataPromise:v4];
}

void sub_100081D18(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = *(a1 + 32);
    v7 = [v8 uniqueIdentifier];
    [v6 addInterestedPromiseUUID:v7];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100081F60(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6704();
    }
  }
}

void sub_100081FEC(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008207C;
  v4[3] = &unk_100103410;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 _remote_getDeviceSecurityPromise:v4];
}

void sub_10008207C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = *(a1 + 32);
    v7 = [v8 uniqueIdentifier];
    [v6 addInterestedPromiseUUID:v7];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000822C0(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A679C();
    }
  }
}

void sub_100082504(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6834();
    }
  }
}

void sub_10008273C(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A68CC();
    }
  }
}

void sub_100082978(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6964();
    }
  }
}

void sub_100082BD8(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A69FC();
    }
  }
}

void sub_100082E10(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6A94();
    }
  }
}

void sub_100082E9C(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100082F2C;
  v4[3] = &unk_100103438;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 _remote_getEssentialAssetPromises:v4];
}

void sub_100082F2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(a1 + 32);
        v12 = [*(*(&v13 + 1) + 8 * v10) uniqueIdentifier];
        [v11 addInterestedPromiseUUID:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100083214(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6B2C();
    }
  }
}

void sub_100083474(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6BC4();
    }
  }
}

void sub_1000836AC(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6C5C();
    }
  }
}

void sub_100083738(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000837C8;
  v4[3] = &unk_100103438;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 _remote_getDataImportPromises:v4];
}

void sub_1000837C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(a1 + 32);
        v12 = [*(*(&v13 + 1) + 8 * v10) uniqueIdentifier];
        [v11 addInterestedPromiseUUID:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100083AB0(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6CF4();
    }
  }
}

void sub_100083CEC(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6D8C();
    }
  }
}

void sub_100083F28(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6E24();
    }
  }
}

void sub_100084164(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6EBC();
    }
  }
}

void sub_1000843A0(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6F54();
    }
  }
}

void sub_1000845DC(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A6FEC();
    }
  }
}

void sub_100084818(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A7084();
    }
  }
}

void sub_100084A54(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A711C();
    }
  }
}

void sub_100084C98(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A71B4();
    }
  }
}

void sub_100084ECC(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A724C();
    }
  }
}

void sub_100085114(uint64_t a1)
{
  v2 = [*(a1 + 32) interestedCoordinatorUUIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000A72E4();
    }
  }
}

void sub_1000851A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 xpcConnection];
  [v5 _remote_conveyPriorityReplacingExisting:v3 forConnection:v6 withCompletion:*(a1 + 40)];
}