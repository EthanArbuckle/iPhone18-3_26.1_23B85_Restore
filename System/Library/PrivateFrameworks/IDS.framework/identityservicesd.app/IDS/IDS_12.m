void sub_100359820(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 value];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = *(*(*(a1 + 40) + 8) + 40);
        v10 = [v8 uri];
        [v9 setObject:v8 forKey:v10];
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138412290;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No remote URIs to query, returning results: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSLogEventV();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_100359A24(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, char a9, void *a10)
{
  v90 = a2;
  v91 = a3;
  v92 = a4;
  v93 = a5;
  v94 = a7;
  v95 = a8;
  v99 = a10;
  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = @"NO";
    *buf = 138412802;
    if (a9)
    {
      v17 = @"YES";
    }

    v128 = v16;
    v129 = 2112;
    v130 = v99;
    v131 = 2112;
    v132 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Query for URIs: %@ returned: { displayIDToEndpoints: %@, offline: %@ }", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (a9)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v88 = v99;
    v89 = v18;
    v86 = *(a1 + 32);
    _IDSLogEventV();
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = *(a1 + 40);
  v100 = [obj countByEnumeratingWithState:&v119 objects:v126 count:16];
  if (v100)
  {
    v98 = *v120;
    v96 = IDSSigningErrorDomain;
    do
    {
      for (i = 0; i != v100; i = i + 1)
      {
        if (*v120 != v98)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v119 + 1) + 8 * i);
        v21 = [v20 remoteURI];
        v22 = [v21 tokenFreeURI];
        v101 = [v99 objectForKey:v22];

        if (v101 && [v101 count])
        {
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v23 = v101;
          v24 = [v23 countByEnumeratingWithState:&v115 objects:v125 count:16];
          if (v24)
          {
            v25 = *v116;
            while (2)
            {
              for (j = 0; j != v24; j = j + 1)
              {
                if (*v116 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                v27 = *(*(&v115 + 1) + 8 * j);
                v28 = [v20 remoteURI];
                v29 = [v28 prefixedURI];
                v114 = 0;
                v30 = [v29 _stripPotentialTokenURIWithToken:&v114];
                v31 = v114;

                v32 = [v27 pushToken];
                LODWORD(v29) = [v32 isEqual:v31];

                if (v29)
                {
                  v43 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                  {
                    v44 = [v20 remoteURI];
                    *buf = 138412546;
                    v128 = v44;
                    v129 = 2112;
                    v130 = v27;
                    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Found endpoint for URI: %@, endpoint: %@", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    v87 = [v20 remoteURI];
                    v88 = v27;
                    _IDSLogEventV();
                  }

                  v45 = *(a1 + 64);
                  v37 = [v20 copy];
                  [v45 setObject:v27 forKey:v37];
                  goto LABEL_57;
                }
              }

              v24 = [v23 countByEnumeratingWithState:&v115 objects:v125 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }
          }

          v33 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [v20 remoteURI];
            *buf = 138412290;
            v128 = v34;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "No matching endpoint in query results for URI: %@, checking last resort cache", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            v87 = [v20 remoteURI];
            _IDSLogEventV();
          }

          v35 = *(a1 + 48);
          v36 = [v20 remoteURI];
          v23 = [v35 lastResortCacheIdentityForURI:v36];

          if (!v23)
          {
            if ((a9 & 1) == 0)
            {
              v54 = [*(a1 + 48) rateLimiter];
              v55 = [v20 remoteURI];
              v56 = [IDSBatchVerifier getItemToNoteForRemoteURI:v55];
              [v54 noteItem:v56];
            }

            v57 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v58 = [v20 remoteURI];
              *buf = 138412290;
              v128 = v58;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "No identity found in query or last resort cache for URI: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              v86 = [v20 remoteURI];
              _IDSLogEventV();
            }

            v31 = [NSError errorWithDomain:v96 code:14 userInfo:0, v86];
            v59 = [IDSPayloadVerificationResult alloc];
            v60 = [v20 remoteURI];
            v37 = [v59 initWithURI:v60 verified:0 error:v31];

            v61 = *(*(*(a1 + 88) + 8) + 40);
            v38 = [v20 remoteURI];
            [v61 setObject:v37 forKey:v38];
            goto LABEL_56;
          }
        }

        else
        {
          v39 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [v20 remoteURI];
            *buf = 138412290;
            v128 = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No endpoints in query results for URI: %@, checking last resort cache", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            v87 = [v20 remoteURI];
            _IDSLogEventV();
          }

          v41 = *(a1 + 48);
          v42 = [v20 remoteURI];
          v23 = [v41 lastResortCacheIdentityForURI:v42];

          if (!v23)
          {
            if ((a9 & 1) == 0)
            {
              v46 = [*(a1 + 48) rateLimiter];
              v47 = [v20 remoteURI];
              v48 = [IDSBatchVerifier getItemToNoteForRemoteURI:v47];
              [v46 noteItem:v48];
            }

            v49 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v50 = [v20 remoteURI];
              *buf = 138412290;
              v128 = v50;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "No identity found in query or last resort cache for URI: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              v86 = [v20 remoteURI];
              _IDSLogEventV();
            }

            v31 = [NSError errorWithDomain:v96 code:10 userInfo:0, v86];
            v51 = [IDSPayloadVerificationResult alloc];
            v52 = [v20 remoteURI];
            v37 = [v51 initWithURI:v52 verified:0 error:v31];

            v53 = *(*(*(a1 + 88) + 8) + 40);
            v38 = [v20 remoteURI];
            [v53 setObject:v37 forKey:v38];
            goto LABEL_56;
          }
        }

        [*(a1 + 56) setObject:v23 forKey:v20];
        v31 = [*(a1 + 48) rateLimiter];
        v37 = [v20 remoteURI];
        v38 = [IDSBatchVerifier getItemToNoteForRemoteURI:v37];
        [v31 noteItem:v38];
LABEL_56:

LABEL_57:
      }

      v100 = [obj countByEnumeratingWithState:&v119 objects:v126 count:16];
    }

    while (v100);
  }

  v62 = objc_alloc_init(NSMutableArray);
  v63 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(a1 + 64);
    *buf = 138412290;
    v128 = v64;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Found endpoints by context: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v86 = *(a1 + 64);
    _IDSLogEventV();
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v65 = *(a1 + 64);
  v66 = [v65 countByEnumeratingWithState:&v110 objects:v124 count:16];
  if (v66)
  {
    v67 = *v111;
    do
    {
      for (k = 0; k != v66; k = k + 1)
      {
        if (*v111 != v67)
        {
          objc_enumerationMutation(v65);
        }

        v69 = *(*(&v110 + 1) + 8 * k);
        v70 = *(a1 + 48);
        v71 = [*(a1 + 64) objectForKey:{v69, v86}];
        v72 = [v70 _verifySignedDataWithContext:v69 endpoint:v71 forType:*(a1 + 96) onQueue:*(a1 + 72)];
        [v62 addObject:v72];
      }

      v66 = [v65 countByEnumeratingWithState:&v110 objects:v124 count:16];
    }

    while (v66);
  }

  v73 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = *(a1 + 56);
    *buf = 138412290;
    v128 = v74;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Found last resort cache identities by context: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v86 = *(a1 + 56);
    _IDSLogEventV();
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v75 = *(a1 + 56);
  v76 = [v75 countByEnumeratingWithState:&v106 objects:v123 count:16];
  if (v76)
  {
    v77 = *v107;
    do
    {
      for (m = 0; m != v76; m = m + 1)
      {
        if (*v107 != v77)
        {
          objc_enumerationMutation(v75);
        }

        v79 = *(*(&v106 + 1) + 8 * m);
        v80 = *(a1 + 96);
        v81 = *(a1 + 48);
        v82 = [*(a1 + 56) objectForKey:{v79, v86}];
        v83 = [v81 _verifySignedDataWithContext:v79 forType:v80 withPublicDeviceIdentity:v82 onQueue:*(a1 + 72)];
        [v62 addObject:v83];
      }

      v76 = [v75 countByEnumeratingWithState:&v106 objects:v123 count:16];
    }

    while (v76);
  }

  v84 = [CUTUnsafePromise all:v62];
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_10035A90C;
  v104[3] = &unk_100BD8E38;
  v103 = *(a1 + 80);
  v85 = v103;
  v105 = v103;
  [v84 registerResultBlock:v104];
}

void sub_10035A90C(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 value];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = *(*(*(a1 + 40) + 8) + 40);
        v10 = [v8 uri];
        [v9 setObject:v8 forKey:v10];
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138412290;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Finished verifying payloads with results: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSLogEventV();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_10035B854(id a1)
{
  qword_100CBD0D8 = objc_alloc_init(IDSHeartbeatCenter);

  _objc_release_x1();
}

void sub_10035ECE4(uint64_t a1)
{
  v2 = +[IDSWPLinkManager sharedInstance];
  [v2 addConnectivityDelegate:*(a1 + 32)];
}

void sub_10035F2E0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) cloudConnection];

    if (v2)
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 32) cloudConnection];
      (*(v3 + 16))(v3, v4);
    }
  }
}

void sub_10035F52C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) cloudConnection];

    if (v2)
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 32) cloudConnection];
      (*(v3 + 16))(v3, v4);
    }
  }
}

void sub_10035F804(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 dataProtectionClass] == 3 || objc_msgSend(v6, "dataProtectionClass") == *(a1 + 40))
  {
    (*(*(a1 + 32) + 16))();
    *a4 = 1;
  }
}

void sub_10035FBC0(uint64_t a1)
{
  [*(a1 + 32) setCbuuid:*(a1 + 40)];
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) cloudConnection];
    [v2 setCbuuid:*(a1 + 40)];
  }
}

void sub_10035FD00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog UTunPeer];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    *buf = 67109634;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendAckForMessageWithSequenceNumber: class %d priority %d connection %@", buf, 0x18u);
  }

  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10035FE80;
  v10[3] = &unk_100BD8988;
  v8 = *(a1 + 48);
  v11 = v3;
  v12 = v8;
  v13 = *(a1 + 60);
  v9 = v3;
  [v7 performBlockWithPriority:v10 priority:{objc_msgSend(v9, "idsPriority")}];

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void sub_10035FE80(uint64_t a1)
{
  if (*(a1 + 40) == 2 && ([*(a1 + 32) cloudConnection], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = [*(a1 + 32) cloudConnection];
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = v3;
  [v3 sendAckForMessageWithSequenceNumber:*(a1 + 48)];
}

void sub_10035FFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100360010(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 6)
  {
    v3 = [a2 cloudConnection];
    *(*(*(a1 + 32) + 8) + 24) = [v3 hasSpaceForMessagesWithDataProtectionClass:*(a1 + 48)];
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = [a2 hasSpaceForMessagesWithDataProtectionClass:*(a1 + 48)];
  }
}

void sub_100360CF8(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = *(a1 + 32);
        v9 = *(*(*(a1 + 40) + 8) + 40);
        v10 = [v7 sendingMessageStatistics];
        v11 = [v8 _copyStatisticsDict:v10];
        [v9 addObject:v11];

        v12 = *(a1 + 32);
        v13 = *(*(*(a1 + 40) + 8) + 40);
        v14 = [v7 cloudConnection];
        v15 = [v14 sendingMessageStatistics];
        v16 = [v12 _copyStatisticsDict:v15];
        [v13 addObject:v16];
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

void sub_100360E88(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = *(a1 + 32);
        v9 = *(*(*(a1 + 40) + 8) + 40);
        v10 = [v7 sendingMessageStatistics];
        v11 = [v8 _copyStatisticsDict:v10];
        [v9 addObject:v11];

        v12 = *(a1 + 32);
        v13 = *(*(*(a1 + 40) + 8) + 40);
        v14 = [v7 cloudConnection];
        v15 = [v14 sendingMessageStatistics];
        v16 = [v12 _copyStatisticsDict:v15];
        [v13 addObject:v16];
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

void sub_100361018(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 72);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 32);
        v8 = *(*(*(a1 + 40) + 8) + 40);
        v9 = [*(*(&v11 + 1) + 8 * v6) sendingMessageStatistics];
        v10 = [v7 _copyStatisticsDict:v9];
        [v8 addObject:v10];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_100361264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10036127C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [v2[9] objectAtIndexedSubscript:0];
  v3 = [v7 queueStatistics];
  v4 = [v2 _copyStatisticsDict:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100361418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100361430(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [v2[8] objectAtIndexedSubscript:0];
  v3 = [v7 queueStatistics];
  v4 = [v2 _copyStatisticsDict:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1003615CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003615E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [v2[7] objectAtIndexedSubscript:0];
  v3 = [v7 queueStatistics];
  v4 = [v2 _copyStatisticsDict:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100361780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100361798(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = [v2[7] objectAtIndexedSubscript:0];
  v3 = [v8 cloudConnection];
  v4 = [v3 queueStatistics];
  v5 = [v2 _copyStatisticsDict:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100361944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10036195C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = [v2[8] objectAtIndexedSubscript:0];
  v3 = [v8 cloudConnection];
  v4 = [v3 queueStatistics];
  v5 = [v2 _copyStatisticsDict:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1003622EC(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v5 cumulativeOutgoingStatistics];
  v7 = [v4 _copyStatisticsDict:v6];
  [v3 addObject:v7];

  v9 = a1[5];
  v8 = a1[6];
  v10 = [v5 cumulativeIncomingStatistics];
  v11 = [v9 _copyStatisticsDict:v10];
  [v8 addObject:v11];

  v12 = a1[4];
  v13 = a1[5];
  v14 = [v5 cloudConnection];
  v15 = [v14 cumulativeOutgoingStatistics];
  v16 = [v13 _copyStatisticsDict:v15];
  [v12 addObject:v16];

  v19 = a1 + 5;
  v17 = a1[5];
  v18 = v19[1];
  v22 = [v5 cloudConnection];

  v20 = [v22 cumulativeIncomingStatistics];
  v21 = [v17 _copyStatisticsDict:v20];
  [v18 addObject:v21];
}

void sub_100362EB8(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _powerlogDictionaryForPriority:300];
}

void sub_100362F00(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _powerlogDictionaryForPriority:200];
}

void sub_100362F48(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _powerlogDictionaryForPriority:100];
}

void sub_1003634E4(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) cloudConnection];
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "enable connection %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v5 = [*(a1 + 32) cloudConnection];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v5 = [*(a1 + 32) cloudConnection];
        _IDSLogV();
      }
    }
  }

  v4 = [*(a1 + 32) cloudConnection];
  [v4 setEnabled:1];
}

void sub_100363954(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "disable connection %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v5 = v3;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v5 = v3;
        _IDSLogV();
      }
    }
  }

  [v3 setEnabled:{0, v5}];
  [v3 flushAllMessagesForReason:*(a1 + 32)];
}

void sub_100363AAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "disable connection %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v5 = v3;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v5 = v3;
        _IDSLogV();
      }
    }
  }

  [v3 setEnabled:{0, v5}];
  [v3 flushAllMessagesForReason:*(a1 + 32)];
}

void sub_100363EB8(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudConnection];
  [v2 setEnabled:0];

  v3 = [*(a1 + 32) cloudConnection];
  [v3 flushAllMessagesForReason:*(a1 + 40)];
}

void sub_1003656DC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x10036551CLL);
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(exc_buf);
}

void sub_10036575C(uint64_t a1)
{
  v2 = +[IDSDevicePolicyController sharedInstance];
  v3 = [*(a1 + 32) cbuuid];
  v4 = [v2 shouldBlackOutDeviceWithCbuuid:v3];

  v5 = [IDSDeliveryContext alloc];
  v6 = *(a1 + 40);
  [*(a1 + 32) rtt];
  v7 = [NSNumber numberWithDouble:?];
  v8 = [NSNumber numberWithBool:v4];
  v9 = [v5 initWithResponseCode:15 deviceID:v6 currentAverageRTT:v7 isDeviceBlackedOut:v8 localMessageState:&off_100C3BB78];

  (*(*(a1 + 48) + 16))();
}

void sub_100365868(uint64_t a1)
{
  v2 = +[IDSDevicePolicyController sharedInstance];
  v3 = [*(a1 + 32) cbuuid];
  v4 = [v2 shouldBlackOutDeviceWithCbuuid:v3];

  v5 = [IDSDeliveryContext alloc];
  v6 = *(a1 + 40);
  [*(a1 + 32) rtt];
  v7 = [NSNumber numberWithDouble:?];
  v8 = [NSNumber numberWithBool:v4];
  v9 = [v5 initWithResponseCode:30 deviceID:v6 currentAverageRTT:v7 isDeviceBlackedOut:v8 localMessageState:&off_100C3BB78];

  (*(*(a1 + 48) + 16))();
}

void sub_100365AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100365ACC(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (*(a1 + 40) == 1)
  {
    v4 = [v3 cloudConnection];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = v3;
    v6 = *(v7 + 40);
    *(v7 + 40) = v8;
  }
}

void sub_100365DD8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) isConnected];
  v4 = [NSNumber numberWithBool:v2[16]];
  [*(*v2 + 80) setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v5 = [*v2 isConnected];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    if (v3)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    *buf = 138412802;
    v12 = v7;
    v13 = 2112;
    if (v5)
    {
      v8 = @"YES";
    }

    v14 = v9;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ wasConnected? %@ isConnected in aggregate? %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (v3 != v5)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
    [WeakRetained peerConnectivityChanged:*(a1 + 32)];
  }
}

void sub_100366718(uint64_t a1, void *a2)
{
  v6 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 276));
  v3 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:v6];
  v4 = [v3 BOOLValue];

  os_unfair_lock_unlock((*(a1 + 32) + 276));
  if (v4)
  {
    v5 = [v6 cloudConnection];
    [v5 setEnabled:1];
  }
}

void sub_1003670AC(uint64_t a1, void *a2)
{
  v5 = a2;
  if ((*(a1 + 32) & 1) != 0 || (v3 = [v5 idsPriority] == 300, v4 = v5, v3))
  {
    [v5 setEnabled:1];
    v4 = v5;
  }
}

void sub_100367914(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 idsPriority] == 300)
  {
    [v3 setEnabled:0 withReason:*(a1 + 32)];
  }

  else
  {
    [v3 setEnabled:0];
  }
}

void sub_100367C4C(id a1, IDSUTunConnection *a2)
{
  v2 = a2;
  if ([(IDSUTunConnection *)v2 isEnabled]&& ![(IDSUTunConnection *)v2 isIdle])
  {
    [(IDSUTunConnection *)v2 resumeConnectivity];
  }
}

