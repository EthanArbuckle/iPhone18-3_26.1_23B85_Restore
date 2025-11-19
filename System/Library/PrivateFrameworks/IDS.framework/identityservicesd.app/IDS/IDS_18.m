void sub_100597284(void **a1)
{
  if (a1)
  {
    free(a1[3]);

    free(a1);
  }
}

void sub_1005972C8(uint64_t a1)
{
  v2 = +[IDSFoundationLog QRAllocator_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6[0] = 67109634;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Full request info for send allocate request, recipient count: %u, request: %@, time: %.6f.", v6, 0x1Cu);
  }
}

id sub_100597BA4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 service];
  v5 = [v4 identifier];
  v6 = [IDSURI URIWithPrefixedURI:v3 withServiceLoggingHint:v5];

  return v6;
}

id sub_10059B7C8(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Purging duplicate response!", v4, 2u);
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

  return [*(*(a1 + 32) + 96) removeObjectForKey:*(a1 + 40)];
}

void *sub_10059BFE4(uint64_t a1, __int16 a2, __int16 a3, int a4, void *a5)
{
  v9 = a5;
  v10 = malloc_type_malloc(0x20uLL, 0x101004021337FD9uLL);
  v10[1] = a1;
  *v10 = a2;
  *(v10 + 1) = a3;
  *(v10 + 1) = a4;
  v11 = [v9 length];
  *(v10 + 4) = v11;
  v12 = malloc_type_malloc(v11, 0x100004077774924uLL);
  v10[3] = v12;
  v13 = [v9 bytes];

  memcpy(v12, v13, *(v10 + 4));
  return v10;
}

id sub_10059C0A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = malloc_type_malloc(v2 + 32, 0x100004077774924uLL);
  v4 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v4;
  memcpy(v3 + 2, *(a1 + 24), *(a1 + 16));
  v5 = [[NSData alloc] initWithBytes:v3 length:v2 + 32];
  free(v3);

  return v5;
}

id sub_10059C558(uint64_t a1)
{
  result = [*(a1 + 32) _handleIncomingAllocateResponse:*(a1 + 40) isFromCache:*(a1 + 64) requestOptions:*(a1 + 48)];
  if (*(a1 + 56))
  {
    v3 = +[IDSFoundationLog QRAllocator];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_dispatchIncomingAllocateResponse: calling connectReadyHandler", v4, 2u);
    }

    return (*(*(a1 + 56) + 16))();
  }

  return result;
}

void sub_10059DE58(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10)
{
  v87 = a2;
  v80 = a3;
  v82 = a4;
  v88 = a5;
  v84 = a7;
  v86 = a8;
  v16 = a10;
  v101 = a1;
  v17 = [*(a1 + 32) _queryPolicy];
  v18 = [v17 shouldPreventDuplicateTokensInAllocationForServiceIdentifier:v88];

  v97 = objc_alloc_init(NSMutableArray);
  v19 = objc_alloc_init(NSMutableSet);
  v106 = 0u;
  v107 = 0u;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  if (v18)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v99 = v20;
  v100 = v21;
  v108 = 0uLL;
  v109 = 0uLL;
  obj = v16;
  v91 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
  if (v91)
  {
    v22 = @"NO";
    if (v18)
    {
      v22 = @"YES";
    }

    v89 = v22;
    v90 = *v107;
    v96 = kIDSQRAllocateKey_RecipientPushToken;
    v95 = kIDSQRAllocateKey_RecipientSessionToken;
    v94 = kIDSQRAllocateKey_RecipientURI;
    do
    {
      v23 = 0;
      do
      {
        if (*v107 != v90)
        {
          v24 = v23;
          objc_enumerationMutation(obj);
          v23 = v24;
        }

        v93 = v23;
        v25 = *(*(&v106 + 1) + 8 * v23);
        v26 = [obj objectForKeyedSubscript:{v25, v75, v77, v78, v79, v80, v82, v84}];
        v27 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v26 count];
          v29 = [v26 valueForKey:@"pushToken"];
          *buf = 138413058;
          *v114 = v25;
          *&v114[8] = 1024;
          *v115 = v28;
          *&v115[4] = 2112;
          *&v115[6] = v89;
          v116 = 2112;
          v117 = v29;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "look up peer with URI: %@, push token count: %u, prevent duplicates: %@,  tokens: %@", buf, 0x26u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v30 = [v26 count];
            [v26 valueForKey:@"pushToken"];
            v79 = v78 = v89;
            v75 = v25;
            v77 = v30;
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              v31 = [v26 count];
              [v26 valueForKey:@"pushToken"];
              v79 = v78 = v89;
              v75 = v25;
              v77 = v31;
              _IDSLogV();
            }
          }
        }

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v98 = v26;
        v32 = [v98 countByEnumeratingWithState:&v102 objects:v112 count:16];
        if (v32)
        {
          v33 = *v103;
          do
          {
            for (i = 0; i != v32; i = i + 1)
            {
              if (*v103 != v33)
              {
                objc_enumerationMutation(v98);
              }

              v35 = *(*(&v102 + 1) + 8 * i);
              v36 = [v35 pushToken];
              v37 = *(v101 + 32);
              v38 = [v25 prefixedURI];
              v39 = [v37 _tokenURIForToken:v36 uri:v38];

              if (v18)
              {
                if (![v100 containsObject:v36])
                {
                  goto LABEL_40;
                }

                v40 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = IDSLoggableDescriptionForTokenOnService();
                  *buf = 138412290;
                  *v114 = v41;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Skipping duplicate token %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v75 = IDSLoggableDescriptionForTokenOnService();
                    _IDSLogTransport();

                    if (_IDSShouldLog())
                    {
                      v42 = IDSLoggableDescriptionForTokenOnService();
                      v75 = v42;
                      _IDSLogV();
LABEL_46:
                    }
                  }
                }
              }

              else
              {
                if (![v99 containsObject:v39])
                {
LABEL_40:
                  if (!*(v101 + 48) || [v36 isEqualToData:?])
                  {
                    if (v18)
                    {
                      [v100 addObject:v36];
                    }

                    else
                    {
                      [v99 addObject:v39];
                    }

                    v111[0] = v36;
                    v110[0] = v96;
                    v110[1] = v95;
                    v45 = [v35 sessionToken];
                    v111[1] = v45;
                    v110[2] = v94;
                    v46 = [v25 prefixedURI];
                    v111[2] = v46;
                    v42 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:3];

                    [v97 addObject:v42];
                    goto LABEL_46;
                  }

                  goto LABEL_47;
                }

                v43 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = IDSLoggableDescriptionForHandleOnService();
                  *buf = 138412290;
                  *v114 = v44;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Skipping duplicate %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v75 = IDSLoggableDescriptionForHandleOnService();
                    _IDSLogTransport();

                    if (_IDSShouldLog())
                    {
                      v42 = IDSLoggableDescriptionForHandleOnService();
                      v75 = v42;
                      _IDSLogV();
                      goto LABEL_46;
                    }
                  }
                }
              }

LABEL_47:
            }

            v32 = [v98 countByEnumeratingWithState:&v102 objects:v112 count:16];
          }

          while (v32);
        }

        v23 = v93 + 1;
      }

      while ((v93 + 1) != v91);
      v91 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
    }

    while (v91);
  }

  v47 = *(v101 + 32);
  v48 = *(v101 + 56);
  v49 = [v87 prefixedURI];
  v50 = *(v101 + 64);
  v51 = [*(v101 + 72) objectForKey:kIDSQRAllocateKey_GroupID];
  [v47 _storeMappingFromPushTokenToURIs:v48 fromID:v49 service:v88 cert:v50 forGroup:v51];

  if ([v97 count])
  {
    v52 = *(v101 + 88);
    if (v52)
    {
      v53 = v52;
      if ([v53 length] > 0x1F)
      {
        v56 = malloc_type_malloc(0x20uLL, 0x101004021337FD9uLL);
        v69 = v53;
        v70 = [v53 bytes];
        v71 = v70[1];
        *v56 = *v70;
        v56[1] = v71;
        v72 = malloc_type_malloc(*(v56 + 4), 0x100004077774924uLL);
        *(v56 + 3) = v72;
        v73 = v53;
        memcpy(v72, [v53 bytes] + 32, *(v56 + 4));
      }

      else
      {
        v54 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [v53 length];
          *buf = 67109376;
          *v114 = v55;
          *&v114[4] = 1024;
          *&v114[6] = 32;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Failed type check! {key: %@, class: %@}", buf, 0xEu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v76 = [v53 length];
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              [v53 length];
              _IDSLogV();
            }
          }
        }

        v56 = 0;
      }
    }

    else
    {
      v56 = 0;
    }

    LODWORD(v78) = 0;
    v74 = [*(v101 + 32) _setupAllocation:v97 fromURI:*(v101 + 96) sessionID:*(v101 + 80) isSessionIDRemoteDeviceID:*(v101 + 121) options:*(v101 + 72) prevConnectStatus:v56 requestUUID:*(v101 + 104) connectReadyHandler:*(v101 + 112) withPreferredLocalInterface:{v78, v79, v80, v82, v84}];
  }

  else
  {
    v57 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = *(v101 + 56);
      *buf = 138412546;
      *v114 = v58;
      *&v114[8] = 2112;
      *v115 = v86;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "could not look up recipient's push tokens, ID: %@, errors: %@ ", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v75 = *(v101 + 56);
        v77 = v86;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v75 = *(v101 + 56);
          v77 = v86;
          _IDSLogV();
        }
      }
    }

    if (*(v101 + 48))
    {
      v59 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = *(v101 + 48);
        *buf = 138412290;
        *v114 = v60;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Missing expected default paired device's push token %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v75 = *(v101 + 48);
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v75 = *(v101 + 48);
            _IDSLogV();
          }
        }
      }
    }

    if (*(v101 + 112))
    {
      v61 = [NSDictionary dictionaryWithObject:@"No recipient is found." forKey:NSLocalizedDescriptionKey];
      v62 = [NSError errorWithDomain:@"QRAllocator" code:7001 userInfo:v61];

      (*(*(v101 + 112) + 16))(*(v101 + 112), v62, 0, v63, v64, v65, v66);
    }

    v67 = [*(v101 + 32) _findSessionWithID:{*(v101 + 80), v75, v77, v78, v79, v80, v82, v84}];
    v68 = v67;
    if (v67 && *(v101 + 120) == 1)
    {
      [v67 setHasPendingAllocation:0 forIDSSession:*(v101 + 80)];
    }
  }
}

void sub_10059FE90(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10059FDB0);
  }

  _Unwind_Resume(a1);
}

void sub_1005A5314(uint64_t a1)
{
  v2 = +[IDSFoundationLog QRAllocator_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = @"NO";
    if (*(a1 + 64))
    {
      v5 = @"YES";
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = 138413314;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Full allocate response payload for RequestID: %@ IDSSessionID: %@ QRSessionID: %@ from cache: %@ with payload %@", &v8, 0x34u);
  }
}

uint64_t sub_1005A84CC(uint64_t a1)
{
  if ([*(a1 + 32) snapshotWithSignature:*(a1 + 40) delay:0 events:0 payload:*(a1 + 48) actions:&stru_100BE0E18 reply:*(a1 + 56)])
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SymptomReporter: Sent snapshot for signature %@", buf, 0xCu);
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
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SymptomReporter: Failed to send snapshot for signature %@", buf, 0xCu);
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

void sub_1005A86EC(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SymptomReporter: got response from diagnosticReporter - %@", buf, 0xCu);
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

void sub_1005AAA38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 allObjects];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_1005AE6EC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(a1 + 40))
  {
    if (v2)
    {
      return;
    }

    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "enable push handler", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v4 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;

    v7 = [NSSet alloc];
    v8 = [v7 initWithObjects:{kIDSQuickRelayPushTopic, 0}];
    v9 = [NSSet alloc];
    v10 = [NSNumber numberWithInteger:200];
    v11 = [NSNumber numberWithInteger:255];
    v12 = [v9 initWithObjects:{v10, v11, 0}];

    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    v15 = im_primary_queue();
    [v14 addListener:v13 topics:v8 commands:v12 queue:v15];
  }

  else
  {
    if (!v2)
    {
      return;
    }

    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "disable push handler", v19, 2u);
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

    [*(*(a1 + 32) + 8) removeListener:?];
    v17 = *(a1 + 32);
    v8 = *(v17 + 8);
    *(v17 + 8) = 0;
  }
}

void sub_1005AFFDC(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (a1[6] >= v5[2])
  {
    v6 = *(*(a1[5] + 8) + 40);
    if (!v6)
    {
      v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1[4] + 64) count]);
      v8 = *(a1[5] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(a1[5] + 8) + 40);
    }

    [v6 addObject:v10];
  }
}

void sub_1005B0794(uint64_t a1)
{
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(a1 + 96) = v2;
  *(a1 + 112) = v2;
  *(a1 + 64) = v2;
  *(a1 + 80) = v2;
  *(a1 + 32) = v2;
  *(a1 + 48) = v2;
  *a1 = v2;
  *(a1 + 16) = v2;
  bzero((a1 + 128), 0x1F80uLL);
  *(a1 + 8200) = 1024;
  *(a1 + 0x2000) = 0;
}

uint64_t sub_1005B07E0(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8200) + 1;
  v5 = v4 >> 6;
  v6 = *(a1 + 8 * v5);
  if (~v6 >> (*(a1 + 8200) + 1))
  {
    v7 = v4 & 0x3F;
    v8 = v6 >> v4;
    v9 = __clz(__rbit64(~(v6 >> v4)));
    if (v8 == -1)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v10 + v7 + ((*(a1 + 8200) + 1) & 0xFFC0);
    *a2 = v11;
    *(a1 + 8 * v5) = (1 << (v10 + v7)) | v6;
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 8200);
      *buf = 67110400;
      *v41 = v13;
      *&v41[4] = 1024;
      *&v41[6] = v5;
      v42 = 1024;
      v43 = v7;
      v44 = 1024;
      *v45 = v10 + v7;
      *&v45[4] = 2048;
      *&v45[6] = v8;
      v46 = 1024;
      v47 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "found in cur (last = %u) - index=%d shift=%d newShift=%d (cur=%llu, ffsll(~cur)=%d)", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v36 = v8;
      v37 = v10;
      v34 = v7;
      v35 = (v10 + v7);
      v32 = *(a1 + 8200);
      v33 = v5;
      _IDSLogV();
    }

    *(a1 + 8200) = v11;
    v14 = *(a1 + 0x2000) + 1;
    *(a1 + 0x2000) = v14;
LABEL_25:
    if (v14 >= 0xB5)
    {
      v21 = arc4random_uniform(0x64u);
      v22 = +[IDSAutoBugCapture isSupported];
      v23 = v21 < 5 ? v22 : 0;
      if (v23 == 1)
      {
        if (qword_100CBF108 != -1)
        {
          sub_10092B3C0();
        }

        os_unfair_lock_lock(&dword_100CBF100);
        v24 = qword_100CBF0F8;
        if (!qword_100CBF0F8 || (+[NSDate date](NSDate, "date"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v24 compare:v25] == 1, v25, !v26))
        {
          v27 = [NSDate dateWithTimeIntervalSinceNow:259200.0, v32, v33, v34, v35, v36, v37];
          v28 = qword_100CBF0F8;
          qword_100CBF0F8 = v27;

          [NSString stringWithFormat:@"Number of allocated ports passed high watermark!"];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_1005B0DAC;
          v29 = v38[3] = &unk_100BD9500;
          v39 = v29;
          [IDSAutoBugCapture triggerCaptureWithEvent:209 context:v29 completion:v38];
        }

        os_unfair_lock_unlock(&dword_100CBF100);
      }
    }

    return 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
LABEL_12:
    ++v16;
    do
    {
      v5 = (v5 + 1) & 0x3FF;
      v17 = *(a1 + 8 * v5);
      if (v17 != -1)
      {
        v18 = __clz(__rbit64(~v17));
        *a2 = v18 | (v5 << 6);
        *(a1 + 8 * v5) = (1 << v18) | v17;
        v19 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 8200);
          *buf = 67110144;
          *v41 = v20;
          *&v41[4] = 1024;
          *&v41[6] = v5;
          v42 = 1024;
          v43 = v18;
          v44 = 2048;
          *v45 = v17;
          *&v45[8] = 1024;
          *&v45[10] = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "found (last = %u) - at index=%d newShift=%d (cur=%llu, ffsll(~cur)=%d)", buf, 0x24u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v35 = v17;
          v36 = v18;
          v33 = v5;
          v34 = v18;
          v32 = *(a1 + 8200);
          _IDSLogV();
        }

        *(a1 + 8200) = v18 | (v5 << 6);
        ++*(a1 + 0x2000);
        v15 = 1;
        if (v16 == 1023)
        {
          goto LABEL_24;
        }

        goto LABEL_12;
      }

      ++v16;
    }

    while (v16 != 1024);
    if (v15)
    {
LABEL_24:
      v14 = *(a1 + 0x2000);
      goto LABEL_25;
    }

    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v41 = "int IDSPortMap_GetNextAvailablePort(struct IDSPortMap *, uint16_t *)";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[Fatal error encountered] %s: ran out of ports to allocate, aborting!!!", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    if (!isRunningTests())
    {
      abort();
    }

    throwsIDSAbortException();
    return 1;
  }
}

void sub_1005B0DAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished capturing AutoBugCapture diagnostics for %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

uint64_t sub_1005B0EDC(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8 * (a2 >> 6));
  if ((v2 & (1 << a2)) != 0)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "can't allocated used port", v4, 2u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV();
      }
    }
  }

  else
  {
    *(result + 8 * (a2 >> 6)) = v2 | (1 << a2);
    ++*(result + 0x2000);
  }

  return result;
}

uint64_t sub_1005B0FD0(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8 * (a2 >> 6));
  if ((v2 & (1 << a2)) != 0)
  {
    *(result + 8 * (a2 >> 6)) = v2 & ~(1 << a2);
    --*(result + 0x2000);
  }

  else
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "can't release unallocated port", v4, 2u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV();
      }
    }
  }

  return result;
}

void sub_1005B2010(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationKeychainManager];
  v3 = IDSRegistrationServiceTypeStewie;
  v4 = [*(a1 + 40) uniqueIdentifier];
  v5 = [v2 registrationWithServiceType:v3 registrationType:0 value:v4];

  v6 = [*(a1 + 32) userStore];
  v7 = [v6 authenticationCertificateForUser:*(a1 + 40)];

  v8 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = @"YES";
    v15 = 138412802;
    if (!v7)
    {
      v10 = @"NO";
    }

    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found existing information for phone user { user: %@, hasAuthCert: %@, registration: %@ }", &v15, 0x20u);
  }

  if (v7 && ([*(a1 + 40) uniqueIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [*(a1 + 32) createPhoneInfoForUser:*(a1 + 40) cert:v7];
    v13 = [*(a1 + 32) phoneInfos];
    v14 = [*(a1 + 40) uniqueIdentifier];
    [v13 setObject:v12 forKeyedSubscript:v14];

    [v5 removeFromKeychain];
  }

  else
  {
    if (!v5)
    {
      v5 = sub_10092B4E0(*(a1 + 32), *(a1 + 40));
    }

    sub_10092B638(*(a1 + 32), v5);
  }

  sub_10092B740(*(a1 + 32));
}

void sub_1005B228C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cancelling in progress registration { registration: %@ }", &v9, 0xCu);
    }

    v6 = [a1 inProgressRegistrations];
    v7 = [v4 userUniqueIdentifier];
    [v6 setObject:0 forKeyedSubscript:v7];

    v8 = [a1 registrationController];
    [v8 cancelActionsForRegistrationInfo:v4];

    [v4 removeFromKeychain];
  }
}

void sub_1005B2C58(uint64_t a1, int *a2, int *a3)
{
  v5 = a1 - 32000;
  if ((a1 - 32000) >= 0x18)
  {
    v6 = a1;
    v7 = 20;
  }

  else
  {
    v6 = dword_1009ABE08[v5];
    v7 = dword_1009ABE68[v5];
  }

  v23 = +[FTNetworkSupport sharedInstance];
  v8 = [v23 validNetworkActive];
  v9 = [v23 validNetworkEnabled];
  v10 = [v23 validNetworkReachable];
  if (([v23 allowAnyNetwork] & 1) != 0 || (+[FTDeviceSupport sharedInstance](FTDeviceSupport, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "nonWifiFaceTimeAvailable"), v11, v12))
  {
    v13 = v9 & v8;
    if (v10)
    {
      v14 = v6;
    }

    else
    {
      v14 = 0;
    }

    if (v10)
    {
      v15 = v7;
    }

    else
    {
      v15 = 1;
    }

    v16 = v13 == 1;
    if (v13 == 1)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = 13;
    }

    if (a2)
    {
LABEL_19:
      *a2 = v18;
    }
  }

  else
  {
    v19 = v9 & v8;
    if (v10)
    {
      v20 = v6;
    }

    else
    {
      v20 = 0;
    }

    if (v10)
    {
      v21 = v7;
    }

    else
    {
      v21 = 1;
    }

    v22 = v19 == 1;
    if (v19 == 1)
    {
      v17 = v20;
    }

    else
    {
      v17 = 25;
    }

    if (v22)
    {
      v18 = v21;
    }

    else
    {
      v18 = 1;
    }

    if (a2)
    {
      goto LABEL_19;
    }
  }

  if (a3)
  {
    *a3 = v17;
  }
}

dispatch_queue_t sub_1005B4778()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("IDSAsyncMapperQueue", v0);

  return v1;
}

void sub_1005B4A24(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:v8];
        [*(a1 + 32) replaceObjectAtIndex:objc_msgSend(v8 withObject:{"unsignedIntegerValue"), v9}];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) copy];
  (*(v10 + 16))(v10, v11);
}

void sub_1005B4EF8(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 72);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005B4FE4;
  v7[3] = &unk_100BE0F20;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v10 = vextq_s8(v6, v6, 8uLL);
  (*(v2 + 16))(v2, v3, v4, v7);
}

void sub_1005B4FE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005B50AC;
  v7[3] = &unk_100BD7020;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = *(a1 + 56);
  v10 = *(a1 + 48);
  v11 = v5;
  v6 = v3;
  dispatch_barrier_async(v4, v7);
}

void sub_1005B50AC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    [*(a1 + 32) setObject:v2 forKey:*(a1 + 48)];
  }

  else
  {
    v4 = +[NSNull null];
    [v3 setObject:v4 forKey:*(a1 + 48)];
  }

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void sub_1005B5128(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_1005B6334(void *a1, char a2)
{
  if (a2)
  {
    v3 = +[IDSFoundationLog IDSOffGridMessenger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = a1[5];
      v6 = a1[6];
      v14 = 138412802;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Successfully saved client donated handles {destinationURIs: %@, fromURI: %@, options: %@}", &v14, 0x20u);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    v7 = IDSOffGridDeliveryErrorDomain;
    v20 = NSLocalizedDescriptionKey;
    v21 = @"Failed to save donated handles";
    v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v9 = [NSError errorWithDomain:v7 code:2 userInfo:v8];

    v10 = +[IDSFoundationLog IDSOffGridMessenger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v12 = a1[5];
      v13 = a1[6];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to save client donated handles {destinationURIs: %@, fromURI: %@, options: %@}", &v14, 0x20u);
    }

    (*(a1[7] + 16))();
  }
}

void sub_1005B6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = a10;
  v13 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (a6)
    {
      v14 = @"YES";
    }

    *buf = 138412546;
    v42 = v14;
    v43 = 2112;
    v44 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received query result with success {%@} and result {%@}", buf, 0x16u);
  }

  if (a6)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = *(a1 + 40);
    v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = *v35;
      *&v16 = 138412290;
      v32 = v16;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v34 + 1) + 8 * i);
          v21 = [v20 tokenFreeURI];
          v22 = [v12 objectForKeyedSubscript:v21];
          v23 = [v22 firstObject];
          v24 = [v23 shortHandle];

          v25 = [*(a1 + 32) objectForKey:v20];
          v26 = v25;
          if (v25)
          {
            if (v24)
            {
              [v25 setShortHandle:v24];
              v27 = 1;
            }

            else
            {
              v28 = +[IDSFoundationLog IDSOffGridMessenger];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v32;
                v42 = v21;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Missing short handle for %@ - returning status invalid", buf, 0xCu);
              }

              v27 = 2;
            }

            [v26 setStatus:v27];
            [*(a1 + 32) setObject:v26 forKey:v20];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v17);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v29 = IDSOffGridDeliveryErrorDomain;
    v39 = NSLocalizedDescriptionKey;
    v40 = @"Failed to query due to unsuccessful request";
    v30 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v31 = [NSError errorWithDomain:v29 code:6 userInfo:v30];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1005B7C04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) senderURI];
  v5 = [v3 objectForKey:v4];

  v6 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) senderURI];
    *buf = 138412546;
    v59 = v7;
    v60 = 2112;
    v61 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sender URI %@ has result %@", buf, 0x16u);
  }

  if (!v5 || [v5 status] != 1)
  {
    v20 = [*(a1 + 32) senderURI];
    v21 = [v20 prefixedURI];
    v11 = [NSString stringWithFormat:@"Failed to query for sender handle %@.", v21];

    v22 = *(a1 + 56);
    v23 = [NSError alloc];
    v24 = IDSOffGridDeliveryErrorDomain;
    v56 = NSLocalizedDescriptionKey;
    v57 = v11;
    v19 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v25 = v23;
    v26 = v24;
    v27 = 7;
LABEL_13:
    v28 = [v25 initWithDomain:v26 code:v27 userInfo:v19];
    (*(v22 + 16))(v22, 0, 0, v28);

    goto LABEL_14;
  }

  v8 = [v5 shortHandle];

  if (!v8)
  {
    v39 = [*(a1 + 32) senderURI];
    v40 = [v39 prefixedURI];
    v11 = [NSString stringWithFormat:@"No short handle for sender handle %@.", v40];

    v22 = *(a1 + 56);
    v41 = [NSError alloc];
    v42 = IDSOffGridDeliveryErrorDomain;
    v54 = NSLocalizedDescriptionKey;
    v55 = v11;
    v19 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v25 = v41;
    v26 = v42;
    v27 = 9;
    goto LABEL_13;
  }

  v9 = [v5 shortHandle];
  [*(a1 + 32) setSenderShortHandle:v9];

  v10 = [*(a1 + 32) recipientURI];
  v11 = [v3 objectForKey:v10];

  v12 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) recipientURI];
    *buf = 138412546;
    v59 = v13;
    v60 = 2112;
    v61 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Recipient URI %@ has result %@", buf, 0x16u);
  }

  if (!v11 || [v11 status] != 1)
  {
    v29 = [*(a1 + 32) recipientURI];
    v30 = [v29 prefixedURI];
    v19 = [NSString stringWithFormat:@"Failed to query for recipient handle %@.", v30];

    v31 = *(a1 + 56);
    v32 = [NSError alloc];
    v33 = IDSOffGridDeliveryErrorDomain;
    v52 = NSLocalizedDescriptionKey;
    v53 = v19;
    v34 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v35 = v32;
    v36 = v33;
    v37 = 8;
LABEL_16:
    v38 = [v35 initWithDomain:v36 code:v37 userInfo:v34];
    (*(v31 + 16))(v31, 0, 0, v38);

    goto LABEL_14;
  }

  v14 = [v11 shortHandle];

  if (!v14)
  {
    v43 = [*(a1 + 32) recipientURI];
    v44 = [v43 prefixedURI];
    v19 = [NSString stringWithFormat:@"No short handle for recipient handle %@.", v44];

    v31 = *(a1 + 56);
    v45 = [NSError alloc];
    v46 = IDSOffGridDeliveryErrorDomain;
    v50 = NSLocalizedDescriptionKey;
    v51 = v19;
    v34 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v35 = v45;
    v36 = v46;
    v37 = 9;
    goto LABEL_16;
  }

  v15 = [v11 shortHandle];
  [*(a1 + 32) setRecipientShortHandle:v15];

  v16 = *(a1 + 32);
  v17 = *(*(a1 + 40) + 8);
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1005B81E0;
  v47[3] = &unk_100BE0FB8;
  v18 = *(a1 + 48);
  v49 = *(a1 + 56);
  v48 = *(a1 + 32);
  [v17 sendOffGridMessage:v16 options:v18 completion:v47];

  v19 = v49;
LABEL_14:
}

void sub_1005B81E0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v6 = [NSString stringWithFormat:@"OffGrid message send resulted in an unknown error."];
    v7 = [NSError alloc];
    v8 = IDSOffGridDeliveryErrorDomain;
    v14 = NSLocalizedDescriptionKey;
    v15 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v5 = [v7 initWithDomain:v8 code:12 userInfo:v9];
  }

  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v13 = [v10 identifier];
  (*(v11 + 16))(v11, v10, v13, v5);
}

void sub_1005B8528(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 138412290;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v3 objectForKey:{v10, v17}];
        v12 = v11;
        if (v11 && [v11 status] == 1)
        {
          v13 = *(a1 + 40);
          v14 = [v12 shortHandle];
          [v13 addObject:v14];
        }

        else
        {
          v14 = +[IDSFoundationLog IDSOffGridMessenger];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v26 = v10;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "FetchRequest: Could not find short handle for %@", buf, 0xCu);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  v15 = *(a1 + 40);
  v16 = *(*(a1 + 48) + 8);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1005B876C;
  v18[3] = &unk_100BE0FB8;
  v20 = *(a1 + 56);
  v19 = *(a1 + 32);
  [v16 sendFetchRequestForHandles:v15 completion:v18];
}

uint64_t sub_1005B9E3C(uint64_t a1)
{
  if (*(*(a1 + 32) + 57))
  {
    v2 = 16;
  }

  else
  {
    v2 = 8;
  }

  v3 = CBPeripheralManager_ptr;
  if (!*(*(a1 + 32) + 57))
  {
    v3 = CBCentralManager_ptr;
  }

  v4 = [objc_alloc(*v3) initWithDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 88)];
  v5 = *(a1 + 32);
  v6 = *(v5 + v2);
  *(v5 + v2) = v4;

  v7 = [[CBScalablePipeManager alloc] initWithDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 88)];
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = v7;

  return _objc_release_x1(v7, v9);
}

id sub_1005B9F54(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = @"com.apple.ids";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unregister endpoint identifier: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = @"com.apple.ids";
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = @"com.apple.ids";
        _IDSLogV();
      }
    }
  }

  v3 = a1 + 32;
  [*(*(a1 + 32) + 24) unregisterEndpoint:{@"com.apple.ids", v15}];
  v4 = *(*(a1 + 32) + 24);
  *(*v3 + 24) = 0;

  v5 = *(*(a1 + 32) + 32);
  *(*v3 + 32) = 0;

  v6 = *(a1 + 32);
  if (*(v6 + 57))
  {
    v7 = [v6 nanoRegistryPluginManager];
    [v7 notifyWatchDidStopAdvertisingWithPeripheralManager:*(*(a1 + 32) + 16)];

    v8 = (*(a1 + 32) + 16);
    v9 = 16;
  }

  else
  {
    v8 = v6 + 1;
    v9 = 8;
  }

  [*v8 setDelegate:0];
  v10 = *(a1 + 32);
  v11 = *(v10 + v9);
  *(v10 + v9) = 0;

  [*(*(a1 + 32) + 40) removeAllObjects];
  if (![*(*(a1 + 32) + 40) count])
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
  }

  [*(*(a1 + 32) + 64) removeAllObjects];
  return [*(*(a1 + 32) + 112) removeAllObjects];
}

id sub_1005BA2B8(void *a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "removing a link %@ with linkID %@", buf, 0x16u);
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
        result = _IDSLogV();
      }
    }
  }

  if (a1[5])
  {
    return [*(a1[6] + 64) removeObjectForKey:?];
  }

  return result;
}

void sub_1005BA4A8(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v46 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "update paired device UUID to %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v35 = *(a1 + 32);
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v35 = *(a1 + 32);
        _IDSLogV();
      }
    }
  }

  v4 = *(a1 + 40);
  if ((*(v4 + 57) & 1) == 0)
  {
    if (*(v4 + 80) == 1)
    {
      [*(v4 + 8) cancelPeripheralConnection:*(v4 + 32)];
      *(*(a1 + 40) + 80) = 0;
      v4 = *(a1 + 40);
    }

    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    v4 = *(a1 + 40);
  }

  [*(v4 + 64) removeAllObjects];
  [*(*(a1 + 40) + 112) removeAllObjects];
  v39 = [*(*(a1 + 40) + 48) copy];
  v6 = [*(a1 + 32) copy];
  v7 = *(*(a1 + 40) + 48);
  *(*(a1 + 40) + 48) = v6;

  IMSetDomainValueForKey();
  v8 = *(a1 + 32);
  if (v8 && ([v8 isEqualToString:@"LOCAL-SETUP-STARTED"] & 1) == 0)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = *(*(a1 + 40) + 40);
    v9 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v9)
    {
      v10 = *v42;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v41 + 1) + 8 * i);
          v13 = [v12 peer];
          v14 = [v13 identifier];
          v15 = [v14 UUIDString];

          v16 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "processing pending pipe %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v37 = v15;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v37 = v15;
                _IDSLogV();
              }
            }
          }

          if ([*(a1 + 32) isEqualToString:{v15, v37}])
          {
            v19 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v46 = v15;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "pending pipe %@ matches to paired device", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v36 = v15;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v36 = v15;
                  _IDSLogV();
                }
              }
            }

            v20 = [[IDSBTLink alloc] initWithPipe:v12 useSkywalkChannel:*(*(a1 + 40) + 58) withDeviceUniqueID:0 cbuuid:v15];
            v21 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v46 = v20;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "BTLink %@ created", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v36 = v20;
              _IDSLogV();
            }

            if (v20)
            {
              [*(*(a1 + 40) + 64) setObject:v20 forKey:v15];
              v22 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v46 = v20;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "linkDidConnect:%@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v36 = v20;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v36 = v20;
                    _IDSLogV();
                  }
                }
              }

              WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 96));
              [WeakRetained manager:*(a1 + 40) linkDidConnect:v20];
            }

            else
            {
              v24 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v46 = v15;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "could not create a BTLink for %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v36 = v15;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v36 = v15;
                    _IDSLogV();
                  }
                }
              }
            }

            v18 = 1;
            goto LABEL_60;
          }

          v17 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "pending pipe %@ doesn't match to paired device - releasing it", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v36 = v15;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v36 = v15;
                _IDSLogV();
              }
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_60:

    v25 = [(IDSBTLink *)v39 isEqualToString:@"LOCAL-SETUP-STARTED"];
    [*(*(a1 + 40) + 40) removeAllObjects];
    if (![*(*(a1 + 40) + 40) count])
    {
      v26 = *(a1 + 40);
      v27 = *(v26 + 40);
      *(v26 + 40) = 0;
    }

    v28 = *(a1 + 40);
    if (((v18 | v25) & 1) == 0 && (v28[57] & 1) == 0)
    {
      v29 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 32);
        *buf = 138412546;
        v46 = v39;
        v47 = 2112;
        v48 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Change paired device from %@ to %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v36 = v39;
          v38 = *(a1 + 32);
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v36 = v39;
            v38 = *(a1 + 32);
            _IDSLogV();
          }
        }
      }

      *(*(a1 + 40) + 56) = 0;
      *(*(a1 + 40) + 81) = 0;
      v31 = objc_loadWeakRetained((*(a1 + 40) + 96));
      v32 = objc_opt_respondsToSelector();

      if (v32)
      {
        v33 = objc_loadWeakRetained((*(a1 + 40) + 96));
        [v33 manager:*(a1 + 40) didPairedDeviceChange:1];
      }

      [*(a1 + 40) obliterateConnectionInfo];
      [*(a1 + 40) stop];
      [*(a1 + 40) start];
      v28 = *(a1 + 40);
    }

    if ((v28[57] & 1) == 0 && (v28[80] & 1) == 0 && v28[56] == 1)
    {
      v34 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Pipe is registered but not connecting, connect now.", buf, 2u);
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

      [*(a1 + 40) _connectNow];
    }
  }
}

void sub_1005BAFE8(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "obliterateConnectionInfo called", v7, 2u);
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

  v3 = *(a1 + 32);
  if ((*(v3 + 57) & 1) == 0)
  {
    if (*(v3 + 80) == 1)
    {
      [*(v3 + 8) cancelPeripheralConnection:*(v3 + 32)];
      *(*(a1 + 32) + 80) = 0;
      v3 = *(a1 + 32);
    }

    v4 = *(v3 + 32);
    *(v3 + 32) = 0;

    v3 = *(a1 + 32);
  }

  [*(v3 + 64) removeAllObjects];
  [*(*(a1 + 32) + 112) removeAllObjects];
  IMSetDomainValueForKey();
  [*(*(a1 + 32) + 40) removeAllObjects];
  if (![*(*(a1 + 32) + 40) count])
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void sub_1005BB204(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 24))
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      if (([v3 isEqualToString:@"LOCAL-SETUP-STARTED"] & 1) == 0)
      {
        v4 = +[IDSLinkPreferencesManager sharedInstance];
        v5 = [v4 accumulativePreferencesForAllServices];

        v6 = [v5 objectForKey:@"PacketsPerSecond"];
        v7 = [v5 objectForKey:@"InputBytesPerSecond"];
        v21 = [v5 objectForKey:@"OutputBytesPerSecond"];
        v8 = [v5 objectForKey:@"Intent"];
        if ([v8 isEqualToString:@"forceBTClassic"] && objc_msgSend(v6, "unsignedIntValue") <= 0xC7)
        {

          v6 = &off_100C3CD00;
        }

        v9 = [[NSUUID alloc] initWithUUIDString:*(*(a1 + 32) + 48)];
        if (v9)
        {
          v10 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(a1 + 40);
            *buf = 138544386;
            v23 = v11;
            v24 = 1024;
            v25 = [v6 unsignedIntValue];
            v26 = 1024;
            v27 = [v7 unsignedIntValue];
            v28 = 1024;
            v29 = [v21 unsignedIntValue];
            v30 = 2114;
            v31 = v8;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setLinkRequirementsForPeer: service: %{public}@, pps: %d input bps: %d output bps: %d intent: %{public}@", buf, 0x28u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v12 = *(a1 + 40);
              v13 = [v6 unsignedIntValue];
              v14 = [v7 unsignedIntValue];
              v20 = [v21 unsignedIntValue];
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                [v6 unsignedIntValue];
                [v7 unsignedIntValue];
                [v21 unsignedIntValue];
                _IDSLogV();
              }
            }
          }

          v15 = &stru_100C06028;
          if (*(a1 + 40))
          {
            v15 = *(a1 + 40);
          }

          v16 = *(*(a1 + 32) + 24);
          v17 = v15;
          [v16 setLinkRequirementsForPeer:v9 withClientName:v17 packetsPerSecond:objc_msgSend(v6 inputBytesPerSecond:"unsignedIntValue") outputBytesPerSecond:{objc_msgSend(v7, "unsignedIntValue"), objc_msgSend(v21, "unsignedIntValue")}];
        }

        else
        {
          v18 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(*(a1 + 32) + 48);
            *buf = 138412290;
            v23 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "setLinkRequirementsForPeer failed due to invalid pipe identifier:%@.", buf, 0xCu);
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
    }
  }
}