void sub_100367F7C(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v8 != v5)
      {
        objc_enumerationMutation(v2);
      }

      *(*(*(a1 + 40) + 8) + 24) = [*(*(&v7 + 1) + 8 * v6) isIdle];
      if (*(*(*(a1 + 40) + 8) + 24) != 1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_10036808C(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v8 != v5)
      {
        objc_enumerationMutation(v2);
      }

      *(*(*(a1 + 40) + 8) + 24) = [*(*(&v7 + 1) + 8 * v6) isIdle];
      if (*(*(*(a1 + 40) + 8) + 24) != 1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_10036819C(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v8 != v5)
      {
        objc_enumerationMutation(v2);
      }

      *(*(*(a1 + 40) + 8) + 24) = [*(*(&v7 + 1) + 8 * v6) isIdle];
      if (*(*(*(a1 + 40) + 8) + 24) != 1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_100368370(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v10 + 1) + 8 * v6);
      v8 = [v7 cloudConnection];

      if (v8)
      {
        v9 = [v7 cloudConnection];
        *(*(*(a1 + 40) + 8) + 24) = [v9 isIdle];

        if (*(*(*(a1 + 40) + 8) + 24) != 1)
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_100368CC8(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [v7 forceOTRNegotiation:*(a1 + 40) priority:*(a1 + 56) completionBlock:{*(a1 + 48), v9}];
        if (*(a1 + 64) == 1)
        {
          v8 = [v7 cloudConnection];
          [v8 forceOTRNegotiation:*(a1 + 40) priority:*(a1 + 56) completionBlock:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100368DF8(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [v7 forceOTRNegotiation:*(a1 + 40) priority:*(a1 + 56) completionBlock:{*(a1 + 48), v9}];
        if (*(a1 + 64) == 1)
        {
          v8 = [v7 cloudConnection];
          [v8 forceOTRNegotiation:*(a1 + 40) priority:*(a1 + 56) completionBlock:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100368F28(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [v7 forceOTRNegotiation:*(a1 + 40) priority:*(a1 + 56) completionBlock:{*(a1 + 48), v9}];
        if (*(a1 + 64) == 1)
        {
          v8 = [v7 cloudConnection];
          [v8 forceOTRNegotiation:*(a1 + 40) priority:*(a1 + 56) completionBlock:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

id sub_10036AF28()
{
  cf = 0;
  if (qword_100CBD118 != -1)
  {
    sub_100917DF8();
  }

  if (!off_100CBD110 || ((v0 = off_100CBD110(0, &cf)) != 0 ? (v1 = cf == 0) : (v1 = 0), !v1))
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = cf;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecMWCreateSessionSeed for Key Material (error %@)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v0 = cf;
    if (cf)
    {
      CFRelease(cf);
      v0 = 0;
    }
  }

  return v0;
}

id sub_10036B0F0()
{
  cf = 0;
  if (qword_100CBD128 != -1)
  {
    sub_100917E0C();
  }

  if (!off_100CBD120 || ((v0 = off_100CBD120(0, &cf)) != 0 ? (v1 = cf == 0) : (v1 = 0), !v1))
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = cf;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_SecMWCreateSessionSalt for Key Salt (error %@)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v0 = cf;
    if (cf)
    {
      CFRelease(cf);
      v0 = 0;
    }
  }

  return v0;
}

id sub_10036B2B8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13 = 0;
  v6 = [GFTKeyWrapping wrapSeed:v5 to:a2 legacy:a3 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "wrapSeed (error %@)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v11 = 0;
  }

  return v11;
}

id sub_10036B468(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13 = 0;
  v6 = [GFTKeyWrapping unwrapSeed:v5 usingKey:a2 legacy:a3 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "unwrapSeed (error %@)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v11 = 0;
  }

  return v11;
}

id sub_10036B618(void *a1, uint64_t a2)
{
  v3 = a1;
  v11 = 0;
  v4 = [GFTKeyWrapping encrypt:v3 toKey:a2 error:&v11];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = v4;
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "unwrapSeed (error %@)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v9 = 0;
  }

  return v9;
}

id sub_10036B7C0(void *a1, uint64_t a2)
{
  v3 = a1;
  v11 = 0;
  v4 = [GFTKeyWrapping decrypt:v3 usingKey:a2 error:&v11];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = v4;
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "unwrapSeed (error %@)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v9 = 0;
  }

  return v9;
}

uint64_t sub_10036B968(void *a1, uint64_t a2)
{
  v3 = a1;
  cf = 0;
  if (qword_100CBD138 != -1)
  {
    sub_100917E20();
  }

  if (!off_100CBD130 || ((v4 = off_100CBD130(v3, a2, &cf)) != 0 ? (v5 = cf == 0) : (v5 = 0), !v5))
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = cf;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(error %@)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t sub_10036BB3C(uint64_t a1, uint64_t a2)
{
  if (qword_100CBD148 != -1)
  {
    sub_100917E34();
  }

  v3 = off_100CBD140;
  if (!off_100CBD140)
  {
    return 0;
  }

  return v3(0, a2);
}

id sub_10036C840(id a1, id a2)
{
  v2 = [a2 _stripPotentialTokenURIWithToken:0];
  v3 = [v2 _stripFZIDPrefix];

  return v3;
}

uint64_t sub_10036C894(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) invisibleAliases];
  if ([v4 containsObject:v3])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 hasSuffix:@"inbox.appleid.apple.com"] ^ 1;
  }

  return v5;
}

int64_t sub_10036C908(id a1, IDSDAccount *a2, IDSDAccount *a3)
{
  v4 = a3;
  v5 = [(IDSDAccount *)a2 loginID];
  v6 = [(IDSDAccount *)v4 loginID];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10036D7E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog opportunistic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) connection];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retrieved opportunistic cache {cache: %@, connection: %@}", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10036DDDC(id a1)
{
  qword_100CBD158 = objc_alloc_init(IDSRegistrationController);

  _objc_release_x1();
}

void sub_10036E174()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[IDSRegistrationController sharedInstance];
  [v1 _systemConfigurationPrefsChanged];

  objc_autoreleasePoolPop(v0);
}

void sub_10036F90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, os_activity_scope_state_s state, char a25)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

id sub_10036F9B8(void *a1)
{
  v1 = a1;
  v2 = [v1 mainID];

  if (!v2)
  {
    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v1;
      v14 = "Missing MainID, Not sending IDS Authentication/Register for: %@";
      goto LABEL_30;
    }

LABEL_31:
    v19 = 0;
    goto LABEL_32;
  }

  if ([v1 registrationType] == 1)
  {
    v3 = [v1 profileID];
    v4 = [v3 length];

    if (!v4)
    {
      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v1;
        v14 = "Missing ProfileID, Not sending IDS Authentication/Register for: %@";
        goto LABEL_30;
      }

      goto LABEL_31;
    }
  }

  if ([v1 registrationType] == 1)
  {
    v5 = [v1 regionID];
    v6 = [v5 length];

    if (!v6)
    {
      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v1;
        v14 = "Missing regionID, Not sending IDS Authentication/Register for: %@";
        goto LABEL_30;
      }

      goto LABEL_31;
    }
  }

  if ([v1 registrationType] == 1)
  {
    v7 = [v1 regionBasePhoneNumber];
    v8 = [v7 length];

    if (!v8)
    {
      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v1;
        v14 = "Missing regionBasePhoneNumber, Not sending IDS Authentication/Register for: %@";
        goto LABEL_30;
      }

      goto LABEL_31;
    }
  }

  v9 = [v1 authenticationCert];
  if (v9)
  {
  }

  else
  {
    v15 = [v1 authenticationToken];

    if (v15)
    {
      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v1;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending IDS Authentication for: %@", &v21, 0xCu);
      }

      v13 = +[IDSRegistrationCenter sharedInstance];
      v17 = [v13 authenticateRegistration:v1];
      goto LABEL_27;
    }
  }

  v10 = [v1 authenticationCert];
  if (!v10 || (v11 = v10, v12 = [v1 stopAtAuthentication], v11, (v12 & 1) != 0))
  {
    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v1;
      v14 = "Not sending IDS Registration or Authentication for: %@";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v21, 0xCu);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v1;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending IDS Registration for: %@", &v21, 0xCu);
  }

  v13 = +[IDSRegistrationCenter sharedInstance];
  v17 = [v13 sendRegistration:v1];
LABEL_27:
  v19 = v17;
LABEL_32:

  return v19;
}

void sub_100370F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, os_activity_scope_state_s state, char a21)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_100370F74(uint64_t a1, int a2)
{
  if (!a2)
  {
    sub_100370F78();
  }

  objc_terminate();
}

void sub_1003711E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_activity_scope_state_s state, char a19)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1003711F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    sub_1003711FC();
  }

  objc_terminate();
}

void sub_100371898(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished capturing AutoBugCapture diagnostics for registration failure { context: %@, sessionID: %@, error: %@ }", &v9, 0x20u);
  }
}

void sub_100371C84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userUniqueIdentifier];
  [v1 _postHomeNumberNotificationBeforeAlertForIdentifier:v2 forcefully:0];
}

uint64_t sub_100372CFC(uint64_t a1)
{
  result = [*(a1 + 32) registrationStatus];
  if (result <= 6)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 _notifyRegistrationUpdated:v4];
  }

  return result;
}

id sub_100374384(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mainID];
  v5 = [v4 _im_normalizedURIString];
  LODWORD(a1) = [v5 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1003744B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 registrationType] == *(a1 + 32))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100374564(id a1, id a2)
{
  v2 = a2;
  if ([v2 canSendRegistration] && (objc_msgSend(v2, "stopAtAuthentication") & 1) == 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100375488(uint64_t a1, void *a2)
{
  v3 = [a2 response];
  v4 = +[IMRGLog registration];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User didn't hit default button on disable phone number alert", buf, 2u);
    }

    v6 = [NSMutableSet alloc];
    v7 = +[FTUserConfiguration sharedInstance];
    v8 = [v7 selectedPhoneNumberRegistrationSubscriptionLabels];
    v4 = [v6 initWithArray:v8];

    [v4 removeObject:*(a1 + 32)];
    v9 = +[FTUserConfiguration sharedInstance];
    if (([v9 isDeviceInDualPhoneIdentityMode] & 1) == 0)
    {
      v10 = +[FTUserConfiguration sharedInstance];
      v11 = [v10 isDeviceInManualPhoneSelectionMode];

      if (v11)
      {
LABEL_8:
        v12 = +[FTUserConfiguration sharedInstance];
        v13 = [v4 allObjects];
        [v12 setSelectedPhoneNumberRegistrationSubscriptionLabels:v13];

        goto LABEL_11;
      }

      v9 = +[FTUserConfiguration sharedInstance];
      [v9 setIsDeviceInManualPhoneSelectionMode:1];
    }

    goto LABEL_8;
  }

  if (v5)
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User hit no to disable phone number alert -- ignoring", v15, 2u);
  }

LABEL_11:

  v14 = [*(a1 + 40) _provisionedTemporaryUser];
  if ([v14 finishedRegistration] && (objc_msgSend(v14, "hasNotifiedSuccess") & 1) == 0)
  {
    [*(a1 + 40) _notifyHomeNumberSuccessForUser:v14];
  }

  [*(a1 + 40) setDisplayingAddNumberPrompt:0];
}

void sub_1003777DC(id a1, NSString *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Triggered auto bug capture for rate limiting {session : %@, error: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

uint64_t IDSProtoKeyTransparencyLoggableDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          LOBYTE(v33[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v33[0] & 0x7F) << v24;
          if ((v33[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_53;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v26;
        }

LABEL_53:
        v30 = 16;
        goto LABEL_54;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(IDSProtoApplicationKeyEntry);
      [a1 addApplicationPublicIdentity:v21];
      v33[0] = 0xAAAAAAAAAAAAAAAALL;
      v33[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !IDSProtoApplicationKeyEntryReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = PBReaderReadData();
      v23 = *(a1 + 24);
      *(a1 + 24) = v22;

      goto LABEL_55;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v33[0] & 0x7F) << v14;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_49;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_49:
      v30 = 32;
LABEL_54:
      *(a1 + v30) = v20;
      goto LABEL_55;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

void sub_10037AB08(uint64_t a1)
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10037AE68;
  v22[3] = &unk_100BD8C88;
  v2 = *(a1 + 40);
  v3 = (a1 + 32);
  v22[4] = *(a1 + 32);
  v23 = v2;
  v24 = v3[2];
  v25 = v3[4];
  v4 = objc_retainBlock(v22);
  v5 = [*v3 _lookupEndpoint];
  LOBYTE(v3) = v5 == 0;

  if (v3)
  {
    if ([*(a1 + 32) avoidMainQueue])
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) remoteURI];
        v8 = [*(a1 + 32) localURI];
        v9 = [*(a1 + 32) service];
        *buf = 138412802;
        v27 = v7;
        v28 = 2112;
        v29 = v8;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Need to query for encryption but should avoid main -- failing {remoteURI: %@, localURI: %@, service: %@}", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v10 = [*(a1 + 32) remoteURI];
        v11 = [*(a1 + 32) localURI];
        [*(a1 + 32) service];
        v17 = v16 = v11;
        v15 = v10;
        _IDSLogEventV();
      }

      v12 = *(a1 + 64);
      v13 = [NSError errorWithDomain:IDSEncryptionErrorDomain code:6 userInfo:0, v15, v16, v17];
      (*(v12 + 16))(v12, 0, v13, 0);
    }

    v14 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10037B160;
    block[3] = &unk_100BD9670;
    block[4] = *(a1 + 32);
    v19 = *(a1 + 56);
    v20 = v4;
    v21 = *(a1 + 64);
    dispatch_async(v14, block);
  }

  else
  {
    (v4[2])(v4);
  }
}

void sub_10037AE68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v21 = 0;
  v22 = 0;
  v5 = [v2 legacyEncryptData:v3 withEncryptedAttributes:v4 usedIdentifier:&v22 error:&v21];
  v6 = v22;
  v7 = v21;
  if ([*(a1 + 32) avoidMainQueue])
  {
    v8 = *(a1 + 56);
    v9 = [[IDSEncryptionMetadata alloc] initWithMPIdentityIdentifier:v6];
    (*(v8 + 16))(v8, v5, v7, v9);
  }

  v10 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037AFDC;
  block[3] = &unk_100BD9620;
  v16 = v5;
  v17 = v7;
  v18 = *(a1 + 32);
  v11 = *(a1 + 56);
  v19 = v6;
  v20 = v11;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  dispatch_async(v10, block);
}

void sub_10037AFDC(uint64_t a1)
{
  if (!*(a1 + 32) || *(a1 + 40))
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Flushing peer tokens, in hopes this resolves in the next error", v11, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSLogEventV();
    }

    v3 = [*(a1 + 48) peerIDManager];
    v4 = [*(a1 + 48) remoteURI];
    v5 = [*(a1 + 48) localURI];
    v6 = [*(a1 + 48) service];
    [v3 forgetPeerTokensForURI:v4 fromURI:v5 service:v6 reason:4];
  }

  if (([*(a1 + 48) avoidMainQueue] & 1) == 0)
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [[IDSEncryptionMetadata alloc] initWithMPIdentityIdentifier:*(a1 + 56)];
    (*(v7 + 16))(v7, v8, v9, v10);
  }
}

void sub_10037B160(id *a1)
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] remoteURI];
    v4 = [a1[4] localURI];
    v5 = [a1[4] service];
    *buf = 138412802;
    v27 = v3;
    v28 = 2112;
    v29 = v4;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Missing encryption keys -- querying {remoteURI: %@, localURI: %@, service: %@}", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v6 = [a1[4] remoteURI];
    v7 = [a1[4] localURI];
    [a1[4] service];
    v21 = v20 = v7;
    v18 = v6;
    _IDSLogEventV();
  }

  v8 = [a1[4] peerIDManager];
  v9 = [a1[4] remoteURI];
  v10 = IMSingleObjectArray();
  v11 = [a1[4] cert];
  v12 = [a1[4] localURI];
  v13 = [a1[4] service];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10037B440;
  v23[3] = &unk_100BD9648;
  v22 = *(a1 + 2);
  v14 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  *&v17 = v15;
  *(&v17 + 1) = v16;
  v24 = v22;
  v25 = v17;
  LOBYTE(v19) = 0;
  [v8 startQueryForURIs:v10 fromIdentity:v11 fromURI:v12 fromService:v13 forSending:1 forceToServer:0 clientRequestedForceQuery:v19 reason:@"URIEncrypt" completionBlock:v23];
}

void sub_10037B440(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, void *a7, void *a8, uint64_t a9, void *a10)
{
  v34 = a2;
  v35 = a3;
  v17 = a4;
  v36 = a5;
  v37 = a7;
  v18 = a8;
  v19 = a10;
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (a6)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = [*(a1 + 32) remoteURI];
    v23 = [*(a1 + 32) localURI];
    v24 = [*(a1 + 32) service];
    *buf = 138413058;
    v39 = v21;
    v40 = 2112;
    v41 = v22;
    v42 = 2112;
    v43 = v23;
    v44 = 2112;
    v45 = v24;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Encryption query completed {success: %@, remoteURI: %@, localURI: %@, service: %@}", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (a6)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v26 = [*(a1 + 32) remoteURI];
    v27 = [*(a1 + 32) localURI];
    [*(a1 + 32) service];
    v33 = v32 = v27;
    v30 = v25;
    v31 = v26;
    _IDSLogEventV();
  }

  if (a6 && ([*(a1 + 32) avoidMainQueue] & 1) == 0)
  {
    [*(a1 + 40) performAsyncBlock:*(a1 + 48)];
  }

  else if (([*(a1 + 32) avoidMainQueue] & 1) == 0)
  {
    v28 = *(a1 + 56);
    v29 = [NSError errorWithDomain:IDSEncryptionErrorDomain code:1 userInfo:0];
    (*(v28 + 16))(v28, 0, v29, 0);
  }
}

void sub_10037B8F4(uint64_t a1)
{
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10037BE7C;
  v47[3] = &unk_100BD96E8;
  v2 = a1 + 32;
  v35 = *(a1 + 32);
  v53 = *(a1 + 96);
  v3 = *(&v35 + 1);
  v52 = *(v2 + 56);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v48 = v35;
  v49 = v6;
  v50 = *(v2 + 32);
  v51 = *(v2 + 40);
  v54 = *(v2 + 65);
  v7 = objc_retainBlock(v47);
  v8 = [*v2 replayCommitter];
  v9 = [v8 decryptedDataForKey:*(v2 + 8)];

  v10 = [v9 encryptedAttributes];
  v11 = [v9 decryptedData];
  v12 = [v9 additionalDecryptionResult];
  v13 = *v2;
  if (v11)
  {
    if ([v13 avoidMainQueue])
    {
      v14 = *(a1 + 88);
      v15 = [[IDSDecryptionMetadata alloc] initWithUsedLastResortCache:0 usedCachedData:1 additionalDecryptionResult:v12];
      (*(v14 + 16))(v14, v11, v10, 0, v15);
    }

    else
    {
      v21 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10037C710;
      block[3] = &unk_100BD9710;
      v46 = *(a1 + 88);
      v43 = v11;
      v44 = v10;
      v45 = v12;
      dispatch_async(v21, block);
    }
  }

  else
  {
    v16 = [v13 _lookupEndpoint];
    v17 = v16 == 0;

    v18 = *(a1 + 32);
    if (v17)
    {
      if ([v18 avoidMainQueue])
      {
        v22 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [*(a1 + 32) remoteURI];
          v24 = [*(a1 + 32) localURI];
          v25 = [*(a1 + 32) service];
          *buf = 138412802;
          v56 = v23;
          v57 = 2112;
          v58 = v24;
          v59 = 2112;
          v60 = v25;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Need to query for decryption but should avoid main -- failing {remoteURI: %@, localURI: %@, service: %@}", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          v26 = [*(a1 + 32) remoteURI];
          v27 = [*(a1 + 32) localURI];
          [*(a1 + 32) service];
          v34 = v33 = v27;
          v32 = v26;
          _IDSLogEventV();
        }

        v28 = *(a1 + 88);
        v29 = [NSError errorWithDomain:IDSDecryptionErrorDomain code:1 userInfo:0, v32, v33, v34];
        v30 = objc_alloc_init(IDSDecryptionMetadata);
        (*(v28 + 16))(v28, 0, 0, v29, v30);
      }

      v31 = im_primary_queue();
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10037C79C;
      v36[3] = &unk_100BD9788;
      v36[4] = *(a1 + 32);
      v37 = *(a1 + 48);
      v38 = *(a1 + 80);
      v40 = v7;
      v41 = *(a1 + 88);
      v39 = v12;
      dispatch_async(v31, v36);
    }

    else
    {
      v19 = [v18 _lookupEndpoint];
      v20 = [v19 publicDeviceIdentityContainer];

      (v7[2])(v7, v20, 0, 0);
    }
  }
}

void sub_10037BE7C(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (*(a1 + 88) != 1 || ([*(a1 + 32) replayCommitter], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "decryptedReadReceiptDataForKey:", *(a1 + 40)), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v13 = *(a1 + 48);
    v14 = +[IDSCurrentServerTime sharedInstance];
    [v14 currentServerTimeInterval];
    v15 = [NSNumber numberWithDouble:?];
    v16 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys incomingDecryptStartKey];
    [v13 addEntry:v15 forKey:v16];

    v17 = [*(a1 + 32) fullDeviceIdentityContainerEncrypter];
    v10 = [v17 decryptData:*(a1 + 56) decryptionContext:*(a1 + 64) withPublicDeviceIdentityContainer:v7 usingIdentifier:*(a1 + 72) isRetry:*(a1 + 89)];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10037C1A8;
    v23[3] = &unk_100BD96C0;
    v29 = a3;
    v18 = v8;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v30 = *(a1 + 88);
    v27 = *(a1 + 48);
    v28 = *(a1 + 80);
    [v10 registerResultBlock:v23];

    v21 = v24;
LABEL_6:

    goto LABEL_7;
  }

  if (![*(a1 + 32) avoidMainQueue])
  {
    v22 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10037C12C;
    block[3] = &unk_100BD7298;
    v33 = *(a1 + 80);
    v32 = v10;
    dispatch_async(v22, block);

    v21 = v33;
    goto LABEL_6;
  }

  v11 = *(a1 + 80);
  v12 = [[IDSDecryptionMetadata alloc] initWithUsedLastResortCache:0 usedCachedData:1 additionalDecryptionResult:0];
  (*(v11 + 16))(v11, v10, 0, 0, v12);

LABEL_7:
}

void sub_10037C12C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [[IDSDecryptionMetadata alloc] initWithUsedLastResortCache:0 usedCachedData:1 additionalDecryptionResult:0];
  (*(v1 + 16))(v1, v2, 0, 0, v3);
}

void sub_10037C1A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v34 = v3;
  if ([v3 state] == 1)
  {
    if (*(a1 + 72) == 1 && *(a1 + 32) && (v4 = *(a1 + 40), [v3 error], v5 = objc_claimAutoreleasedReturnValue(), LOBYTE(v4) = objc_msgSend(v4, "_isReplayError:", v5), v5, (v4 & 1) == 0))
    {
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = [v3 error];
    }

    v7 = v6;
    v8 = [*(a1 + 40) _lookupEndpoint];
    v9 = [v7 domain];
    if ([v9 isEqualToString:IDSDecryptionErrorDomain] && (objc_msgSend(v7, "code") == 12 || objc_msgSend(v7, "code") == 9))
    {
      v10 = [v8 identityContainerDeserializationError];

      if (v10)
      {
        v11 = [v7 domain];
        v12 = [v7 code];
        v42 = NSUnderlyingErrorKey;
        v13 = [v8 identityContainerDeserializationError];
        v43 = v13;
        v14 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v15 = [NSError errorWithDomain:v11 code:v12 userInfo:v14];

        v7 = v15;
      }
    }

    else
    {
    }

    v20 = [[IDSDecryptionMetadata alloc] initWithUsedLastResortCache:*(a1 + 72) usedCachedData:0 additionalDecryptionResult:0];

    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v16 = [v3 value];
    v17 = [v16 decryptedData];
    v18 = [v16 encryptedAttributes];
    v19 = [v16 additionalDecryptionResult];
    v20 = [[IDSDecryptionMetadata alloc] initWithUsedLastResortCache:*(a1 + 72) usedCachedData:0 additionalDecryptionResult:v19];
    if (!CUTIsInternalInstall() || (+[IMUserDefaults isWritePushPayloadsToDiskEnabled]& 1) == 0)
    {
      v21 = [*(a1 + 40) replayCommitter];
      v22 = [v16 commitBlock];
      [v21 holdCommitBlock:v22 andDecryptedData:v17 withEncryptedAttributes:v18 forKey:*(a1 + 48)];
    }

    if (*(a1 + 73) == 1)
    {
      v23 = [*(a1 + 40) replayCommitter];
      [v23 holdDecryptedReadReceiptData:v17 forKey:*(a1 + 48)];
    }

    v7 = 0;
  }

  v24 = *(a1 + 56);
  v25 = +[IDSCurrentServerTime sharedInstance];
  [v25 currentServerTimeInterval];
  v26 = [NSNumber numberWithDouble:?];
  v27 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys incomingDecryptEndKey];
  [v24 addEntry:v26 forKey:v27];

  if ([*(a1 + 40) avoidMainQueue])
  {
    (*(*(a1 + 64) + 16))();
  }

  v28 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037C62C;
  block[3] = &unk_100BD9698;
  v36 = v17;
  v37 = v7;
  v38 = *(a1 + 40);
  v29 = *(a1 + 64);
  v40 = v20;
  v41 = v29;
  v39 = v18;
  v30 = v20;
  v31 = v18;
  v32 = v7;
  v33 = v17;
  dispatch_async(v28, block);
}

uint64_t sub_10037C62C(uint64_t a1)
{
  if (!*(a1 + 32) || *(a1 + 40))
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Flushing peer tokens, in hopes this resolves in the next error", v4, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSLogEventV();
    }
  }

  result = [*(a1 + 48) avoidMainQueue];
  if ((result & 1) == 0)
  {
    return (*(*(a1 + 72) + 16))();
  }

  return result;
}

void sub_10037C710(void *a1)
{
  v1 = a1[7];
  v2 = a1[4];
  v3 = a1[5];
  v4 = [[IDSDecryptionMetadata alloc] initWithUsedLastResortCache:0 usedCachedData:1 additionalDecryptionResult:a1[6]];
  (*(v1 + 16))(v1, v2, v3, 0, v4);
}

void sub_10037C79C(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] remoteURI];
  v4 = [v3 prefixedURI];
  v5 = [v4 _appearsToBePseudonymID];
  v6 = *v2;
  if (v5)
  {
    v7 = [v6 remoteURI];
    v8 = [v7 prefixedURI];
  }

  else
  {
    v8 = [v6 pushToken];
  }

  v9 = [a1[4] rateLimiter];
  v10 = [v9 underLimitForItem:v8];

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v10)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = [a1[4] remoteURI];
    v14 = [a1[4] localURI];
    v15 = [a1[4] service];
    *buf = 138413058;
    v73 = v12;
    v74 = 2112;
    v75 = v13;
    v76 = 2112;
    v77 = v14;
    v78 = 2112;
    v79 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Missing decryption keys, need to query {underLimit: %@, remoteURI: %@, localURI: %@, service: %@}", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (v10)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v17 = [a1[4] remoteURI];
    v18 = [a1[4] localURI];
    [a1[4] service];
    v58 = v57 = v18;
    v55 = v16;
    v56 = v17;
    _IDSLogEventV();
  }

  v19 = a1[4];
  if (!v10)
  {
    if ([v19 avoidMainQueue])
    {
      goto LABEL_24;
    }

    buf[0] = 0;
    v47 = [a1[4] _lookupIdentityWithLastResortFallback:buf];
    v48 = v47;
    if (v47 && buf[0] != 1)
    {
      v50 = 0;
    }

    else
    {
      v49 = v47 == 0;
      v50 = [NSError errorWithDomain:IDSDecryptionErrorDomain code:17 userInfo:0, v55, v56, v57, v58];
      if (v49)
      {
        v51 = a1[9];
        v52 = [IDSDecryptionMetadata alloc];
        v53 = [(IDSDecryptionMetadata *)v52 initWithUsedLastResortCache:buf[0] usedCachedData:0 additionalDecryptionResult:a1[7]];
        (*(v51 + 2))(v51, 0, 0, v50, v53);
LABEL_23:

        goto LABEL_24;
      }
    }

    v54 = a1[6];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10037D37C;
    v61[3] = &unk_100BD9738;
    v64 = a1[8];
    v62 = v48;
    v65 = buf[0];
    v50 = v50;
    v63 = v50;
    [v54 performAsyncBlock:v61];

    v53 = v64;
    goto LABEL_23;
  }

  v20 = [v19 peerIDManager];
  v21 = [a1[4] remoteURI];
  v22 = [a1[4] localURI];
  v23 = [a1[4] service];
  [v20 forgetPeerTokensForURI:v21 fromURI:v22 service:v23 reason:3];

  v60 = [[IDSPeerIDQueryContext alloc] initWithSending:0 forceToServer:0 messaging:0 resultExpected:1 preventNewQuery:0];
  v24 = a1[5];
  v25 = +[IDSCurrentServerTime sharedInstance];
  [v25 currentServerTimeInterval];
  v26 = [NSNumber numberWithDouble:?];
  v27 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys incomingQueryStartKey];
  [v24 addEntry:v26 forKey:v27];

  v28 = [a1[4] peerIDManager];
  v29 = [a1[4] remoteURI];
  v30 = IMSingleObjectArray();
  v31 = [a1[4] cert];
  v32 = [a1[4] localURI];
  v33 = [a1[4] service];
  v59 = v29;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10037CDFC;
  v66[3] = &unk_100BD9760;
  v34 = a1[5];
  v35 = a1[4];
  v67 = v34;
  v68 = v35;
  v69 = v8;
  v36 = v33;
  v37 = v32;
  v38 = v31;
  v39 = v30;
  v40 = a1[6];
  v41 = a1[8];
  v42 = v28;
  v43 = a1[9];
  v44 = a1[7];
  *&v45 = v40;
  *(&v45 + 1) = v44;
  *&v46 = v41;
  *(&v46 + 1) = v43;
  v71 = v46;
  v70 = v45;
  [v42 startQueryForURIs:v39 fromIdentity:v38 fromURI:v37 fromService:v36 context:v60 reason:@"URIDecrypt" completionBlock:v66];

LABEL_24:
}

void sub_10037CDFC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, void *a7, void *a8, char a9, void *a10)
{
  v49 = a2;
  v50 = a3;
  v17 = a4;
  v51 = a5;
  v52 = a7;
  v18 = a8;
  v19 = a10;
  v20 = *(a1 + 32);
  v21 = +[IDSCurrentServerTime sharedInstance];
  [v21 currentServerTimeInterval];
  v22 = [NSNumber numberWithDouble:?];
  v23 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys incomingQueryEndKey];
  [v20 addEntry:v22 forKey:v23];

  v24 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (a6)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v26 = [*(a1 + 40) remoteURI];
    v27 = [*(a1 + 40) localURI];
    v28 = [*(a1 + 40) service];
    *buf = 138413058;
    v63 = v25;
    v64 = 2112;
    v65 = v26;
    v66 = 2112;
    v67 = v27;
    v68 = 2112;
    v69 = v28;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Decryption query completed {success: %@, remoteURI: %@, localURI: %@, service: %@}", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (a6)
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    v30 = [*(a1 + 40) remoteURI];
    v31 = [*(a1 + 40) localURI];
    [*(a1 + 40) service];
    v48 = v47 = v31;
    v45 = v29;
    v46 = v30;
    _IDSLogEventV();
  }

  buf[0] = 0;
  v32 = [*(a1 + 40) _lookupIdentityWithLastResortFallback:{buf, v45, v46, v47, v48}];
  if (v32 && buf[0] != 1)
  {
    v38 = 0;
    goto LABEL_20;
  }

  v33 = [*(a1 + 40) remoteURI];
  v34 = [v18 objectForKey:v33];

  if (v34)
  {
    v60 = NSUnderlyingErrorKey;
    v35 = [*(a1 + 40) remoteURI];
    v36 = [v18 objectForKey:v35];
    v61 = v36;
    v37 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  }

  else
  {
    if (!a6)
    {
      v37 = 0;
      goto LABEL_19;
    }

    v58 = NSUnderlyingErrorKey;
    v35 = [NSError errorWithDomain:IDSPeerIDManagerErrorDomain code:4 userInfo:0];
    v59 = v35;
    v37 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  }

LABEL_19:
  v38 = [NSError errorWithDomain:IDSDecryptionErrorDomain code:2 userInfo:v37];

LABEL_20:
  if (!((v32 == 0) | [*(a1 + 40) avoidMainQueue] & 1))
  {
    if (buf[0] == 1)
    {
      v43 = [*(a1 + 40) rateLimiter];
      [v43 noteItem:*(a1 + 48)];
    }

    v44 = *(a1 + 56);
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10037D360;
    v53[3] = &unk_100BD9738;
    v56 = *(a1 + 72);
    v54 = v32;
    v57 = buf[0];
    v55 = v38;
    [v44 performAsyncBlock:v53];

    v42 = v56;
    goto LABEL_28;
  }

  if (([*(a1 + 40) avoidMainQueue] & 1) == 0)
  {
    if ((a9 & 1) == 0)
    {
      v39 = [*(a1 + 40) rateLimiter];
      [v39 noteItem:*(a1 + 48)];
    }

    v40 = *(a1 + 80);
    v41 = [IDSDecryptionMetadata alloc];
    v42 = [(IDSDecryptionMetadata *)v41 initWithUsedLastResortCache:buf[0] usedCachedData:0 additionalDecryptionResult:*(a1 + 64)];
    (*(v40 + 16))(v40, 0, 0, v38, v42);
LABEL_28:
  }
}

void sub_10037D4AC(uint64_t a1)
{
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10037DA10;
  v49[3] = &unk_100BD97D8;
  v2 = (a1 + 32);
  v49[4] = *(a1 + 32);
  v50 = *(a1 + 64);
  v3 = objc_retainBlock(v49);
  v4 = [*v2 _isNGMKeyType];
  if (v4)
  {
    v5 = v45;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10037DB18;
    v45[3] = &unk_100BD9800;
    v6 = *(a1 + 40);
    v45[4] = *(a1 + 32);
    v30 = &v46;
    v46 = v6;
    v32 = &v47;
    v7 = *(a1 + 48);
    v8 = *(a1 + 72);
    v47 = v7;
    v48[1] = v8;
    v34 = v48;
    v48[0] = v3;
  }

  else
  {
    v5 = 0;
  }

  v9 = objc_retainBlock(v5);
  v10 = [*(a1 + 32) _isSecKeyType];
  if (v10)
  {
    v11 = v41;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10037DBD8;
    v41[3] = &unk_100BD9828;
    v12 = *(a1 + 40);
    v41[4] = *(a1 + 32);
    v31 = &v42;
    v42 = v12;
    v33 = &v43;
    v43 = *(a1 + 48);
    v35 = &v44;
    v44 = v3;
  }

  else
  {
    v11 = 0;
  }

  v13 = objc_retainBlock(v11);
  if ([*(a1 + 32) _isNGMKeyType])
  {
    v14 = [*(a1 + 32) _lookupNGMVerificationIdentityShouldUseLastResort:0 usedLastResort:0];
  }

  else
  {
    v14 = 0;
  }

  if ([*(a1 + 32) _isSecKeyType])
  {
    v15 = [*(a1 + 32) _copyLookupSecVerificationIdentity];
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = 0;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (v9)
  {
    (v9[2])(v9, v14, 0);
    goto LABEL_16;
  }

LABEL_18:
  if (v15 && v13)
  {
    (v13[2])(v13, v15, 0);
    goto LABEL_21;
  }

  if ([*(a1 + 32) avoidMainQueue])
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [*(a1 + 32) remoteURI];
      v28 = [*(a1 + 32) localURI];
      v17 = [*(a1 + 32) service];
      *buf = 138412802;
      v52 = v29;
      v53 = 2112;
      v54 = v28;
      v55 = 2112;
      v56 = v17;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Need to query for signing verification but should avoid main -- failing {remoteURI: %@, localURI: %@, service: %@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v19 = *(a1 + 32);
      v18 = (a1 + 32);
      v20 = [v19 remoteURI];
      v21 = [*v18 localURI];
      [*v18 service];
      v26 = v25 = v21;
      v24 = v20;
      _IDSLogEventV();
    }

    v22 = [NSError errorWithDomain:IDSSigningErrorDomain code:6 userInfo:0, v24, v25, v26];
    (v3[2])(v3, 0, v22);
  }

  else
  {
    v23 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10037DCC4;
    block[3] = &unk_100BD98A0;
    block[4] = *(a1 + 32);
    v38 = v3;
    v37 = *(a1 + 56);
    v39 = v9;
    v40 = v13;
    dispatch_async(v23, block);
  }

LABEL_16:
  if (v15)
  {
LABEL_21:
    CFRelease(v15);
  }

  if (v10)
  {
  }

  if (v4)
  {
  }
}

void sub_10037DA10(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) avoidMainQueue])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10037DB00;
    block[3] = &unk_100BD8F70;
    v9 = *(a1 + 40);
    v10 = a2;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void sub_10037DB18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) fullDeviceIdentitySigner];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    v9 = 0;
    [v4 verifySignedData:v5 matchesData:v6 forType:v7 withPublicDeviceIdentity:v3 error:&v9];
    v8 = v9;

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10037DBD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) fullDeviceIdentitySigner];
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = [*(a1 + 32) keyDiversifier];
    v10 = 0;
    [v4 verifySignedData:v6 matchesData:v5 withSecPublicDeviceIdentity:a2 diversifier:v7 error:&v10];
    v8 = v10;

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = *(*(a1 + 56) + 16);

    v9();
  }
}