void sub_1005BB6DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [@"com.apple.ids.datagram" stringByAppendingFormat:@".%@", @"default"];
  [v1 startDatagramLinkWithEndpointIdentifier:v2];
}

void sub_1005BB7C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [@"com.apple.ids.datagram" stringByAppendingFormat:@".%@", @"default"];
  [v1 stopDatagramLinkWithEndpointIdentifier:v2];
}

void sub_1005BB8C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [@"com.apple.ids.datagram" stringByAppendingFormat:@".%@", *(a1 + 40)];
  [v1 startDatagramLinkWithEndpointIdentifier:v2];
}

void sub_1005BB9C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [@"com.apple.ids.datagram" stringByAppendingFormat:@".%@", *(a1 + 40)];
  [v1 stopDatagramLinkWithEndpointIdentifier:v2];
}

BOOL sub_1005C03DC()
{
  v0 = +[IDSPairingManager sharedInstance];
  v1 = [v0 pairedDeviceProductVersion];

  [v1 floatValue];
  v4 = v2 >= 11.0 && v2 > 0.0;

  return v4;
}

void sub_1005C11C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005C11F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _annouceAvailabilityForCloudMessaging];
    WeakRetained = v2;
  }
}

uint64_t sub_1005C2038(uint64_t a1)
{
  result = 0;
  if (a1 <= 499)
  {
    if (a1 > 200)
    {
      if (a1 > 299)
      {
        switch(a1)
        {
          case 300:
            return 8;
          case 301:
            return 9;
          case 400:
            return 10;
        }
      }

      else
      {
        switch(a1)
        {
          case 201:
            return 6;
          case 202:
            return 14;
          case 250:
            return 7;
        }
      }
    }

    else if (a1 > 109)
    {
      switch(a1)
      {
        case 110:
          return 3;
        case 120:
          return 4;
        case 200:
          return 5;
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          return result;
        case 100:
          return 1;
        case 101:
          return 2;
      }
    }
  }

  else if (a1 <= 801)
  {
    if (a1 > 600)
    {
      switch(a1)
      {
        case 601:
          return 13;
        case 800:
          return 15;
        case 801:
          return 16;
      }
    }

    else
    {
      switch(a1)
      {
        case 500:
          return 11;
        case 501:
          return result;
        case 600:
          return 12;
      }
    }
  }

  else if (a1 <= 899)
  {
    switch(a1)
    {
      case 802:
        return 17;
      case 803:
        return 18;
      case 804:
        return 19;
    }
  }

  else
  {
    if (a1 <= 901)
    {
      if (a1 == 900)
      {
        return 21;
      }

      else
      {
        return 20;
      }
    }

    if (a1 == 902)
    {
      return 23;
    }

    if (a1 == 903)
    {
      return 22;
    }
  }

  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v5 = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "IDSEncryptionErrorType unknown/unhandled error type: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
  }

  return a1;
}

uint64_t sub_1005C2330(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v3 = [v1 domain];
  v4 = [v3 isEqualToString:IDSEncryptionErrorDomain];

  if ((v4 & 1) == 0)
  {
    v7 = +[IDSFoundationLog encryptionController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10092BD4C(v2, v7);
    }

    goto LABEL_8;
  }

  v5 = [v2 code];
  if ((v5 - 2) > 0x14)
  {
    v6 = 600;
  }

  else
  {
    v6 = qword_1009ABED0[(v5 - 2)];
  }

LABEL_9:

  return v6;
}

uint64_t sub_1005C23F8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  v3 = [v1 domain];
  v4 = [v3 isEqualToString:IDSDecryptionErrorDomain];

  if ((v4 & 1) == 0)
  {
    v7 = +[IDSFoundationLog encryptionController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10092BD4C(v2, v7);
    }

    goto LABEL_12;
  }

  v5 = [v2 code];
  v6 = 200;
  if (v5 <= 14)
  {
    if (v5 != 2)
    {
      if (v5 != 5)
      {
        goto LABEL_13;
      }

LABEL_16:
      v6 = 202;
      goto LABEL_13;
    }

    v13 = [v2 userInfo];
    v10 = [v13 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (v10)
    {
      v14 = [v10 domain];
      if ([v14 isEqualToString:IDSPeerIDManagerErrorDomain])
      {
        if ([v10 code] == 3)
        {

LABEL_31:
          v6 = 202;
          goto LABEL_32;
        }

        v15 = [v10 code];

        if (v15 == 4)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }
    }

    v6 = 601;
    goto LABEL_32;
  }

  switch(v5)
  {
    case 15:
      v9 = [v2 userInfo];
      v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (v10)
      {
        v11 = [v10 domain];
        if ([v11 isEqualToString:@"com.apple.messageprotection"])
        {
          v12 = [v10 code];

          if (v12 == 5)
          {
            v6 = 202;
          }

          else
          {
            v6 = 200;
          }

          goto LABEL_32;
        }
      }

      v6 = 200;
LABEL_32:

      break;
    case 17:
      goto LABEL_16;
    case 18:
      v6 = 901;
      break;
  }

LABEL_13:

  return v6;
}

uint64_t sub_1005C25FC(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:IDSNGMDeviceIdentityIdentifier])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:IDSSecondaryIdentityIdentifier])
  {
    v2 = 5;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_1005C26A8(id a1)
{
  v1 = objc_alloc_init(IDSEncryptionController);
  v2 = qword_100CBF118;
  qword_100CBF118 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1005C2E54(unint64_t a1)
{
  if (a1 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(&off_100BE1190 + a1);
  }

  return v2;
}

void sub_1005C2FF0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = [v9 pushToken];
  (*(v8 + 16))(v8, v14, v13 != 0, v13, v12, v11, v10);
}

void sub_1005C362C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v15 = [v9 sendingPushToken];
  v14 = [v15 rawToken];
  (*(v8 + 16))(v8, v14, v13 != 0, v13, v12, v11, v10);
}

void sub_1005C4668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005C4680(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) fullDeviceIdentityContainer];
  v3 = +[IDSPeerIDManager sharedInstance];
  v4 = [v3 endpointForPushToken:*(a1 + 40) URI:*(a1 + 48) service:*(a1 + 56) fromURI:*(a1 + 64)];

  v5 = [v4 publicDeviceIdentityContainer];
  if (!v4)
  {
    v6 = +[IDSPublicIdentityCache sharedInstance];
    v7 = [*(a1 + 40) rawToken];
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v22 = 0;
    v10 = [v6 identityForToken:v7 uri:v8 service:v9 error:&v22];
    v11 = v22;

    v5 = v10;
  }

  if (v2)
  {
    v12 = v5 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = +[IDSFoundationLog encryptionController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);
      v17 = *(a1 + 40);
      v16 = *(a1 + 48);
      *buf = 138413571;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2113;
      v28 = v2;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      v33 = 2113;
      v34 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling into markForStateReset with ourURI: %@, ourPushToken: %@, ourSigningIdentity: %{private}@, theirURI: %@, theirPushToken: %@, theirPublicDeviceIdentity: %{private}@", buf, 0x3Eu);
    }

    v18 = [*(a1 + 64) prefixedURI];
    v19 = [*(a1 + 72) rawToken];
    v20 = [*(a1 + 48) prefixedURI];
    v21 = [*(a1 + 40) rawToken];
    *(*(*(a1 + 80) + 8) + 24) = [v5 markForStateResetWithOurURI:v18 ourPushToken:v19 ourSigningIdentity:v2 theirURI:v20 theirPushToken:v21];
  }
}

void sub_1005C4B40(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 40);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = [IDSDecryptionMetadata alloc];
  v15 = *(a1 + 48);
  if (v15 > 3)
  {
    v16 = 2;
  }

  else
  {
    v16 = qword_1009ABF78[v15];
  }

  v17 = [v10 usedLastResortCache];
  v18 = [v10 usedCachedData];

  v19 = [(IDSDecryptionMetadata *)v14 initWithEncryptionType:v16 usedLastResortCache:v17 usedCachedData:v18];
  (*(v9 + 16))(v9, v13, v12, v11, v19);
}

void sub_1005C4DBC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 40);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = [IDSDecryptionMetadata alloc];
  v15 = *(a1 + 48);
  if (v15 > 3)
  {
    v16 = 2;
  }

  else
  {
    v16 = qword_1009ABF78[v15];
  }

  v17 = [v10 usedLastResortCache];
  v18 = [v10 usedCachedData];
  v20 = [v10 additionalDecryptionResult];

  v19 = [(IDSDecryptionMetadata *)v14 initWithEncryptionType:v16 usedLastResortCache:v17 usedCachedData:v18 additionalDecryptionResult:v20];
  (*(v9 + 16))(v9, v13, v12, v11, v19);
}

void sub_1005C588C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1005C58D8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) OTRController];
  v4 = [*v2 OTRToken];
  v5 = [v3 copySessionObjectForToken:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    v19 = 0;
    v7 = [v5 signAndProtectMessage:v6 withError:&v19];
    v8 = v19;
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;

    if (v8)
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "   OTR encryption failed with error: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 32) OTRToken];
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not find OTR session for token: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v16 = [*(a1 + 32) OTRToken];
      _IDSWarnV();

      v17 = [*(a1 + 32) OTRToken];
      _IDSLogV();

      v18 = [*(a1 + 32) OTRToken];
      _IDSLogTransport();
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void sub_1005C5F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1005C5F54(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) OTRController];
  v4 = [*v2 OTRToken];
  v5 = [v3 copySessionObjectForToken:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    v19 = 0;
    v7 = [v5 verifyAndExposeMessage:v6 withError:&v19];
    v8 = v19;
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;

    if (v8)
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "   OTR decryption failed with error: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 32) OTRToken];
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not find OTR session for token: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v16 = [*(a1 + 32) OTRToken];
      _IDSWarnV();

      v17 = [*(a1 + 32) OTRToken];
      _IDSLogV();

      v18 = [*(a1 + 32) OTRToken];
      _IDSLogTransport();
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void sub_1005C6A3C(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionInfoWithState:1];
  if (!v2)
  {
    v2 = [*(a1 + 32) connectionInfoWithState:0];
    if (!v2)
    {
      v2 = objc_alloc_init(_IDSSessionConnectionInfo);
      v3 = *(*(a1 + 32) + 16);
      if (!v3)
      {
        v4 = objc_alloc_init(NSMutableArray);
        v5 = *(a1 + 32);
        v6 = *(v5 + 16);
        *(v5 + 16) = v4;

        v3 = *(*(a1 + 32) + 16);
      }

      [v3 addObject:v2];
    }
  }

  v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:*(a1 + 40) error:0];
  [v7 setDecodingFailurePolicy:0];
  [v7 _enableStrictSecureDecodingMode];
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v10 = [v7 decodeObjectOfClasses:v9 forKey:@"connectionData"];
  v11 = [v7 decodeObjectOfClasses:v9 forKey:@"skeData"];
  v12 = [v7 decodeObjectOfClasses:v9 forKey:@"callInfoData"];
  v13 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"cn"];
  [(_IDSSessionConnectionInfo *)v2 setRemoteSKEData:v11];
  [(_IDSSessionConnectionInfo *)v2 setRemoteICEData:v10];
  [(_IDSSessionConnectionInfo *)v2 setRemoteCallInfoData:v12];
  [(_IDSSessionConnectionInfo *)v2 setPeerCN:v13];
  [v7 finishDecoding];
}

void sub_1005C6C68(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(v11 + 40);
      LODWORD(buf) = 138412546;
      *(&buf + 4) = v14;
      WORD6(buf) = 2112;
      *(&buf + 14) = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Exception caught unarchiving DDResult data: %@   Exception: %@", &buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    objc_end_catch();
    JUMPOUT(0x1005C6C28);
  }

  _Unwind_Resume(a1);
}

void sub_1005C6FC0(uint64_t a1)
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = objc_retainBlock(*(a1 + 40));
    v5 = *(*(a1 + 32) + 8);
    *buf = 67109634;
    v33 = v3;
    v34 = 2048;
    v35 = v4;
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_connectionQueue: createConnectionData: requiresWifi = %d, dataReadyHandler = %p, _connection = %@", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = *(a1 + 56);
    v25 = objc_retainBlock(*(a1 + 40));
    v27 = *(*(a1 + 32) + 8);
    v23 = v6;
    _IDSLogV();
  }

  v7 = [*(a1 + 32) connectionInfoWithState:{0, v23, v25, v27}];
  if (!v7)
  {
    v7 = objc_alloc_init(_IDSSessionConnectionInfo);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1005C73C4;
  v28[3] = &unk_100BE11E0;
  v8 = v7;
  v9 = *(a1 + 32);
  v29 = v8;
  v30 = v9;
  v31 = *(a1 + 48);
  v10 = objc_retainBlock(v28);
  -[_IDSSessionConnectionInfo setCallID:](v8, "setCallID:", [*(*(a1 + 32) + 8) initializeNewCall]);
  [(_IDSSessionConnectionInfo *)v8 setState:1];
  v11 = *(*(a1 + 32) + 16);
  if (!v11)
  {
    v12 = objc_alloc_init(NSMutableArray);
    v13 = *(a1 + 32);
    v14 = *(v13 + 16);
    *(v13 + 16) = v12;

    v11 = *(*(a1 + 32) + 16);
  }

  [v11 addObject:v8];
  v15 = sub_1005C7CD4(v8);
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(_IDSSessionConnectionInfo *)v8 callID];
    v18 = [(_IDSSessionConnectionInfo *)v8 peerCN];
    *buf = 67109378;
    v33 = v17;
    v34 = 2112;
    v35 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_connectionQueue: calling inviteDictionaryForCallID for callID = %d, [connectionInfo peerCN] = %@ ", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = [(_IDSSessionConnectionInfo *)v8 callID];
    [(_IDSSessionConnectionInfo *)v8 peerCN];
    v26 = v24 = v19;
    _IDSLogV();
  }

  v20 = [(_IDSSessionConnectionInfo *)v8 peerCN:v24];

  if (v20)
  {
    v21 = *(*(a1 + 32) + 8);
    v22 = [(_IDSSessionConnectionInfo *)v8 peerCN];
    [v21 setPeerCN:v22 callID:{-[_IDSSessionConnectionInfo callID](v8, "callID")}];
  }

  [*(*(a1 + 32) + 8) inviteDictionaryForCallID:-[_IDSSessionConnectionInfo callID](v8 remoteInviteDictionary:"callID") nonCellularCandidateTimeout:v15 block:v10 queue:{*(*(a1 + 32) + 24), 0.0}];
}

void sub_1005C73C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = v5;
    v43 = 2112;
    v44 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "   AV Response: %@   Error: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v35 = v5;
    v36 = v6;
    _IDSLogV();
  }

  if (!qword_100CBF258)
  {
    v8 = IMWeakLinkSymbol();
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    objc_storeStrong(&qword_100CBF258, v9);
  }

  if (!qword_100CBF260)
  {
    v10 = IMWeakLinkSymbol();
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&qword_100CBF260, v11);
  }

  if (!qword_100CBF268)
  {
    v12 = IMWeakLinkSymbol();
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&qword_100CBF268, v13);
  }

  if (qword_100CBF260)
  {
    v14 = [v5 objectForKey:qword_100CBF258];
  }

  else
  {
    v14 = 0;
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v42 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Got connection data: %p", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v35 = v14;
    _IDSLogV();
  }

  if (v6)
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Connection data error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v35 = v6;
      _IDSLogTransport();
    }
  }

  if (!qword_100CBF260 || ([v5 objectForKey:?], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = [*(a1 + 32) remoteSKEData];
    if (v18)
    {
    }

    else
    {
      v20 = [*(a1 + 32) remoteICEData];
      v21 = v20 == 0;

      if (!v21)
      {
LABEL_43:
        v17 = 0;
        goto LABEL_44;
      }
    }

    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "skeData was nil", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    goto LABEL_43;
  }

LABEL_44:
  if (!qword_100CBF268 || ([v5 objectForKey:?], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v23 = [*(a1 + 32) remoteCallInfoData];
    if (v23)
    {
    }

    else
    {
      v25 = [*(a1 + 32) remoteCallInfoData];
      v26 = v25 == 0;

      if (!v26)
      {
LABEL_53:
        v22 = 0;
        goto LABEL_54;
      }
    }

    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "callInfoData was nil", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    goto LABEL_53;
  }

LABEL_54:
  [*(a1 + 32) setLocalSKEData:v17];
  [*(a1 + 32) setLocalICEData:v14];
  [*(a1 + 32) setLocalCallInfoData:v22];
  if (v6)
  {
    [*(a1 + 32) setState:4];
    [*(*(a1 + 40) + 8) stopCallID:{objc_msgSend(*(a1 + 32), "callID")}];
  }

  v27 = [*(a1 + 32) localCN];
  v28 = v14;
  v29 = v17;
  v30 = v22;
  v31 = v27;
  if (v28 | v29)
  {
    v32 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
    [v32 encodeObject:v28 forKey:@"connectionData"];
    [v32 encodeObject:v29 forKey:@"skeData"];
    [v32 encodeObject:v30 forKey:@"callInfoData"];
    [v32 encodeObject:v31 forKey:@"cn"];
    v33 = [v32 encodedData];
  }

  else
  {
    v33 = 0;
  }

  if (*(a1 + 48))
  {
    v34 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005C7CBC;
    block[3] = &unk_100BDA5A8;
    v40 = *(a1 + 48);
    v38 = v33;
    v39 = v6;
    dispatch_async(v34, block);
  }
}

id sub_1005C7CD4(void *a1)
{
  v1 = a1;
  if (!qword_100CBF258)
  {
    v2 = IMWeakLinkSymbol();
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    objc_storeStrong(&qword_100CBF258, v3);
  }

  if (!qword_100CBF260)
  {
    v4 = IMWeakLinkSymbol();
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong(&qword_100CBF260, v5);
  }

  if (!qword_100CBF268)
  {
    v6 = IMWeakLinkSymbol();
    if (v6)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&qword_100CBF268, v7);
  }

  v8 = [v1 remoteSKEData];
  if (v8)
  {
  }

  else
  {
    Mutable = [v1 remoteICEData];

    if (!Mutable)
    {
      goto LABEL_26;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10 = [v1 remoteSKEData];
  if (v10)
  {
    CFDictionarySetValue(Mutable, qword_100CBF260, v10);
  }

  v11 = [v1 remoteICEData];
  if (v11)
  {
    CFDictionarySetValue(Mutable, qword_100CBF258, v11);
  }

  v12 = [v1 remoteCallInfoData];
  if (v12)
  {
    CFDictionarySetValue(Mutable, qword_100CBF268, v12);
  }

LABEL_26:

  return Mutable;
}

void sub_1005C7F50(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionInfoWithState:1];
  if (!v2)
  {
    v2 = [*(a1 + 32) connectionInfoWithState:0];
  }

  v3 = sub_1005C7CD4(v2);
  v4 = *(*(a1 + 32) + 73);
  v5 = objc_alloc_init(qword_100CBF280);
  [v5 setIsKeyExchangeEnabled:1];
  [v5 setIsAudioEnabled:v4];
  [v5 setIsVideoEnabled:0];
  [v5 setIsDTLSEnabled:1];
  if (MarcoShouldLogCheckpoints())
  {
    MarcoNoteCheckpoint();
  }

  [v2 setState:2];
  v6 = [v2 peerCN];

  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = [v2 peerCN];
    [v7 setPeerCN:v8 callID:{objc_msgSend(v2, "callID")}];
  }

  [*(*(a1 + 32) + 8) setPeerProtocolVersion:*(a1 + 48) > 1u forCallID:{objc_msgSend(v2, "callID")}];
  v9 = *(*(a1 + 32) + 8);
  v10 = [v2 callID];
  v11 = *(a1 + 52);
  v17 = 0;
  [v9 startConnectionWithCallID:v10 usingInviteData:v3 isCaller:v11 relayResponseDict:0 didOriginateRelayRequest:0 capabilities:v5 error:&v17];
  v12 = v17;
  if (v12)
  {
    (*(*(a1 + 40) + 16))();
  }

  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
    *buf = 138413570;
    v19 = v16;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v2;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling startConnectionWithCallID %@, %@, connectionInfo = %@, startError = %@, connectionInfos = %@, [connectionInfo remoteInviteData] = %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

void sub_1005C82BC(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setState:{4, v8}];
        [*(*(a1 + 32) + 8) stopCallID:{objc_msgSend(v7, "callID")}];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_1005C8474(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    if (*(a1 + 40))
    {

      return [v2 sendData:? forCallID:? encrypted:?];
    }

    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No data to send, bailing...", v6, 2u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV();
      }
    }
  }

  else
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No connection, bailing...", buf, 2u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV();
      }
    }
  }

  return result;
}