void sub_10037DCC4(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] remoteURI];
  v4 = [v3 prefixedURI];
  v5 = [v4 _appearsToBePseudonymID];
  v6 = *v2;
  if (v5)
  {
    v7 = [v6 remoteURI];
    v8 = [v7 prefixedURI];
  }

  else
  {
    v8 = [v6 pushToken];
  }

  v9 = [a1[4] rateLimiter];
  v10 = [v9 underLimitForItem:v8];

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v10)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = [a1[4] remoteURI];
    v14 = [a1[4] localURI];
    v15 = [a1[4] service];
    *buf = 138413058;
    v62 = v12;
    v63 = 2112;
    v64 = v13;
    v65 = 2112;
    v66 = v14;
    v67 = 2112;
    v68 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Missing signing verification key, need to query {underLimit: %@, remoteURI: %@, localURI: %@, service: %@}", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (v10)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v17 = [a1[4] remoteURI];
    v18 = [a1[4] localURI];
    [a1[4] service];
    v51 = v50 = v18;
    v48 = v16;
    v49 = v17;
    _IDSLogEventV();
  }

  if (!v10)
  {
    buf[0] = 0;
    if ([a1[4] _isNGMKeyType])
    {
      v44 = [a1[4] _lookupNGMVerificationIdentityShouldUseLastResort:1 usedLastResort:buf];
      if (v44)
      {
        v45 = a1[7];
        if (v45)
        {
          v46 = a1[5];
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_10037E74C;
          v54[3] = &unk_100BD7298;
          v56 = v45;
          v44 = v44;
          v55 = v44;
          [v46 performAsyncBlock:v54];

          v47 = v56;
LABEL_22:

          goto LABEL_23;
        }
      }
    }

    else
    {
      v44 = 0;
    }

    v47 = [NSError errorWithDomain:IDSSigningErrorDomain code:8 userInfo:0, v48, v49, v50, v51];
    (*(a1[6] + 2))();
    goto LABEL_22;
  }

  v19 = [a1[4] peerIDManager];
  v20 = [a1[4] remoteURI];
  v21 = [a1[4] localURI];
  v22 = [a1[4] service];
  [v19 forgetPeerTokensForURI:v20 fromURI:v21 service:v22 reason:5];

  v23 = [[IDSPeerIDQueryContext alloc] initWithSending:0 forceToServer:0 messaging:0 resultExpected:1 preventNewQuery:0];
  v24 = [a1[4] peerIDManager];
  v25 = [a1[4] remoteURI];
  v26 = IMSingleObjectArray();
  v27 = [a1[4] cert];
  v28 = [a1[4] localURI];
  v29 = [a1[4] service];
  v53 = v8;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_10037E268;
  v57[3] = &unk_100BD9878;
  v57[4] = a1[4];
  v58 = v8;
  v52 = a1[6];
  v30 = v29;
  v31 = v23;
  v32 = a1[5];
  v33 = v28;
  v34 = v27;
  v35 = v26;
  v36 = v25;
  v37 = v24;
  v38 = a1[7];
  v39 = a1[8];
  *&v40 = v38;
  *(&v40 + 1) = v39;
  *&v41 = v32;
  v42 = v30;
  *(&v41 + 1) = v52;
  v59 = v41;
  v60 = v40;
  v43 = v30;
  v8 = v53;
  [v37 startQueryForURIs:v35 fromIdentity:v34 fromURI:v33 fromService:v43 context:v31 reason:@"URIVerify" completionBlock:v57];

LABEL_23:
}

void sub_10037E268(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, void *a7, void *a8, char a9, void *a10)
{
  v42 = a2;
  v43 = a3;
  v17 = a4;
  v44 = a5;
  v45 = a7;
  v18 = a8;
  v19 = a10;
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (a6)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = [*(a1 + 32) remoteURI];
    v23 = [*(a1 + 32) localURI];
    v24 = [*(a1 + 32) service];
    *buf = 138413058;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    *&buf[22] = 2112;
    v53 = v23;
    v54 = 2112;
    v55 = v24;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Signing verification query completed {success: %@, remoteURI: %@, localURI: %@, service: %@}", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (a6)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v26 = [*(a1 + 32) remoteURI];
    v27 = [*(a1 + 32) localURI];
    [*(a1 + 32) service];
    v41 = v40 = v27;
    v38 = v25;
    v39 = v26;
    _IDSLogEventV();
  }

  v51 = 0;
  if ([*(a1 + 32) _isNGMKeyType])
  {
    v28 = [*(a1 + 32) _lookupNGMVerificationIdentityShouldUseLastResort:1 usedLastResort:&v51];
  }

  else
  {
    v28 = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  if ([*(a1 + 32) _isSecKeyType])
  {
    v29 = [*(a1 + 32) _copyLookupSecVerificationIdentity];
  }

  else
  {
    v29 = 0;
  }

  v53 = v29;
  if (v28 || *(*&buf[8] + 24))
  {
    if (v51 == 1)
    {
      v30 = [*(a1 + 32) rateLimiter];
      [v30 noteItem:*(a1 + 40)];
    }

    v31 = *(a1 + 48);
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10037E6D4;
    v46[3] = &unk_100BD9850;
    v48 = *(a1 + 64);
    v47 = v28;
    v49 = *(a1 + 72);
    v50 = buf;
    [v31 performAsyncBlock:v46];

    v32 = v48;
  }

  else
  {
    v33 = [*(a1 + 32) _lookupEndpoint];

    v34 = 7;
    if (a6)
    {
      v34 = 9;
    }

    if (v33)
    {
      v35 = 10;
    }

    else
    {
      v35 = v34;
    }

    v32 = [NSError errorWithDomain:IDSSigningErrorDomain code:v35 userInfo:0];
    if ((a9 & 1) == 0)
    {
      v36 = [*(a1 + 32) rateLimiter];
      [v36 noteItem:*(a1 + 40)];
    }

    (*(*(a1 + 56) + 16))();
    v37 = *(*&buf[8] + 24);
    if (v37)
    {
      CFRelease(v37);
      *(*&buf[8] + 24) = 0;
    }
  }

  _Block_object_dispose(buf, 8);
}

void sub_10037E6D4(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1 + 4;
  }

  else
  {
    v2 = a1[6];
    if (!v2)
    {
      goto LABEL_6;
    }

    v3 = (*(a1[7] + 8) + 24);
  }

  (*(v2 + 16))(v2, *v3, 0);
LABEL_6:
  v4 = *(*(a1[7] + 8) + 24);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1[7] + 8) + 24) = 0;
  }
}

void sub_10037F640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10037F664(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 _legacyEncryptData:v3 withEncryptedAttributes:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10037F920(uint64_t a1)
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10037FBDC;
  v17[3] = &unk_100BD8C88;
  v2 = *(a1 + 40);
  v3 = (a1 + 32);
  v17[4] = *(a1 + 32);
  v18 = v2;
  v19 = v3[2];
  v20 = v3[4];
  v4 = objc_retainBlock(v17);
  v5 = [*v3 publicKeyStorage];
  v6 = [*v3 deviceID];
  v7 = [v5 publicDeviceIdentityContainerForDeviceID:v6];
  v8 = v7 == 0;

  if (v8)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) deviceID];
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Missing device encryption keys -- querying {deviceID: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v12 = [*(a1 + 32) deviceID];
      _IDSLogEventV();
    }

    v11 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10037FC80;
    block[3] = &unk_100BD9670;
    block[4] = *(a1 + 32);
    v14 = *(a1 + 56);
    v15 = v4;
    v16 = *(a1 + 64);
    dispatch_async(v11, block);
  }

  else
  {
    (v4[2])(v4);
  }
}

void sub_10037FBDC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v10 = 0;
  v5 = [v2 _legacyEncryptData:v3 withEncryptedAttributes:v4 error:&v10];
  v6 = v10;
  v7 = a1[7];
  v8 = [IDSEncryptionMetadata alloc];
  v9 = [(IDSEncryptionMetadata *)v8 initWithMPIdentityIdentifier:IDSMPLegacyIdentityIdentifier];
  (*(v7 + 16))(v7, v5, v6, v9);
}

void sub_10037FC80(id *a1)
{
  v2 = [a1[4] accountController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10037FD60;
  v8[3] = &unk_100BD9648;
  v7 = *(a1 + 2);
  v3 = *(&v7 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 issueDependentIDQueriesWithCompletionBlock:v8];
}

void sub_10037FD60(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, void *a7, void *a8, uint64_t a9, void *a10)
{
  v30 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [*(a1 + 32) deviceID];
    v25 = v24;
    v26 = @"NO";
    if (a6)
    {
      v26 = @"YES";
    }

    *buf = 138412546;
    v32 = v26;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Device encryption query completed {success: %@, deviceID: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v29 = [*(a1 + 32) deviceID];
    _IDSLogEventV();
  }

  if (a6)
  {
    [*(a1 + 40) performAsyncBlock:*(a1 + 48)];
  }

  else
  {
    v27 = *(a1 + 56);
    v28 = [NSError errorWithDomain:IDSEncryptionErrorDomain code:1 userInfo:0];
    (*(v27 + 16))(v27, 0, v28, 0);
  }
}

void sub_100380170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100380194(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v2 _decryptData:v3 usingIdentifier:v4 isRetry:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100380328(uint64_t a1)
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003805EC;
  v17[3] = &unk_100BD9968;
  v2 = *(a1 + 40);
  v3 = a1 + 32;
  v17[4] = *(a1 + 32);
  v18 = v2;
  v19 = *(v3 + 16);
  v21 = *(v3 + 40);
  v20 = *(v3 + 32);
  v4 = objc_retainBlock(v17);
  v5 = [*v3 publicKeyStorage];
  v6 = [*v3 deviceID];
  v7 = [v5 publicDeviceIdentityContainerForDeviceID:v6];
  v8 = v7 == 0;

  if (v8)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) deviceID];
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Missing device decryption keys -- querying {deviceID: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v12 = [*(a1 + 32) deviceID];
      _IDSLogEventV();
    }

    v11 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100380894;
    block[3] = &unk_100BD9670;
    block[4] = *(a1 + 32);
    v14 = *(a1 + 56);
    v15 = v4;
    v16 = *(a1 + 64);
    dispatch_async(v11, block);
  }

  else
  {
    (v4[2])(v4);
  }
}

void sub_1003805EC(uint64_t a1)
{
  v2 = [*(a1 + 32) _decryptData:*(a1 + 40) usingIdentifier:*(a1 + 48) isRetry:*(a1 + 64)];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100380694;
  v3[3] = &unk_100BD9940;
  v4 = *(a1 + 56);
  [v2 registerResultBlock:v3];
}

void sub_100380694(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(IDSDecryptionMetadata);
  if ([v3 state] == 1)
  {
    v5 = [v3 error];
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = [v3 value];
    v7 = [v8 decryptedData];
    v6 = [v8 encryptedAttributes];
    v9 = [v8 commitBlock];
    v10 = v9;
    if (v9)
    {
      v14 = 0;
      v11 = (*(v9 + 16))(v9, &v14);
      v12 = v14;
      if ((v11 & 1) == 0)
      {
        v13 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error committing replay state for device ID decryption { error: %@ }", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSLogEventV();
        }
      }
    }

    v5 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_100380894(id *a1)
{
  v2 = [a1[4] rateLimiter];
  v3 = [a1[4] deviceID];
  v4 = [v2 underLimitForItem:v3];

  if (v4)
  {
    v5 = [a1[4] accountController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100380A38;
    v14[3] = &unk_100BD9648;
    *v12 = *(a1 + 2);
    v6 = v12[1];
    v7 = a1[6];
    v8 = a1[7];
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v15 = *v12;
    v16 = v9;
    [v5 issueDependentIDQueriesWithCompletionBlock:v14];
  }

  else
  {
    v10 = a1[7];
    v13 = [NSError errorWithDomain:IDSDecryptionErrorDomain code:17 userInfo:0];
    v11 = objc_alloc_init(IDSDecryptionMetadata);
    (*(v10 + 2))(v10, 0, 0, v13, v11);
  }
}

void sub_100380A38(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, void *a7, void *a8, char a9, void *a10)
{
  v17 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a10;
  v21 = [*(a1 + 32) publicKeyStorage];
  v22 = [*(a1 + 32) deviceID];
  v23 = [v21 publicDeviceIdentityContainerForDeviceID:v22];

  v24 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [*(a1 + 32) deviceID];
    v26 = v25;
    v27 = @"NO";
    if (v23)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    *buf = 138412802;
    if (a6)
    {
      v27 = @"YES";
    }

    v48 = v27;
    v49 = 2112;
    v50 = v28;
    v51 = 2112;
    v52 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Device decryption query completed {success: %@, hasKeyAfterQuery: %@, deviceID: %@}", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (a6)
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    if (v23)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    [*(a1 + 32) deviceID];
    v41 = v40 = v30;
    v39 = v29;
    _IDSLogEventV();
  }

  if (a6 && v23)
  {
    [*(a1 + 40) performAsyncBlock:*(a1 + 48)];
  }

  else
  {
    if ((a9 & 1) == 0)
    {
      v31 = [*(a1 + 32) rateLimiter];
      v32 = [*(a1 + 32) deviceID];
      [v31 noteItem:v32];
    }

    v33 = [v19 objectForKey:{v17, v39, v40, v41, v42, v43, v44}];

    if (v33)
    {
      v45 = NSUnderlyingErrorKey;
      v34 = [v19 objectForKey:v17];
      v46 = v34;
      v35 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    }

    else
    {
      v35 = 0;
    }

    v36 = *(a1 + 56);
    v37 = [NSError errorWithDomain:IDSDecryptionErrorDomain code:2 userInfo:v35];
    v38 = objc_alloc_init(IDSDecryptionMetadata);
    (*(v36 + 16))(v36, 0, 0, v37, v38);
  }
}

void sub_100385534(uint64_t a1)
{
  v4 = [*(a1 + 32) onTransportThread_linkManager];
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 uniqueID];
  [v4 setGlobalLinkConfigurationForSession:v3 configuration:*(*(a1 + 32) + 1000)];
}

void sub_1003855C0(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = state64;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sliced cellular interface - received bitmask: %llu", buf, 0xCu);
  }

  v4 = +[IDSNWPathUtils sharedInstance];
  v5 = state64;
  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v4 setSliceInterfaceBitMask:v5 forSession:v7];
}

double sub_1003856DC()
{
  if (qword_100CBD178 != -1)
  {
    sub_100918708();
  }

  return *&qword_100CBD180 * mach_continuous_time();
}

void sub_10038571C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(v5, (a1 + 32));
  v4 = v3;
  v5[1] = *(a1 + 40);
  IDSTransportThreadAddBlock();

  objc_destroyWeak(v5);
}

uint64_t sub_1003857E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v11 = WeakRetained;
      if ([v3 length])
      {
        v4 = *(a1 + 32);
        v5 = [v11 globalLinkConfiguration];
        [v5 setCellInterfaceName:v4];

        v6 = [v11 onTransportThread_globalLink];
        [v6 setCellInterfaceName:*(a1 + 32)];

        if (qword_100CBD178 != -1)
        {
          sub_100918708();
        }

        v7 = mach_continuous_time();
        if (!v11[45])
        {
          v8 = [NSNumber numberWithDouble:*&qword_100CBD180 * v7 - *(a1 + 48)];
          v9 = v11[45];
          v11[45] = v8;
        }
      }
    }
  }

  return _objc_release_x1();
}

void sub_1003858F4(uint64_t a1)
{
  v2 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100385A24;
  block[3] = &unk_100BD6ED0;
  v5 = *(a1 + 32);
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v2, v3);
}

void sub_1003859AC(void *a1, dispatch_qos_class_t a2, void *a3)
{
  v5 = a1;
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, a2, 0, a3);
  dispatch_async(v5, v6);
}

void sub_100385A24(uint64_t a1)
{
  v6 = +[IDSGroupEncryptionController sharedInstance];
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 groupID];
  v4 = [*(a1 + 32) sharedState];
  v5 = [v4 uniqueID];
  [v6 updateServerDesiredKeyMaterialsForGroup:v3 sessionID:v5];
}

void sub_100385AD4(uint64_t a1)
{
  v15 = [*(a1 + 32) groupStatusNotificationController];
  v14 = [*(a1 + 32) sharedState];
  v13 = [v14 destinations];
  v11 = [v13 allObjects];
  v12 = [*(a1 + 32) sharedState];
  v2 = [v12 groupID];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 uniqueID];
  v5 = [*(a1 + 32) sharedState];
  v6 = [v5 fromURI];
  v7 = [*(a1 + 32) accountController];
  v8 = [*(a1 + 32) sharedState];
  v9 = [v8 accountID];
  v10 = [v7 accountWithUniqueID:v9];
  [v15 pushTokenLookup:v11 forGroup:v2 sessionID:v4 fromURI:v6 account:v10 completionBlock:*(a1 + 40)];
}

void sub_100387DBC(uint64_t a1)
{
  v2 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 41);
    *buf = 138412802;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<%@> _lightweightParticipantSync: generationCounterLSB: %u, currentGenerationCounterLSB: %u, request up-to-date lightweight participants", buf, 0x18u);
  }

  v6 = *(a1 + 32);
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100C3BC20, IDSGlobalLinkOptionSessionInfoRequestTypeKey, 0];
  [v6 requestSessionInfoWithOptions:v7];
}

void sub_100387FD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (*(a1 + 91))
  {
    v4 = *(a1 + 91) == 9;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  v6 = WeakRetained[44];
  if (v6)
  {
    v7 = [v6 objectForKey:IDSDSessionReportCellularNetworkInfoIsNetworkSliceActive];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [NSString stringWithCString:a1 + 136 encoding:4];
  v10 = v3[44];
  if (v10)
  {
    v11 = [v10 objectForKey:IDSDSessionReportCellularNetworkInfoCellularInterfaceName];
    v12 = v11;
    if (v11)
    {
      LOBYTE(v10) = [v11 isEqualToString:v9];
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (((v5 | v8) & 1) == 0 && (v10 & 1) == 0)
  {
    v13 = [NSString stringWithCString:IDSRadioAccessTechnologyToString() encoding:4];
    v14 = [v3 getCellularNetworkInfo:v9];
    v15 = [v14 mutableCopy];

    if (v13)
    {
      [v15 setObject:v13 forKey:IDSDSessionReportCellularNetworkInfoLocalCellularRadioAccessTech];
    }

    v16 = v3[45];
    if (v16)
    {
      [v15 setObject:v16 forKey:IDSDSessionReportCellularNetworkInfoInterfaceBringupTime];
    }

    [v15 setObject:&off_100C3BC38 forKeyedSubscript:IDSDSessionReportQREventSubTypeKey];
    [v15 setObject:&off_100C3BC50 forKeyedSubscript:IDSDSessionReportResultCodeKey];
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "networkSlicing: networkInfo=%@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v18 = v3[44];
    v3[44] = v15;
  }
}

void sub_100388DE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v6 setVerboseFunctionalLogging:*(*(a1 + 32) + 601)];
  [v6 setVerbosePerformanceLogging:*(*(a1 + 32) + 602)];
  v7 = [v6 description];
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 96);
    *buf = 138412546;
    v47 = v7;
    v48 = 2048;
    v49 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client channel connected %@ (connections claimed %lu)", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v35 = v7;
      v36 = *(*(a1 + 32) + 96);
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v35 = v7;
        v36 = *(*(a1 + 32) + 96);
        _IDSLogV();
      }
    }
  }

  [*(*(a1 + 32) + 944) clientChannelConnected];
  v10 = [*(a1 + 32) sharedState];
  if ([v10 useQRDirectly])
  {
    goto LABEL_12;
  }

  v11 = [*(a1 + 32) sharedState];
  if ([v11 clientType] == 1)
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  v12 = [*(a1 + 32) sharedState];
  if ([v12 clientType] == 5)
  {

    goto LABEL_11;
  }

  v21 = [*(a1 + 32) sharedState];
  v22 = [v21 clientType] == 6;

  if (v22)
  {
LABEL_13:
    if ([v6 hasMetadata])
    {
      goto LABEL_14;
    }

    v17 = [*(a1 + 32) sharedState];
    if ([v17 clientType] != 1)
    {
      v18 = [*(a1 + 32) sharedState];
      if ([v18 clientType] != 5)
      {
        v31 = [*(a1 + 32) sharedState];
        v32 = [v31 clientType] == 6;

        if (!v32)
        {
LABEL_14:
          v39 = _NSConcreteStackBlock;
          v40 = 3221225472;
          v41 = sub_100389434;
          v42 = &unk_100BD9AA8;
          v43 = *(a1 + 32);
          v13 = v6;
          v44 = v13;
          IDSTransportThreadAddBlock();
          v14 = +[IMLockdownManager sharedInstance];
          v15 = [v14 isInternalInstall];

          v16 = &v44;
          if (v15)
          {
            [*(a1 + 32) _checkAndRunClientChannelTests:v13];
          }

          goto LABEL_16;
        }

LABEL_25:
        v19 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100389428;
        block[3] = &unk_100BD6ED0;
        block[4] = *(a1 + 32);
        v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
        dispatch_async(v19, v20);

        goto LABEL_26;
      }
    }

    goto LABEL_25;
  }

  v23 = *(a1 + 32);
  v24 = *(v23 + 96);
  if (v24)
  {
    v25 = (v24 - 1);
    v26 = v23;
    objc_sync_enter(v26);
    v27 = *(*(a1 + 32) + 144);
    v28 = [NSNumber numberWithUnsignedInteger:v25];
    v29 = [v27 objectForKey:v28];

    objc_sync_exit(v26);
    if (v29)
    {
      v30 = [v29 intValue];
    }

    else
    {
      v34 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v47 = v25;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Lost race condition - missing connection for extra connection %lu", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      v30 = -1;
    }

    v23 = *(a1 + 32);
    v33 = *(v23 + 96) + 1;
  }

  else
  {
    v30 = *(v23 + 584);
    v33 = 1;
  }

  *(v23 + 96) = v33;
  if (v30 == -1)
  {
    goto LABEL_17;
  }

  v37 = v6;
  v38 = v30;
  IDSTransportThreadAddBlock();
  v16 = &v37;