void sub_1005C8784(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = im_primary_queue();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1005C8854;
    v6[3] = &unk_100BD6E40;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v5;
    dispatch_async(v4, v6);
  }
}

void sub_1005C8854(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained connection:*(a1 + 32) receivedData:*(a1 + 40)];
}

void sub_1005C8954(uint64_t a1)
{
  if (qword_100CBF130)
  {
    v2 = [*(a1 + 32) objectForKey:?];
  }

  else
  {
    v2 = 0;
  }

  if (qword_100CBF120)
  {
    v3 = [*(a1 + 32) objectForKey:?];
    v4 = (a1 + 40);
    *(*(a1 + 40) + 40) = [v3 integerValue];
  }

  else
  {
    v4 = (a1 + 40);
    *(*(a1 + 40) + 40) = 0;
  }

  v5 = [*v4 connectionInfoForCallID:*(*v4 + 5)];
  if (qword_100CBF128)
  {
    v6 = [*(a1 + 32) objectForKey:?];
    *(*(a1 + 40) + 48) = [v6 integerValue];
  }

  else
  {
    *(*v4 + 6) = 0;
  }

  if (qword_100CBF138)
  {
    v7 = [*(a1 + 32) objectForKey:?];
    *(*(a1 + 40) + 56) = [v7 integerValue];
  }

  else
  {
    *(*v4 + 7) = 0;
  }

  if (qword_100CBF140)
  {
    v8 = [*(a1 + 32) objectForKey:?];
    *(*(a1 + 40) + 64) = [v8 integerValue];
  }

  else
  {
    *(*v4 + 8) = 0;
  }

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 48);
    v11 = *(*(a1 + 40) + 40);
    *buf = 67109634;
    v22 = v10;
    v23 = 1024;
    *v24 = v11;
    *&v24[4] = 2112;
    *&v24[6] = v2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "didStartSession %d for callID %d, error = %@", buf, 0x18u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (v5)
  {
    v12 = *(a1 + 40);
    if (*(a1 + 48))
    {
      *(v12 + 72) = 1;
      [v5 setState:3];
      v13 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1005C8E04;
      block[3] = &unk_100BD6ED0;
      block[4] = *v4;
      dispatch_async(v13, block);
    }

    else
    {
      *(v12 + 72) = 0;
      [v5 setState:4];
      v17 = im_primary_queue();
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1005C8DAC;
      v19[3] = &unk_100BD6E40;
      v19[4] = *v4;
      v20 = v2;
      dispatch_async(v17, v19);
    }
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*v4 + 5);
      v16 = *(*v4 + 2);
      *buf = 67109378;
      v22 = v15;
      v23 = 2112;
      *v24 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "didStartSession returned a callID we do not recognize %d, what we have %@", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_1005C8DAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained connection:*(a1 + 32) didStart:0 error:*(a1 + 40)];
}

void sub_1005C8E04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained connection:*(a1 + 32) didStart:1 error:0];
}

void sub_1005C8F08(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionInfoForCallID:*(a1 + 48)];
  if (v2)
  {
    *(*(a1 + 32) + 72) = 0;
    v3 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005C90E8;
    block[3] = &unk_100BD6E40;
    block[4] = *(a1 + 32);
    v8 = *(a1 + 40);
    dispatch_async(v3, block);
  }

  else
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = *(*(a1 + 32) + 16);
      *buf = 67109378;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "didStopWithCallID returned a callID we do not recognize %d, what we have %@", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_1005C90E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained connectionDidStop:*(a1 + 32) error:*(a1 + 40)];
}

void sub_1005C9170(id a1)
{
  qword_100CBF270 = IMWeakLinkClass();
  qword_100CBF280 = IMWeakLinkClass();
  if (!qword_100CBF148)
  {
    v1 = IMWeakLinkSymbol();
    if (v1)
    {
      v2 = *v1;
    }

    else
    {
      v2 = 0;
    }

    objc_storeStrong(&qword_100CBF148, v2);
  }

  if (!qword_100CBF150)
  {
    v3 = IMWeakLinkSymbol();
    if (v3)
    {
      v4 = *v3;
    }

    else
    {
      v4 = 0;
    }

    objc_storeStrong(&qword_100CBF150, v4);
  }

  if (!qword_100CBF158)
  {
    v5 = IMWeakLinkSymbol();
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(&qword_100CBF158, v6);
  }

  if (!qword_100CBF160)
  {
    v7 = IMWeakLinkSymbol();
    if (v7)
    {
      v8 = *v7;
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&qword_100CBF160, v8);
  }

  if (!qword_100CBF168)
  {
    v9 = IMWeakLinkSymbol();
    if (v9)
    {
      v10 = *v9;
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&qword_100CBF168, v10);
  }

  if (!qword_100CBF170)
  {
    v11 = IMWeakLinkSymbol();
    if (v11)
    {
      v12 = *v11;
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&qword_100CBF170, v12);
  }

  if (!qword_100CBF178)
  {
    v13 = IMWeakLinkSymbol();
    if (v13)
    {
      v14 = *v13;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&qword_100CBF178, v14);
  }

  if (!qword_100CBF180)
  {
    v15 = IMWeakLinkSymbol();
    if (v15)
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&qword_100CBF180, v16);
  }

  if (!qword_100CBF188)
  {
    v17 = IMWeakLinkSymbol();
    if (v17)
    {
      v18 = *v17;
    }

    else
    {
      v18 = 0;
    }

    objc_storeStrong(&qword_100CBF188, v18);
  }

  if (!qword_100CBF190)
  {
    v19 = IMWeakLinkSymbol();
    if (v19)
    {
      v20 = *v19;
    }

    else
    {
      v20 = 0;
    }

    objc_storeStrong(&qword_100CBF190, v20);
  }

  if (!qword_100CBF198)
  {
    v21 = IMWeakLinkSymbol();
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&qword_100CBF198, v22);
  }

  if (!qword_100CBF1A0)
  {
    v23 = IMWeakLinkSymbol();
    if (v23)
    {
      v24 = *v23;
    }

    else
    {
      v24 = 0;
    }

    objc_storeStrong(&qword_100CBF1A0, v24);
  }

  if (!qword_100CBF1A8)
  {
    v25 = IMWeakLinkSymbol();
    if (v25)
    {
      v26 = *v25;
    }

    else
    {
      v26 = 0;
    }

    objc_storeStrong(&qword_100CBF1A8, v26);
  }

  if (!qword_100CBF1B0)
  {
    v27 = IMWeakLinkSymbol();
    if (v27)
    {
      v28 = *v27;
    }

    else
    {
      v28 = 0;
    }

    objc_storeStrong(&qword_100CBF1B0, v28);
  }

  if (!qword_100CBF1B8)
  {
    v29 = IMWeakLinkSymbol();
    if (v29)
    {
      v30 = *v29;
    }

    else
    {
      v30 = 0;
    }

    objc_storeStrong(&qword_100CBF1B8, v30);
  }

  if (!qword_100CBF1C0)
  {
    v31 = IMWeakLinkSymbol();
    if (v31)
    {
      v32 = *v31;
    }

    else
    {
      v32 = 0;
    }

    objc_storeStrong(&qword_100CBF1C0, v32);
  }

  if (!qword_100CBF1C8)
  {
    v33 = IMWeakLinkSymbol();
    if (v33)
    {
      v34 = *v33;
    }

    else
    {
      v34 = 0;
    }

    objc_storeStrong(&qword_100CBF1C8, v34);
  }

  if (!qword_100CBF1D0)
  {
    v35 = IMWeakLinkSymbol();
    if (v35)
    {
      v36 = *v35;
    }

    else
    {
      v36 = 0;
    }

    objc_storeStrong(&qword_100CBF1D0, v36);
  }

  if (!qword_100CBF1D8)
  {
    v37 = IMWeakLinkSymbol();
    if (v37)
    {
      v38 = *v37;
    }

    else
    {
      v38 = 0;
    }

    objc_storeStrong(&qword_100CBF1D8, v38);
  }

  if (!qword_100CBF1E0)
  {
    v39 = IMWeakLinkSymbol();
    if (v39)
    {
      v40 = *v39;
    }

    else
    {
      v40 = 0;
    }

    objc_storeStrong(&qword_100CBF1E0, v40);
  }

  if (!qword_100CBF128)
  {
    v41 = IMWeakLinkSymbol();
    if (v41)
    {
      v42 = *v41;
    }

    else
    {
      v42 = 0;
    }

    objc_storeStrong(&qword_100CBF128, v42);
  }

  if (!qword_100CBF130)
  {
    v43 = IMWeakLinkSymbol();
    if (v43)
    {
      v44 = *v43;
    }

    else
    {
      v44 = 0;
    }

    objc_storeStrong(&qword_100CBF130, v44);
  }

  if (!qword_100CBF120)
  {
    v45 = IMWeakLinkSymbol();
    if (v45)
    {
      v46 = *v45;
    }

    else
    {
      v46 = 0;
    }

    objc_storeStrong(&qword_100CBF120, v46);
  }

  if (!qword_100CBF138)
  {
    v47 = IMWeakLinkSymbol();
    if (v47)
    {
      v48 = *v47;
    }

    else
    {
      v48 = 0;
    }

    objc_storeStrong(&qword_100CBF138, v48);
  }

  if (!qword_100CBF140)
  {
    v49 = IMWeakLinkSymbol();
    if (v49)
    {
      v50 = *v49;
    }

    else
    {
      v50 = 0;
    }

    objc_storeStrong(&qword_100CBF140, v50);
  }

  if (!qword_100CBF1E8)
  {
    v51 = IMWeakLinkSymbol();
    if (v51)
    {
      v52 = *v51;
    }

    else
    {
      v52 = 0;
    }

    objc_storeStrong(&qword_100CBF1E8, v52);
  }

  if (!qword_100CBF200)
  {
    v53 = IMWeakLinkSymbol();
    if (v53)
    {
      v54 = *v53;
    }

    else
    {
      v54 = 0;
    }

    objc_storeStrong(&qword_100CBF200, v54);
  }

  if (!qword_100CBF1F0)
  {
    v55 = IMWeakLinkSymbol();
    if (v55)
    {
      v56 = *v55;
    }

    else
    {
      v56 = 0;
    }

    objc_storeStrong(&qword_100CBF1F0, v56);
  }

  if (!qword_100CBF1F8)
  {
    v57 = IMWeakLinkSymbol();
    if (v57)
    {
      v58 = *v57;
    }

    else
    {
      v58 = 0;
    }

    objc_storeStrong(&qword_100CBF1F8, v58);
  }

  if (!qword_100CBF218)
  {
    v59 = IMWeakLinkSymbol();
    if (v59)
    {
      v60 = *v59;
    }

    else
    {
      v60 = 0;
    }

    objc_storeStrong(&qword_100CBF218, v60);
  }

  if (!qword_100CBF208)
  {
    v61 = IMWeakLinkSymbol();
    if (v61)
    {
      v62 = *v61;
    }

    else
    {
      v62 = 0;
    }

    objc_storeStrong(&qword_100CBF208, v62);
  }

  if (!qword_100CBF210)
  {
    v63 = IMWeakLinkSymbol();
    if (v63)
    {
      v64 = *v63;
    }

    else
    {
      v64 = 0;
    }

    objc_storeStrong(&qword_100CBF210, v64);
  }

  if (!qword_100CBF220)
  {
    v65 = IMWeakLinkSymbol();
    if (v65)
    {
      v66 = *v65;
    }

    else
    {
      v66 = 0;
    }

    objc_storeStrong(&qword_100CBF220, v66);
  }

  if (!qword_100CBF228)
  {
    v67 = IMWeakLinkSymbol();
    if (v67)
    {
      v68 = *v67;
    }

    else
    {
      v68 = 0;
    }

    objc_storeStrong(&qword_100CBF228, v68);
  }

  if (!qword_100CBF230)
  {
    v69 = IMWeakLinkSymbol();
    if (v69)
    {
      v70 = *v69;
    }

    else
    {
      v70 = 0;
    }

    objc_storeStrong(&qword_100CBF230, v70);
  }

  if (!qword_100CBF238)
  {
    v71 = IMWeakLinkSymbol();
    if (v71)
    {
      v72 = *v71;
    }

    else
    {
      v72 = 0;
    }

    objc_storeStrong(&qword_100CBF238, v72);
  }

  if (!qword_100CBF240)
  {
    v73 = IMWeakLinkSymbol();
    if (v73)
    {
      v74 = *v73;
    }

    else
    {
      v74 = 0;
    }

    objc_storeStrong(&qword_100CBF240, v74);
  }

  if (!qword_100CBF248)
  {
    v75 = IMWeakLinkSymbol();
    if (v75)
    {
      v76 = *v75;
    }

    else
    {
      v76 = 0;
    }

    objc_storeStrong(&qword_100CBF248, v76);
  }

  if (!qword_100CBF250)
  {
    v77 = IMWeakLinkSymbol();
    if (v77)
    {
      v78 = *v77;
    }

    else
    {
      v78 = 0;
    }

    objc_storeStrong(&qword_100CBF250, v78);
  }
}

void sub_1005C9BC8(id a1)
{
  v1 = objc_alloc_init(IDSDiagnosticInfoHandler);
  v2 = qword_100CBF290;
  qword_100CBF290 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1005CA104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1005CA140(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = [*(a1 + 32) infoBlock];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1005CA274;
  v13[3] = &unk_100BE12D8;
  v4 = *(a1 + 72);
  v14 = v2;
  v18 = v4;
  v12 = *(a1 + 40);
  v5 = *(a1 + 48);
  v19 = *(a1 + 80);
  v11 = *(a1 + 32);
  v6 = *(a1 + 56);
  *&v8 = v11;
  *&v7 = v12;
  *(&v8 + 1) = v6;
  *(&v7 + 1) = v5;
  v15 = v7;
  v16 = v8;
  v17 = *(a1 + 64);
  v9 = v3[2];
  v10 = v2;
  v9(v3, v13);
}

void sub_1005CA274(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  v7 = objc_alloc_init(NSMutableString);
  os_unfair_lock_lock((*(a1 + 40) + 8));
  v8 = *(*(a1 + 80) + 8);
  if (*(v8 + 24) == 1)
  {
    *(v8 + 24) = 0;
    v9 = [*(a1 + 48) componentsJoinedByString:{@", "}];
    [v7 appendFormat:@"Expecting diagnostic entries with titles: %@\n\n", v9];
  }

  v10 = --*(*(*(a1 + 88) + 8) + 24);
  os_unfair_lock_unlock((*(a1 + 40) + 8));
  v11 = [*(a1 + 56) title];
  [v7 appendFormat:@"===== %@ =====\n", v11];

  v12 = @"<None>";
  if (v3)
  {
    v12 = v3;
  }

  [v7 appendFormat:@"%@\n", v12];

  v13 = [*(a1 + 56) title];
  [v7 appendFormat:@"===== End of %@ (took %.3f ms) =====\n", v13, v6 * 1000.0];

  [*(a1 + 64) receiveDiagnosticChunk:v7 isLast:v10 == 0];
  if (!v10)
  {
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 72)];
    v16 = v15;

    v17 = +[IDSFoundationLog DiagnosticInfoHandler];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v16 * 1000.0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Finished diagnostics dump (took %.3f ms)", buf, 0xCu);
    }
  }
}

void sub_1005CA5B4(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2588692];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setServiceName:*(a1 + 40)];
    [v3 setActiveParticipants:*(a1 + 48)];
    [v3 setMissingPrekeys:*(a1 + 56)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1005CA714(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2588693];
  if (v2)
  {
    v6 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setServiceName:*(a1 + 40)];
    [v3 setTimeDelta:*(a1 + 48)];
    v4 = *(a1 + 56);
    if (v4 >= 1)
    {
      v5 = (v4 - 1) / 3u;
    }

    else
    {
      v5 = 0;
    }

    [v3 setActiveParticipantBucket:v5];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v6];

    v2 = v6;
  }
}

void sub_1005CA890(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2588695];
  if (v2)
  {
    v6 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setServiceName:*(a1 + 40)];
    [v3 setTimeDelta:*(a1 + 48)];
    v4 = *(a1 + 56);
    if (v4 >= 1)
    {
      v5 = (v4 - 1) / 3u;
    }

    else
    {
      v5 = 0;
    }

    [v3 setActiveParticipantBucket:v5];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v6];

    v2 = v6;
  }
}