LABEL_16:

LABEL_17:
  if (*(*(a1 + 32) + 416) == 0.0)
  {
    if (qword_100CBD178 != -1)
    {
      sub_1009186A4();
    }

    *(*(a1 + 32) + 416) = *&qword_100CBD180 * mach_continuous_time();
  }

LABEL_26:
}

void *sub_100389434(void *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = result[4];
    v5 = *(v4 + 72);
    if (v5)
    {
      v6 = v3[5];
      v7 = [v5 cachedDataForClient];
      [v6 setCachedDataForClient:v7];

      v4 = v3[4];
    }

    os_unfair_lock_lock((v4 + 88));
    objc_storeStrong((v3[4] + 72), v3[5]);
    os_unfair_lock_unlock((v3[4] + 88));
    v8 = [v3[5] uuid];
    v9 = v3[4];
    v10 = *(v9 + 80);
    *(v9 + 80) = v8;

    [v3[4] _connectQRDirectlyToClientChannel:v3[5]];
    v11 = [v3[4] onTransportThread_globalLink];
    [v11 setClientUniquePID:{objc_msgSend(v3[5], "clientUniquePID")}];

    [v3[4] _checkAndSendCachedDataForClient:v3[5]];
    v12 = v3[5];

    return [v12 writePacketBuffer:0 metaData:0 metadataSize:0 moreComing:0];
  }

  return result;
}

void *sub_10038952C(void *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = result[4];
    if (*(v3 + 48) == 1)
    {
      if (*(v3 + 72))
      {
        v4 = v2[5];
        v5 = [*(v3 + 72) cachedDataForClient];
        [v4 setCachedDataForClient:v5];

        v3 = v2[4];
      }

      os_unfair_lock_lock((v3 + 88));
      objc_storeStrong((v2[4] + 72), v2[5]);
      os_unfair_lock_unlock((v2[4] + 88));
      [v2[4] _connectSocketDescriptor:*(v2 + 12) toClientChannel:v2[5]];
      [v2[4] _checkAndSendCachedDataForClient:v2[5]];
      v6 = v2[5];

      return [v6 writePacketBuffer:0 metaData:0 metadataSize:0 moreComing:0];
    }

    else
    {
      v7 = *(v2 + 12);
      v8 = v2[5];

      return [v3 _connectSocketDescriptor:v7 toClientChannel:v8];
    }
  }

  return result;
}

void sub_10038A7D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (v3 && WeakRetained)
  {
    [v3 _checkAndSendCachedDataForClient:WeakRetained];
    [WeakRetained writePacketBuffer:0 metaData:0 metadataSize:0 moreComing:0];
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v7 = WeakRetained;
      v8 = 2048;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%p: writeHandler: IDSDSession %p", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

uint64_t sub_10038AEEC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v14 = -1431655766;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13[4] = v3;
    v13[5] = v3;
    v13[3] = v3;
    v13[1] = v3;
    v13[2] = v3;
    v13[0] = v3;
    IDSByteBufferInitForWriteWithAllocatedSpace();
    IDSByteBufferWriteField();
    v4 = -1;
    do
    {
      ++v4;
    }

    while (([*(v2 + 32) writePacketBuffer:0 metaData:v13 metadataSize:0 moreComing:1] & 1) != 0);
    IDSByteBufferRelease();
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v2 + 32);
      *buf = 67109634;
      v8 = v4;
      v9 = 1024;
      v10 = 0;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "generateClientChannelDataTest: wrote %d test metadata (size %u) into client channel %@", buf, 0x18u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport();
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10038B0EC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v15 = -1431655766;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14[4] = v3;
    v14[5] = v3;
    v14[3] = v3;
    v14[1] = v3;
    v14[2] = v3;
    v14[0] = v3;
    IDSByteBufferInitForWriteWithAllocatedSpace();
    IDSByteBufferWriteField();
    v4 = 79;
    do
    {
      ++v4;
    }

    while (([*(v2 + 32) writePacketBuffer:0 metaData:v14 metadataSize:0 moreComing:1] & 1) != 0);
    v5 = 80;
    do
    {
      [*(v2 + 40) writeToClientChannel:*(v2 + 32) packetBuffer:0 metaData:v14 metadataSize:0];
      --v5;
    }

    while (v5);
    IDSByteBufferRelease();
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v2 + 32);
      *buf = 67109634;
      v9 = v4;
      v10 = 1024;
      v11 = 0;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "overflowClientChannelDataTest wrote %d test metadata (size %u) into client channel %@", buf, 0x18u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport();
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10038B30C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v15 = -1431655766;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14[4] = v3;
    v14[5] = v3;
    v14[3] = v3;
    v14[1] = v3;
    v14[2] = v3;
    v14[0] = v3;
    IDSByteBufferInitForWriteWithAllocatedSpace();
    IDSByteBufferWriteField();
    v4 = 79;
    do
    {
      ++v4;
    }

    while (([*(v2 + 32) writePacketBuffer:0 metaData:0xAAAAAAAAAAAAAAAALL metadataSize:0 moreComing:1] & 1) != 0);
    v5 = 80;
    do
    {
      [*(v2 + 40) writeToClientChannel:*(v2 + 32) packetBuffer:0 metaData:v14 metadataSize:0];
      --v5;
    }

    while (v5);
    IDSByteBufferRelease();
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v2 + 32);
      *buf = 67109634;
      v9 = v4;
      v10 = 1024;
      v11 = 0;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "overflowClientChannelDataTest wrote %d test metadata (size %u) into client channel %@", buf, 0x18u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport();
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10038B9FC(uint64_t a1)
{
  v2 = _IDSLinkPacketBufferCreate();
  v3 = read(*(a1 + 48), *v2, 0x7D0uLL);
  v4 = *(a1 + 32);
  if ((*(v4 + 602) & 1) != 0 || *(v4 + 601) == 1)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 40);
      *buf = 134218498;
      *&buf[4] = v3;
      *&buf[12] = 1024;
      *&buf[14] = v6;
      *&buf[18] = 2112;
      *&buf[20] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got data %ld from socket %d clientChannel %@", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v26 = *(a1 + 48);
      v27 = *(a1 + 40);
      v25 = v3;
      _IDSLogV();
    }
  }

  if (v3)
  {
    if (v3 != -1)
    {
      *(v2 + 16) = v3;
      if ([*(a1 + 40) hasMetadata])
      {
        v13 = *v2 + *(v2 + 16);
        v29 = 0xAAAAAAAAAAAAAAAALL;
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *buf = v14;
        *&buf[16] = v14;
        IDSByteBufferInitForWriteWithAllocatedSpace();
        IDSByteBufferWriteField();
        IDSByteBufferWriteField();
        IDSByteBufferWriteField();
        IDSByteBufferWriteField();
        IDSByteBufferWriteField();
        v15 = *&buf[16];
        v16 = *buf;
        IDSByteBufferRelease();
        v17 = (v15 - v16);
      }

      else
      {
        v13 = 0;
        v17 = 0;
      }

      [*(a1 + 32) writeToClientChannel:*(a1 + 40) packetBuffer:v2 metaData:v13 metadataSize:{v17, v25, v26, v27}];
      return _IDSLinkPacketBufferRelease();
    }

    v8 = *__error();
    if (v8 <= 0x24 && ((1 << v8) & 0x1800000010) != 0)
    {
      v9 = 1;
    }

    else
    {
      v3 = [*(a1 + 32) sharedState];
      v18 = [v3 transportType];
      v9 = v8 == 61 && v18 == 0;
    }

    if (v8 > 0x24 || ((1 << v8) & 0x1800000010) == 0)
    {
    }

    if (v9)
    {
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 32);
        *buf = 138412546;
        *&buf[4] = v21;
        *&buf[12] = 1024;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<%@> read nonfatal failure errno %d", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      return _IDSLinkPacketBufferRelease();
    }

    IDSTransportThreadSuspendSocket();
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      *buf = 138412546;
      *&buf[4] = v23;
      *&buf[12] = 1024;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "<%@> read failed errno %d", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
LABEL_42:
      _IDSLogV();
    }
  }

  else
  {
    v10 = *__error();
    IDSTransportThreadSuspendSocket();
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 1024;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%@> read returned 0 bytes errno %d", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_42;
    }
  }

  return _IDSLinkPacketBufferRelease();
}

uint64_t sub_10038BF68(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v8)
  {
    v14 = *(a1 + 32);
    if (!v14 || ([v14 closed] & 1) != 0 || !WeakRetained)
    {
      v24 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "_connectSocketDescriptor: ClientChannel or Session has been invalidated; not writing", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      goto LABEL_97;
    }

    if ((*(WeakRetained + 602) & 1) != 0 || *(WeakRetained + 601) == 1)
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a2 + 16);
        v17 = *(a1 + 56);
        *buf = 134218754;
        v62 = v16;
        v63 = 2048;
        *v64 = a4;
        *&v64[8] = 2112;
        v65 = 0;
        v66 = 1024;
        v67 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Client channel read packetBuffer %lu metadata_size %lu error %@ for socket %d", buf, 0x26u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v56 = 0;
        v57 = *(a1 + 56);
        v53 = *(a2 + 16);
        v55 = a4;
        _IDSLogV();
      }
    }

    if (!*(a2 + 16))
    {
      v33 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 56);
        *buf = 134218240;
        v62 = a4;
        v63 = 1024;
        *v64 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Bug in client: Client channel read only metadata for socket session - dropping metadata_size %lu for socket %d", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      goto LABEL_97;
    }

    if (*(WeakRetained + 48) == 1)
    {
      v18 = *(WeakRetained + 13);
      if (v18)
      {
        v19 = [v18 connection];
        if (v19)
        {
          v20 = [*(WeakRetained + 13) deviceConnectionInfo];
          v21 = v20 == 0;

          if (!v21)
          {
            v22 = [WeakRetained utunController];
            v23 = [v22 onTransportThread_SendWithConnectionContext:*(WeakRetained + 13) packetBuffer:a2];

            if (!v23)
            {
              goto LABEL_49;
            }

            goto LABEL_58;
          }
        }
      }

LABEL_97:
      _IDSLinkPacketBufferRelease();
      goto LABEL_49;
    }

    v35 = [WeakRetained sharedState];
    v36 = [v35 state] == 9;

    if (v36)
    {
      if (!*(a2 + 16))
      {
        goto LABEL_97;
      }
    }

    else
    {
      v40 = write(*(a1 + 56), *a2, *(a2 + 16));
      v41 = v40;
      if (v40 == *(a2 + 16))
      {
        goto LABEL_97;
      }

      if (v40 >= 1)
      {
        if ((*(WeakRetained + 602) & 1) != 0 || *(WeakRetained + 601) == 1)
        {
          v42 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = *(a2 + 16);
            *buf = 138412802;
            v62 = WeakRetained;
            v63 = 1024;
            *v64 = v41;
            *&v64[4] = 1024;
            *&v64[6] = v43;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "<%@> write failed to send all bytes %d < %d", buf, 0x18u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }
        }

        goto LABEL_64;
      }

      if (v40)
      {
        v44 = *__error();
        if (v44 <= 0x37 && ((1 << v44) & 0x80000800000010) != 0)
        {
          v45 = 1;
        }

        else
        {
          v41 = [WeakRetained sharedState];
          v46 = [v41 transportType];
          v45 = v44 == 61 && v46 == 0;
        }

        if (v44 > 0x37 || ((1 << v44) & 0x80000800000010) == 0)
        {
        }

        if (!v45)
        {
          v49 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v62 = WeakRetained;
            v63 = 1024;
            *v64 = v44;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "<%@> write failed errno %d", buf, 0x12u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          v50 = objc_loadWeakRetained((a1 + 48));

          if (v50)
          {
            v51 = objc_loadWeakRetained((a1 + 48));
            [v51 invalidate];
          }

          v52 = im_primary_queue();
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_10038CC50;
          v58[3] = &unk_100BD6ED0;
          v58[4] = WeakRetained;
          sub_1003859AC(v52, QOS_CLASS_USER_INITIATED, v58);

          goto LABEL_64;
        }

        if ((*(WeakRetained + 602) & 1) != 0 || *(WeakRetained + 601) == 1)
        {
          v48 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v62 = WeakRetained;
            v63 = 1024;
            *v64 = v44;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "<%@> write nonfatal failure errno %d", buf, 0x12u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }
        }

        goto LABEL_97;
      }
    }

LABEL_58:
    v37 = *__error();
    v38 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v62 = WeakRetained;
      v63 = 1024;
      *v64 = v37;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "<%@> write failed connection terminated %d", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v39 = im_primary_queue();
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10038CC44;
    v59[3] = &unk_100BD6ED0;
    v59[4] = WeakRetained;
    sub_1003859AC(v39, QOS_CLASS_USER_INITIATED, v59);

LABEL_64:
    _IDSLinkPacketBufferRelease();
    goto LABEL_49;
  }

  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_connectSocketDescriptor: ClientChannel read error %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  if (WeakRetained && ([WeakRetained sharedState], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "clientType") == 6, v11, !v12))
  {
    v25 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [WeakRetained sharedState];
      v27 = [v26 clientType];
      *buf = 67109120;
      LODWORD(v62) = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "_connectSocketDescriptor: clientType: %u, end session", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v28 = [WeakRetained sharedState];
        v54 = [v28 clientType];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v29 = [WeakRetained sharedState];
          [v29 clientType];
          _IDSLogV();
        }
      }
    }

    if ((*(WeakRetained + 636) & 1) == 0)
    {
      v30 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10038CC38;
      block[3] = &unk_100BD6ED0;
      block[4] = WeakRetained;
      v31 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
      dispatch_async(v30, v31);
    }
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v62 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_connectSocketDescriptor: strongSelf: %p, not ending session because we have not been told to", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  _IDSLinkPacketBufferRelease();
LABEL_49:

  return 1;
}

void sub_10038CC5C(uint64_t a1)
{
  v1 = *(a1 + 40);
  IDSTransportThreadAddBlock();
}

uint64_t sub_10038CCE0(uint64_t a1)
{
  IDSByteBufferInitForWrite();
  v2 = [*(a1 + 32) sharedState];
  [v2 useBTDatagramPipe];

  IDSByteBufferWriteField();
  [*(a1 + 32) writeToClientChannel:*(a1 + 40) packetBuffer:0 metaData:? metadataSize:?];
  return IDSByteBufferRelease();
}

void sub_100394E00(uint64_t a1)
{
  v2 = [*(a1 + 32) accountController];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 accountID];
  v5 = [v2 accountWithUniqueID:v4];
  v6 = [v5 primaryRegistration];
  v7 = [v6 pushToken];
  v8 = [*(a1 + 32) sharedState];
  v9 = [v8 serviceName];
  v17 = [IDSPushToken pushTokenWithData:v7 withServiceLoggingHint:v9];

  v10 = +[IDSGroupEncryptionController sharedInstance];
  v11 = [v10 createRealTimeEncryptionFullIdentityForDevice:v17 completionBlock:0];

  v12 = +[IDSGroupEncryptionController sharedInstance];
  v13 = [*(a1 + 32) sharedState];
  v14 = [v13 groupID];
  v15 = [*(a1 + 32) sharedState];
  v16 = [v15 uniqueID];
  [v12 reliablyRequestKeyMaterialForGroup:v14 sessionID:v16];
}

void sub_100394FA8(uint64_t a1)
{
  v2 = +[IDSGroupEncryptionController sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 accountID];
  v5 = [*(a1 + 32) sharedState];
  v6 = [v5 fromURI];
  v7 = [*(a1 + 32) sharedState];
  v8 = [v7 groupID];
  [v2 setAccount:v4 fromURI:v6 forGroup:v8];

  v9 = +[IDSGroupEncryptionController sharedInstance];
  v10 = [*(a1 + 32) sharedState];
  v11 = [v10 groupID];
  [v9 resetKeysForGroup:v11 shouldRemoveCurrentParticipants:1];

  v16 = +[IDSGroupEncryptionController sharedInstance];
  v12 = [*(a1 + 32) sharedState];
  v13 = [v12 groupID];
  v14 = [*(a1 + 32) sharedState];
  v15 = [v14 uniqueID];
  [v16 requestKeyMaterialForGroup:v13 sessionID:v15];
}

void sub_10039514C(uint64_t a1)
{
  v2 = [*(a1 + 32) onTransportThread_globalLink];
  [v2 sendStatsRequest:*(a1 + 40)];
}

void sub_1003951A0(uint64_t a1)
{
  v5 = [*(a1 + 32) onTransportThread_globalLink];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 uniqueID];
  [v5 requestChildConnectionIDForLinkID:v2 relayGroupID:v4];
}

void sub_10039522C(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkQualityData: importing quality measurement delta into GlobalLink...", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v3 = [*(a1 + 32) onTransportThread_globalLink];
  [v3 importQualityMeasurementDelta:*(a1 + 40) sourceName:@"client" completionHandler:&stru_100BD9C00];
}

void sub_100395344(id a1)
{
  v1 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkQualityData: imported quality measurement delta into GlobalLink", v2, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_10039542C(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkEngineQualityData: importing quality measurement delta into GlobalLink...", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v3 = [*(a1 + 32) onTransportThread_globalLink];
  [v3 importLinkEngineQualityMeasurementDelta:*(a1 + 40) sourceName:*(a1 + 48) completionHandler:&stru_100BD9C20];
}

void sub_10039553C(id a1)
{
  v1 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkEngineQualityData: imported quality measurement delta into GlobalLink", v2, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

uint64_t sub_1003959E8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (qword_100CBD178 != -1)
  {
    sub_100918708();
  }

  v11 = mach_continuous_time();
  if (v9)
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [WeakRetained sharedState];
      *buf = 138412546;
      *v75 = v9;
      *&v75[8] = 1024;
      LODWORD(v76) = [v13 state];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_connectQRDirectlyToClientChannel: ClientChannel read error %@, self.sharedState.state %d", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = [WeakRetained sharedState];
        v57 = v9;
        v58 = [v14 state];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v15 = [WeakRetained sharedState];
          v57 = v9;
          v58 = [v15 state];
          _IDSLogV();
        }
      }
    }

    [WeakRetained _finishPacketLog];
    if (WeakRetained && ([WeakRetained sharedState], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "clientType") == 6, v16, !v17))
    {
      v23 = [WeakRetained sharedState];
      v24 = [v23 state];

      v25 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v75 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "_connectQRDirectlyToClientChannel: state: %u", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      if ((WeakRetained[636] & 1) == 0 && v24 != 8)
      {
        v26 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10039670C;
        block[3] = &unk_100BD6ED0;
        block[4] = WeakRetained;
        v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
        dispatch_async(v26, v27);
      }
    }

    else
    {
      v18 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v75 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_connectQRDirectlyToClientChannel: strongSelf: %p, not ending session because we have not been told to.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    _IDSLinkPacketBufferRelease();
    goto LABEL_99;
  }

  v60 = v11;
  v62 = a4;
  v19 = 0;
  v20 = *&qword_100CBD180;
  if (a3 && v62)
  {
    v19 = [WeakRetained _extractFieldBytesFromMetadata:a3 ofSize:v62 packetBuffer:a2];
  }

  v70 = [v19 objectForKeyedSubscript:@"ccmdtcdc"];
  v21 = [v70 unsignedCharValue];
  v22 = [v19 objectForKeyedSubscript:@"ccmdttdc"];
  v69 = v22;
  if (v22)
  {
    v71 = [v22 unsignedCharValue];
  }

  else
  {
    v71 = 1;
  }

  v28 = [v19 objectForKeyedSubscript:@"ccmdtpli"];
  v68 = v28;
  if (v28)
  {
    *(a2 + 1216) = [v28 charValue];
  }

  v29 = [v19 objectForKeyedSubscript:@"ccmdttc"];
  v67 = v29;
  if (v29)
  {
    *(a2 + 440) = [v29 unsignedShortValue];
  }

  v30 = [v19 objectForKeyedSubscript:@"ccmdtdscp"];
  v66 = v30;
  if (v30)
  {
    *(a2 + 442) = [v30 unsignedCharValue];
  }

  v31 = [v19 objectForKeyedSubscript:@"ccmdtpid"];
  v65 = v31;
  if (v31)
  {
    *(a2 + 536) |= 1u;
    *(a2 + 488) = [v31 unsignedLongLongValue];
  }

  v32 = [v19 objectForKeyedSubscript:@"ccmdtpgid"];
  v64 = v32;
  if (v32)
  {
    *(a2 + 536) |= 0x10u;
    *(a2 + 498) = [v32 unsignedShortValue];
  }

  v33 = [v19 objectForKeyedSubscript:@"ccmdtsid"];
  v72 = v33;
  if (v33)
  {
    *(a2 + 536) |= 0x40u;
    *(a2 + 504) = [v33 unsignedShortValue];
  }

  v34 = [v19 objectForKeyedSubscript:@"ccmdtcp"];
  v63 = v34;
  if (v34)
  {
    *(a2 + 536) |= 8u;
    *(a2 + 496) = [v34 unsignedCharValue];
  }

  v35 = [v19 objectForKeyedSubscript:@"ccmdtipc"];
  v36 = [v35 BOOLValue];

  if (v36)
  {
    *(a2 + 536) |= 4u;
    *(a2 + 501) = 1;
  }

  v37 = [v19 objectForKeyedSubscript:@"ccmdtnhbhe"];
  v38 = [v37 BOOLValue];

  if (v38)
  {
    *(a2 + 536) |= 0x400u;
    *(a2 + 517) = 1;
  }

  if (qword_100CBD178 != -1)
  {
    sub_100918708();
  }

  v59 = mach_continuous_time();
  v61 = *(a2 + 16);
  v39 = v61 <= 0 && v72 == 0;
  v40 = *&qword_100CBD180;
  if (v39 || !v71)
  {
    if (v61 < 1 || v71 < 9)
    {
      v48 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v75 = v61;
        *&v75[4] = 1024;
        *&v75[6] = v21;
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v71;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "not sending to UTunController - packetBufferLength %d currentDatagramCount %u totalDatagramCount %u", buf, 0x14u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    else
    {
      v47 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v75 = 8;
        *&v75[4] = 1024;
        *&v75[6] = v71;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Can't send more than %u over the compound data channel! totalDatagramCount %u", buf, 0xEu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    _IDSLinkPacketBufferRelease();
LABEL_85:
    v46 = 0;
    goto LABEL_86;
  }

  *&WeakRetained[8 * v21 + 448] = a2;
  if (v71 - 1 != v21)
  {
    if ((WeakRetained[602] & 1) == 0 && WeakRetained[601] != 1)
    {
      v46 = 0;
      goto LABEL_86;
    }

    v49 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v75 = v21;
      *&v75[4] = 1024;
      *&v75[6] = v71;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "not sending to UTunController - currentDatagramCount %u totalDatagramCount %u", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    goto LABEL_85;
  }

  v41 = [WeakRetained onTransportThread_linkManager];
  v42 = [WeakRetained sharedState];
  v43 = [v42 uniqueID];
  v44 = [WeakRetained sharedState];
  v45 = [v44 uniqueID];
  v46 = [v41 sendPacketBufferArray:WeakRetained + 448 arraySize:v71 toDeviceUniqueID:v43 cbuuid:v45];

LABEL_86:
  if (qword_100CBD178 != -1)
  {
    sub_1009186A4();
  }

  v50 = mach_continuous_time();
  if ((WeakRetained[602] & 1) != 0 || WeakRetained[601] == 1)
  {
    v51 = v20 * v60;
    v52 = v40 * v59;
    v53 = *&qword_100CBD180 * v50;
    v54 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      if (v46 > 0xF)
      {
        v55 = "UnexpectedSendResult";
      }

      else
      {
        v55 = _IDSLinkSendResultStrings[v46];
      }

      *buf = 134219266;
      *v75 = v61;
      *&v75[8] = 2048;
      v76 = v62;
      v77 = 2080;
      v78 = v55;
      v79 = 2048;
      v80 = v52 - v51;
      v81 = 2048;
      v82 = v53 - v52;
      v83 = 2048;
      v84 = v53;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Client channel read datagram_size %lu metadata_size %lu sendResult %s processTime %0.6lf sendTime %0.6lf [%013.6lf]", buf, 0x3Eu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

LABEL_99:
  return 1;
}

void sub_1003972B4(uint64_t a1)
{
  v20 = *(a1 + 32);
  v18 = [*(a1 + 40) sharedState];
  v17 = [v18 destinations];
  v19 = [v17 allObjects];
  v16 = [*(a1 + 40) sharedState];
  v2 = [v16 uniqueID];
  v3 = [*(a1 + 40) accountController];
  v14 = [*(a1 + 40) sharedState];
  [v14 accountID];
  v13 = v15 = v3;
  v12 = [v3 accountWithUniqueID:?];
  v4 = [v12 _registrationCert];
  v5 = [*(a1 + 40) sharedState];
  v6 = [v5 fromURI];
  v7 = [v6 unprefixedURI];
  v8 = [v7 _bestGuessURI];
  v9 = [*(a1 + 48) identifier];
  v10 = *(a1 + 56);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1003974F8;
  v21[3] = &unk_100BD9C70;
  objc_copyWeak(v23, (a1 + 72));
  v23[1] = *(a1 + 80);
  v22 = *(a1 + 64);
  v11 = [v20 setupNewAllocation:v19 sessionID:v2 fromIdentity:v4 fromURI:v8 fromService:v9 options:v10 connectReadyHandler:v21];

  objc_destroyWeak(v23);
}

void sub_1003974E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1003974F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);
    if (v3 == 2)
    {
      v4 = im_primary_queue();
      v5 = v8;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v6 = sub_100397638;
      goto LABEL_6;
    }

    if (v3 == 1)
    {
      v4 = im_primary_queue();
      v5 = v9;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v6 = sub_10039762C;
LABEL_6:
      v5[2] = v6;
      v5[3] = &unk_100BD6E40;
      v5[4] = WeakRetained;
      v5[5] = *(a1 + 32);
      v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v5);
      dispatch_async(v4, v7);
    }
  }
}

void sub_100397644(uint64_t a1)
{
  v4 = [*(a1 + 32) onTransportThread_linkManager];
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 uniqueID];
  [v4 getSessionInfo:v3 relayGroupID:*(a1 + 40) relaySessionID:*(a1 + 48) options:*(a1 + 56)];
}

void sub_10039797C(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 didReceiveURIsForParticipantIDs:*(a1 + 40) withRequestID:*(a1 + 48)];
}

void sub_100397CA4(uint64_t a1)
{
  v2 = [*(a1 + 32) globalLinkConfiguration];
  [v2 setPluginOptionsWithPluginName:*(a1 + 40) options:*(a1 + 48)];

  v6 = [*(a1 + 32) onTransportThread_globalLink];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) sharedState];
  v5 = [v4 groupID];
  [v6 registerPluginWithOptions:v3 relayGroupID:v5];
}

void sub_100397F74(uint64_t a1)
{
  v2 = [*(a1 + 32) globalLinkConfiguration];
  [v2 setPluginOptionsWithPluginName:*(a1 + 40) options:*(a1 + 48)];

  v6 = [*(a1 + 32) onTransportThread_globalLink];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) sharedState];
  v5 = [v4 groupID];
  [v6 registerPluginWithOptions:v3 relayGroupID:v5];
}

void sub_100398538(uint64_t a1)
{
  v4 = [*(a1 + 32) onTransportThread_linkManager];
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 uniqueID];
  [v4 getSessionInfo:v3 relayGroupID:*(a1 + 40) relaySessionID:*(a1 + 48) options:*(a1 + 56)];
}

void sub_100398F48(uint64_t a1)
{
  v4 = [*(a1 + 32) onTransportThread_linkManager];
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 uniqueID];
  [v4 getSessionInfo:v3 relayGroupID:*(a1 + 40) relaySessionID:*(a1 + 48) options:*(a1 + 56)];
}

void sub_100399FC0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  IDSByteBufferInitForWrite();
  [a1[4] bytes];
  [a1[4] length];
  IDSByteBufferWriteField();
  [a1[5] writeToClientChannel:WeakRetained packetBuffer:0 metaData:? metadataSize:?];
  IDSByteBufferRelease();
}

void sub_10039BFA8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x10039B77CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_10039C064(uint64_t a1, void *a2)
{
  v110 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v110)
    {
      v3 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [WeakRetained sharedState];
        v5 = [v4 uniqueID];
        *buf = 138412546;
        v117 = v5;
        v118 = 2112;
        *v119 = v110;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Connect to QR server failed for %@ with error %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v6 = [WeakRetained sharedState];
          v85 = [v6 uniqueID];
          v88 = v110;
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v7 = [WeakRetained sharedState];
            v85 = [v7 uniqueID];
            v88 = v110;
            _IDSLogV();
          }
        }
      }

      v8 = [WeakRetained globalLinkErrorToSessionEndReason:{objc_msgSend(v110, "code", v85, v88)}];
      v9 = +[NSMutableDictionary dictionary];
      v10 = [NSNumber numberWithUnsignedInt:v8];
      if (v10)
      {
        CFDictionarySetValue(v9, kIDSQRAllocateKey_ErrorCode, v10);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100919DE4();
      }

      v120[0] = 0xAAAAAAAAAAAAAAAALL;
      v120[1] = 0xAAAAAAAAAAAAAAAALL;
      v41 = [NSUUID alloc];
      v42 = kIDSQRAllocateKey_RequestID;
      v43 = [*(a1 + 32) objectForKeyedSubscript:kIDSQRAllocateKey_RequestID];
      v44 = [v41 initWithUUIDString:v43];
      [v44 getUUIDBytes:v120];

      v45 = [NSData dataWithBytes:v120 length:16];
      if (v45)
      {
        CFDictionarySetValue(v9, v42, v45);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100919E6C();
      }

      v46 = kIDSQRAllocateKey_RelayAddress;
      v47 = [*(a1 + 32) objectForKeyedSubscript:kIDSQRAllocateKey_RelayAddress];
      if (v47)
      {
        CFDictionarySetValue(v9, v46, v47);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100919E6C();
      }

      v48 = kIDSQRAllocateKey_RelayPort;
      v49 = [*(a1 + 32) objectForKeyedSubscript:kIDSQRAllocateKey_RelayPort];
      if (v49)
      {
        CFDictionarySetValue(v9, v48, v49);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100919E6C();
      }

      v50 = kIDSQRAllocateKey_RelayAddressIPv6;
      v51 = [*(a1 + 32) objectForKeyedSubscript:kIDSQRAllocateKey_RelayAddressIPv6];
      if (v51)
      {
        CFDictionarySetValue(v9, v50, v51);
      }

      v52 = kIDSQRAllocateKey_AppID;
      v53 = [*(a1 + 32) objectForKeyedSubscript:kIDSQRAllocateKey_AppID];
      if (v53)
      {
        CFDictionarySetValue(v9, v52, v53);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100919E6C();
      }

      v54 = +[IMDeviceSupport sharedInstance];
      v55 = [v54 userAgentString];

      v56 = v55;
      if (v56)
      {
        CFDictionarySetValue(v9, kIDSQRAllocateKey_UserAgent, v56);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100919EE8();
      }

      v57 = kIDSQRAllocateKey_ReportingDataBlob;
      v58 = [*(a1 + 32) objectForKeyedSubscript:kIDSQRAllocateKey_ReportingDataBlob];
      if (v58)
      {
        CFDictionarySetValue(v9, v57, v58);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100919E6C();
      }

      v59 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [*(a1 + 40) sharedState];
        v61 = [v60 uniqueID];
        *buf = 138412802;
        v117 = v61;
        v118 = 1024;
        *v119 = v8;
        *&v119[4] = 2112;
        *&v119[6] = v56;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Sending server message QR metrics report for session %@ end reason %d, ua: %@", buf, 0x1Cu);
      }

      v62 = [[IDSServerMessage alloc] initWithPayload:v9 command:&off_100C3BCB0];
      v63 = +[IDSDeliveryController sharedInstance];
      v115[0] = _NSConcreteStackBlock;
      v115[1] = 3221225472;
      v115[2] = sub_10039D21C;
      v115[3] = &unk_100BD9D10;
      v115[4] = *(a1 + 40);
      [v63 sendIDSMessage:v62 service:0 topic:kIDSQuickRelayPushTopic completionBlock:v115];

      v64 = [*(a1 + 40) sharedState];
      if ([v64 isInitiator])
      {
        v65 = [*(a1 + 40) sharedState];
        if ([v65 clientType] == 1)
        {

LABEL_72:
          [*(a1 + 40) _sendSessionEndWithData:0];
          goto LABEL_73;
        }

        v69 = [*(a1 + 40) sharedState];
        v70 = [v69 clientType] == 5;

        if (v70)
        {
          goto LABEL_72;
        }
      }

      else
      {
      }

LABEL_73:
      [WeakRetained endSessionWithReason:v8];

      goto LABEL_85;
    }

    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [WeakRetained sharedState];
      v13 = [v12 uniqueID];
      *buf = 138412290;
      v117 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Connect to QR server succeeded for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = [WeakRetained sharedState];
        v85 = [v14 uniqueID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v15 = [WeakRetained sharedState];
          v85 = [v15 uniqueID];
          _IDSLogV();
        }
      }
    }

    if (IMGetDomainBoolForKey() && (*(a1 + 56) & 1) == 0 && (WeakRetained[645] & 1) == 0)
    {
      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [WeakRetained sharedState];
        v18 = [v17 uniqueID];
        *buf = 138412290;
        v117 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Will reinitiate after 15s for %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v19 = [WeakRetained sharedState];
          v85 = [v19 uniqueID];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v20 = [WeakRetained sharedState];
            v85 = [v20 uniqueID];
            _IDSLogV();
          }
        }
      }

      WeakRetained[645] = 1;
      v21 = dispatch_time(0, 15000000000);
      v22 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10039D394;
      block[3] = &unk_100BD9D38;
      objc_copyWeak(&v114, (a1 + 48));
      dispatch_after(v21, v22, block);

      objc_destroyWeak(&v114);
    }

    if (*(a1 + 57) == 1)
    {
      v92 = [IDSGroupSessionParticipantUpdate alloc];
      v23 = [NSUUID alloc];
      v109 = [*(a1 + 40) sharedState];
      v108 = [v109 groupID];
      v95 = [v23 initWithUUIDString:v108];
      v107 = [*(*(a1 + 40) + 184) isInitiator];
      v91 = [v107 BOOLValue];
      v106 = [*(*(a1 + 40) + 184) participantID];
      v90 = [v106 unsignedLongLongValue];
      v104 = [*(a1 + 40) accountController];
      v105 = [*(a1 + 40) sharedState];
      v103 = [v105 accountID];
      v102 = [v104 accountWithUniqueID:v103];
      v101 = [v102 primaryRegistration];
      v98 = [v101 pushToken];
      v100 = [*(a1 + 40) sharedState];
      v99 = [v100 fromURI];
      v97 = [v99 prefixedURI];
      v94 = _IDSCopyIDForTokenWithURI();
      v96 = [*(*(a1 + 40) + 184) joinType];
      v24 = [v96 integerValue] == 1;
      v93 = +[NSDate date];
      v25 = [*(*(a1 + 40) + 184) participantData];
      v26 = [*(a1 + 40) sharedState];
      v27 = [v26 destinations];
      v28 = [v27 allObjects];
      v29 = [*(a1 + 32) objectForKeyedSubscript:kIDSQRAllocateKey_URIToParticipantID];
      v30 = [NSUUID alloc];
      v31 = [*(*(a1 + 40) + 184) relaySessionID];
      v32 = [v30 initWithUUIDString:v31];
      LOBYTE(v86) = 0;
      v9 = [v92 initWithGroupUUID:v95 isInitiator:v91 participantIdentifier:v90 participantDestinationID:v94 participantUpdateType:1 participantUpdateSubtype:v24 fromServer:v86 serverDate:v93 participantData:v25 clientContextData:0 members:v28 participantIDs:v29 relaySessionID:v32];

      v33 = [(__CFDictionary *)v9 participantIDs];
      [*(*(a1 + 40) + 184) setUrisToParticipantIDs:v33];

      if (*(*(a1 + 40) + 176))
      {
        v34 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [*(a1 + 40) sharedState];
          v36 = [v35 groupID];
          v37 = *(*(a1 + 40) + 176);
          *buf = 138412546;
          v117 = v36;
          v118 = 1024;
          *v119 = v37;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Not in join state, group = %@, state = %d", buf, 0x12u);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_84;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_84;
        }

        v38 = [*(a1 + 40) sharedState];
        v87 = [v38 groupID];
        v89 = *(*(a1 + 40) + 176);
        _IDSLogTransport();

        if (!_IDSShouldLog())
        {
          goto LABEL_84;
        }

        v39 = [*(a1 + 40) sharedState];
        v40 = [v39 groupID];
        v87 = v40;
        v89 = *(*(a1 + 40) + 176);
        _IDSLogV();
      }

      else
      {
        v71 = [*(a1 + 40) sharedState];
        v72 = [v71 groupID];

        if (v72)
        {
          v73 = im_primary_queue();
          v112[0] = _NSConcreteStackBlock;
          v112[1] = 3221225472;
          v112[2] = sub_10039D5C0;
          v112[3] = &unk_100BD6ED0;
          v112[4] = *(a1 + 40);
          v74 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v112);
          dispatch_async(v73, v74);
        }

        else
        {
          v75 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Cannot fan out the join notification to the group, no groupID!", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                _IDSLogV();
              }
            }
          }
        }

        v39 = objc_alloc_init(IMMessageContext);
        [v39 setShouldBoost:1];
        v76 = +[IDSDaemon sharedInstance];
        v77 = [*(a1 + 40) sharedState];
        v78 = [v77 pushTopic];
        v40 = [v76 broadcasterForTopic:v78 entitlement:kIDSSessionEntitlement command:0 messageContext:v39];

        v79 = [*(a1 + 40) sharedState];
        v80 = [v79 uniqueID];
        v81 = [(__CFDictionary *)v9 dictionaryRepresentation];
        [v40 sessionDidJoinGroup:v80 participantUpdateDictionary:v81 error:0];

        *(*(a1 + 40) + 176) = 1;
      }