void sub_1005CB7CC(id a1)
{
  v1 = objc_alloc_init(IDSTransportLevelAgent);
  v2 = qword_100CBF2A0;
  qword_100CBF2A0 = v1;

  v3 = dispatch_get_global_queue(-32768, 0);
  [qword_100CBF2A0 setInterface:NEVirtualInterfaceCreate()];

  if ([qword_100CBF2A0 interface])
  {
    [qword_100CBF2A0 interface];
    v4 = NEVirtualInterfaceCopyName();
    v5 = CFAutorelease(v4);
    [qword_100CBF2A0 interface];
    NEVirtualInterfaceSetReadAutomatically();
    [qword_100CBF2A0 interface];
    IPPayloadHandler = NEVirtualInterfaceSetReadIPPayloadHandler();
    [qword_100CBF2A0 interface];
    v7 = NEVirtualInterfaceSetMTU();
    [qword_100CBF2A0 interface];
    [@"fe80::ce81:b1c:bd2c:69e%" stringByAppendingString:v5];
    v8 = NEVirtualInterfaceAddAddress();
    [qword_100CBF2A0 interface];
    v9 = NEVirtualInterfaceSetRankNever();
    [qword_100CBF2A0 interface];
    updated = NEVirtualInterfaceUpdateAdHocService();
    v11 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"YES";
      if (IPPayloadHandler)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      *v35 = 138413570;
      *&v35[4] = v5;
      if (v7)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *&v35[14] = v13;
      *&v35[12] = 2112;
      if (v8)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      *&v35[22] = 2112;
      v36 = v14;
      if (v9)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      *v37 = 2112;
      if (!updated)
      {
        v12 = @"NO";
      }

      *&v37[2] = v15;
      v38 = 2112;
      v39 = v16;
      v40 = 2112;
      v41 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Created interface %@ for IDS Nexus %@ %@ %@ %@ %@", v35, 0x3Eu);
    }

    v17 = +[NSUUID UUID];
    [qword_100CBF2A0 setAgentUUID:v17];

    [qword_100CBF2A0 setActive:1];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_initially_inactive(v18);
    v20 = dispatch_queue_create("IDSTransportLevelAgentQueue", v19);

    v21 = IDSRealTimeContext();
    nw_queue_context_target_dispatch_queue();

    dispatch_activate(v20);
    v22 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class() queue:v20];
    [qword_100CBF2A0 setRegistration:v22];

    v23 = [qword_100CBF2A0 registration];
    LOBYTE(v19) = [v23 registerNetworkAgent:qword_100CBF2A0];

    v24 = +[IDSFoundationLog Multiplexer];
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v25)
      {
        v26 = qword_100CBF2A0;
        v27 = [qword_100CBF2A0 agentUUID];
        v28 = [qword_100CBF2A0 registration];
        if ([v28 isRegistered])
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        v30 = [qword_100CBF2A0 registration];
        v31 = [v30 registeredUUID];
        *v35 = 134218754;
        *&v35[4] = v26;
        *&v35[12] = 2112;
        *&v35[14] = v27;
        *&v35[22] = 2112;
        v36 = v29;
        *v37 = 2112;
        *&v37[2] = v31;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Registered IDS Nexus Agent (%p) %@ (isRegistered %@ registrationUUID %@)", v35, 0x2Au);
      }

      v32 = [qword_100CBF2A0 registration];
      v33 = [v32 addNetworkAgentToInterfaceNamed:v5];

      if ((v33 & 1) == 0)
      {
        v34 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "addNetworkAgentToInterfaceNamed failed", v35, 2u);
        }
      }
    }

    else
    {
      if (v25)
      {
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "registerNetworkAgent failed", v35, 2u);
      }

      IDSNetworkingLogDump();
    }
  }

  else
  {
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NEVirtualInterfaceCreate failed", v35, 2u);
    }
  }
}

void sub_1005CCE3C(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555935];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setLinkType:*(a1 + 40)];
    [v3 setCurrentRTT:*(a1 + 48)];
    [v3 setBandwidth:*(a1 + 56)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1005CE208(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Responding to local device info query: %@", buf, 0xCu);
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Responding to local device info query: %@", buf, 0xCu);
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

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_1005CEF40(uint64_t a1, int a2)
{
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v78 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Done with outgoing network availability check; networkOkForSession: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v53 = v6;
    _IDSLogV();
  }

  v7 = [*(a1 + 32) sharedState];
  v8 = [v7 state] == 9;

  if (v8)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) sharedState];
      v11 = [v10 uniqueID];
      *buf = 138412290;
      v78 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %@ has ended; NOT sending remote invitations!", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v12 = [*(a1 + 32) sharedState];
      v55 = [v12 uniqueID];
      _IDSLogV();

LABEL_42:
    }
  }

  else
  {
    if (a2)
    {
      v13 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 32) sharedState];
        v15 = [v14 isScreenSharingSession];
        v16 = @"NO";
        if (v15)
        {
          v16 = @"YES";
        }

        *buf = 138412290;
        v78 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Creating connection data, isScreenSharingSession: %@", buf, 0xCu);
      }

      v17 = +[IDSDAccountController sharedInstance];
      v18 = [*(a1 + 32) sharedState];
      v19 = [v18 accountID];
      v20 = [v17 accountWithUniqueID:v19];
      v12 = [v20 _registrationCert];

      v21 = objc_opt_self();
      v22 = [v21 sharedState];
      LODWORD(v18) = [v22 isScreenSharingSession];

      v23 = [*(a1 + 32) sharedState];
      v24 = v23;
      if (v18)
      {
        v25 = [v23 connection];
        v73[0] = _NSConcreteStackBlock;
        v73[1] = 3221225472;
        v73[2] = sub_1005CF8AC;
        v73[3] = &unk_100BE13B8;
        v66 = *(a1 + 32);
        v26 = *(&v66 + 1);
        v27 = *(a1 + 48);
        v28 = *(a1 + 56);
        *&v29 = v27;
        *(&v29 + 1) = v28;
        v74 = v66;
        v75 = v29;
        v76 = *(a1 + 72);
        [v25 createConnectionData:0 handler:v73];
      }

      else
      {
        v34 = [v23 enableQuickRelay];

        if (v34)
        {
          v60 = +[IDSQuickRelayAllocator sharedInstance];
          v67 = [*(a1 + 32) sharedState];
          v65 = [v67 destinations];
          v59 = [v65 allObjects];
          v64 = [*(a1 + 32) sharedState];
          v58 = [v64 uniqueID];
          v63 = [*(a1 + 32) sharedState];
          v62 = [v63 fromURI];
          v57 = [v62 prefixedURI];
          v61 = +[IDSDAccountController sharedInstance];
          v35 = [*(a1 + 32) sharedState];
          v36 = [v35 accountID];
          v37 = [v61 accountWithUniqueID:v36];
          v38 = [v37 service];
          v39 = [v38 identifier];
          v40 = [*(a1 + 32) sharedState];
          v41 = [v40 getQuickRelayAllocateOptions:&off_100C3CD30];
          v42 = [v60 setupNewAllocation:v59 sessionID:v58 fromIdentity:v12 fromURI:v57 fromService:v39 options:v41 connectReadyHandler:0];

          [*(a1 + 32) _sendInvitationMessageToDestinations:*(a1 + 40) withOptions:*(a1 + 48) contextData:*(a1 + 56) declineOnError:*(a1 + 72) connectionData:0];
        }

        else
        {
          v43 = +[IDSUTunController sharedInstance];
          v44 = [*(a1 + 32) sharedState];
          v45 = [v44 uniqueID];
          v46 = [*(a1 + 32) sharedState];
          v47 = [v46 participantID];
          v69[0] = _NSConcreteStackBlock;
          v69[1] = 3221225472;
          v69[2] = sub_1005CFA84;
          v69[3] = &unk_100BE13B8;
          v68 = *(a1 + 32);
          v48 = *(a1 + 40);
          v49 = *(a1 + 48);
          v50 = *(a1 + 56);
          *&v51 = v49;
          *(&v51 + 1) = v50;
          v70 = v68;
          v71 = v51;
          v72 = *(a1 + 72);
          [v43 createConnectionDataForDevice:v45 localPartyID:v47 dataReadyHandler:v69];
        }
      }

      v52 = [*(a1 + 32) sharedState];
      [v52 setInvitationTimer];

      goto LABEL_42;
    }

    v30 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Network availability check indicated that we should not attempt to send remote invitation(s)", buf, 2u);
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

    if (![*(a1 + 64) count] || (objc_msgSend(*(a1 + 32), "sharedState"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "forceInternetInvitation"), v31, v32))
    {
      v33 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v78 = @"IDSDSession";
        v79 = 1024;
        v80 = 13;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@: sendInvitationWithOptions could not find active Wifi connection, ending session with reason %d", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v54 = @"IDSDSession";
          v56 = 13;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v54 = @"IDSDSession";
            v56 = 13;
            _IDSLogV();
          }
        }
      }

      v12 = [*(a1 + 32) delegate];
      [v12 endSessionWithReason:13];
      goto LABEL_42;
    }
  }
}

void sub_1005CF8AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog IDSDSession];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v5 || v6)
  {
    if (v8)
    {
      v13 = [*(a1 + 32) sharedState];
      v14 = [v13 isScreenSharingSession];
      v15 = @"NO";
      if (v14)
      {
        v15 = @"YES";
      }

      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to get connection data with error %@, isScreenSharingSession %@", &v17, 0x16u);
    }

    v16 = [*(a1 + 32) delegate];
    [v16 endSessionWithReason:8];
  }

  else
  {
    if (v8)
    {
      v9 = objc_opt_self();
      v10 = [v9 sharedState];
      v11 = [v10 isScreenSharingSession];
      v12 = @"NO";
      if (v11)
      {
        v12 = @"YES";
      }

      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got connection data %@, isScreenSharingSession %@", &v17, 0x16u);
    }

    [*(a1 + 32) _sendInvitationMessageToDestinations:*(a1 + 40) withOptions:*(a1 + 48) contextData:*(a1 + 56) declineOnError:*(a1 + 64) connectionData:v5];
  }
}

void sub_1005CFA84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog IDSDSession];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v5 || v6)
  {
    if (v8)
    {
      v12 = [*(a1 + 32) sharedState];
      v13 = [v12 isScreenSharingSession];
      v14 = @"NO";
      if (v13)
      {
        v14 = @"YES";
      }

      v18 = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to get connection data with error %@, isScreenSharingSession %@", &v18, 0x16u);
    }

    v15 = [*(a1 + 32) sharedState];
    v16 = [v15 state];

    if (v16 < 4)
    {
      v17 = [*(a1 + 32) delegate];
      [v17 endSessionWithReason:8];
    }

    else
    {
      v17 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not ending this session as it's still being connected or already connected", &v18, 2u);
      }
    }
  }

  else
  {
    if (v8)
    {
      v9 = [*(a1 + 32) sharedState];
      v10 = [v9 isScreenSharingSession];
      v11 = @"NO";
      if (v10)
      {
        v11 = @"YES";
      }

      v18 = 138412546;
      v19 = v5;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got connection data %@, isScreenSharingSession %@", &v18, 0x16u);
    }

    [*(a1 + 32) _sendInvitationMessageToDestinations:*(a1 + 40) withOptions:*(a1 + 48) contextData:*(a1 + 56) declineOnError:*(a1 + 64) connectionData:v5];
  }
}

void sub_1005D09F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v33 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10 = [*(a1 + 32) sharedState];
    v11 = [v10 enableQuickRelay];

    v12 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) sharedState];
      v14 = [v13 isScreenSharingSession];
      v15 = @"NO";
      if (v14)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      *buf = 138412802;
      v35 = v16;
      v36 = 2112;
      if (v11)
      {
        v15 = @"YES";
      }

      v37 = v15;
      v38 = 2112;
      v39 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sent message {isScreenSharingSession: %@, isLegacyOverride: %@, destinations: %@}", buf, 0x20u);
    }

    v17 = [*(a1 + 32) sharedState];
    v18 = [v17 isScreenSharingSession];

    if ((v18 | v11))
    {
      v19 = [v7 __imSetFromArray];
      v20 = [*(a1 + 32) sharedState];
      [v20 setDestinations:v19];
    }

    if ([v7 count])
    {
      v21 = [v7 __imArrayByApplyingBlock:&stru_100BE1400];
      v22 = [v8 objectForKey:IDSRegistrationPropertyIsC2KEquipment];
      v23 = [v22 count] != 0;

      v24 = *(a1 + 40);
      v25 = [*(a1 + 32) sharedState];
      v26 = [v25 uniqueID];
      v27 = [NSSet setWithArray:v21];
      [v24 session:v26 invitationSentToTokens:v27 shouldBreakBeforeMake:v23];

      *(*(*(a1 + 48) + 8) + 24) = 1;
      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [*(a1 + 32) sharedState];
        v30 = [v29 uniqueID];
        *buf = 138412546;
        v35 = v30;
        v36 = 2112;
        v37 = v21;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "session %@ invitation sent to tokens %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v31 = [*(a1 + 32) sharedState];
        v32 = [v31 uniqueID];
        _IDSLogV();
      }
    }
  }
}

id sub_1005D0D84(id a1, IDSURI *a2)
{
  v2 = a2;
  v3 = [(IDSURI *)v2 pushToken];
  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pulled out token %@ from destination", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v8 = v3;
      _IDSLogV();
    }

    v5 = [(IDSURI *)v3 rawToken];
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "skipping destination %@, can't find token", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v5 = 0;
  }

  return v5;
}

void sub_1005D0F84(uint64_t a1, void *a2)
{
  if ([a2 lastCall] && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v6 = [*(a1 + 40) sharedState];
    v4 = [v6 uniqueID];
    v5 = +[NSSet set];
    [v3 session:v4 invitationSentToTokens:v5 shouldBreakBeforeMake:0];
  }
}

void sub_1005D2DF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to get legacy connection data with error %@", buf, 0xCu);
    }

    v13 = [*(a1 + 32) sharedState];
    v14 = [v13 isScreenSharingSession];

    if (v14)
    {
      v15 = [*(a1 + 32) delegate];
      [v15 handleAVConferenceError:v7];
    }

    v16 = [*(a1 + 32) delegate];
    [v16 endSessionWithReason:8];
  }

  else
  {
    v8 = [*(a1 + 32) sharedState];
    v9 = [v8 connection];
    v10 = [*(a1 + 32) sharedState];
    v11 = [v10 peerProtocolVersion];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1005D2FDC;
    v17[3] = &unk_100BD9F28;
    v17[4] = *(a1 + 32);
    [v9 startConnectionAsInitiator:0 peerProtocolVersion:v11 errorHandler:v17];

    [*(a1 + 32) _sendAcceptMessageWithContext:*(a1 + 40) connectionData:v5];
  }
}

void sub_1005D2FDC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v4 = [v2 delegate];
    [v4 handleAVConferenceError:v3];
  }
}

void sub_1005D38E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 44) = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = 0u;
  free(*(a1 + 32));
}

void sub_1005D5A40(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v4 = [v2 delegate];
    [v4 handleAVConferenceError:v3];
  }
}

void sub_1005D5AA8(uint64_t a1)
{
  v6 = +[IDSUTunController sharedInstance];
  v2 = [v6 linkManager];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 uniqueID];
  v5 = [v2 globalLinkForSessionID:v4];
  [v5 setAcceptedRelaySession:*(a1 + 40) options:*(a1 + 48)];
}

void sub_1005D674C(id *a1)
{
  v2 = IDSDSessionMessageContext;
  v3 = [a1[4] objectForKey:IDSDSessionMessageContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a1[4] objectForKey:v2];
    v5 = [NSData _IDSDataFromBase64String:v4];
LABEL_5:
    v19 = v5;
    goto LABEL_7;
  }

  v4 = [a1[4] objectForKey:v2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1[4] objectForKey:v2];
    goto LABEL_5;
  }

  v19 = 0;
LABEL_7:

  v6 = objc_alloc_init(IMMessageContext);
  [v6 setShouldBoost:1];
  v7 = +[IDSDaemon sharedInstance];
  v8 = [a1[5] sharedState];
  v9 = [v8 pushTopic];
  v10 = [v7 broadcasterForTopic:v9 entitlement:kIDSSessionEntitlement command:0 messageContext:v6];

  v11 = [a1[5] sharedState];
  v12 = [v11 uniqueID];
  v13 = [a1[6] prefixedURI];
  [v10 sessionCancelReceived:v12 fromID:v13 withData:v19];

  v14 = objc_opt_class();
  v15 = sub_10001B980(v14, a1[4], IDSDSessionMessageRemoteEndReason);
  v16 = v15;
  if (v15)
  {
    v17 = [v15 intValue];
  }

  else
  {
    v17 = 5;
  }

  v18 = [a1[5] delegate];
  [v18 endSessionWithReason:v17];
}

void sub_1005D6B38(id a1)
{
  v1 = objc_alloc_init(IDSDGroupContextController);
  v2 = qword_100CBF2B0;
  qword_100CBF2B0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1005D6DC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4 == 1)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to get Context", v9, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v6 = [v3 error];
    v7 = *(*(a1 + 32) + 16);
    goto LABEL_15;
  }

  if (!v4)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got Context", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v6 = [v3 value];
    v7 = *(*(a1 + 32) + 16);
LABEL_15:
    v7();
  }
}

void sub_1005D7134(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = v7;
      v25 = 2114;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Upsert group -- Failed {error: %{public}@, context: %{public}@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
  }

  else
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Got Deaemon Group Context %@, error %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v17 = v5;
      v18 = 0;
      _IDSLogV();
    }

    if (*(a1 + 32))
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating Group", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) participants];
      v12 = [*(a1 + 40) sharedApplicationData];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1005D75D0;
      v21[3] = &unk_100BDB730;
      v22 = *(a1 + 48);
      [v5 updateGroup:v10 withParticipants:v11 sharedApplicationData:v12 completion:v21];
    }

    else
    {
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating New Group", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v15 = [*(a1 + 40) participants];
      v16 = [*(a1 + 40) sharedApplicationData];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1005D75E0;
      v19[3] = &unk_100BDB730;
      v20 = *(a1 + 48);
      [v5 createGroupWithParticipants:v15 sharedApplicationData:v16 completion:v19];
    }
  }
}

void sub_1005D75E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "New Group Created %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_1005D78C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to fetch group by groupID {error: %{public}@, groupID: %{public}@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1005D7A90;
    v11[3] = &unk_100BDB730;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v5 fetchGroupWithGroupID:v8 completion:v11];
  }
}

void sub_1005D7B60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get public data representation {error: %{public}@, group: %{public}@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1005D7D30;
    v11[3] = &unk_100BE14E8;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v5 _publicDataRepresentationForGroup:v8 completion:v11];
  }
}

void sub_1005D7E00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get group from public data representation -- missing context {error: %{public}@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40));
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005D7FBC;
    v10[3] = &unk_100BDB730;
    v8 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v5 _groupFromPublicDataRepresentation:v8 completion:v10];
  }
}

void sub_1005D808C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get participnats for cypher -- missing context {error: %{public}@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40));
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005D8248;
    v10[3] = &unk_100BE1510;
    v8 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v5 _participantsForCypher:v8 completion:v10];
  }
}

void sub_1005D833C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to validate cached group -- missing context {error: %{public}@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48));
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1005D8500;
    v11[3] = &unk_100BD9328;
    v12 = *(a1 + 48);
    [v5 _validateCachedGroup:v8 isParentOfGroup:v9 completion:v11];
  }
}

void sub_1005D85CC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1005D867C;
    v6[3] = &unk_100BDB730;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    [a2 fetchLatestGroupWithStableID:v4 completion:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void sub_1005D8720(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005D87CC;
    v5[3] = &unk_100BE1538;
    v6 = *(a1 + 32);
    [a2 _fetchAllLocalKnownGroups:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void sub_1005D87CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [a2 allObjects];
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, &__NSArray0__struct);
  }
}

void sub_1005D8900(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005D89AC;
    v5[3] = &unk_100BD7270;
    v6 = *(a1 + 32);
    [a2 _dropLocalCache:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void sub_1005D8A7C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1005D8B2C;
    v6[3] = &unk_100BD7270;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    [a2 _dropLocalCacheForGroupID:v4 compeltion:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void sub_1005D8C38(id a1, ENGroupContext *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Noting registration identity update {context: %@, error: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = v4;
    v8 = v5;
    _IDSLogV();
  }

  [(ENGroupContext *)v4 _noteRegistrationIdentityUpdate:v7];
}

void sub_1005D91B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Core Data Load Failed", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v5 = [*(a1 + 32) seal];
    [v5 failWithError:v3];
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Core Data Load sucdeeded", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v5 = [*(a1 + 32) seal];
    [v5 fulfillWithValue:*(a1 + 40)];
  }
}

id sub_1005DB1BC(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"disable-live-delivery-%@", a1];
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:v1];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1005DB274()
{
  v0 = +[IDSServerBag sharedInstance];
  v1 = [v0 objectForKey:@"disable-live-delivery-all"];

  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1005DB2F8(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 _stringForKey:IDSDevicePropertyIdentitiesURI];
  v3 = [v2 _stripFZIDPrefix];

  return v3;
}