LABEL_84:
      v82 = [IDSGroupEncryptionController sharedInstance:v87];
      v83 = [*(a1 + 40) sharedState];
      v84 = [v83 groupID];
      [v82 resetKeyMaterialCacheTimerIfNeeded:v84];

      goto LABEL_85;
    }

    v66 = [WeakRetained sharedState];
    v67 = [v66 isInitiator];

    if ((v67 & 1) == 0)
    {
      v9 = [WeakRetained sharedState];
      v68 = [(__CFDictionary *)v9 uniqueID];
      [WeakRetained openSocketToDevice:v68];

LABEL_85:
    }
  }
}

void sub_10039D21C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 idsResponseCode];
  v5 = +[IDSFoundationLog IDSDSession];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [*(a1 + 32) sharedState];
      v8 = [v7 uniqueID];
      v9 = [v3 deliveryError];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v10 = "Failed sending server message QR metrics report for session %@, delivery error %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v10, &v11, 0x16u);
    }
  }

  else if (v6)
  {
    v7 = [*(a1 + 32) sharedState];
    v8 = [v7 uniqueID];
    v9 = [v3 deliveryError];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v10 = "Finished sending server message QR metrics report for session %@ delivery error %@";
    goto LABEL_6;
  }
}

void sub_10039D394(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [WeakRetained sharedState];
      v4 = [v3 uniqueID];
      v5 = [WeakRetained sharedSessionHasJoined];
      v6 = @"NO";
      if (v5)
      {
        v6 = @"YES";
      }

      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "reinitiate 15s have passed for %@; has joined: %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v7 = [WeakRetained sharedState];
      v8 = [v7 uniqueID];
      v9 = [WeakRetained sharedSessionHasJoined] ? @"YES" : @"NO";
      v13 = v8;
      v14 = v9;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v10 = [WeakRetained sharedState];
        v11 = [v10 uniqueID];
        if ([WeakRetained sharedSessionHasJoined])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        v13 = v11;
        v14 = v12;
        _IDSLogV();
      }
    }

    if ([WeakRetained sharedSessionHasJoined])
    {
      [WeakRetained reinitiate];
    }
  }
}

void sub_10039D5C0(uint64_t a1)
{
  [*(a1 + 32) _noteJoinNotificationWillSend];
  v2 = [*(a1 + 32) groupStatusNotificationController];
  v36 = [*(a1 + 32) sharedState];
  v3 = [v36 groupID];
  v35 = [*(a1 + 32) sharedState];
  v34 = [v35 destinations];
  v4 = [v34 allObjects];
  v5 = *(a1 + 32);
  v31 = v5[23];
  v32 = [v5 accountController];
  v33 = [*(a1 + 32) sharedState];
  v6 = [v33 accountID];
  v7 = [v32 accountWithUniqueID:v6];
  v8 = [*(a1 + 32) sharedState];
  v9 = [v8 fromURI];
  v10 = [*(a1 + 32) sharedState];
  v11 = [v10 uniqueID];
  v12 = [*(a1 + 32) shouldReportUPlusOneKey];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10039D9D4;
  v38[3] = &unk_100BD9D60;
  v38[4] = *(a1 + 32);
  LOBYTE(v30) = v12;
  [v2 notifyJoinToGroup:v3 members:v4 params:v31 fromAccount:v7 fromURI:v9 sessionID:v11 isUPlusOne:v30 completionBlock:v38];

  if (*(*(a1 + 32) + 636) == 1)
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "lightweight participant: create keys", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v14 = [*(a1 + 32) accountController];
    v15 = [*(a1 + 32) sharedState];
    v16 = [v15 accountID];
    v17 = [v14 accountWithUniqueID:v16];
    v18 = [v17 primaryRegistration];
    v19 = [v18 pushToken];
    v20 = [*(a1 + 32) sharedState];
    v21 = [v20 serviceName];
    v22 = [IDSPushToken pushTokenWithData:v19 withServiceLoggingHint:v21];

    v23 = +[IDSGroupEncryptionController sharedInstance];
    v24 = [v23 createRealTimeEncryptionFullIdentityForDevice:v22 completionBlock:0];

    v25 = +[IDSGroupEncryptionController sharedInstance];
    v26 = [*(a1 + 32) sharedState];
    v27 = [v26 groupID];
    v28 = [*(a1 + 32) sharedState];
    v29 = [v28 uniqueID];
    [v25 reliablyRequestKeyMaterialForGroup:v27 sessionID:v29];
  }
}

void sub_10039D9D4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (a6)
    {
      v14 = @"YES";
    }

    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Completed send of join notification fanout message { groupID: %@, success: %@ }", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    if (a6)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = v11;
    v17 = v15;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v16 = v11;
      v17 = v15;
      _IDSLogV();
    }
  }

  [*(a1 + 32) _noteJoinNotificationDidDeliverWithSuccess:{a6, v16, v17}];
}

void sub_10039E108(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x10039DD84);
  }

  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(exc_buf);
}

void sub_10039E16C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [WeakRetained sharedState];
      v4 = [v3 groupID];
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to receive all APNS courier acks for reliable join notification before timeout -- ending session { groupID: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v5 = [WeakRetained sharedState];
        v7 = [v5 groupID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v6 = [WeakRetained sharedState];
          v7 = [v6 groupID];
          _IDSLogV();
        }
      }
    }

    [WeakRetained endSessionWithReason:{40, v7}];
  }
}

void sub_10039E6E4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10039E5ACLL);
  }

  _Unwind_Resume(a1);
}

id sub_10039ED70(uint64_t a1, uint64_t a2)
{
  v4 = dup(a2);
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 134218496;
    v21 = v6;
    v22 = 1024;
    v23 = a2;
    v24 = 1024;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "openSocketToDevice: socket ready: (%p) sd: %d dupSd: %d", buf, 0x18u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  if (v4 < 0)
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 134217984;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "openSocketToDevice: failed to get socket descriptor from the service connection %p", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport();
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV();
        }
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (*(a1 + 56) == -1)
    {
      v7[146] = v4;
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v8 = *(v18 + 832);
      *(v18 + 832) = v19;
    }

    else
    {
      v8 = v7;
      objc_sync_enter(v8);
      v9 = *(*(a1 + 40) + 144);
      v10 = [NSNumber numberWithInt:a2];
      v11 = [NSNumber numberWithInt:*(a1 + 56)];
      [v9 setObject:v10 forKey:v11];

      v12 = *(a1 + 48);
      v13 = *(*(a1 + 40) + 840);
      v14 = [NSNumber numberWithInt:*(a1 + 56)];
      [v13 setObject:v12 forKey:v14];

      objc_sync_exit(v8);
    }

    return [*(a1 + 40) checkAndCallSessionStart];
  }

  return result;
}

void sub_10039FB8C(id a1, BOOL a2)
{
  if (!a2)
  {
    _IDSTransportThreadAssertRealTimeMode(1);
  }
}

id sub_10039FB9C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) sharedState];
  if ([v4 clientType] == 4)
  {
    v5 = *(a2 + 1216);

    if (!v5)
    {
      *(a2 + 1216) = 1;
    }
  }

  else
  {
  }

  v6 = *(a1 + 32);

  return [v6 link:0 didReceivePacket:a2 fromDeviceUniqueID:0 cbuuid:0];
}

void sub_1003A0208(uint64_t a1)
{
  v4 = IDSQuickRelayServerProviderKey;
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithInteger:*(a1 + 40)];
  v5 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [v1 link:v1 didReceiveReportEvent:v3];
}

void sub_1003A0994(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1003A09D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) onTransportThread_globalLink];
    if (v3)
    {
      v4 = [*(a1 + 32) onTransportThread_globalLink];
      [v4 sendSKEData:WeakRetained[72]];
    }

    else
    {
      v5 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retry sendSKEData failed because no global link.", v7, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    v6 = WeakRetained[72];
    WeakRetained[72] = 0;
  }
}

void sub_1003A0B20(uint64_t a1)
{
  v2 = [*(a1 + 32) onTransportThread_globalLink];
  [v2 setAcceptedRelaySession:*(a1 + 40) options:*(a1 + 48)];
}

void sub_1003A0D24(uint64_t a1)
{
  v2 = [*(a1 + 32) onTransportThread_globalLink];
  [v2 setHasPendingAllocation:*(a1 + 40)];
}

uint64_t sub_1003A1004(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v6 = [v4 sharedState];
    [v6 setLocalBlob:v5];
  }

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1003A2094(id a1, BOOL a2)
{
  v2 = +[IDSDSessionController sharedInstance];
  [v2 updateCriticalReliabilityState];
}

void sub_1003A219C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "disconnectGlobalLink failed with error %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v8 = v3;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v8 = v3;
          _IDSLogV();
        }
      }
    }
  }

  v5 = [*(a1 + 32) utunController];
  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 stopGlobalLinkForDevice:v7];
}

void sub_1003A3A0C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1003A37D0);
  }

  _Unwind_Resume(a1);
}

void sub_1003A3A80(uint64_t a1)
{
  v2 = +[IDSUTunDeliveryController sharedInstance];
  [v2 removeUTunPeerWithSessionID:*(a1 + 32) reason:0 shouldWait:0];

  v3 = +[IDSUTunDeliveryController sharedInstance];
  [v3 unlockContinuityPeer:*(a1 + 32)];
}

void sub_1003A3B04(uint64_t a1)
{
  v6 = objc_alloc_init(IMMessageContext);
  [v6 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v6];

  [v5 groupSessionDidTerminate:*(a1 + 40)];
}

void sub_1003A3BDC(uint64_t a1)
{
  [*(a1 + 32) submitAWDMetricsForIDSSessionCompleted];
  v1 = +[IDSDSessionController sharedInstance];
  [v1 updateCriticalReliabilityState];
}

void sub_1003A3EB8(uint64_t a1)
{
  v2 = +[IDSUTunDeliveryController sharedInstance];
  [v2 defaultPeerSetLinkPreferences:*(a1 + 32)];
}

void sub_1003A4364(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unhooking and closing socket descriptors from TransportThread %@ (possibly not on TransportThread)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v10 = *(a1 + 32);
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v10 = *(a1 + 32);
          _IDSLogV();
        }
      }
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v11 + 1) + 8 * v8) intValue];
          if (v9 != -1)
          {
            IDSTransportThreadRemoveSocket();
            close(v9);
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

void sub_1003A524C(id a1, BOOL a2)
{
  if (!a2)
  {
    _IDSTransportThreadAssertRealTimeMode(0);
  }
}

void sub_1003A58F0(uint64_t a1)
{
  [*(a1 + 32) submitAWDMetricsForIDSSessionCompleted];
  v1 = +[IDSDSessionController sharedInstance];
  [v1 updateCriticalReliabilityState];
}

void sub_1003A6C68(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1003A6880);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003A6C9C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = objc_autoreleasePoolPush();
  if (![v10 count] && !objc_msgSend(v9, "count"))
  {
    v21 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  if ([v10 count] && !objc_msgSend(v9, "count"))
  {
    v17 = [[NSSet alloc] initWithArray:v10];
    v15 = 0;
    v16 = 0;
    v21 = 1;
  }

  else
  {
    if (![v10 count] && objc_msgSend(v9, "count"))
    {
      v15 = [[NSSet alloc] initWithArray:v9];
      v21 = 1;
LABEL_14:
      objc_autoreleasePoolPop(v11);
      v17 = 0;
      v16 = 0;
      goto LABEL_26;
    }

    v29 = a3;
    v30 = v11;
    v12 = [NSSet setWithArray:v10];
    v13 = [NSSet setWithArray:v9];
    v14 = [v12 isEqualToSet:v13];
    if (v14)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v27 = a5;
      v28 = a4;
      v18 = [v13 mutableCopy];
      [v18 minusSet:v12];
      v19 = [v12 mutableCopy];
      [v19 minusSet:v13];
      v20 = [v13 mutableCopy];
      [v20 intersectSet:v12];
      if ([v19 count])
      {
        v17 = [v19 copy];
      }

      else
      {
        v17 = 0;
      }

      if ([v18 count])
      {
        v15 = [v18 copy];
      }

      else
      {
        v15 = 0;
      }

      v26 = v18;
      if ([v20 count])
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }

      a5 = v27;
      a4 = v28;
    }

    v21 = v14 ^ 1;

    a3 = v29;
    v11 = v30;
  }

  objc_autoreleasePoolPop(v11);
  if (v17)
  {
    v22 = v17;
    *a3 = v17;
  }

LABEL_26:
  if (v15)
  {
    v23 = v15;
    *a5 = v15;
  }

  if (v16)
  {
    v24 = v16;
    *a4 = v16;
  }

  return v21;
}

void sub_1003A6F1C(int a1, int a2, void *a3, void *a4, void *a5, id *a6, id *a7, id *a8, id *a9)
{
  v24 = a3;
  v16 = a4;
  v17 = a5;
  if ([v24 count])
  {
    v18 = *a8;
    if (!*a8)
    {
      v18 = objc_alloc_init(NSMutableSet);
      *a8 = v18;
    }

    [v18 unionSet:v24];
    if (a1 && [v17 count])
    {
      v19 = *a6;
      if (!*a6)
      {
        v19 = objc_alloc_init(NSMutableSet);
        *a6 = v19;
      }

      [v19 unionSet:v24];
    }
  }

  if ([v16 count])
  {
    if ([v24 count])
    {
      v20 = *a9;
      if (!*a9)
      {
        v20 = objc_alloc_init(NSMutableSet);
        *a9 = v20;
      }

      [v20 unionSet:v16];
    }

    if ([v17 count])
    {
      v21 = *a6;
      if (!*a6)
      {
        v21 = objc_alloc_init(NSMutableSet);
        *a6 = v21;
      }

      [v21 unionSet:v16];
    }
  }

  if ([v17 count])
  {
    v22 = *a7;
    if (!*a7)
    {
      v22 = objc_alloc_init(NSMutableSet);
      *a7 = v22;
    }

    [v22 unionSet:v17];
    if (a2 && [v24 count])
    {
      v23 = *a9;
      if (!*a9)
      {
        v23 = objc_alloc_init(NSMutableSet);
        *a9 = v23;
      }

      [v23 unionSet:v17];
    }
  }
}

void sub_1003A70E0(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v39 = [*(a1 + 32) groupStatusNotificationController];
    v37 = [*(a1 + 32) sharedState];
    v25 = [v37 groupID];
    v35 = [*(a1 + 32) sharedState];
    v33 = [v35 destinations];
    v24 = [v33 allObjects];
    v2 = *(a1 + 32);
    v23 = v2[23];
    v29 = [v2 accountController];
    v31 = [*(a1 + 32) sharedState];
    v27 = [v31 accountID];
    v22 = [v29 accountWithUniqueID:v27];
    v3 = [*(a1 + 32) sharedState];
    v4 = [v3 fromURI];
    v5 = [*(a1 + 32) sharedState];
    v6 = [v5 uniqueID];
    v7 = [*(a1 + 32) shouldReportUPlusOneKey];
    v8 = [*(a1 + 40) allObjects];
    v9 = [*(a1 + 48) allObjects];
    LOBYTE(v21) = v7;
    [v39 notifyLeaveToSpecificMembersOfGroup:v25 members:v24 params:v23 fromAccount:v22 fromURI:v4 sessionID:v6 isUPlusOne:v21 requiredCapabilites:v8 requiredLackOfCapabilities:v9];
  }

  if (*(a1 + 73) == 1)
  {
    v40 = [*(a1 + 32) groupStatusNotificationController];
    v38 = [*(a1 + 32) sharedState];
    v10 = [v38 groupID];
    v36 = [*(a1 + 32) sharedState];
    v34 = [v36 destinations];
    v28 = [v34 allObjects];
    v11 = *(a1 + 32);
    v26 = v11[23];
    v30 = [v11 accountController];
    v32 = [*(a1 + 32) sharedState];
    v12 = [v32 accountID];
    v13 = [v30 accountWithUniqueID:v12];
    v14 = [*(a1 + 32) sharedState];
    v15 = [v14 fromURI];
    v16 = [*(a1 + 32) sharedState];
    v17 = [v16 uniqueID];
    v18 = [*(a1 + 32) shouldReportUPlusOneKey];
    v19 = [*(a1 + 56) allObjects];
    v20 = [*(a1 + 64) allObjects];
    LOBYTE(v21) = v18;
    [v40 notifyJoinToSpecificMembersOfGroup:v10 members:v28 params:v26 fromAccount:v13 fromURI:v15 sessionID:v17 isUPlusOne:v21 requiredCapabilites:v19 requiredLackOfCapabilities:v20];
  }
}

void sub_1003A76C4(uint64_t a1)
{
  v1 = [*(a1 + 32) onTransportThread_globalLink];
  [v1 setAllowP2P:1];
}

void sub_1003A7794(uint64_t a1)
{
  v2 = [*(a1 + 32) onTransportThread_globalLink];
  [v2 setForceTCPFallbackOnWiFi:*(a1 + 40)];
}

void sub_1003A7870(uint64_t a1)
{
  v2 = [*(a1 + 32) onTransportThread_globalLink];
  [v2 setForceTCPFallbackOnCell:*(a1 + 40)];
}

uint64_t sub_1003A8E0C(uint64_t a1, _WORD *a2)
{
  if (*a1 != 58)
  {
    return *a2 != 0;
  }

  v3 = atoi((a1 + 1));
  v4 = v3;
  if ((v3 - 1) >= 0xFFFF)
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " invalid port %d", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport();
        result = _IDSShouldLog();
        if (result)
        {
          _IDSLogV();
          return 0;
        }
      }
    }
  }

  else
  {
    *a2 = v3;
    return 1;
  }

  return result;
}