id sub_1005DB354(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 _stringForKey:IDSDevicePropertyIdentitiesURI];
  v3 = [v2 _stripFZIDPrefix];

  return v3;
}

void sub_1005DB3B8(id a1)
{
  v1 = IMGetDomainBoolForKey();
  byte_100CBF2B8 = v1;
  if (v1)
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "**** Local IDS connectivity is disabled, only using cloud ****", v3, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

void sub_1005DC264(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  im_assert_primary_base_queue();
  v7 = +[IDSDAccountController sharedInstance];
  v8 = [*(a1 + 32) accountUUID];
  v9 = [v7 accountWithUniqueID:v8];

  if (v9)
  {
    v10 = *(*(*(a1 + 96) + 8) + 40);
    v11 = [*(a1 + 40) containsObject:v6];
    v12 = [*(a1 + 48) containsObject:v6];
    v13 = v12;
    if (v10 || (v11 & 1) != 0 || !v12)
    {
      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = @"NO";
        *buf = 138413314;
        v69 = v5;
        if (v10)
        {
          v25 = @"YES";
        }

        else
        {
          v25 = @"NO";
        }

        if (v11)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        if (!v13)
        {
          v24 = @"YES";
        }

        v70 = 2112;
        v71 = v6;
        v72 = 2112;
        v73 = v25;
        v74 = 2112;
        v75 = v26;
        v76 = 2112;
        v77 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Fallback won't sent for %@ %@  alreadyFailed %@ alreadySending %@ alreadyComplete %@", buf, 0x34u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        goto LABEL_36;
      }
    }

    else
    {
      v14 = [*(a1 + 32) localDelivery];
      if (!v6 || (v14 & 1) != 0 || ([v5 isEqualToString:IDSDefaultPairedDevice] & 1) != 0 || objc_msgSend(v5, "localizedCaseInsensitiveContainsString:", @"__localURI__"))
      {
        v15 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [*(a1 + 32) localDelivery];
          v17 = @"NO";
          *buf = 138412802;
          v69 = v5;
          v70 = 2112;
          if (v16)
          {
            v17 = @"YES";
          }

          v71 = v6;
          v72 = 2112;
          v73 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ignoring request to fallback for %@ %@ forcedLocal %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          [*(a1 + 32) localDelivery];
LABEL_36:
          _IDSLogV();
        }
      }

      else
      {
        v27 = +[IDSTrafficMonitor sharedInstance];
        v28 = [v9 service];
        v29 = [v28 identifier];
        v30 = [v9 service];
        v31 = [v27 noteOutgoingFallbackMessageForService:v29 serviceType:objc_msgSend(v30 requestor:{"adHocServiceType"), 0}];

        if (v31)
        {
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_1005DCC58;
          v59[3] = &unk_100BE1648;
          v60 = *(a1 + 32);
          v32 = v5;
          v61 = v32;
          v57 = v6;
          v62 = v57;
          v33 = *(a1 + 48);
          v34 = *(a1 + 40);
          v66 = *(a1 + 96);
          v35 = *(a1 + 56);
          v67 = *(a1 + 112);
          v36 = *(a1 + 64);
          *&v37 = v35;
          *(&v37 + 1) = v36;
          *&v38 = v33;
          *(&v38 + 1) = v34;
          v63 = v38;
          v64 = v37;
          v65 = *(a1 + 88);
          v58 = objc_retainBlock(v59);
          v39 = [*(a1 + 32) copy];
          v40 = [IDSURI URIWithPrefixedURI:v32];
          v41 = [NSArray arrayWithObject:v40];
          [v39 setFinalDestinationURIs:v41];

          [v39 setWantsResponse:1];
          if ([v39 priority] == 200)
          {
            [v39 setPriority:300];
          }

          v42 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = [*(a1 + 32) messageUUID];
            v44 = [v9 uniqueID];
            *buf = 138413058;
            v69 = v43;
            v70 = 2112;
            v71 = v32;
            v72 = 2112;
            v73 = v57;
            v74 = 2112;
            v75 = v44;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Initiating fallback send for message %@ to %@ %@ from account %@", buf, 0x2Au);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v45 = [*(a1 + 32) messageUUID];
              [v9 uniqueID];
              v56 = v54 = v57;
              v51 = v45;
              v53 = v32;
              _IDSLogTransport();

              if (_IDSShouldLog())
              {
                v46 = [*(a1 + 32) messageUUID];
                [v9 uniqueID];
                v56 = v54 = v57;
                v51 = v46;
                v53 = v32;
                _IDSLogV();
              }
            }
          }

          [*(a1 + 40) addObject:{v57, v51, v53, v54, v56}];
          [v9 _sendRemotelyWithSendParameters:v39 data:*(a1 + 72) protobuf:*(a1 + 80) willSendBlock:0 completionBlock:v58];
        }

        else
        {
          v47 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = [*(a1 + 32) localDelivery];
            v49 = @"NO";
            *buf = 138412802;
            v69 = v5;
            v70 = 2112;
            if (v48)
            {
              v49 = @"YES";
            }

            v71 = v6;
            v72 = 2112;
            v73 = v49;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Ignoring request to fallback for %@ %@ forcedLocal %@ due to budget restrictions.", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            v50 = [*(a1 + 32) localDelivery] ? @"YES" : @"NO";
            v55 = v50;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              [*(a1 + 32) localDelivery];
              goto LABEL_36;
            }
          }
        }
      }
    }
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 32) accountUUID];
      *buf = 138412290;
      v69 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "(Account) No account found for ID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v52 = [*(a1 + 32) accountUUID];
      _IDSLogV();
    }

    IMLogBacktrace();
    v20 = [NSError alloc];
    v21 = [v20 initWithDomain:IDSSendErrorDomain code:2 userInfo:0];
    if (*(a1 + 88))
    {
      v22 = objc_alloc_init(IDSDeliveryContext);
      [v22 setResponseError:v21];
      [v22 setIdsResponseCode:2];
      [v22 setLastCall:1];
      (*(*(a1 + 88) + 16))(*(a1 + 88));
    }
  }
}

void sub_1005DCBE0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1005DCB38);
  }

  _Unwind_Resume(a1);
}

void sub_1005DCC58(uint64_t a1, void *a2)
{
  v3 = a2;
  im_assert_primary_base_queue();
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) messageUUID];
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = [v3 idsResponseCode];
    v9 = [v3 responseError];
    v10 = [v3 lastCall];
    v11 = @"NO";
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    if (v10)
    {
      v11 = @"YES";
    }

    *buf = 138414082;
    v58 = v5;
    v59 = 2112;
    v60 = v7;
    v61 = 2112;
    v62 = v6;
    v63 = 2048;
    v64 = v8;
    v65 = 2112;
    v66 = v9;
    v67 = 2112;
    v68 = v11;
    v69 = 2112;
    v70 = v12;
    v71 = 2112;
    v72 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fallback send of %@ to %@ %@ completed with responseCode %ld error %@ lastCall %@ - current pending sends local %@ fallback %@", buf, 0x52u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = [*(a1 + 32) messageUUID];
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = [v3 idsResponseCode];
    v18 = [v3 responseError];
    v19 = [v3 lastCall];
    v20 = @"NO";
    if (v19)
    {
      v20 = @"YES";
    }

    v55 = *(a1 + 56);
    v56 = *(a1 + 64);
    v53 = v18;
    v54 = v20;
    v51 = v16;
    v52 = v17;
    v49 = v14;
    v50 = v15;
    _IDSLogV();
  }

  if ([v3 lastCall])
  {
    v21 = [v3 idsResponseCode];
    if (v21)
    {
      if (*(*(*(a1 + 96) + 8) + 40))
      {
LABEL_23:
        v39 = v21 == 0;
        v40 = [*(a1 + 56) count];
        v41 = [*(a1 + 64) count];
        [*(a1 + 64) removeObject:*(a1 + 48)];
        if (v39)
        {
          [*(a1 + 56) removeObject:*(a1 + 48)];
        }

        v42 = v40 != -v41;
        v43 = [*(a1 + 56) count];
        if ([*(a1 + 64) count] + v43)
        {
          v44 = 0;
        }

        else
        {
          v44 = v42;
        }

        if (v44)
        {
          if (*(a1 + 88))
          {
            v45 = objc_alloc_init(IDSDeliveryContext);
            [v45 setIdsResponseCode:*(*(*(a1 + 104) + 8) + 24)];
            [v45 setResponseError:*(*(*(a1 + 96) + 8) + 40)];
            [v45 setLastCall:1];
            v46 = [v3 endpointState];
            [v45 setEndpointState:v46];

            (*(*(a1 + 88) + 16))();
          }

          v47 = *(*(a1 + 96) + 8);
          v48 = *(v47 + 40);
          *(v47 + 40) = 0;
        }

        goto LABEL_32;
      }

      *(*(*(a1 + 104) + 8) + 24) = [v3 idsResponseCode];
      v22 = [v3 responseError];
      v23 = *(*(a1 + 96) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    else
    {
      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Overwriting previous local failure with remote success", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      *(*(*(a1 + 104) + 8) + 24) = 0;
      v26 = *(*(a1 + 96) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = 0;

      if (![*(a1 + 48) isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID])
      {
        goto LABEL_23;
      }

      v24 = [[IDSLocalDeliveryMessageSentMetric alloc] initWithService:*(a1 + 72) isToDefaultPairedDevice:1 messageSize:*(a1 + 112) linkType:4 priority:{objc_msgSend(*(a1 + 32), "priority")}];
      v28 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v28 logMetric:v24];

      v29 = +[IDSAWDLogging sharedInstance];
      [v29 messageSentForService:*(a1 + 72) isToDefaultPairedDevice:1 messageSize:*(a1 + 112) linkType:4 priority:{objc_msgSend(*(a1 + 32), "priority")}];

      v30 = +[IDSUTunDeliveryController sharedInstance];
      v31 = [*(a1 + 32) messageUUID];
      v32 = JWUUIDPushObjectToString();
      [v30 cancelMessageID:v32];

      if ([*(a1 + 80) adHocServiceType] == 2)
      {
        v33 = [IDSLocalDeliveryMessageDeliveredMetric alloc];
        v34 = [*(a1 + 80) identifier];
        v35 = [v33 initWithService:v34 isToDefaultPairedDevice:1 messageSize:0 linkType:4 deliveryError:0 RTT:0 priority:0];

        v36 = +[IDSCoreAnalyticsLogger defaultLogger];
        [v36 logMetric:v35];

        v37 = +[IDSAWDLogging sharedInstance];
        v38 = [*(a1 + 80) identifier];
        [v37 messageDeliveredForService:v38 isToDefaultPairedDevice:1 messageSize:0 linkType:4 deliveryError:0 RTT:0 priority:0];
      }
    }

    goto LABEL_23;
  }

LABEL_32:
}

void sub_1005DD2A4(uint64_t a1, void *a2)
{
  v3 = a2;
  im_assert_primary_base_queue();
  v4 = [v3 idsResponseCode];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) messageUUID];
    v7 = [v3 deviceID];
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) accountUUID];
    v12 = v11;
    v13 = @"NO";
    *buf = 138414082;
    *&buf[4] = v6;
    if (!v4)
    {
      v13 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = v7;
    v46 = 2112;
    v47 = v13;
    v48 = 2048;
    v49 = v4;
    v50 = 2112;
    v51 = v10;
    v52 = 2112;
    v53 = v9;
    v54 = 2112;
    v55 = v8;
    v56 = 2112;
    v57 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSUTunDeliveryController sendMessage %@ deviceID %@ succeeded? %@ response %ld topic: %@ - current pending sends local %@ fallback %@ account %@", buf, 0x52u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = [*(a1 + 32) messageUUID];
    v15 = [v3 deviceID];
    if (v4)
    {
      v16 = @"NO";
    }

    else
    {
      v16 = @"YES";
    }

    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    [*(a1 + 32) accountUUID];
    v44 = v43 = v19;
    v41 = v17;
    v42 = v18;
    v39 = v16;
    v40 = v4;
    v37 = v14;
    v38 = v15;
    _IDSLogV();
  }

  if (v4)
  {
    v20 = a1 + 72;
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      goto LABEL_16;
    }

    *(*(*(a1 + 80) + 8) + 24) = v4;
    v21 = [NSError alloc];
    v22 = [v21 initWithDomain:IDSSendErrorDomain code:v4 userInfo:0];
  }

  else
  {
    v22 = 0;
    *(*(*(a1 + 80) + 8) + 24) = 0;
    v20 = a1 + 72;
  }

  v23 = *(*v20 + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

LABEL_16:
  v25 = v4 == 0;
  v26 = [*(a1 + 48) count];
  v27 = [*(a1 + 56) count];
  v28 = *(a1 + 48);
  v29 = [v3 deviceID];
  [v28 removeObject:v29];

  if (v25)
  {
    v30 = *(a1 + 56);
    v31 = [v3 deviceID];
    [v30 removeObject:v31];
  }

  v32 = v26 != -v27;
  v33 = [*(a1 + 48) count];
  if ([*(a1 + 56) count] + v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  if (v34)
  {
    if (*(a1 + 64))
    {
      [v3 setIdsResponseCode:*(*(*(a1 + 80) + 8) + 24)];
      [v3 setResponseError:*(*(*(a1 + 72) + 8) + 40)];
      [v3 setLastCall:1];
      (*(*(a1 + 64) + 16))();
    }

    v35 = *(*(a1 + 72) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = 0;
  }
}

id sub_1005DFAC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:@"self-token:"])
  {
    v4 = [v3 _stripFZIDPrefix];
    v5 = [v4 rangeOfString:@"/"];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v4;
    }

    else
    {
      v6 = [v4 substringToIndex:v5];
    }

    v8 = v6;
    v9 = [NSData __imDataWithHexString:v6];
    if ([v4 length] <= v5 + 1)
    {
      v12 = *(a1 + 48);
      v13 = v12;
      if (v12)
      {
        v11 = v12;
      }

      else
      {
        v14 = *(a1 + 56);
        if ([v14 count])
        {
          v11 = [v14 __imFirstObject];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v10 = [v4 substringFromIndex:?];
      if (([objc_opt_class() dependentRegistration:*(a1 + 32) hasDependentRegistrationWithURI:v10 token:v9] & 1) != 0 || objc_msgSend(objc_opt_class(), "dependentRegistration:hasDependentRegistrationWithURI:token:", *(a1 + 40), v10, v9))
      {
        v11 = v10;
      }

      else
      {
        v15 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v3;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Couldn't resolve %@ to a valid dependent registration.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v18 = v3;
          _IDSLogV();
        }

        v11 = 0;
      }
    }

    if ([v9 length] && objc_msgSend(v11, "length"))
    {
      v7 = _IDSCopyIDForTokenWithURI();
    }

    else
    {
      v16 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v3;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not construct a destination for %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

id sub_1005DFE50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [IDSURI URIWithPrefixedURI:v3 withServiceLoggingHint:v4];

  return v5;
}

void sub_1005DFECC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 80) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v3 lastCall];
    v5 = [v4 responseError];
    if (v5)
    {
      v6 = *(*(*(a1 + 56) + 8) + 40);

      if (!v6)
      {
        v7 = [v4 responseError];
        v8 = *(*(a1 + 56) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        *(*(*(a1 + 64) + 8) + 24) = [v4 idsResponseCode];
      }
    }

    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 idsResponseCode];
      v12 = [v4 responseError];
      v13 = [v4 lastCall];
      v14 = *(*(*(a1 + 64) + 8) + 24);
      v15 = *(*(*(a1 + 56) + 8) + 40);
      v16 = [*(a1 + 32) accountUUID];
      v17 = v16;
      v18 = @"NO";
      *buf = 134219266;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      if (v13)
      {
        v18 = @"YES";
      }

      *&buf[14] = v12;
      v34 = 2112;
      v35 = v18;
      v36 = 2048;
      v37 = v14;
      v38 = 2112;
      v39 = v15;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Local send completion block {responseCode: %ld, error: %@, lastCall: %@, combinedResponseCode: %ld, combinedError: %@, account: %@}", buf, 0x3Eu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v19 = [v4 idsResponseCode];
      v20 = [v4 responseError];
      if ([v4 lastCall])
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v22 = *(*(*(a1 + 64) + 8) + 24);
      v23 = *(*(*(a1 + 56) + 8) + 40);
      [*(a1 + 32) accountUUID];
      v32 = v31 = v23;
      v29 = v21;
      v30 = v22;
      v27 = v19;
      v28 = v20;
      _IDSLogV();
    }

    if (*(a1 + 40))
    {
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        v24 = *(*(*(a1 + 72) + 8) + 24);
      }

      else
      {
        v24 = 0;
      }

      [v4 setIdsResponseCode:{*(*(*(a1 + 64) + 8) + 24), v27, v28, v29, v30, v31, v32, *buf}];
      [v4 setResponseError:*(*(*(a1 + 56) + 8) + 40)];
      [v4 setLastCall:v24 & 1];
      (*(*(a1 + 40) + 16))();
      if (v24)
      {
        v25 = *(*(a1 + 56) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = 0;
      }
    }
  }
}

void sub_1005E0218(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (![*(a1 + 32) count])
  {
    v11 = v12;
    goto LABEL_11;
  }

  if (!v12)
  {
    v10 = *(a1 + 40);
    if (!v10)
    {
      v9 = 0;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v9 = objc_alloc_init(NSMutableSet);
  [v9 addObjectsFromArray:v12];
  v10 = *(a1 + 40);
  if (v10)
  {
    if (v9)
    {
LABEL_9:
      [v9 addObjectsFromArray:v10];
      goto LABEL_10;
    }

LABEL_8:
    v9 = objc_alloc_init(NSMutableSet);
    goto LABEL_9;
  }

LABEL_10:
  v11 = [v9 allObjects];

LABEL_11:
  (*(*(a1 + 48) + 16))();
}

void sub_1005E0348(uint64_t a1)
{
  if (*(a1 + 144) == 2 && *(a1 + 148) == 1)
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) dictionaryRepresentation];
      *buf = 138412290;
      v41 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempted to send to remote destiantions on a local account, we are allowed to proxy, beginning proxy transaction, The params are %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v29 = [*(a1 + 32) dictionaryRepresentation];
      _IDSLogV();
    }

    [*(a1 + 32) setIsProxiedOutgoingMessage:{1, v29}];
    v4 = [*(a1 + 32) destinations];
    v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:0 error:0];

    [*(a1 + 32) setGroupData:v5];
    [*(a1 + 32) setDestinations:0];
    v6 = [*(a1 + 32) dictionaryRepresentation];
    v7 = objc_alloc_init(IDSSendParameters);
    [v7 setMessage:v6];
    v8 = +[IDSDestination defaultPairedDeviceDestination];
    [v7 setDestinations:v8];

    [v7 setCommand:&off_100C3CD60];
    [v7 setPriority:300];
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 dictionaryRepresentation];
      *buf = 138412290;
      v41 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "The new params we will send locally are are %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v30 = [v7 dictionaryRepresentation];
      _IDSLogV();
    }

    v11 = *(a1 + 136);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1005E0A30;
    v38[3] = &unk_100BDB638;
    v14 = *(a1 + 80);
    v39 = *(a1 + 88);
    [v11 sendMessageWithSendParameters:v7 service:v12 threadContext:v13 willSendBlock:&stru_100BE1750 progressBlock:v14 completionBlock:v38];
  }

  else
  {
    v15 = +[IDSDAccountController sharedInstance];
    v16 = [*(a1 + 32) accountUUID];
    v5 = [v15 accountWithUniqueID:v16];

    if (v5)
    {
      v6 = [*(a1 + 32) copy];
      v17 = [*(a1 + 56) __imArrayByApplyingBlock:&stru_100BE1790];
      [v6 setFinalDestinationURIs:v17];

      v18 = *(a1 + 64);
      v19 = *(a1 + 72);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1005E0B30;
      v32[3] = &unk_100BE17B8;
      v20 = *(a1 + 136);
      v34 = *(a1 + 104);
      v21 = *(a1 + 120);
      v37 = v20;
      v35 = v21;
      v22 = *(a1 + 96);
      v23 = *(a1 + 88);
      v24 = *(a1 + 128);
      v33 = v23;
      v36 = v24;
      [v5 _sendRemotelyWithSendParameters:v6 data:v18 protobuf:v19 willSendBlock:v22 completionBlock:v32];
      v7 = v33;
    }

    else
    {
      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [*(a1 + 32) accountUUID];
        *buf = 138412290;
        v41 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No account found for ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v31 = [*(a1 + 32) accountUUID];
        _IDSLogV();
      }

      IMLogBacktrace();
      v27 = [NSError alloc];
      v6 = [v27 initWithDomain:IDSSendErrorDomain code:2 userInfo:0];
      v7 = [[IDSDeliveryContext alloc] initWithResponseCode:2 error:v6 lastCall:1];
      v28 = *(a1 + 88);
      if (v28)
      {
        (*(v28 + 16))(v28, v7);
      }
    }
  }
}

void sub_1005E08EC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1005E058CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1005E0938(id a1, NSArray *a2, NSArray *a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Will Send Block", v10, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

void sub_1005E0A30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completiom Send Block of message called, ", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1005E0B30(void *a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[9];
    v6 = [v3 idsResponseCode];
    v7 = [v3 responseError];
    v8 = [v3 lastCall];
    v9 = @"NO";
    *buf = 138413058;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    if (v8)
    {
      v9 = @"YES";
    }

    *&buf[14] = v6;
    v38 = 2112;
    v39 = v7;
    v40 = 2112;
    v41 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Remote send completion block with responseCode %ld error %@ lastCall %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = a1[9];
    v11 = [v3 idsResponseCode];
    v12 = [v3 responseError];
    v13 = [v3 lastCall];
    v14 = @"NO";
    if (v13)
    {
      v14 = @"YES";
    }

    v33 = v12;
    v35 = v14;
    v29 = v10;
    v31 = v11;
    _IDSLogV();
  }

  *(*(a1[5] + 8) + 24) = [v3 lastCall];
  v15 = [v3 responseError];
  if (v15)
  {
    v16 = *(*(a1[6] + 8) + 40) == 0;

    if (v16)
    {
      v17 = [v3 responseError];
      v18 = *(a1[6] + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      *(*(a1[7] + 8) + 24) = [v3 idsResponseCode];
    }
  }

  if (a1[4])
  {
    if (*(*(a1[8] + 8) + 24) == 1)
    {
      v20 = *(*(a1[5] + 8) + 24);
    }

    else
    {
      v20 = 0;
    }

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = a1[9];
      v23 = *(*(a1[7] + 8) + 24);
      v24 = *(*(a1[6] + 8) + 40);
      v25 = @"NO";
      if (v20)
      {
        v25 = @"YES";
      }

      *buf = 138413058;
      *&buf[4] = v22;
      *&buf[12] = 2048;
      *&buf[14] = v23;
      v38 = 2112;
      v39 = v24;
      v40 = 2112;
      v41 = v25;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ calling combined completion block responseCode %ld error %@ lastCall %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v26 = @"NO";
      if (v20)
      {
        v26 = @"YES";
      }

      v34 = *(*(a1[6] + 8) + 40);
      v36 = v26;
      v30 = a1[9];
      v32 = *(*(a1[7] + 8) + 24);
      _IDSLogV();
    }

    [v3 setIdsResponseCode:{*(*(a1[7] + 8) + 24), v30, v32, v34, v36}];
    [v3 setResponseError:*(*(a1[6] + 8) + 40)];
    [v3 setLastCall:v20 & 1];
    (*(a1[4] + 16))();
    if (v20)
    {
      v27 = *(a1[6] + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = 0;
    }
  }
}

id sub_1005E1BAC(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [IDSURI URIWithPrefixedURI:v3 withServiceLoggingHint:v4];

  return v5;
}

void sub_1005E1C38(uint64_t a1, void *a2)
{
  v3 = a2;
  im_assert_primary_base_queue();
  if (*(a1 + 80) != 1 || *(a1 + 81) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v3 lastCall];
    v4 = [v3 responseError];
    if (v4)
    {
      v5 = *(*(*(a1 + 56) + 8) + 40);

      if (!v5)
      {
        v6 = [v3 responseError];
        v7 = *(*(a1 + 56) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        *(*(*(a1 + 64) + 8) + 24) = [v3 idsResponseCode];
      }
    }

    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 idsResponseCode];
      v11 = [v3 responseError];
      v12 = [v3 lastCall];
      v13 = *(*(*(a1 + 64) + 8) + 24);
      v14 = *(*(*(a1 + 56) + 8) + 40);
      v15 = [*(a1 + 32) uniqueID];
      v16 = v15;
      v17 = @"NO";
      *buf = 134219266;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      if (v12)
      {
        v17 = @"YES";
      }

      *&buf[14] = v11;
      v33 = 2112;
      v34 = v17;
      v35 = 2048;
      v36 = v13;
      v37 = 2112;
      v38 = v14;
      v39 = 2112;
      v40 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Local send completion block {responseCode: %ld, error: %@, lastCall: %@, combinedResponseCode: %ld, combinedError: %@, account: %@}", buf, 0x3Eu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v18 = [v3 idsResponseCode];
      v19 = [v3 responseError];
      if ([v3 lastCall])
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v21 = *(*(*(a1 + 64) + 8) + 24);
      v22 = *(*(*(a1 + 56) + 8) + 40);
      [*(a1 + 32) uniqueID];
      v31 = v30 = v22;
      v28 = v20;
      v29 = v21;
      v26 = v18;
      v27 = v19;
      _IDSLogV();
    }

    if (*(a1 + 40))
    {
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        v23 = *(*(*(a1 + 72) + 8) + 24);
      }

      else
      {
        v23 = 0;
      }

      [v3 setIdsResponseCode:{*(*(*(a1 + 64) + 8) + 24), v26, v27, v28, v29, v30, v31, *buf}];
      [v3 setResponseError:*(*(*(a1 + 56) + 8) + 40)];
      [v3 setLastCall:v23 & 1];
      (*(*(a1 + 40) + 16))();
      if (v23)
      {
        v24 = *(*(a1 + 56) + 8);
        v25 = *(v24 + 40);
        *(v24 + 40) = 0;
      }
    }
  }
}

void sub_1005E1FB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (![*(a1 + 32) count])
  {
    v11 = v12;
    goto LABEL_11;
  }

  if (!v12)
  {
    v10 = *(a1 + 40);
    if (!v10)
    {
      v9 = 0;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v9 = objc_alloc_init(NSMutableSet);
  [v9 addObjectsFromArray:v12];
  v10 = *(a1 + 40);
  if (v10)
  {
    if (v9)
    {
LABEL_9:
      [v9 addObjectsFromArray:v10];
      goto LABEL_10;
    }

LABEL_8:
    v9 = objc_alloc_init(NSMutableSet);
    goto LABEL_9;
  }

LABEL_10:
  v11 = [v9 allObjects];

LABEL_11:
  (*(*(a1 + 48) + 16))();
}

void sub_1005E20F8(void *a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = [v3 idsResponseCode];
    v7 = [v3 responseError];
    v8 = [v3 lastCall];
    v9 = @"NO";
    *buf = 138413058;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    if (v8)
    {
      v9 = @"YES";
    }

    *&buf[14] = v6;
    v36 = 2112;
    v37 = v7;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Remote send completion block with responseCode %ld error %@ lastCall %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = a1[4];
    v11 = [v3 idsResponseCode];
    v12 = [v3 responseError];
    v13 = [v3 lastCall];
    v14 = @"NO";
    if (v13)
    {
      v14 = @"YES";
    }

    v33 = v12;
    v34 = v14;
    v31 = v10;
    v32 = v11;
    _IDSLogV();
  }

  *(*(a1[6] + 8) + 24) = [v3 lastCall];
  v15 = [v3 responseError];
  if (v15)
  {
    v16 = *(*(a1[7] + 8) + 40) == 0;

    if (v16)
    {
      v17 = [v3 responseError];
      v18 = *(a1[7] + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      *(*(a1[8] + 8) + 24) = [v3 idsResponseCode];
    }
  }

  if (a1[5])
  {
    if (*(*(a1[9] + 8) + 24) == 1)
    {
      v20 = *(*(a1[6] + 8) + 24);
    }

    else
    {
      v20 = 0;
    }

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = a1[4];
      v23 = *(*(a1[8] + 8) + 24);
      v24 = *(*(a1[7] + 8) + 40);
      v25 = @"NO";
      if (v20)
      {
        v25 = @"YES";
      }

      *buf = 138413058;
      *&buf[4] = v22;
      *&buf[12] = 2048;
      *&buf[14] = v23;
      v36 = 2112;
      v37 = v24;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ calling combined completion block responseCode %ld error %@ lastCall %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v26 = [[IDSDeliveryContext alloc] initWithResponseCode:*(*(a1[8] + 8) + 24) error:*(*(a1[7] + 8) + 40) lastCall:v20 & 1];
    [v26 setLastCourierAck:{objc_msgSend(v3, "lastCourierAck")}];
    (*(a1[5] + 16))(a1[5], v26, v27, v28);
    if (v20)
    {
      v29 = *(a1[7] + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = 0;
    }
  }
}

void sub_1005E2750(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 idsResponseCode])
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v3 idsResponseCode];
      v7 = [v3 responseError];
      *buf = 138412802;
      v14 = v5;
      v15 = 2048;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed sending server message request response for topic %@. Result code %ld. Error %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v3 idsResponseCode];
      v9 = [v3 responseError];
      _IDSLogV();
LABEL_12:
    }
  }

  else
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [v3 responseError];
      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished sending server message request response for topic %@  [%@]", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v9 = [v3 responseError];
      _IDSLogV();
      goto LABEL_12;
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v8);
}

id sub_1005E48C0(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 _stringForKey:IDSDevicePropertyIdentitiesURI];
  v3 = [v2 _stripFZIDPrefix];

  return v3;
}

id sub_1005E491C(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 _stringForKey:IDSDevicePropertyIdentitiesURI];
  v3 = [v2 _stripFZIDPrefix];

  return v3;
}

void sub_1005E4980(id a1)
{
  v1 = IMGetDomainBoolForKey();
  byte_100CBF2C8 = v1;
  if (v1)
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "**** Local IDS connectivity is disabled, only using cloud ****", v3, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

void sub_1005E56E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  im_assert_primary_base_queue();
  v7 = *(*(*(a1 + 104) + 8) + 40);
  v8 = [*(a1 + 32) containsObject:v6];
  v9 = [*(a1 + 40) containsObject:v6];
  v10 = v9;
  if (v7 || (v8 & 1) != 0 || !v9)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *buf = 138413314;
      v58 = v5;
      if (v7)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      if (v8)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      if (!v10)
      {
        v16 = @"YES";
      }

      v59 = 2112;
      v60 = v6;
      v61 = 2112;
      v62 = v17;
      v63 = 2112;
      v64 = v18;
      v65 = 2112;
      v66 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fallback won't sent for %@ %@  alreadyFailed %@ alreadySending %@ alreadyComplete %@", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_27;
    }
  }

  else
  {
    v11 = [*(a1 + 48) localDelivery];
    if (!v6 || (v11 & 1) != 0 || ([v5 isEqualToString:IDSDefaultPairedDevice] & 1) != 0 || objc_msgSend(v5, "localizedCaseInsensitiveContainsString:", @"__localURI__"))
    {
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 48) localDelivery];
        v14 = @"NO";
        *buf = 138412802;
        v58 = v5;
        v59 = 2112;
        if (v13)
        {
          v14 = @"YES";
        }

        v60 = v6;
        v61 = 2112;
        v62 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring request to fallback for %@ %@ forcedLocal %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [*(a1 + 48) localDelivery];
LABEL_27:
        _IDSLogV();
      }
    }

    else
    {
      v19 = +[IDSTrafficMonitor sharedInstance];
      v20 = [*(a1 + 56) service];
      v21 = [v20 identifier];
      v22 = [*(a1 + 56) service];
      v23 = [v19 noteOutgoingFallbackMessageForService:v21 serviceType:objc_msgSend(v22 requestor:{"adHocServiceType"), 0}];

      if (v23)
      {
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_1005E5F10;
        v46[3] = &unk_100BE1648;
        v47 = *(a1 + 48);
        v24 = v5;
        v48 = v24;
        v25 = v6;
        v49 = v25;
        v50 = *(a1 + 40);
        v51 = *(a1 + 32);
        v55 = *(a1 + 104);
        v26 = *(a1 + 64);
        v27 = *(a1 + 120);
        v52 = v26;
        v56 = v27;
        v53 = *(a1 + 72);
        v54 = *(a1 + 96);
        v45 = objc_retainBlock(v46);
        v28 = [*(a1 + 48) copy];
        v29 = [IDSURI URIWithPrefixedURI:v24];
        v30 = [NSArray arrayWithObject:v29];
        [v28 setFinalDestinationURIs:v30];

        [v28 setWantsResponse:1];
        if ([v28 priority] == 200)
        {
          [v28 setPriority:300];
        }

        v31 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [*(a1 + 48) messageUUID];
          v33 = [*(a1 + 56) uniqueID];
          *buf = 138413058;
          v58 = v32;
          v59 = 2112;
          v60 = v24;
          v61 = 2112;
          v62 = v25;
          v63 = 2112;
          v64 = v33;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Initiating fallback send for message %@ to %@ %@ from account %@", buf, 0x2Au);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v34 = [*(a1 + 48) messageUUID];
            [*(a1 + 56) uniqueID];
            v44 = v42 = v25;
            v40 = v34;
            v41 = v24;
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              v35 = [*(a1 + 48) messageUUID];
              [*(a1 + 56) uniqueID];
              v44 = v42 = v25;
              v40 = v35;
              v41 = v24;
              _IDSLogV();
            }
          }
        }

        [*(a1 + 32) addObject:{v25, v40, v41, v42, v44}];
        [*(a1 + 56) _sendRemotelyWithSendParameters:v28 data:*(a1 + 80) protobuf:*(a1 + 88) willSendBlock:0 completionBlock:v45];
      }

      else
      {
        v36 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [*(a1 + 48) localDelivery];
          v38 = @"NO";
          *buf = 138412802;
          v58 = v5;
          v59 = 2112;
          if (v37)
          {
            v38 = @"YES";
          }

          v60 = v6;
          v61 = 2112;
          v62 = v38;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Ignoring request to fallback for %@ %@ forcedLocal %@ due to budget restrictions.", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          v39 = [*(a1 + 48) localDelivery] ? @"YES" : @"NO";
          v43 = v39;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            [*(a1 + 48) localDelivery];
            goto LABEL_27;
          }
        }
      }
    }
  }
}

void sub_1005E5EB0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1005E5E08);
  }

  _Unwind_Resume(a1);
}