id sub_1003A9108(uint64_t a1)
{
  if (!*(*(a1 + 32) + 536))
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = *(a1 + 32);
    v4 = *(v3 + 536);
    *(v3 + 536) = v2;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@> add the new QR event for the RTC report: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        _IDSLogV();
      }
    }
  }

  return [*(*(a1 + 32) + 536) addObject:{*(a1 + 40), v9, v10}];
}

void sub_1003AA0D8(uint64_t a1)
{
  v15 = +[IDSGroupEncryptionController sharedInstance];
  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) sharedState];
  v14 = [v17 groupID];
  v2 = [*(a1 + 40) accountController];
  v3 = [*(a1 + 40) sharedState];
  v4 = [v3 accountID];
  v5 = [v2 accountWithUniqueID:v4];
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1003AA278;
  v18[3] = &unk_100BD9F98;
  v13 = *(a1 + 40);
  v8 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v13;
  *(&v12 + 1) = v8;
  v19 = v12;
  v20 = v11;
  [v15 processedQRMKMPayloadFromData:v16 forGroupID:v14 account:v5 remoteURI:v7 localURI:v6 tokens:v8 completionHandler:v18];
}

void sub_1003AA278(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (qword_100CBD178 != -1)
      {
        sub_100918708();
      }

      *buf = 134217984;
      v27 = *&qword_100CBD180 * mach_continuous_time();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Receiving Key Material (QR) [*KM] -- %f", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      if (qword_100CBD178 != -1)
      {
        sub_1009186A4();
      }

      v20 = *&qword_100CBD180 * mach_continuous_time();
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if (qword_100CBD178 != -1)
        {
          sub_1009186A4();
        }

        v20 = *&qword_100CBD180 * mach_continuous_time();
        _IDSLogV();
      }
    }

    v8 = *(*(a1 + 32) + 944);
    v9 = [*(a1 + 40) firstObject];
    [v8 receivedKMOverQRFromToken:v9];

    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      *buf = 138412802;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received remote key material message from tokens %@ fromURI %@ toURI %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v14 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003AA750;
    block[3] = &unk_100BD7020;
    v22 = v5;
    v23 = v6;
    v24 = *(a1 + 48);
    v25 = *(a1 + 56);
    v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v14, v15);
  }

  else
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      *buf = 138412802;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Could not process remote key material message from tokens %@ fromURI %@ toURI %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

void sub_1003AA750(void *a1)
{
  v4 = +[IDSDSessionController sharedInstance];
  v2 = a1[4];
  v3 = [IDSPushToken pushTokenWithData:a1[5]];
  [v4 processIncomingGroupSessionMessage:v2 fromToken:v3 fromURI:a1[6] toURI:a1[7] topic:0 idsMessageContext:0];
}

void sub_1003AC9A4(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) ownerParticipantId];
    v4 = [*(a1 + 40) sharedState];
    v5 = [v4 groupID];
    v6 = [*(a1 + 40) sharedState];
    v7 = [v6 uniqueID];
    *buf = 134218498;
    v22 = *&v3;
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo: processing _pendingMaterialInfoByParticipantID %llu for group %@ and session %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v8 = [*(a1 + 32) ownerParticipantId];
      v9 = [*(a1 + 40) sharedState];
      v10 = [v9 groupID];
      v11 = [*(a1 + 40) sharedState];
      v19 = [v11 uniqueID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        [*(a1 + 32) ownerParticipantId];
        v12 = [*(a1 + 40) sharedState];
        v13 = [v12 groupID];
        v14 = [*(a1 + 40) sharedState];
        v20 = [v14 uniqueID];
        _IDSLogV();
      }
    }
  }

  if (qword_100CBD178 != -1)
  {
    sub_1009186A4();
  }

  if (*&qword_100CBD180 * mach_continuous_time() <= *(a1 + 72))
  {
    objc_copyWeak(buf, (a1 + 64));
    WeakRetained = objc_loadWeakRetained(buf);

    if (WeakRetained)
    {
      v18 = objc_loadWeakRetained((a1 + 64));
      [v18 link:*(a1 + 48) didReceiveMaterialInfo:*(a1 + 56) material:*(a1 + 32)];
    }

    objc_destroyWeak(buf);
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (qword_100CBD178 != -1)
      {
        sub_1009186A4();
      }

      v16 = *&qword_100CBD180 * mach_continuous_time() - *(a1 + 72);
      *buf = 134217984;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo: dropping material from _pendingMaterialInfoByParticipantID because it timed out by %f seconds", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      if (qword_100CBD178 != -1)
      {
        sub_1009186A4();
      }

      mach_continuous_time();
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if (qword_100CBD178 != -1)
        {
          sub_1009186A4();
        }

        mach_continuous_time();
        _IDSLogV();
      }
    }
  }
}

void sub_1003ACDB4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1003ACC64);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1003ACE10(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) ownerParticipantId];
    v4 = [*(a1 + 40) sharedState];
    v5 = [v4 groupID];
    v6 = [*(a1 + 40) sharedState];
    v7 = [v6 uniqueID];
    *buf = 134218498;
    v22 = *&v3;
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo: processing pending material from %llu for group %@ and session %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v8 = [*(a1 + 32) ownerParticipantId];
      v9 = [*(a1 + 40) sharedState];
      v10 = [v9 groupID];
      v11 = [*(a1 + 40) sharedState];
      v19 = [v11 uniqueID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        [*(a1 + 32) ownerParticipantId];
        v12 = [*(a1 + 40) sharedState];
        v13 = [v12 groupID];
        v14 = [*(a1 + 40) sharedState];
        v20 = [v14 uniqueID];
        _IDSLogV();
      }
    }
  }

  if (qword_100CBD178 != -1)
  {
    sub_1009186A4();
  }

  if (*&qword_100CBD180 * mach_continuous_time() <= *(a1 + 72))
  {
    objc_copyWeak(buf, (a1 + 64));
    WeakRetained = objc_loadWeakRetained(buf);

    if (WeakRetained)
    {
      v18 = objc_loadWeakRetained((a1 + 64));
      [v18 link:*(a1 + 48) didReceiveMaterialInfo:*(a1 + 56) material:*(a1 + 32)];
    }

    objc_destroyWeak(buf);
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (qword_100CBD178 != -1)
      {
        sub_1009186A4();
      }

      v16 = *&qword_100CBD180 * mach_continuous_time() - *(a1 + 72);
      *buf = 134217984;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo: dropping material because it timed out by %f seconds", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      if (qword_100CBD178 != -1)
      {
        sub_1009186A4();
      }

      mach_continuous_time();
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if (qword_100CBD178 != -1)
        {
          sub_1009186A4();
        }

        mach_continuous_time();
        _IDSLogV();
      }
    }
  }
}

void sub_1003AD220(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1003AD0D0);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1003AD27C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) materialType];
    if (v6 > 12)
    {
      if (v6 == 14)
      {
        v35 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          if (qword_100CBD178 != -1)
          {
            sub_100918708();
          }

          *buf = 134217984;
          v116 = *&qword_100CBD180 * mach_continuous_time();
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Receiving Key Material (QUIC) [SKM] -- %f", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          if (qword_100CBD178 != -1)
          {
            sub_1009186A4();
          }

          v97 = *&qword_100CBD180 * mach_continuous_time();
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v97 = sub_1003856DC();
            _IDSLogV();
          }
        }

        v36 = *(*(a1 + 40) + 944);
        v37 = [*(a1 + 64) rawToken];
        [v36 receivedKMOverQUICFromToken:v37];

        v38 = +[IDSGroupEncryptionController sharedInstance];
        v39 = *(a1 + 56);
        v40 = *(a1 + 64);
        v41 = *(a1 + 72);
        v42 = [*(a1 + 40) sharedState];
        v43 = [v42 groupID];
        v44 = [*(a1 + 40) sharedState];
        v45 = [v44 uniqueID];
        v113 = 0;
        LOWORD(v107) = 256;
        LOBYTE(v101) = 1;
        v46 = [v38 receivedAndSetKeyMaterial:0 stableKeyMaterial:v39 forDevice:v40 fromURI:v41 groupID:v43 sessionID:v45 fromSender:v101 error:&v113 forMKM:v107 forSKM:?];
        v47 = v113;

        if (v47)
        {
          v48 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = COERCE_DOUBLE([*(a1 + 48) ownerParticipantId]);
            v50 = *(a1 + 56);
            *buf = 134218498;
            v116 = v49;
            v117 = 2112;
            v118 = v50;
            v119 = 2112;
            v120 = v47;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo failed processing SKM for participant %llu; payload %@; error: %@", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v51 = [*(a1 + 48) ownerParticipantId];
              v105 = *(a1 + 56);
              v108 = v47;
              v102 = v51;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v52 = [*(a1 + 48) ownerParticipantId];
                v105 = *(a1 + 56);
                v108 = v47;
                v102 = v52;
                _IDSLogV();
              }
            }
          }

          [*(a1 + 40) materialInfoError:{@"failedProcessingSKM", v102, v105, v108}];
        }
      }

      else
      {
        if (v6 != 13)
        {
LABEL_39:
          v29 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [*(a1 + 32) materialType];
            *buf = 67109120;
            LODWORD(v116) = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo unknown material type %d", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v100 = [*(a1 + 32) materialType];
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                [*(a1 + 32) materialType];
                _IDSLogV();
              }
            }
          }

          goto LABEL_24;
        }

        v20 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          if (qword_100CBD178 != -1)
          {
            sub_100918708();
          }

          *buf = 134217984;
          v116 = *&qword_100CBD180 * mach_continuous_time();
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Receiving Key Material (QUIC) [MKM] -- %f", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          if (qword_100CBD178 != -1)
          {
            sub_1009186A4();
          }

          v97 = *&qword_100CBD180 * mach_continuous_time();
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v97 = sub_1003856DC();
            _IDSLogV();
          }
        }

        v21 = *(*(a1 + 40) + 944);
        v22 = [*(a1 + 64) rawToken];
        [v21 receivedKMOverQUICFromToken:v22];

        v111 = [*(a1 + 56) objectForKeyedSubscript:IDSRealTimeEncryptionMKI];
        if ([v111 length] == 16)
        {
          v23 = [NSUUID alloc];
          v24 = v111;
          v25 = [v23 initWithUUIDBytes:{objc_msgSend(v111, "bytes")}];
          v26 = *(*(a1 + 40) + 944);
          v27 = IDSGetUUIDDataFromNSUUID();
          v28 = [v26 getOrCreateMKICycleFor:v27];
          [v28 receivedFromGFT2];
        }

        else
        {
          v25 = +[IDSFoundationLog IDSDSession];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10091A0F0();
          }
        }

        v53 = *(a1 + 40);
        if ((*(v53 + 736) & 1) == 0)
        {
          *(v53 + 736) = 1;
          if (qword_100CBD178 != -1)
          {
            sub_1009186A4();
          }

          *(*(a1 + 40) + 744) = *&qword_100CBD180 * mach_continuous_time();
        }

        v54 = +[IDSGroupEncryptionController sharedInstance];
        v56 = *(a1 + 56);
        v55 = *(a1 + 64);
        v57 = *(a1 + 72);
        v58 = [*(a1 + 40) sharedState];
        v59 = [v58 groupID];
        v60 = [*(a1 + 40) sharedState];
        v61 = [v60 uniqueID];
        v114 = 0;
        LOWORD(v107) = 1;
        LOBYTE(v99) = 1;
        v62 = [v54 receivedAndSetKeyMaterial:v56 stableKeyMaterial:0 forDevice:v55 fromURI:v57 groupID:v59 sessionID:v61 fromSender:v99 error:&v114 forMKM:v107 forSKM:?];
        v63 = v114;

        if (v63)
        {
          v64 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = COERCE_DOUBLE([*(a1 + 48) ownerParticipantId]);
            v66 = *(a1 + 56);
            *buf = 134218498;
            v116 = v65;
            v117 = 2112;
            v118 = v66;
            v119 = 2112;
            v120 = v63;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo failed processing MKM for participant %llu; payload %@; error: %@", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v67 = [*(a1 + 48) ownerParticipantId];
              v106 = *(a1 + 56);
              v109 = v63;
              v103 = v67;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v68 = [*(a1 + 48) ownerParticipantId];
                v106 = *(a1 + 56);
                v109 = v63;
                v103 = v68;
                _IDSLogV();
              }
            }
          }

          [*(a1 + 40) materialInfoError:{@"failedProcessingMKM", v103, v106, v109}];
        }

        else
        {
        }
      }
    }

    else
    {
      if (v6 != 5)
      {
        if (v6 == 11)
        {
          v7 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            if (qword_100CBD178 != -1)
            {
              sub_100918708();
            }

            *buf = 134217984;
            v116 = *&qword_100CBD180 * mach_continuous_time();
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Receiving Key Material (QUIC) [PreKey] -- %f", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            if (qword_100CBD178 != -1)
            {
              sub_1009186A4();
            }

            v97 = *&qword_100CBD180 * mach_continuous_time();
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v97 = sub_1003856DC();
              _IDSLogV();
            }
          }

          v8 = *(*(a1 + 40) + 944);
          v9 = [*(a1 + 64) rawToken];
          v10 = [v8 joinCycleForToken:v9];
          [v10 receivedPreKeyOverQUIC];

          v11 = *(a1 + 56);
          v12 = +[_TtC17identityservicesd38IDSGroupEncryptionPreKeyDictionaryKeys publicPreKey];
          v13 = [v11 objectForKey:v12];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = *(a1 + 56);
            v15 = +[_TtC17identityservicesd38IDSGroupEncryptionPreKeyDictionaryKeys publicPreKey];
            v16 = [v14 objectForKey:v15];
            v17 = [NSData _IDSDataFromBase64String:v16];
          }

          else
          {
            v69 = *(a1 + 56);
            v15 = +[_TtC17identityservicesd38IDSGroupEncryptionPreKeyDictionaryKeys publicPreKey];
            v16 = [v69 objectForKey:v15];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v70 = *(a1 + 56);
              v71 = +[_TtC17identityservicesd38IDSGroupEncryptionPreKeyDictionaryKeys publicPreKey];
              v17 = [v70 objectForKey:v71];
            }

            else
            {
              v17 = 0;
            }
          }

          if (v17)
          {
            v72 = objc_opt_class();
            v73 = *(a1 + 56);
            v74 = +[_TtC17identityservicesd38IDSGroupEncryptionPreKeyDictionaryKeys wrapMode];
            v112 = sub_10001B2E4(v72, v73, v74);

            v75 = objc_opt_class();
            v76 = *(a1 + 56);
            v77 = +[_TtC17identityservicesd38IDSGroupEncryptionPreKeyDictionaryKeys creationDate];
            v110 = sub_10001B2E4(v75, v76, v77);

            if (v112)
            {
              if (v110)
              {
                v78 = +[IDSGroupEncryptionController sharedInstance];
                v80 = *(a1 + 40);
                v79 = a1 + 40;
                v81 = *(v79 + 24);
                v82 = *(v79 + 32);
                v83 = [v80 sharedState];
                v84 = [v83 groupID];
                v85 = [*v79 sharedState];
                v86 = [v85 uniqueID];
                [v110 doubleValue];
                v87 = [NSDate dateWithTimeIntervalSince1970:?];
                [v78 setRealTimeEncryptionPublicKey:v17 forDevice:v81 fromURI:v82 groupID:v84 sessionID:v86 serverDate:v87 wrapMode:{objc_msgSend(v112, "intValue")}];
              }

              else
              {
                v94 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                {
                  v95 = COERCE_DOUBLE([*(a1 + 48) ownerParticipantId]);
                  v96 = *(a1 + 56);
                  *buf = 134218242;
                  v116 = v95;
                  v117 = 2112;
                  v118 = v96;
                  _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo could not process preKey for participant %llu; no creation date found in payload %@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v98 = [*(a1 + 48) ownerParticipantId];
                    v104 = *(a1 + 56);
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      v98 = [*(a1 + 48) ownerParticipantId];
                      v104 = *(a1 + 56);
                      _IDSLogV();
                    }
                  }
                }

                [*(a1 + 40) materialInfoError:{@"missingServerDateTimestamp", v98, v104}];
              }
            }

            else
            {
              v91 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
              {
                v92 = COERCE_DOUBLE([*(a1 + 48) ownerParticipantId]);
                v93 = *(a1 + 56);
                *buf = 134218242;
                v116 = v92;
                v117 = 2112;
                v118 = v93;
                _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo could not process preKey for participant %llu; no wrap-mode found in payload %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v98 = [*(a1 + 48) ownerParticipantId];
                  v104 = *(a1 + 56);
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v98 = [*(a1 + 48) ownerParticipantId];
                    v104 = *(a1 + 56);
                    _IDSLogV();
                  }
                }
              }

              [*(a1 + 40) materialInfoError:{@"missingWrapMode", v98, v104}];
            }
          }

          else
          {
            v88 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              v89 = COERCE_DOUBLE([*(a1 + 48) ownerParticipantId]);
              v90 = *(a1 + 56);
              *buf = 134218242;
              v116 = v89;
              v117 = 2112;
              v118 = v90;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo could not process preKey for participant %llu; no preKey found in payload %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v98 = [*(a1 + 48) ownerParticipantId];
                v104 = *(a1 + 56);
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v98 = [*(a1 + 48) ownerParticipantId];
                  v104 = *(a1 + 56);
                  _IDSLogV();
                }
              }
            }

            [*(a1 + 40) materialInfoError:{@"missingPreKeyData", v98, v104}];
          }

          goto LABEL_24;
        }

        goto LABEL_39;
      }

      v31 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 56);
        v33 = [*(a1 + 48) ownerParticipantId];
        *buf = 138412546;
        v116 = v32;
        v117 = 2048;
        v118 = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "payload: %@, material.ownerParticipantId: %llu", buf, 0x16u);
      }

      v34 = *(a1 + 56);
      if (v34)
      {
        [*(*(a1 + 40) + 872) receiveDictionaryData:v34 forType:objc_msgSend(*(a1 + 32) fromParticipant:{"materialType"), objc_msgSend(*(a1 + 48), "ownerParticipantId")}];
      }
    }
  }

  else
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 138412546;
      v116 = v19;
      v117 = 2112;
      v118 = v5;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo failed to verify signature for info: %@ error: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v97 = *(a1 + 32);
        v104 = v5;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v97 = *(a1 + 32);
          v104 = v5;
          _IDSLogV();
        }
      }
    }

    [*(a1 + 40) materialInfoError:{@"failedSignatureVerification", *&v97, v104}];
  }

LABEL_24:
}

void sub_1003AE3E8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1003AE300);
  }

  _Unwind_Resume(a1);
}

void sub_1003AE4D8(id *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003AE5E4;
  block[3] = &unk_100BDA038;
  v11 = a1[4];
  v12 = a1[5];
  v7 = a1[6];
  v15 = a2;
  v13 = v5;
  v14 = v7;
  v8 = v5;
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v6, v9);
}

uint64_t sub_1003AE5E4(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo verified signature: %@ matchesPayload: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  return (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 64));
}

uint64_t sub_1003AE73C(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "didReceiveMaterialInfo did not verify signature", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1003AFB8C(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 participantUpdatedForSession:v7];
}

void sub_1003B1230(uint64_t a1)
{
  v6 = objc_alloc_init(IMMessageContext);
  [v6 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v6];

  [v5 groupSessionDidConnectUnderlyingLinks:*(a1 + 40)];
}