void sub_1005E5F10(uint64_t a1, void *a2)
{
  v3 = a2;
  im_assert_primary_base_queue();
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) messageUUID];
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = [v3 idsResponseCode];
    v9 = [v3 responseError];
    v10 = [v3 lastCall];
    v11 = @"NO";
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    if (v10)
    {
      v11 = @"YES";
    }

    *buf = 138414082;
    v58 = v5;
    v59 = 2112;
    v60 = v7;
    v61 = 2112;
    v62 = v6;
    v63 = 2048;
    v64 = v8;
    v65 = 2112;
    v66 = v9;
    v67 = 2112;
    v68 = v11;
    v69 = 2112;
    v70 = v12;
    v71 = 2112;
    v72 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fallback send of %@ to %@ %@ completed with responseCode %ld error %@ lastCall %@ - current pending sends local %@ fallback %@", buf, 0x52u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = [*(a1 + 32) messageUUID];
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = [v3 idsResponseCode];
    v18 = [v3 responseError];
    v19 = [v3 lastCall];
    v20 = @"NO";
    if (v19)
    {
      v20 = @"YES";
    }

    v55 = *(a1 + 56);
    v56 = *(a1 + 64);
    v53 = v18;
    v54 = v20;
    v51 = v16;
    v52 = v17;
    v49 = v14;
    v50 = v15;
    _IDSLogV();
  }

  if ([v3 lastCall])
  {
    v21 = [v3 idsResponseCode];
    if (v21)
    {
      if (*(*(*(a1 + 96) + 8) + 40))
      {
LABEL_23:
        v39 = v21 == 0;
        v40 = [*(a1 + 56) count];
        v41 = [*(a1 + 64) count];
        [*(a1 + 64) removeObject:*(a1 + 48)];
        if (v39)
        {
          [*(a1 + 56) removeObject:*(a1 + 48)];
        }

        v42 = v40 != -v41;
        v43 = [*(a1 + 56) count];
        if ([*(a1 + 64) count] + v43)
        {
          v44 = 0;
        }

        else
        {
          v44 = v42;
        }

        if (v44)
        {
          if (*(a1 + 88))
          {
            v45 = [[IDSDeliveryContext alloc] initWithResponseCode:*(*(*(a1 + 104) + 8) + 24) error:*(*(*(a1 + 96) + 8) + 40) lastCall:1];
            v46 = [v3 endpointState];
            [v45 setEndpointState:v46];

            (*(*(a1 + 88) + 16))();
          }

          v47 = *(*(a1 + 96) + 8);
          v48 = *(v47 + 40);
          *(v47 + 40) = 0;
        }

        goto LABEL_32;
      }

      *(*(*(a1 + 104) + 8) + 24) = [v3 idsResponseCode];
      v22 = [v3 responseError];
      v23 = *(*(a1 + 96) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    else
    {
      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Overwriting previous local failure with remote success", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      *(*(*(a1 + 104) + 8) + 24) = 0;
      v26 = *(*(a1 + 96) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = 0;

      if (![*(a1 + 48) isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID])
      {
        goto LABEL_23;
      }

      v24 = [[IDSLocalDeliveryMessageSentMetric alloc] initWithService:*(a1 + 72) isToDefaultPairedDevice:1 messageSize:*(a1 + 112) linkType:4 priority:{objc_msgSend(*(a1 + 32), "priority")}];
      v28 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v28 logMetric:v24];

      v29 = +[IDSAWDLogging sharedInstance];
      [v29 messageSentForService:*(a1 + 72) isToDefaultPairedDevice:1 messageSize:*(a1 + 112) linkType:4 priority:{objc_msgSend(*(a1 + 32), "priority")}];

      v30 = +[IDSUTunDeliveryController sharedInstance];
      v31 = [*(a1 + 32) messageUUID];
      v32 = JWUUIDPushObjectToString();
      [v30 cancelMessageID:v32];

      if ([*(a1 + 80) adHocServiceType] == 2)
      {
        v33 = [IDSLocalDeliveryMessageDeliveredMetric alloc];
        v34 = [*(a1 + 80) identifier];
        v35 = [v33 initWithService:v34 isToDefaultPairedDevice:1 messageSize:0 linkType:4 deliveryError:0 RTT:0 priority:0];

        v36 = +[IDSCoreAnalyticsLogger defaultLogger];
        [v36 logMetric:v35];

        v37 = +[IDSAWDLogging sharedInstance];
        v38 = [*(a1 + 80) identifier];
        [v37 messageDeliveredForService:v38 isToDefaultPairedDevice:1 messageSize:0 linkType:4 deliveryError:0 RTT:0 priority:0];
      }
    }

    goto LABEL_23;
  }

LABEL_32:
}

void sub_1005E6548(uint64_t a1, void *a2)
{
  v3 = a2;
  im_assert_primary_base_queue();
  v4 = [v3 idsResponseCode];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) messageUUID];
    v7 = [v3 deviceID];
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = [*(a1 + 64) uniqueID];
    v12 = v11;
    v13 = @"NO";
    *buf = 138414082;
    *&buf[4] = v6;
    if (!v4)
    {
      v13 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = v7;
    v47 = 2112;
    v48 = v13;
    v49 = 2048;
    v50 = v4;
    v51 = 2112;
    v52 = v9;
    v53 = 2112;
    v54 = v8;
    v55 = 2112;
    v56 = v10;
    v57 = 2112;
    v58 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSUTunDeliveryController sendMessage %@ deviceID %@ succeeded? %@ response %ld topic: %@ - current pending sends local %@ fallback %@ account %@", buf, 0x52u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = [*(a1 + 32) messageUUID];
    v15 = [v3 deviceID];
    if (v4)
    {
      v16 = @"NO";
    }

    else
    {
      v16 = @"YES";
    }

    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    [*(a1 + 64) uniqueID];
    v45 = v44 = v19;
    v42 = v17;
    v43 = v18;
    v40 = v16;
    v41 = v4;
    v38 = v14;
    v39 = v15;
    _IDSLogV();
  }

  if (v4)
  {
    v20 = a1 + 80;
    if (*(*(*(a1 + 80) + 8) + 40))
    {
      goto LABEL_21;
    }

    *(*(*(a1 + 88) + 8) + 24) = v4;
    v21 = [NSError alloc];
    v22 = [v21 initWithDomain:IDSSendErrorDomain code:v4 userInfo:0];
  }

  else
  {
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Overwriting previous remote failure with local success", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v22 = 0;
    *(*(*(a1 + 88) + 8) + 24) = 0;
    v20 = a1 + 80;
  }

  v24 = *(*v20 + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v22;

LABEL_21:
  v26 = v4 == 0;
  v27 = [*(a1 + 48) count];
  v28 = [*(a1 + 56) count];
  v29 = *(a1 + 48);
  v30 = [v3 deviceID];
  [v29 removeObject:v30];

  if (v26)
  {
    v31 = *(a1 + 56);
    v32 = [v3 deviceID];
    [v31 removeObject:v32];
  }

  v33 = v27 != -v28;
  v34 = [*(a1 + 48) count];
  if ([*(a1 + 56) count] + v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  if (v35)
  {
    if (*(a1 + 72))
    {
      [v3 setIdsResponseCode:*(*(*(a1 + 88) + 8) + 24)];
      [v3 setResponseError:*(*(*(a1 + 80) + 8) + 40)];
      [v3 setLastCall:1];
      (*(*(a1 + 72) + 16))();
    }

    v36 = *(*(a1 + 80) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = 0;
  }
}

void sub_1005E9384(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "All courier acks have completed, informing the next layer that the message has been sent sucessfully", v6, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v5 = [[IDSDeliveryContext alloc] initWithResponseCode:0 error:0 lastCall:0];
  [v5 setResponseTimeStamp:v3];
  (*(*(a1 + 32) + 16))();
}

void sub_1005E94A0(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10)
{
  v93 = a2;
  v17 = a4;
  v94 = a5;
  v96 = a6;
  v18 = a7;
  v98 = a8;
  v19 = a9;
  v97 = v19;
  v95 = v18;
  if (a3)
  {
    v20 = [v98 length];
    v19 = v97;
    if (v20)
    {
      v21 = objc_alloc_init(NSMutableDictionary);
      v22 = v21;
      if (v96)
      {
        CFDictionarySetValue(v21, @"mmcs-owner", v96);
      }

      if (v98)
      {
        CFDictionarySetValue(v22, @"mmcs-url", v98);
      }

      theDict = v22;
      v23 = [v18 __imHexString];
      if (v23)
      {
        CFDictionarySetValue(v22, @"mmcs-signature-hex", v23);
      }

      if (v97)
      {
        CFDictionarySetValue(v22, @"decryption-key", v97);
      }

      v24 = [NSNumber numberWithInteger:a10];
      if (v24)
      {
        CFDictionarySetValue(theDict, @"file-size", v24);
      }

      v25 = objc_alloc_init(NSMutableDictionary);
      v26 = objc_alloc_init(NSMutableDictionary);
      v27 = v26;
      if (theDict)
      {
        CFDictionarySetValue(v26, @"attach-mmcs-dict", theDict);
      }

      v90 = v27;
      v28 = [*(a1 + 32) resourceMetadata];
      if (v28)
      {
        CFDictionarySetValue(v27, @"attach-meta", v28);
      }

      v29 = *(a1 + 40);
      v102[0] = _NSConcreteStackBlock;
      v102[1] = 3221225472;
      v102[2] = sub_1005E9C9C;
      v102[3] = &unk_100BD95F8;
      v91 = v25;
      v103 = v91;
      [v29 enumerateKeysAndObjectsUsingBlock:v102];
      v30 = *(a1 + 32);
      v31 = JWEncodeDictionary();
      [v30 setDataToEncrypt:v31];

      v32 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v105 = v91;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Upload Complete, Here is the information, %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v47 = v91;
        _IDSLogV();
      }

      v86 = +[IDSDeliveryController sharedInstance];
      v89 = [*(a1 + 32) messageUUID];
      v85 = JWUUIDPushObjectToString();
      v84 = [*(a1 + 32) dataToEncrypt];
      v83 = [*(a1 + 32) encryptionAttributes];
      v74 = *(a1 + 48);
      v73 = [*(a1 + 32) wantsResponse];
      v82 = [*(a1 + 32) expirationDate];
      v72 = [*(a1 + 32) enforceRemoteTimeouts];
      v88 = [*(a1 + 56) service];
      v71 = [v88 canUseLargePayload];
      v87 = [*(a1 + 56) service];
      v70 = [v87 sendOnePerToken];
      v33 = [*(a1 + 56) service];
      v69 = [v33 allowPartialSendsToSucceed];
      v68 = [*(a1 + 32) priority];
      v67 = [*(a1 + 32) fireAndForget];
      v66 = *(a1 + 64);
      v34 = [*(a1 + 32) fromShortHandle];
      v65 = *(a1 + 72);
      v35 = [*(a1 + 32) finalDestinationURIs];
      v36 = [*(a1 + 32) accessToken];
      v63 = *(a1 + 88);
      v64 = *(a1 + 80);
      v62 = [*(a1 + 32) fakeMessage];
      v61 = [*(a1 + 32) alwaysSkipSelf];
      v60 = [*(a1 + 32) alwaysIncludeSelf];
      v59 = [*(a1 + 32) forceQuery];
      v81 = [*(a1 + 32) pushPriority];
      v58 = [*(a1 + 32) ignoreMaxRetryCount];
      v57 = [*(a1 + 32) disallowRefresh];
      v80 = [*(a1 + 32) originalTimestamp];
      v79 = [*(a1 + 32) prioritizedTokenList];
      v56 = [*(a1 + 32) wantsFirewallDonation];
      v78 = [*(a1 + 32) deliveryMinimumTimeDelay];
      v77 = [*(a1 + 32) deliveryMinimumTime];
      v76 = [*(a1 + 32) sendMode];
      v75 = [*(a1 + 32) keyTransparencyURIVerificationMap];
      v37 = [*(a1 + 32) sendReasonContainer];
      v38 = [*(a1 + 32) sendMetric];
      v55 = v36;
      v39 = v35;
      v40 = v34;
      v41 = v33;
      v42 = v17;
      v43 = *(a1 + 96);
      v44 = *(a1 + 104);
      v99[0] = _NSConcreteStackBlock;
      v99[1] = 3221225472;
      v99[2] = sub_1005E9CA8;
      v99[3] = &unk_100BD8D78;
      v100 = *(a1 + 32);
      v101 = *(a1 + 112);
      v54 = v44;
      v45 = v96;
      LOBYTE(v52) = v56;
      BYTE1(v51) = v57;
      LOBYTE(v51) = v58;
      BYTE2(v50) = v60;
      BYTE1(v50) = v61;
      LOBYTE(v50) = v62;
      LOBYTE(v49) = v67;
      v53 = v43;
      v17 = v42;
      BYTE3(v48) = v69;
      BYTE2(v48) = v70;
      BYTE1(v48) = v71;
      LOBYTE(v48) = v72;
      [v86 sendMessageDictionary:v91 messageID:v85 dataToEncrypt:v84 withEncryptedAttributes:v83 onService:v74 wantsResponse:v73 expirationDate:v82 enforceRemoteTimeouts:v48 canUseLargePayload:v68 sendOnePerToken:v49 allowPartialSendsToSucceed:v66 priority:v40 fireAndForget:v65 fromID:v39 fromShortHandle:v55 fromIdentity:v64 toURIs:v63 accessToken:v50 topic:v59 registrationProperties:v81 fakeMessage:v51 alwaysSkipSelf:v80 alwaysIncludeSelf:v79 forceQuery:v52 pushPriority:0 ignoreMaxRetryCount:v78 disallowRefresh:v77 originalTimestamp:v76 prioritizedTokenList:v75 wantsFirewallDonation:v37 destinationObject:v38 deliveryMinimumTimeDelay:v53 deliveryMinimumTime:v54 sendMode:v99 KTURIVerificationMap:? sendReasonContainer:? sendMetric:? ackBlock:? willSendBlock:? sendCompletionBlock:?];

      goto LABEL_25;
    }
  }

  v45 = v96;
  if (*(a1 + 112))
  {
    v46 = [[IDSDeliveryContext alloc] initWithResponseCode:2 error:0 lastCall:1];
    (*(*(a1 + 112) + 16))();

LABEL_25:
    v19 = v97;
  }
}

void sub_1005E9CA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 idsResponseCode];
    v6 = [v3 responseError];
    if ([v3 lastCall])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = [v3 displayURIs];
    v9 = [*(a1 + 32) messageUUID];
    *buf = 134219010;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " => Send completed with resultCode %ld, send error %@, lastCall %@ for displayURIs %@  messageUUID %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v3 idsResponseCode];
    v10 = [v3 responseError];
    [v3 lastCall];
    v11 = [v3 displayURIs];
    v13 = [*(a1 + 32) messageUUID];
    _IDSLogV();
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v3);
  }
}

void sub_1005E9EF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 idsResponseCode];
    v6 = [v3 responseError];
    if ([v3 lastCall])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = [v3 displayURIs];
    v9 = [*(a1 + 32) messageUUID];
    *buf = 134219010;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " => Send completed with resultCode %ld, send error %@, lastCall %@ for displayURIs %@  messageUUID %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v3 idsResponseCode];
    v10 = [v3 responseError];
    [v3 lastCall];
    v11 = [v3 displayURIs];
    v14 = [*(a1 + 32) messageUUID];
    _IDSLogV();
  }

  v12 = *(a1 + 40);
  voucher_adopt();
  if ([v3 lastCall])
  {
    v15 = _os_activity_create(&_mh_execute_header, "Send completed", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    memset(buf, 170, 16);
    os_activity_scope_enter(v15, buf);
    os_activity_scope_leave(buf);
    cut_arc_os_release();
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }
}

uint64_t sub_1005EA43C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1005EC5A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:@"self-token:"])
  {
    v4 = [v3 _stripFZIDPrefix];
    v5 = [v4 rangeOfString:@"/"];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v4;
    }

    else
    {
      v6 = [v4 substringToIndex:v5];
    }

    v8 = v6;
    v9 = [NSData __imDataWithHexString:v6];
    if ([v4 length] <= v5 + 1)
    {
      v12 = [*(a1 + 32) primaryRegistration];
      v13 = [v12 dsHandle];

      if (v13)
      {
        v11 = v13;
      }

      else
      {
        v15 = [*(a1 + 32) primaryRegistration];
        v16 = [v15 uris];

        if ([v16 count])
        {
          v11 = [v16 __imFirstObject];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v10 = [v4 substringFromIndex:?];
      if ([*(a1 + 32) hasDependentRegistrationWithURI:v10 token:v9])
      {
        v11 = v10;
      }

      else
      {
        v14 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = v3;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Couldn't resolve %@ to a valid dependent registration.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v19 = v3;
          _IDSLogV();
        }

        v11 = 0;
      }
    }

    if ([v9 length] && objc_msgSend(v11, "length"))
    {
      v7 = _IDSCopyIDForTokenWithURI();
    }

    else
    {
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v3;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not construct a destination for %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

uint64_t IDSProtoKeyTransparencyTrustedServiceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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
        if (v13 == 1)
        {
          v22 = PBReaderReadString();
          v23 = 32;
          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          if (v21)
          {
            [a1 addUris:v21];
          }

LABEL_37:

          goto LABEL_47;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(IDSProtoKeyTransparencyLoggableData);
            objc_storeStrong((a1 + 24), v21);
            v27[0] = 0xAAAAAAAAAAAAAAAALL;
            v27[1] = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !IDSProtoKeyTransparencyLoggableDataReadFrom(v21, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_37;
          case 4:
            v22 = PBReaderReadData();
            v23 = 8;
LABEL_40:
            v24 = *(a1 + v23);
            *(a1 + v23) = v22;

            goto LABEL_47;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              LOBYTE(v27[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27[0] & 0x7F) << v14;
              if ((v27[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_46;
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

LABEL_46:
            *(a1 + 16) = v20;
            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1005EF0A4(id a1)
{
  v1 = objc_alloc_init(IDSCurrentDevice);
  v2 = qword_100CBF2E0;
  qword_100CBF2E0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1005EF8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 184), 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1005EF8E8(uint64_t a1)
{
  v2 = [*(a1 + 32) forceEncryptionType];
  if ((v2 - 4) < 2 || v2 + 1 == 0)
  {
    v4 = [*(a1 + 32) fullDeviceIdentityContainerEncrypter];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 104);
    v8 = *(a1 + 105);
    v9 = *(a1 + 80);
    v10 = *(*(a1 + 88) + 8);
    v11 = *(v10 + 40);
    v12 = *(*(a1 + 96) + 8);
    v14 = *(a1 + 56);
    v13 = *(a1 + 64);
    v30 = *(v12 + 40);
    obj = v11;
    v15 = *(v9 + 8);
    v17 = *(v15 + 40);
    v16 = (v15 + 40);
    v29 = v17;
    v18 = [v4 encryptData:v5 encryptionContext:v6 forceSizeOptimizations:v7 resetState:v8 withEncryptedAttributes:v13 withPublicDeviceIdentityContainer:v14 usedIdentifier:&obj metadata:&v30 error:&v29];
    objc_storeStrong((v10 + 40), obj);
    objc_storeStrong((v12 + 40), v30);
    v19 = v29;
  }

  else
  {
    if (v2 != 6)
    {
      return;
    }

    v4 = [*(a1 + 32) fullDeviceIdentityContainerEncrypter];
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v23 = *(*(a1 + 80) + 8);
    v24 = *(v23 + 40);
    v16 = (v23 + 40);
    v32 = v24;
    v18 = [v4 offGridKeyDistributionEncryptData:v20 encryptionContext:v21 withPublicDeviceIdentityContainer:v22 error:&v32];
    v19 = v32;
  }

  v25 = v19;
  v26 = *v16;
  *v16 = v25;

  v27 = *(*(a1 + 72) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v18;
}

void sub_1005EFC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1005EFC8C(uint64_t a1)
{
  v2 = [*(a1 + 32) fullDeviceIdentityContainerEncrypter];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 72) + 8);
  obj = *(v6 + 40);
  v7 = [v2 legacyEncryptData:v3 withEncryptedAttributes:v4 withPublicDeviceIdentityContainer:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1005F00B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1005F00E0(uint64_t a1)
{
  v2 = [*(a1 + 32) fullDeviceIdentityContainerEncrypter];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 72) + 8);
  obj = *(v5 + 40);
  v6 = [v2 decryptData:v3 withPublicDeviceIdentityContainer:v4 error:&obj usingIdentifier:*(a1 + 56) isRetry:*(a1 + 80)];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_1005F0324(uint64_t a1)
{
  v2 = [*(a1 + 32) replayCommitter];
  v3 = [v2 decryptedDataForKey:*(a1 + 40)];

  v4 = [v3 decryptedData];
  v5 = [v3 encryptedAttributes];
  if (v4)
  {
    v6 = *(a1 + 72);
    v7 = [[IDSDecryptionMetadata alloc] initWithUsedLastResortCache:0 usedCachedData:1];
    (*(v6 + 16))(v6, v4, v5, 0, v7);
  }

  else
  {
    v8 = [*(a1 + 32) fullDeviceIdentityContainerEncrypter];
    v9 = [v8 decryptData:*(a1 + 48) decryptionContext:0 withPublicDeviceIdentityContainer:*(a1 + 56) usingIdentifier:*(a1 + 64) isRetry:*(a1 + 80)];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005F04AC;
    v10[3] = &unk_100BE1A90;
    v10[4] = *(a1 + 32);
    v12 = *(a1 + 72);
    v11 = *(a1 + 40);
    [v9 registerResultBlock:v10];
  }
}

void sub_1005F04AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = [v3 error];

    v5 = [v4 domain];
    if ([v5 isEqualToString:IDSDecryptionErrorDomain] && (objc_msgSend(v4, "code") == 12 || objc_msgSend(v4, "code") == 9))
    {
      v6 = [*(a1 + 32) endpoint];
      v7 = [v6 identityContainerDeserializationError];

      if (v7)
      {
        v8 = [v4 domain];
        v9 = [v4 code];
        v23 = NSUnderlyingErrorKey;
        v10 = [*(a1 + 32) endpoint];
        v11 = [v10 identityContainerDeserializationError];
        v24 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v13 = [NSError errorWithDomain:v8 code:v9 userInfo:v12];

        v4 = v13;
      }
    }

    else
    {
    }

    v20 = *(a1 + 48);
    v21 = objc_alloc_init(IDSDecryptionMetadata);
    (*(v20 + 16))(v20, 0, 0, v4, v21);
  }

  else
  {
    v22 = [v3 value];

    v14 = [v22 decryptedData];
    v15 = [v22 encryptedAttributes];
    v16 = [v22 commitBlock];
    if (!CUTIsInternalInstall() || (+[IMUserDefaults isWritePushPayloadsToDiskEnabled]& 1) == 0)
    {
      v17 = [*(a1 + 32) replayCommitter];
      [v17 holdCommitBlock:v16 andDecryptedData:v14 withEncryptedAttributes:v15 forKey:*(a1 + 40)];
    }

    v18 = *(a1 + 48);
    v19 = [[IDSDecryptionMetadata alloc] initWithUsedLastResortCache:0 usedCachedData:0];
    (*(v18 + 16))(v18, v14, v15, 0, v19);
  }
}