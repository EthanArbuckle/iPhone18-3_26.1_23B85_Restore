void sub_10066CFC8(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = *(a1 + 80);
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = [*(a1 + 32) rawMessage];
    v5 = v4;
    if (v2 == 3)
    {
      if (v4)
      {
        CFDictionarySetValue(v3, IDSIncomingMessagePushPayloadKey, v4);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DFD8();
      }

      v6 = *(a1 + 40);
      if (v6)
      {
        CFDictionarySetValue(v3, IDSIncomingMessageOriginalEncryptionTypeKey, v6);
      }

      v7 = *(a1 + 48);
      if (!v7)
      {
        goto LABEL_18;
      }

      v8 = &IDSIncomingMessageEngramEncryptedDataKey;
    }

    else
    {
      if (v4)
      {
        CFDictionarySetValue(v3, IDSIncomingMessagePushPayloadKey, v4);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DFD8();
      }

      v7 = *(a1 + 40);
      if (!v7)
      {
        goto LABEL_18;
      }

      v8 = &IDSIncomingMessageOriginalEncryptionTypeKey;
    }

    CFDictionarySetValue(v3, *v8, v7);
LABEL_18:
    (*(*(a1 + 72) + 16))();
  }
}

void sub_10066D110(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 lastCall])
  {
    if ([v3 idsResponseCode])
    {
      v4 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v6 = [v3 responseError];
        v7 = *(a1 + 32);
        *buf = 67109634;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "** Failed sending decryption error: %d, %@ to token: %@", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
      {
LABEL_12:
        v12 = [v3 responseError];
        _IDSLogV();
      }
    }

    else
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = [v3 responseError];
        v11 = *(a1 + 32);
        *buf = 67109634;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished sending decryption error: %d, %@  to token: %@", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
      {
        goto LABEL_12;
      }
    }
  }
}

void sub_10066D330(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10066D294);
  }

  _Unwind_Resume(a1);
}

void sub_10066DC20(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v123 = a2;
  v127 = a4;
  v128 = a5;
  v13 = a6;
  v14 = a7;
  v132 = v13;
  v15 = sub_1005C23F8(v13);
  v16 = [v14 encryptionType];
  v129 = v14;
  v133 = v15;
  if (([v14 usedCachedData] & 1) == 0)
  {
    v130 = [*(a1 + 32) command];
    if (v16 == 4)
    {
      v120 = [NSNumber numberWithBool:a3];
      v17 = 0;
      value = 0;
      v18 = 0;
      v19 = 0;
      v20 = v132;
    }

    else
    {
      v21 = [NSNumber numberWithBool:a3];
      v20 = 0;
      if ((v16 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }

      if ((v16 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      value = v22;
      v120 = 0;
      if ((v16 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v18 = 0;
      }

      else
      {
        v18 = v132;
      }

      if ((v16 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v19 = v132;
      }

      else
      {
        v19 = 0;
      }
    }

    v114 = v20;
    v117 = v18;
    v23 = v19;
    if (v16 == 4)
    {
      v24 = [v129 additionalDecryptionResult];
      v25 = [v24 objectForKey:&off_100C3CF58];
      v26 = v25;

      v23 = v26;
      if (![v26 code])
      {
        v27 = [v26 domain];
        v28 = [v27 isEqualToString:@"com.apple.messageprotection"];

        v23 = v26;
        if (v28)
        {

          v23 = 0;
        }
      }

      if (v25)
      {
        v25 = [NSNumber numberWithBool:v23 == 0];
      }

      v17 = v25;
    }

    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      *v155 = v120;
      *&v155[8] = 2112;
      *&v155[10] = value;
      *&v155[18] = 2112;
      *&v155[20] = v17;
      v156 = 2112;
      v157 = v130;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "EC overflow message came in, processing metric {ECSuccess: %@, legacySuccess: %@, secondarySuccess: %@, command: %@}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v110 = v17;
      v111 = v130;
      v105 = v120;
      v108 = value;
      _IDSLogV();
    }

    v30 = *(a1 + 40);
    v31 = [v129 usedLastResortCache];
    v32 = [*(a1 + 48) prefixedURI];
    v33 = [*(a1 + 56) rawToken];
    v34 = [*(a1 + 64) pushHandlerForAPSDelegatePort];
    v35 = [v34 pushToken];
    LOBYTE(v106) = v31;
    [IDSMessageMetricReporter reportMessageMetricWithMetadata:v30 secondarySuccess:v17 ECSuccess:v120 legacySuccess:value command:v130 decryptedEqual:1 triedLastResort:v106 secondaryError:v23 ECError:v114 legacyError:v117 fromDestination:v32 fromToken:v33 toToken:v35];

    v15 = v133;
  }

  if (v15)
  {
    v36 = [NSError errorWithDomain:IDSGenericErrorDomain code:v15 userInfo:0];
    if ([*(a1 + 64) _shouldForgetCachedPeerTokensForDecryptionErrorType:v133 withOriginalDecryptionError:v132])
    {
      v37 = *(a1 + 48);
      v39 = *(a1 + 64);
      v38 = *(a1 + 72);
      v40 = [*(a1 + 80) queryService];
      LODWORD(v37) = [v39 _shouldRateLimitCacheClearForPeerTokensForDecryptionErrorType:v133 withOriginalDecryptionError:v132 fromURI:v37 toURI:v38 service:v40];

      if (v37)
      {
        v41 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(a1 + 48);
          *buf = 138412290;
          *v155 = v42;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Already attempted to blow away local peer cache for URI: %@, not trying again", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v105 = *(a1 + 48);
          _IDSLogV();
        }
      }

      else
      {
        v70 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = *(a1 + 48);
          *buf = 138412290;
          *v155 = v71;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Blowing away local peer cache for peer tokens for URI: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v105 = *(a1 + 48);
          _IDSLogV();
        }

        v72 = +[IDSPeerIDManager sharedInstance];
        v73 = *(a1 + 48);
        v74 = *(a1 + 72);
        v75 = [*(a1 + 80) queryService];
        [v72 forgetPeerTokensForURI:v73 fromURI:v74 service:v75 reason:2];
      }
    }

    v76 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v77 = *(a1 + 88);
      *buf = 67109634;
      *v155 = v133;
      *&v155[4] = 2112;
      *&v155[6] = v77;
      *&v155[14] = 2112;
      *&v155[16] = v132;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "** Had decryption error: %d { guid: %@, error: %@ }", buf, 0x1Cu);
    }

    v78 = os_log_shim_legacy_logging_enabled();
    v79 = v133;
    if (v78)
    {
      v108 = *(a1 + 88);
      v110 = v132;
      v105 = v133;
      _IDSLogEventV();
      v79 = v133;
    }

    sub_1005C2038(v79);
    FTAWDLogIMessageReceived();
    v148[0] = _NSConcreteStackBlock;
    v148[1] = 3221225472;
    v148[2] = sub_10066EF94;
    v148[3] = &unk_100BE37A0;
    v153 = *(a1 + 128);
    v149 = *(a1 + 32);
    v150 = *(a1 + 96);
    v131 = v36;
    v151 = v131;
    v152 = *(a1 + 104);
    v80 = objc_retainBlock(v148);
    if (*(a1 + 136) == 5)
    {
      v81 = v132;
    }

    else
    {
      v81 = 0;
    }

    v82 = v81;
    if (*(a1 + 136) == 4)
    {
      v83 = v132;
    }

    else
    {
      v83 = 0;
    }

    v84 = v83;
    if ((*(a1 + 136) & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v85 = 0;
    }

    else
    {
      v85 = v132;
    }

    v116 = v82;
    v119 = v84;
    v122 = v85;
    valueb = [*(a1 + 64) _failureReasonMessageFromSecondaryError:v82 ECError:v84 andLegacyError:?];
    if ([*(a1 + 64) _shouldReplyWithCertifiedDeliveryReceiptForDecryptionErrorType:v133])
    {
      v86 = *(a1 + 64);
      v87 = *(a1 + 32);
      v88 = *(a1 + 112);
      v89 = [NSNumber numberWithInteger:v133];
      [v86 _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v87 service:v88 failureReason:v89 failureReasonMessage:valueb generateDeliveryReceipt:0];
    }

    if ([*(a1 + 64) _shouldReplyWithRemoteDecryptionErrorMessageForDecryptionErrorType:{v133, v105, v108, v110}])
    {
      v90 = objc_alloc_init(NSMutableDictionary);
      v91 = IDSGetUUIDData();
      if (v91)
      {
        CFDictionarySetValue(v90, IDSFailedUUIDKey, v91);
      }

      v92 = *(a1 + 88);
      if (v92)
      {
        CFDictionarySetValue(v90, IDSFailedMessageIDKey, v92);
      }

      v93 = [NSNumber numberWithInteger:v133];
      if (v93)
      {
        CFDictionarySetValue(v90, IDSFailureReasonKey, v93);
      }

      if (valueb)
      {
        CFDictionarySetValue(v90, IDSFailureReasonMessageKey, valueb);
      }

      v112 = [*(a1 + 32) command];
      v94 = (a1 + 56);
      v95 = [*(a1 + 56) rawToken];
      v96 = [*(a1 + 48) prefixedURI];
      v113 = _IDSCopyIDForTokenWithURI();

      v98 = *(a1 + 64);
      v97 = *(a1 + 72);
      v99 = [NSSet setWithObject:v113];
      v100 = [IDSDestination destinationWithStrings:v99];
      v101 = [*(a1 + 120) uniqueID];
      v102 = [NSNumber numberWithInteger:120];
      v145[0] = _NSConcreteStackBlock;
      v145[1] = 3221225472;
      v145[2] = sub_10066F060;
      v145[3] = &unk_100BE3750;
      v147 = v133;
      v146 = *v94;
      LOBYTE(v109) = 1;
      [v98 _sendErrorMessage:v90 originalCommand:v112 fromURI:v97 toDestinations:v100 usingAccountWithUniqueID:v101 useDictAsTopLevel:1 dataToEncrypt:-1.0 wantsResponse:0 timeout:v109 command:v102 priority:300 sendReasonPathID:11 completionBlock:v145];
    }

    (v80[2])(v80);

    v103 = v153;
  }

  else
  {
    if ([v129 usedLastResortCache])
    {
      [*(a1 + 64) _submitLastResortCacheMetricForGUID:*(a1 + 88) service:*(a1 + 112)];
    }

    v43 = [v127 _FTOptionallyDecompressData];
    v131 = JWDecodeDictionary();

    if (!v131)
    {
      v131 = JWDecodeDictionary();
    }

    v44 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v155 = v131;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "messageDictionary: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v105 = v131;
      _IDSLogV();
    }

    valuea = [v131 _stringForKey:{@"mmcs-url", v105}];
    v134 = [v131 _stringForKey:@"mmcs-signature-hex"];
    v121 = [v131 _stringForKey:@"mmcs-owner"];
    if (v128)
    {
      v45 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v155 = v128;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Gossip - EncryptedAttributes: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v107 = v128;
        _IDSLogV();
      }

      v46 = [v128 objectForKeyedSubscript:{NGMEncryptedAttributeKTGossipData, v107}];

      if (v46)
      {
        v47 = +[IDSKTGossipManager sharedInstance];
        v48 = [v128 objectForKeyedSubscript:NGMEncryptedAttributeKTGossipData];
        [v47 sthReceivedFromGossipReceipient:v48];
      }
    }

    v49 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v155 = v134;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, " => Settled on signature: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v107 = v134;
      _IDSLogV();
    }

    if (v134 && valuea && v121)
    {
      v50 = +[NSFileManager defaultManager];
      v51 = [v50 _randomTemporaryPathWithSuffix:0];

      v52 = [[IDSServiceProperties alloc] initWithServiceIdentifier:*(a1 + 112)];
      v118 = [v52 dataUsageBundleID];
      v53 = [IDSDaemon _IMTransferServiceController]_0();
      v54 = +[NSString stringGUID];
      v55 = *(a1 + 112);
      v56 = [v134 _FTDataFromHexString];
      v135[0] = _NSConcreteStackBlock;
      v135[1] = 3221225472;
      v135[2] = sub_10066F62C;
      v135[3] = &unk_100BE37E8;
      v135[4] = *(a1 + 64);
      v136 = *(a1 + 32);
      v137 = *(a1 + 112);
      v138 = *(a1 + 48);
      v139 = *(a1 + 104);
      v142 = *(a1 + 128);
      v140 = *(a1 + 88);
      v141 = *(a1 + 96);
      [v53 receiveFileTransfer:v54 topic:v55 path:v51 requestURLString:valuea ownerID:v121 sourceAppID:v118 signature:v56 decryptionKey:0 fileSize:0 progressBlock:&stru_100BE37C0 completionBlock:v135];
    }

    else
    {
      v57 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, " => Missing fields from dictionary, returning error", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      [*(a1 + 64) _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:*(a1 + 32) service:*(a1 + 112) failureReason:&off_100C3CF70 failureReasonMessage:0 generateDeliveryReceipt:{0, v107}];
      v51 = objc_alloc_init(NSMutableDictionary);
      v58 = IDSGetUUIDData();
      if (v58)
      {
        CFDictionarySetValue(v51, IDSFailedUUIDKey, v58);
      }

      v59 = *(a1 + 88);
      if (v59)
      {
        CFDictionarySetValue(v51, IDSFailedMessageIDKey, v59);
      }

      v60 = [NSNumber numberWithInt:400];
      if (v60)
      {
        CFDictionarySetValue(v51, IDSFailureReasonKey, v60);
      }

      v52 = [*(a1 + 32) command];
      v61 = [*(a1 + 56) rawToken];
      v62 = [*(a1 + 48) prefixedURI];
      v118 = _IDSCopyIDForTokenWithURI();

      v63 = *(a1 + 64);
      v115 = *(a1 + 72);
      v64 = [NSSet setWithObject:v118];
      v65 = [IDSDestination destinationWithStrings:v64];
      v66 = [*(a1 + 120) uniqueID];
      v67 = [NSNumber numberWithInteger:120];
      v143[0] = _NSConcreteStackBlock;
      v143[1] = 3221225472;
      v143[2] = sub_10066F2B4;
      v143[3] = &unk_100BD9D10;
      v144 = *(a1 + 56);
      LOBYTE(v108) = 1;
      [v63 _sendErrorMessage:v51 originalCommand:v52 fromURI:v115 toDestinations:v65 usingAccountWithUniqueID:v66 useDictAsTopLevel:1 dataToEncrypt:-1.0 wantsResponse:0 timeout:v108 command:v67 priority:300 sendReasonPathID:11 completionBlock:v143];

      if (*(a1 + 128))
      {
        v68 = objc_alloc_init(NSMutableDictionary);
        v69 = [*(a1 + 32) rawMessage];
        if (v69)
        {
          CFDictionarySetValue(v68, IDSIncomingMessagePushPayloadKey, v69);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10092DFD8();
        }

        v104 = *(a1 + 96);
        if (v104)
        {
          CFDictionarySetValue(v68, IDSIncomingMessageOriginalEncryptionTypeKey, v104);
        }

        (*(*(a1 + 128) + 16))();
      }
    }

    v103 = valuea;
  }
}

void sub_10066EF94(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = [*(a1 + 32) rawMessage];
    if (v3)
    {
      CFDictionarySetValue(v2, IDSIncomingMessagePushPayloadKey, v3);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092DFD8();
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      CFDictionarySetValue(v2, IDSIncomingMessageOriginalEncryptionTypeKey, v4);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_10066F060(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 lastCall])
  {
    if ([v3 idsResponseCode])
    {
      v4 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v6 = [v3 responseError];
        v7 = *(a1 + 32);
        *buf = 67109634;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "** Failed sending decryption error: %d %@ to token: %@", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
      {
LABEL_12:
        v12 = [v3 responseError];
        _IDSLogV();
      }
    }

    else
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = [v3 responseError];
        v11 = *(a1 + 32);
        *buf = 67109634;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished sending decryption error: %d %@ to token: %@", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
      {
        goto LABEL_12;
      }
    }
  }
}

void sub_10066F280(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10066F1E4);
  }

  _Unwind_Resume(a1);
}

void sub_10066F2B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 lastCall])
  {
    if ([v3 idsResponseCode])
    {
      v4 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 responseError];
        v6 = *(a1 + 32);
        *buf = 67109634;
        v12 = 400;
        v13 = 2112;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "** Failed sending download (bad field) error: %d %@ to token: %@", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
      {
LABEL_12:
        v10 = [v3 responseError];
        _IDSLogV();
      }
    }

    else
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v3 responseError];
        v9 = *(a1 + 32);
        *buf = 67109634;
        v12 = 400;
        v13 = 2112;
        v14 = v8;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished sending download (bad field) error: %d %@ to token: %@", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
      {
        goto LABEL_12;
      }
    }
  }
}

void sub_10066F4CC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10066F434);
  }

  _Unwind_Resume(a1);
}

void sub_10066F500(id a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v9 = a2;
    v10 = 2048;
    v11 = a3;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attachment data download updated to %lld of %lld (%lld bps)", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_10066F62C(void *a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (a4)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "retrieved message data for incoming attachent message", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v16 = a1[4];
    v17 = a1[5];
    v18 = [NSURL fileURLWithPath:v12];
    v19 = [NSData dataWithContentsOfURL:v18 options:1 error:0];
    [v16 _optionallyDecryptNiceMessage:v17 encryptedData:v19 forGroupID:0 forTopic:a1[6] fromURI:a1[7] certifiedDeliveryContext:a1[8] incomingMetric:0 completionBlock:a1[11]];
  }

  else
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a1[9];
      v22 = a1[7];
      *buf = 138412802;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to grab message data for message ID: %@ from: %@ error %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v18 = objc_alloc_init(NSMutableDictionary);
    v23 = [a1[5] rawMessage];
    if (v23)
    {
      CFDictionarySetValue(v18, IDSIncomingMessagePushPayloadKey, v23);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092DFD8();
    }

    v24 = a1[10];
    if (v24)
    {
      CFDictionarySetValue(v18, IDSIncomingMessageOriginalEncryptionTypeKey, v24);
    }

    (*(a1[11] + 16))(a1[11], v18, 0);
  }
}

uint64_t sub_10066FAF4(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 32) + 304));
  --*(*(a1 + 32) + 368);
  v2 = *(a1 + 32);
  if (!*(v2 + 368))
  {
    v3 = *(v2 + 376);
    *(v2 + 376) = 0;

    v2 = *(a1 + 32);
  }

  return pthread_mutex_unlock((v2 + 304));
}

void sub_100671D50(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v5 = a1[4];
  theDict = v4;
  if (v5)
  {
    CFDictionarySetValue(v4, IDSOriginalCommandKey, v5);
  }

  v6 = a1[5];
  if (v6)
  {
    CFDictionarySetValue(theDict, IDSIncomingMessagePushPayloadKey, v6);
  }

  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = [IDSURI URIWithPrefixedURI:a1[8]];
  v11 = [IDSURI URIWithPrefixedURI:a1[9]];
  [v3 messageReceived:theDict withGUID:v7 withPayload:v8 forTopic:v9 toURI:v10 fromURI:v11 context:a1[10]];
}

void sub_100671E64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a2;
  v8 = [IDSURI URIWithPrefixedURI:v6];
  v9 = [IDSURI URIWithPrefixedURI:*(a1 + 64)];
  [v7 protobufReceived:v3 withGUID:v4 forTopic:v5 toURI:v8 fromURI:v9 context:*(a1 + 72)];

  if ([*(a1 + 48) hasPrefix:@"com.apple.private.alloy.continuity"])
  {
    v10 = [*(a1 + 72) objectForKey:IDSMessageContextSequenceNumberKey];
    [v10 unsignedIntegerValue];
    kdebug_trace();
  }
}

void sub_100671F90(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  v9 = [IDSURI URIWithPrefixedURI:v6];
  v8 = [IDSURI URIWithPrefixedURI:a1[8]];
  [v7 dataReceived:v3 withGUID:v4 forTopic:v5 toURI:v9 fromURI:v8 context:a1[9]];
}

void sub_10067204C(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  v9 = [IDSURI URIWithPrefixedURI:v6];
  v8 = [IDSURI URIWithPrefixedURI:a1[8]];
  [v7 dataReceived:v3 withGUID:v4 forTopic:v5 toURI:v9 fromURI:v8 context:a1[9]];
}

void sub_100672108(uint64_t a1, void *a2)
{
  v42 = a2;
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v55 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "The Account Was %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v40 = *(a1 + 32);
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v40 = *(a1 + 32);
        _IDSLogV();
      }
    }
  }

  v4 = +[IDSDAccountController sharedInstance];
  v5 = [v4 accountsOnService:*(a1 + 40) withType:0];
  v46 = [v5 firstObject];

  v6 = [*(a1 + 48) objectForKey:@"dd"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 48) objectForKey:@"dd"];
    value = [NSData _IDSDataFromBase64String:v7];
  }

  else
  {
    v7 = [*(a1 + 48) objectForKey:@"dd"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = [*(a1 + 48) objectForKey:@"dd"];
    }

    else
    {
      value = 0;
    }
  }

  v8 = objc_opt_class();
  v43 = sub_10001B8C4(v8, *(a1 + 48), @"U");
  v9 = JWDecodeDictionary();
  theDict = objc_alloc_init(NSMutableDictionary);
  if (value)
  {
    CFDictionarySetValue(theDict, IDSIncomingMessageDecryptedDataKey, value);
  }

  CFDictionarySetValue(theDict, IDSIncomingMessageOriginalEncryptionTypeKey, @"pair");
  if ([v46 accountType] == 1)
  {
    v10 = [v46 primaryRegistration];
    v11 = [v10 dsHandle];
    v44 = [v11 _stripFZIDPrefix];

    [*(a1 + 40) shouldRegisterUsingDSHandle];
    v12 = [*(a1 + 40) identifier];
    _IDSPrefersPhoneNumbersForServiceIdentifier();

    v13 = [v46 unprefixedURIStringsFromRegistration];
    v14 = [v46 pseudonyms];
    v15 = _IDSCopyCallerIDWithPseudonyms();
    v16 = [v15 _bestGuessURI];
  }

  else
  {
    v44 = [v46 accountInfo];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v17 = [v44 objectForKeyedSubscript:kIDSServiceDefaultsVettedAliasesKey];
    v18 = [v17 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v18)
    {
      v19 = *v50;
LABEL_18:
      v20 = 0;
      while (1)
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [v9 _arrayForKey:@"p"];
        v22 = _IDSCopyIDForPhoneNumberWithOptions();
        v23 = [v21 containsObject:v22];

        if (v23)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v17 countByEnumeratingWithState:&v49 objects:v53 count:16];
          if (v18)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }
      }

      v16 = _IDSCopyIDForPhoneNumberWithOptions();

      if (v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_24:
    }

    v13 = [v46 loginID];
    v16 = _IDSCopyIDForPhoneNumberWithOptions();
  }

LABEL_28:
  v24 = objc_alloc_init(NSMutableDictionary);
  v25 = v24;
  v26 = *(a1 + 56);
  if (v26)
  {
    CFDictionarySetValue(v24, IDSCommandKey, v26);
  }

  v27 = IDSGetUUIDData();
  if (v27)
  {
    CFDictionarySetValue(v25, IDSUUIDKey, v27);
  }

  if (v16)
  {
    CFDictionarySetValue(v25, IDSSenderIDKey, v16);
    CFDictionarySetValue(v25, IDSReceiverIDKey, v16);
  }

  v28 = +[IDSPairingManager sharedInstance];
  v29 = [v28 pairedDevicePushToken];

  if (v29)
  {
    CFDictionarySetValue(v25, IDSTokenKey, v29);
  }

  v30 = [v9 objectForKey:@"p"];

  if (v30)
  {
    v31 = [v9 objectForKey:@"p"];
    if (v31)
    {
      CFDictionarySetValue(v25, @"p", v31);
    }
  }

  v32 = IDSDeliveryStatusContextKey;
  v33 = [v9 objectForKey:IDSDeliveryStatusContextKey];

  if (v33)
  {
    v34 = [v9 objectForKey:v32];
    if (v34)
    {
      CFDictionarySetValue(v25, v32, v34);
    }
  }

  if (v25)
  {
    CFDictionarySetValue(theDict, IDSIncomingMessagePushPayloadKey, v25);
  }

  v35 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = theDict;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "The message that will be broadcast is %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v41 = theDict;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v41 = theDict;
        _IDSLogV();
      }
    }
  }

  v37 = *(a1 + 64);
  v36 = *(a1 + 72);
  v38 = [IDSURI URIWithPrefixedURI:*(a1 + 80), v41];
  v39 = [IDSURI URIWithPrefixedURI:*(a1 + 88)];
  [v42 messageReceived:theDict withGUID:v37 withPayload:v25 forTopic:v36 toURI:v38 fromURI:v39 context:*(a1 + 96)];
}

void sub_100672930(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [IDSURI URIWithPrefixedURI:v5];
  [v6 messageIdentifier:v3 forTopic:v4 toURI:v7 fromURI:0 hasBeenDeliveredWithContext:a1[7]];
}

void sub_1006729C8(id a1, NSArray *a2, NSArray *a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Will Send Block After Send", v10, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

void sub_100672AC0(id a1, IDSDeliveryContext *a2)
{
  v2 = a2;
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Message Send After Transposing", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

void sub_100672B90(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a2;
  v10 = [IDSURI URIWithPrefixedURI:v7];
  v9 = [IDSURI URIWithPrefixedURI:a1[9]];
  [v8 messageReceived:v3 withGUID:v4 withPayload:v5 forTopic:v6 toURI:v10 fromURI:v9 context:a1[10]];
}

void sub_100672C60(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v5 = a1[4];
  theDict = v4;
  if (v5)
  {
    CFDictionarySetValue(v4, IDSOriginalCommandKey, v5);
  }

  v6 = a1[5];
  if (v6)
  {
    CFDictionarySetValue(theDict, IDSIncomingMessagePushPayloadKey, v6);
  }

  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = [IDSURI URIWithPrefixedURI:a1[9]];
  v12 = [IDSURI URIWithPrefixedURI:a1[10]];
  [v3 messageReceived:v7 withGUID:v9 withPayload:v8 forTopic:v10 toURI:v11 fromURI:v12 context:a1[11]];
}

void sub_100672D78(void *a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[7];
    v9 = a1[8];
    *buf = 138413314;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PROXY BROADCASTING BLOCK %@ Guid %@ Topic %@ ToID %@ fromID %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = a1[8];
    v15 = *(a1 + 2);
    v16 = *(a1 + 3);
    _IDSLogV();
  }

  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = [IDSURI URIWithPrefixedURI:a1[7], v15, v16, v17];
  v14 = [IDSURI URIWithPrefixedURI:a1[8]];
  [v3 dataReceived:v10 withGUID:v11 forTopic:v12 toURI:v13 fromURI:v14 context:a1[9]];
}

void sub_100672F34(void *a1, void *a2)
{
  v3 = a2;
  v8 = JWDecodeDictionary();
  v4 = a1[5];
  v5 = a1[6];
  v6 = [IDSURI URIWithPrefixedURI:a1[7]];
  v7 = [IDSURI URIWithPrefixedURI:a1[8]];
  [v3 protobufReceived:v8 withGUID:v4 forTopic:v5 toURI:v6 fromURI:v7 context:a1[9]];
}

id sub_100672FF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = +[IDSDaemonPriorityQueueController sharedInstance];
  v5 = [v4 queueForPriority:{objc_msgSend(*(a1 + 48), "intValue")}];
  [v2 getLocalIncomingPowerAssertion:v3 queue:v5];

  return [*(a1 + 32) enqueueIncomingMessageBroadcast:*(a1 + 88) broadcastData:*(a1 + 56) forTopic:*(a1 + 64) entitlement:kIDSMessagingEntitlement command:*(a1 + 72) capabilities:*(a1 + 96) messageContext:*(a1 + 80)];
}

id sub_1006730A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = im_primary_queue();
  [v2 getLocalIncomingPowerAssertion:v3 queue:v4];

  return [*(a1 + 32) enqueueIncomingMessageBroadcast:*(a1 + 80) broadcastData:*(a1 + 48) forTopic:*(a1 + 56) entitlement:kIDSMessagingEntitlement command:*(a1 + 64) capabilities:*(a1 + 88) messageContext:*(a1 + 72)];
}

void sub_100673B30(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1006739D0);
  }

  _Unwind_Resume(a1);
}

void sub_100674B10(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x100674B1CLL);
}

int64_t sub_100674B24(id a1, IDSDIncomingMessage *a2, IDSDIncomingMessage *a3)
{
  v4 = a3;
  v5 = [(IDSDIncomingMessage *)a2 message];
  v6 = [v5 _numberForKey:@"e"];

  v7 = [(IDSDIncomingMessage *)v4 message];

  v8 = [v7 _numberForKey:@"e"];

  if (v6 && v8)
  {
    v9 = [v6 compare:v8];
  }

  else if (v6 || !v8)
  {
    if (v6)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

id sub_100674C10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) unsignedIntValue];

  return [v1 _processStoredIncomingRemoteMessagesWithGUIDs:0 ignoringGUIDs:0 controlCategory:v2 lastTimeInterval:0 repeatedAttempt:0.0];
}

void sub_100674DD0(uint64_t a1)
{
  v2 = +[IDSPairingManager sharedInstance];
  v3 = [v2 pairedDeviceUniqueID];

  v4 = [IDSDMessageStore unsentOutgoingMessagesUpToLimit:10000 priority:*(a1 + 56) wantsPayload:0 localDestinationDeviceID:v3];
  v5 = objc_alloc_init(IMMessageContext);
  [v5 setShouldBoost:*(a1 + 56) == 300];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 count];
    v8 = *(a1 + 56);
    v9 = @"Sync";
    if (v8 == 200)
    {
      v9 = @"Default";
    }

    if (v8 == 300)
    {
      v10 = @"URGENT";
    }

    else
    {
      v10 = v9;
    }

    *buf = 134218242;
    v37 = v7;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Processing stored %lu outgoing messages due to unpairing. Priority %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = [v4 count];
    v12 = *(a1 + 56);
    v13 = @"Sync";
    if (v12 == 200)
    {
      v13 = @"Default";
    }

    if (v12 == 300)
    {
      v14 = @"URGENT";
    }

    else
    {
      v14 = v13;
    }

    v26 = v11;
    v27 = v14;
    _IDSLogV();
  }

  v15 = [IDSDaemonPriorityQueueController sharedInstance:v26];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1006751A0;
  v28[3] = &unk_100BE3980;
  v16 = v4;
  v29 = v16;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v30 = v17;
  v31 = v18;
  v34 = *(a1 + 64);
  v32 = v19;
  v20 = v5;
  v21 = *(a1 + 56);
  v33 = v20;
  v35 = v21;
  [v15 performBlockMainQueue:v28];

  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 56);
    v24 = @"Sync";
    if (v23 == 200)
    {
      v24 = @"Default";
    }

    if (v23 == 300)
    {
      v25 = @"URGENT";
    }

    else
    {
      v25 = v24;
    }

    *buf = 138412290;
    v37 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Finished processing stored outgoing messages due to unpairing. Priority %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

void sub_1006751A0(uint64_t a1)
{
  v32 = objc_alloc_init(NSMutableArray);
  v33 = objc_alloc_init(NSMutableArray);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v35 = a1;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v2)
  {
    v3 = *v44;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v44 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v43 + 1) + 8 * i);
        v6 = objc_autoreleasePoolPush();
        v7 = +[IDSDAccountController sharedInstance];
        v8 = [v5 accountGUID];
        v9 = [v7 accountWithUniqueID:v8];

        if (v9)
        {
          v10 = [v9 service];
          if ([v10 adHocServiceType] != 2)
          {
            v11 = [v9 service];
            v12 = [v11 adHocServiceType] == 5;

LABEL_14:
            goto LABEL_15;
          }

LABEL_13:
          v12 = 1;
          goto LABEL_14;
        }

        v13 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [v5 accountGUID];
          *buf = 138412290;
          v48 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Found stored outgoing message from account with guid %@ which no longer exists or is not local type.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          v30 = [v5 accountGUID];
          _IDSWarnV();

          v31 = [v5 accountGUID];
          _IDSLogV();

          v10 = [v5 accountGUID];
          _IDSLogTransport();
          goto LABEL_13;
        }

        v12 = 1;
LABEL_15:
        if (*(v35 + 40))
        {
          v15 = [v9 service];
          v16 = [v15 allowedTrafficClasses];
          v17 = _IDSIsTrafficAllowed();

          v18 = v17 ^ 1;
        }

        else
        {
          v18 = 1;
        }

        if ((v12 & v18) == 1)
        {
          v19 = [v9 service];
          v20 = [v19 pushTopic];

          if (v20)
          {
            v21 = [v9 service];
            v22 = [v21 pushTopic];
            v23 = [IMPair pairWithFirst:v22 second:v5];

            [v33 addObject:v23];
          }

          else
          {
            [v32 addObject:v5];
          }
        }

        objc_autoreleasePoolPop(v6);
      }

      v2 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v2);
  }

  v24 = +[IDSDaemonPriorityQueueController sharedInstance];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100675654;
  v36[3] = &unk_100BD8E10;
  v37 = v32;
  v38 = v33;
  v25 = *(v35 + 72);
  v26 = *(v35 + 56);
  v39 = *(v35 + 48);
  v42 = v25;
  v40 = v26;
  v41 = *(v35 + 64);
  v27 = *(v35 + 80);
  v28 = v33;
  v29 = v32;
  [v24 performBlockWithPriority:v36 priority:v27];
}

void sub_100675654(uint64_t a1)
{
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v41;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v41 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v40 + 1) + 8 * i);
        v8 = [v7 guid];
        v9 = [v7 alternateGUID];
        [IDSDMessageStore deleteOutgoingMessageWithGUID:v8 alternateGUID:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v4);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 40);
  v10 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v30 = *v37;
    key = IDSMessageContextServiceIdentifierKey;
    v27 = IDSMessageContextOriginalDestinationDeviceKey;
    v29 = kIDSMessagingEntitlement;
    v12 = kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * j);
        v15 = [v14 first];
        v16 = [v14 second];
        v17 = objc_alloc_init(NSMutableDictionary);
        v18 = v17;
        if (v15)
        {
          CFDictionarySetValue(v17, key, v15);
        }

        v19 = [v16 localDestinationDeviceUUID];
        if (v19)
        {
          CFDictionarySetValue(v18, v27, v19);
        }

        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1006759D4;
        v31[3] = &unk_100BE3958;
        v35 = *(a1 + 72);
        v20 = *(a1 + 48);
        v32 = *(a1 + 56);
        v33 = v16;
        v34 = v18;
        v21 = *(a1 + 64);
        v22 = v18;
        v23 = v16;
        [v20 enqueueBroadcast:v31 forTopic:v15 entitlement:v29 command:0 capabilities:v12 messageContext:v21];
        v24 = [v23 guid];
        v25 = [v23 alternateGUID];
        [IDSDMessageStore deleteOutgoingMessageWithGUID:v24 alternateGUID:v25];
      }

      v11 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v11);
  }
}

void sub_1006759D4(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = IDSSendErrorDomain;
  v4 = *(a1 + 56);
  v5 = [NSDictionary dictionaryWithObject:*(a1 + 32) forKey:@"Reason"];
  v6 = [NSError errorWithDomain:v3 code:v4 userInfo:v5];

  if (v10)
  {
    v7 = [*(a1 + 40) guid];
    v8 = [*(a1 + 40) alternateGUID];
    v9 = [*(a1 + 40) mainAccountGuid];
    [v10 messageIdentifier:v7 alternateCallbackID:v8 forAccount:v9 updatedWithResponseCode:objc_msgSend(v6 error:"code") lastCall:v6 context:{1, *(a1 + 48)}];
  }
}

void sub_100676A70(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x100675F7CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_100676AD4(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 lastCall])
  {
    if (!a1[4])
    {
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [a1[6] guid];
        v22 = [v3 lastCall];
        v23 = @"NO";
        if (v22)
        {
          v23 = @"YES";
        }

        *buf = 138412546;
        v38 = v21;
        v39 = 2112;
        v40 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Deleting sent outgoing urgent message with guid %@? %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v24 = [a1[6] guid];
        v25 = [v3 lastCall];
        v26 = @"NO";
        if (v25)
        {
          v26 = @"YES";
        }

        v30 = v24;
        v31 = v26;
        _IDSLogV();
      }

      goto LABEL_19;
    }

    v4 = [a1[5] serviceController];
    v5 = [v4 serviceWithPushTopic:a1[4]];
    v6 = [v5 shouldSilentlyFailMessagesOnSwitch];

    v7 = [v3 responseError];
    v8 = ([v7 code] == 24) & v6;

    if (v8 != 1)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100676FFC;
      v32[3] = &unk_100BDA898;
      v27 = a1[5];
      v33 = a1[4];
      v34 = a1[7];
      v28 = v3;
      v29 = a1[6];
      v35 = v28;
      v36 = v29;
      [v27 enqueueBroadcast:v32 forTopic:a1[4] entitlement:kIDSMessagingEntitlement command:0 capabilities:kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates messageContext:0];

      v18 = v33;
      goto LABEL_31;
    }

    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 138412290;
      v38 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Silently failing %@ messages due to watch switch", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v30 = a1[4];
      _IDSLogV();
    }

    if ([v3 lastCall])
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [a1[6] guid];
        v13 = [v3 lastCall];
        v14 = @"NO";
        if (v13)
        {
          v14 = @"YES";
        }

        *buf = 138412546;
        v38 = v12;
        v39 = 2112;
        v40 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deleting sent outgoing urgent message with guid %@? %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v15 = [a1[6] guid];
        v16 = [v3 lastCall];
        v17 = @"NO";
        if (v16)
        {
          v17 = @"YES";
        }

        v30 = v15;
        v31 = v17;
        _IDSLogV();
      }

LABEL_19:
      v18 = [a1[6] guid];
      v19 = [a1[6] alternateGUID];
      [IDSDMessageStore deleteOutgoingMessageWithGUID:v18 alternateGUID:v19];

LABEL_31:
    }
  }
}

void sub_100676FFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    CFDictionarySetValue(v4, IDSMessageContextServiceIdentifierKey, v6);
  }

  v7 = [*(a1 + 40) localDestinationDeviceUUID];
  if (v7)
  {
    CFDictionarySetValue(v5, IDSMessageContextOriginalDestinationDeviceKey, v7);
  }

  v8 = [*(a1 + 40) command];
  if (v8)
  {
    CFDictionarySetValue(v5, IDSMessageContextOriginalCommandKey, v8);
  }

  v9 = [*(a1 + 48) responseTimeStamp];
  if (v9)
  {
    CFDictionarySetValue(v5, IDSMessageContextServerTimestampKey, v9);
  }

  if (v3)
  {
    v10 = [*(a1 + 40) identifier];
    v11 = [*(a1 + 40) alternateCallbackID];
    v12 = [*(a1 + 40) mainAccountUUID];
    v13 = [*(a1 + 48) idsResponseCode];
    v14 = [*(a1 + 48) responseError];
    [v3 messageIdentifier:v10 alternateCallbackID:v11 forAccount:v12 updatedWithResponseCode:v13 error:v14 lastCall:objc_msgSend(*(a1 + 48) context:{"lastCall"), v5}];
  }

  if ([*(a1 + 48) lastCall])
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 56) guid];
      v17 = [*(a1 + 48) lastCall];
      v18 = @"NO";
      if (v17)
      {
        v18 = @"YES";
      }

      *buf = 138412546;
      v27 = v16;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Deleting sent outgoing urgent message with guid %@? %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v19 = [*(a1 + 56) guid];
      v20 = [*(a1 + 48) lastCall];
      v21 = @"NO";
      if (v20)
      {
        v21 = @"YES";
      }

      v24 = v19;
      v25 = v21;
      _IDSLogV();
    }

    v22 = [*(a1 + 56) guid];
    v23 = [*(a1 + 56) alternateGUID];
    [IDSDMessageStore deleteOutgoingMessageWithGUID:v22 alternateGUID:v23];
  }
}

void sub_10067734C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [[IDSDeliveryContext alloc] initWithResponseCode:10 error:0 lastCall:1];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1006773C8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [[IDSDeliveryContext alloc] initWithResponseCode:10 error:0 lastCall:1];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10067816C(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100678228;
  v5[3] = &unk_100BE39F8;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v4 = v6;
  [v4 fetchGroupWithGroupID:v3 completion:v5];
}

void sub_100678228(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006782E8;
  v5[3] = &unk_100BE39D0;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v4 = v6;
  [v3 _noteDecryptionFailureForGroup:v4 completion:v5];
}

void sub_1006782E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Noted decryption failure for engram group {group: %@, noteError: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
}

void sub_1006786E8(id a1)
{
  v1 = [NSSet setWithObjects:&off_100C3CFE8, &off_100C3D000, &off_100C3D018, &off_100C3D030, &off_100C3D048, &off_100C3D060, &off_100C3D078, 0];
  v2 = qword_100CBF448;
  qword_100CBF448 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1006787E8(id a1)
{
  v1 = [NSSet setWithObjects:&off_100C3D090, &off_100C3D0A8, &off_100C3D0C0, &off_100C3D0D8, &off_100C3D0F0, &off_100C3D108, &off_100C3D120, 0];
  v2 = qword_100CBF458;
  qword_100CBF458 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100679CC4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100679A30);
  }

  _Unwind_Resume(a1);
}

void *sub_100679DB0(void *result, void *a2)
{
  if (a2)
  {
    return [a2 messageIdentifier:result[4] forTopic:result[5] toURI:result[6] fromURI:result[7] hasBeenDeliveredWithContext:result[8]];
  }

  return result;
}

id sub_10067DD80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10067DDF0;
  v3[3] = &unk_100BE3A88;
  v3[4] = v1;
  return [v1 _iterateOverConnectedListeners:v3];
}

void sub_10067DDF0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = [*(a1 + 32) _commands];
  v21 = [v18 mutableCopy];
  [v21 minusSet:v20];
  if ([v21 count])
  {
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v14 processName];
      *buf = 138412802;
      v26 = v23;
      v27 = 1024;
      v28 = [v14 pid];
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "process %@[%d] has listener for commands not in listening set: %@", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v24 = [v14 processName];
      [v14 pid];
      _IDSLogV();
    }
  }
}

void sub_10067E000(uint64_t a1)
{
  v2 = [*(a1 + 32) senderKeyDistributionManager];
  [v2 markLastActivePeerToken:*(a1 + 40) localURI:*(a1 + 48) remoteURI:*(a1 + 56)];
}

uint64_t sub_10067E058()
{
  v0 = +[IDSServerBag sharedInstance];
  v1 = [v0 objectForKey:@"gd-for-filter-uri"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_10067E0D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error donating silence if unknown to communication trust for URI %@ on service %@. Error: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) unprefixedURI];
      v9 = *(a1 + 48);
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Silence if unknown flag set on message, donating to communication trust URI: %@ on service: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v10 = [*(a1 + 32) unprefixedURI];
      _IDSLogV();
    }
  }
}

void sub_10067E304(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 idsResponseCode];
    v6 = *(a1 + 32);
    *buf = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sent certified delivery receipt for filtered message { success: %ld, context: %@ }", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v3 idsResponseCode];
    _IDSLogV();
  }
}

void sub_10067E444(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      [v6 wasStoredWithGuid:v5];
    }
  }

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 138412802;
    v102 = v5;
    v103 = 2112;
    v104 = v8;
    v105 = 2112;
    v106 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Broadcasting the receipt of message %@  (%@)  (topic: %@)", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v72 = *(a1 + 40);
    v74 = *(a1 + 48);
    v69 = v5;
    _IDSLogV();
  }

  if ((a3 & 1) == 0)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *buf = 138412802;
      v102 = v5;
      v103 = 2112;
      v104 = v11;
      v105 = 2112;
      v106 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Persisting failed for message %@  (%@)  (topic: %@)", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v72 = *(a1 + 40);
      v74 = *(a1 + 48);
      v69 = v5;
      _IDSLogTransport();
    }
  }

  v13 = *(a1 + 56);
  v14 = [*(a1 + 64) currentServerTime];
  [v14 currentServerTimeInterval];
  v15 = [NSNumber numberWithDouble:?];
  v16 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys incomingStoredKey];
  [v13 addEntry:v15 forKey:v16];

  if (![*(a1 + 72) isFamilyService])
  {
    goto LABEL_33;
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 80);
    *buf = 138412290;
    v102 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Performing validity check for message %@ sent to family service.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v70 = *(a1 + 80);
    _IDSLogV();
  }

  v19 = [*(a1 + 64) familyManager];
  v20 = [v19 familyMembers];
  v21 = [v20 count] == 0;

  if (!v21)
  {
LABEL_21:
    if ([*(a1 + 64) _shouldRejectMessageOnFamilyService:*(a1 + 72) fromSenderURI:{*(a1 + 88), v71}])
    {
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 80);
        v24 = *(a1 + 88);
        *buf = 138412546;
        v102 = v23;
        v103 = 2112;
        v104 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Family Message %@ is coming from an account that is not in the family. Sender was: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v70 = *(a1 + 80);
        v73 = *(a1 + 88);
        _IDSLogV();
      }

      [objc_msgSend(*(a1 + 64) _messageStoreClass];
      [*(a1 + 64) _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:*(a1 + 40) service:*(a1 + 48) failureReason:&off_100C3D180 failureReasonMessage:0 generateDeliveryReceipt:0];
      goto LABEL_77;
    }

    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 80);
      *buf = 138412290;
      v102 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Message %@ sent to family service passed validity requirements.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v70 = *(a1 + 80);
      _IDSLogV();
    }

LABEL_33:
    v27 = +[IDSDServiceController sharedInstance];
    v28 = [v27 serviceWithPushTopic:*(a1 + 48)];
    v29 = [v28 dontFilterSelfMessagesForUnknownDevice];

    v30 = [*(a1 + 48) isEqualToIgnoringCase:@"com.apple.madrid"];
    if (!a3 || v30 & 1 | (([*(a1 + 88) isEqualToURI:*(a1 + 96)] & 1) == 0) | v29 & 1 || (objc_msgSend(*(a1 + 64), "_isDeviceInAccountRegistration:forService:", *(a1 + 104), *(a1 + 48)) & 1) != 0)
    {
      goto LABEL_74;
    }

    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Device is NOT in our account registrations, It should be, Can we force a GDR?", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v32 = +[IDSDAccountController sharedInstance];
    v33 = +[IDSDServiceController sharedInstance];
    v34 = [v33 serviceWithPushTopic:*(a1 + 48)];
    v35 = [v32 appleIDAccountOnService:v34];
    v36 = [v35 primaryAccount];

    if ([*(*(a1 + 64) + 168) containsObject:*(a1 + 104)])
    {
      if (([v36 issuingDependentCheck] & 1) == 0)
      {
        v37 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Unknown devices, but GDR attempt exchasuted", buf, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }
    }

    else
    {
      if (![v36 _issueForcedDependentCheckIfPossible])
      {
        v50 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "No forced GDR is possible", buf, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_72:
        _IDSLogV();
LABEL_73:

LABEL_74:
        v51 = *(a1 + 64);
        v75[0] = _NSConcreteStackBlock;
        v75[1] = 3221225472;
        v75[2] = sub_10067F1BC;
        v75[3] = &unk_100BE3C80;
        v76 = *(a1 + 32);
        v77 = *(a1 + 48);
        v78 = *(a1 + 112);
        v79 = *(a1 + 120);
        v80 = *(a1 + 128);
        v81 = *(a1 + 136);
        v82 = *(a1 + 80);
        v52 = *(a1 + 40);
        v97 = *(a1 + 224);
        v53 = *(a1 + 64);
        v83 = v52;
        v84 = v53;
        v85 = *(a1 + 88);
        v86 = *(a1 + 96);
        v87 = *(a1 + 72);
        v88 = *(a1 + 144);
        v89 = *(a1 + 104);
        v90 = v5;
        v54 = *(a1 + 152);
        v98 = *(a1 + 225);
        v55 = *(a1 + 160);
        v56 = *(a1 + 168);
        v57 = *(a1 + 176);
        *&v58 = v56;
        *(&v58 + 1) = v57;
        *&v59 = v54;
        *(&v59 + 1) = v55;
        v91 = v59;
        v92 = v58;
        v60 = *(a1 + 184);
        v61 = *(a1 + 192);
        v62 = *(a1 + 200);
        v63 = *(a1 + 208);
        *&v64 = v62;
        *(&v64 + 1) = v63;
        *&v65 = v60;
        *(&v65 + 1) = v61;
        v93 = v65;
        v94 = v64;
        v66 = *(a1 + 56);
        v99 = *(a1 + 226);
        v67 = *(a1 + 216);
        v95 = v66;
        v96 = v67;
        v100 = *(a1 + 227);
        v68 = 300.0;
        if (!v100)
        {
          v68 = 30.0;
        }

        [v51 _enqueueBlock:v75 identifier:*(a1 + 80) withTimeout:*(a1 + 48) forKey:v68];

        goto LABEL_77;
      }

      v45 = *(*(a1 + 64) + 168);
      if (!v45)
      {
        v46 = objc_alloc_init(NSMutableSet);
        v47 = *(a1 + 64);
        v48 = *(v47 + 168);
        *(v47 + 168) = v46;

        v45 = *(*(a1 + 64) + 168);
      }

      [v45 addObject:*(a1 + 104)];
      v49 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Issuing forced GDR & sending message to storage", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    goto LABEL_77;
  }

  v38 = [*(a1 + 64) familyManager];
  v39 = [v38 canForceFamilyFetch];

  if (!v39)
  {
    v43 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(a1 + 80);
      *buf = 138412290;
      v102 = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "IDS Family member count is zero, but out of fetches to fetch family again, this message %@ will likely fail.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v71 = *(a1 + 80);
      _IDSLogV();
    }

    goto LABEL_21;
  }

  v40 = [*(a1 + 64) familyManager];
  [v40 setStoredIncomingFamilyMessage:1];

  v41 = [*(a1 + 64) familyManager];
  [v41 forceFamilyFetch];

  v42 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "IDS Family member count is zero, trying to fetch family again. Will retry message after fetch completes. Sending incoming family message to storage.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_77:
}

void sub_10067F1BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10067F794;
  v71[3] = &unk_100BE3AB0;
  v72 = *(a1 + 32);
  v73 = *(a1 + 40);
  v49 = v3;
  v74 = v49;
  v4 = objc_retainBlock(v71);
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10067F838;
  v53[3] = &unk_100BE3C58;
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v54 = v10;
  v55 = v9;
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v68 = *(a1 + 232);
  *&v14 = v13;
  *(&v14 + 1) = *(a1 + 96);
  *&v15 = v11;
  *(&v15 + 1) = v12;
  v56 = v15;
  v57 = v14;
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  v18 = *(a1 + 120);
  v50 = v4;
  v67 = v50;
  v19 = *(a1 + 128);
  *&v20 = v18;
  *(&v20 + 1) = v19;
  *&v21 = v16;
  *(&v21 + 1) = v17;
  v58 = v21;
  v59 = v20;
  v22 = *(a1 + 136);
  v23 = *(a1 + 144);
  v24 = *(a1 + 152);
  v69 = *(a1 + 233);
  v25 = *(a1 + 160);
  *&v26 = v24;
  *(&v26 + 1) = v25;
  *&v27 = v22;
  *(&v27 + 1) = v23;
  v60 = v27;
  v61 = v26;
  v28 = *(a1 + 168);
  v29 = *(a1 + 176);
  v30 = *(a1 + 184);
  v31 = *(a1 + 192);
  *&v32 = v30;
  *(&v32 + 1) = v31;
  *&v33 = v28;
  *(&v33 + 1) = v29;
  v62 = v33;
  v63 = v32;
  v64 = *(a1 + 200);
  v65 = *(a1 + 208);
  v66 = *(a1 + 216);
  v70 = *(a1 + 234);
  v52 = objc_retainBlock(v53);
  if (*(a1 + 224) < 1)
  {
    v46 = 0;
  }

  else
  {
    v51 = [*(a1 + 88) certifiedDeliveryRTS];
    if (!v51)
    {
      v34 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 80);
        v36 = *(a1 + 224);
        *buf = 138412546;
        v76 = v35;
        v77 = 2048;
        v78 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "No certified delivery RTS found in payload with cdv { guid: %@, cdv: %ld }", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }

    v37 = [IDSCertifiedDeliveryContext alloc];
    v38 = *(a1 + 40);
    v39 = *(a1 + 80);
    v40 = [*(a1 + 88) encryptionTypeStr];
    v41 = IDSEncryptionTypeFromEncryptionTypeString();
    v42 = *(a1 + 224);
    v43 = [*(a1 + 136) rawToken];
    v44 = [*(a1 + 112) prefixedURI];
    v45 = [*(a1 + 104) prefixedURI];
    v46 = [v37 initWithGUID:v39 service:v38 encryptionType:v41 certifiedDeliveryVersion:v42 certifiedDeliveryRTS:v51 senderToken:v43 localURI:v44 remoteURI:{v45, v49, v50}];
  }

  v48 = *(a1 + 88);
  v47 = *(a1 + 96);
  if (*(a1 + 235) == 1)
  {
    [v47 _handleIncomingNiceAttachmentMessage:v48 forTopic:*(a1 + 40) fromURI:*(a1 + 104) certifiedDeliveryContext:v46 completionBlock:v52];
  }

  else
  {
    [v47 _optionallyDecryptNiceMessage:v48 encryptedData:0 forGroupID:*(a1 + 200) forTopic:*(a1 + 40) fromURI:*(a1 + 104) certifiedDeliveryContext:v46 incomingMetric:*(a1 + 216) completionBlock:v52];
  }
}

uint64_t sub_10067F794(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (!a4 && a3 && *(a1 + 32))
  {
    v6 = a3;
    v7 = a2;
    v8 = [[IDSIncomingMessage alloc] initWithDecryptedData:v7 messageContext:v6 service:*(a1 + 40)];

    [*(a1 + 32) wasProcessedWithMessage:v8];
  }

  v9 = *(*(a1 + 48) + 16);

  return v9();
}

void sub_10067F838(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v114 = a3;
  v121 = a4;
  v165 = 0;
  v166 = &v165;
  v167 = 0x3032000000;
  v168 = sub_10000AAD4;
  v169 = sub_10000BCDC;
  v113 = v7;
  v170 = v113;
  v159 = 0;
  v160 = &v159;
  v161 = 0x3032000000;
  v162 = sub_10000AAD4;
  v163 = sub_10000BCDC;
  v164 = *(a1 + 32);
  v115 = *(a1 + 40);
  v116 = *(a1 + 48);
  v117 = *(a1 + 56);
  v118 = *(a1 + 64);
  v119 = *(a1 + 72);
  v122 = a1;
  v120 = [*(a1 + 80) storageContext];
  if (_os_feature_enabled_impl() && *(a1 + 224) == 1)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 72);
      *buf = 138412290;
      v173 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received encrypted receipt { guid: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v104 = *(a1 + 72);
      _IDSLogV();
    }

    v10 = IDSIncomingMessageDecryptedDataKey;
    v11 = [v166[5] objectForKey:{IDSIncomingMessageDecryptedDataKey, v104}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v166[5] objectForKey:v10];
      v13 = [NSData _IDSDataFromBase64String:v12];
    }

    else
    {
      v12 = [v166[5] objectForKey:v10];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = 0;
LABEL_14:

        v15 = JWDecodeDictionary();
        if (_os_feature_enabled_impl())
        {
          v16 = im_primary_queue();
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100680EEC;
          block[3] = &unk_100BD6E18;
          block[4] = *(v122 + 88);
          v157 = v15;
          v158 = *(v122 + 80);
          dispatch_async(v16, block);
        }

        if (!v15 || !IDSQueryHashKey || (v17 = CFDictionaryGetValue(v15, IDSQueryHashKey)) == 0)
        {
          v23 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(v122 + 72);
            *buf = 138412290;
            v173 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Delivery receipt %@ had encrypted payload, but had a poorly encoded queryHash.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v104 = *(v122 + 72);
            _IDSLogV();
          }

          v18 = 0;
          goto LABEL_31;
        }

        v18 = v17;
        v19 = [[NSMutableData alloc] initWithLength:32];
        v20 = [v18 isEqualToData:v19];

        if (v20)
        {
          v21 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(v122 + 72);
            *buf = 138412290;
            v173 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Decrypted hash was prosthetic 0 hash. Processed in DeliveryReceipt %@", buf, 0xCu);
          }

          if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
          {
            goto LABEL_31;
          }
        }

        else
        {
          [*(v122 + 88) queryHashForceUpdate:*(v122 + 32) fromURI:*(v122 + 96) messageUUID:*(v122 + 72) updateHash:v18 toURI:*(v122 + 104) service:*(v122 + 112)];
          v101 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            v102 = *(v122 + 72);
            *buf = 138412290;
            v173 = v102;
            _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Decrypted hash Processed in DeliveryReceipt %@", buf, 0xCu);
          }

          if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v104 = *(v122 + 72);
        _IDSLogV();
LABEL_31:

        goto LABEL_32;
      }

      v13 = [v166[5] objectForKey:v10];
    }

    v14 = v13;
    goto LABEL_14;
  }

LABEL_32:
  if ([*(v122 + 88) shouldProcessDecryptedMessage:*(v122 + 72) payload:v166[5] context:v121 fromURI:*(v122 + 96) pushTopic:{*(v122 + 40), v104}])
  {
    if ([*(v122 + 40) isEqualToString:IDSServiceNameiMessage] && objc_msgSend(*(v122 + 32), "unsignedIntValue") == 100)
    {
      v25 = im_primary_queue();
      v153[0] = _NSConcreteStackBlock;
      v153[1] = 3221225472;
      v153[2] = sub_100680FA4;
      v153[3] = &unk_100BD7020;
      v111 = *(v122 + 88);
      v26 = *(v122 + 96);
      v27 = *(v122 + 104);
      v28 = *(v122 + 80);
      *&v29 = v27;
      *(&v29 + 1) = v28;
      *&v30 = v111;
      *(&v30 + 1) = v26;
      v154 = v30;
      v155 = v29;
      dispatch_async(v25, v153);
    }

    v31 = v122;
    if (*(v122 + 120))
    {
      v32 = [*(v122 + 32) unsignedIntValue];
      v31 = v122;
      if (v32 == 133)
      {
        v33 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(v122 + 72);
          v35 = *(v122 + 96);
          v36 = *(v122 + 104);
          *buf = 138412802;
          v173 = v34;
          v174 = 2112;
          v175 = v35;
          v176 = 2112;
          v177 = v36;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Received SenderKeyDistributionMessage with GUID %@ fromURI: %@ toURI: %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v108 = *(v122 + 96);
          v110 = *(v122 + 104);
          v105 = *(v122 + 72);
          _IDSLogV();
        }

        v37 = IDSIncomingMessageDecryptedDataKey;
        v38 = [v166[5] objectForKey:{IDSIncomingMessageDecryptedDataKey, v105, v108, v110}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = [v166[5] objectForKey:v37];
          v40 = [NSData _IDSDataFromBase64String:v39];
        }

        else
        {
          v39 = [v166[5] objectForKey:v37];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v97 = 0;
            goto LABEL_103;
          }

          v40 = [v166[5] objectForKey:v37];
        }

        v97 = v40;
LABEL_103:

        v99 = [*(v122 + 88) senderKeyDistributionManager];
        v100 = [v99 processedKeyMessageWithRemoteURI:*(v122 + 96) remoteToken:*(v122 + 128) localURI:*(v122 + 104) service:*(v122 + 40) messageData:v97 messageGUID:*(v122 + 72)];

        [*(v122 + 88) _sendCertifiedDeliveryReceiptForSenderKeyDistributionMessage:*(v122 + 80) service:*(v122 + 40) keyIDs:v100];
        [IDSDMessageStore deleteIncomingMessageWithGUID:*(v122 + 136)];
        (*(*(v122 + 216) + 16))();

LABEL_112:
        goto LABEL_113;
      }
    }

    if (![*(v31 + 88) isFirewallOnForService:*(v31 + 112)] || !objc_msgSend(*(v122 + 88), "shouldFirewallDropMessageForFromURI:mergeID:service:", *(v122 + 96), *(v122 + 144), *(v122 + 112)))
    {
      v123[0] = _NSConcreteStackBlock;
      v123[1] = 3221225472;
      v123[2] = sub_1006812AC;
      v123[3] = &unk_100BE3C30;
      v146 = &v165;
      v124 = *(v122 + 96);
      v125 = *(v122 + 128);
      v126 = *(v122 + 104);
      v127 = *(v122 + 112);
      v128 = *(v122 + 72);
      v112 = *(v122 + 80);
      v67 = v112.i64[0];
      v129 = vextq_s8(v112, v112, 8uLL);
      v130 = *(v122 + 40);
      v131 = v120;
      v132 = *(v122 + 136);
      v68 = v114;
      v133 = v68;
      v145 = *(v122 + 216);
      v147 = &v159;
      v148 = *(v122 + 225);
      v134 = *(v122 + 32);
      v69 = v119;
      v70 = v116;
      v71 = v118;
      v72 = v117;
      *&v73 = v71;
      *(&v73 + 1) = v72;
      *&v74 = v69;
      *(&v74 + 1) = v70;
      v135 = v74;
      v136 = v73;
      v137 = *(v122 + 152);
      v138 = *(v122 + 160);
      v139 = *(v122 + 168);
      v140 = v121;
      v141 = v115;
      v75 = *(v122 + 176);
      v76 = *(v122 + 184);
      v77 = *(v122 + 192);
      v78 = *(v122 + 200);
      *&v79 = v77;
      *(&v79 + 1) = v78;
      *&v80 = v75;
      *(&v80 + 1) = v76;
      v142 = v80;
      v143 = v79;
      v144 = *(v122 + 208);
      v81 = objc_retainBlock(v123);
      if (*(v122 + 226) == 1)
      {
        v82 = [*(v122 + 80) failureReason];
        v83 = [*(v122 + 80) failureMessageID];
        v84 = [*(v122 + 80) failureReasonMessage];
        v85 = [v166[5] mutableCopy];
        v86 = +[IDSPeerIDManager sharedInstance];
        v87 = *(v122 + 128);
        v89 = *(v122 + 96);
        v88 = *(v122 + 104);
        v90 = [*(v122 + 112) queryService];
        v91 = [v86 shouldShowPeerErrorsFor:v89 pushToken:v87 fromURI:v88 service:v90];

        v92 = [NSNumber numberWithBool:v91];
        if (v92)
        {
          CFDictionarySetValue(v85, IDSIncomingMessageShouldShowPeerErrorsKey, v92);
        }

        objc_storeStrong(v166 + 5, v85);
        v93 = *(v122 + 88);
        v94 = v166[5];
        v95 = *(v122 + 112);
        v96 = [v95 queryService];
        [v93 _processMessageError:v91 topLevelMessage:v94 error:v82 messageID:v83 failureReasonMessage:v84 service:v95 serviceType:v96 pushToken:*(v122 + 128) fromURI:*(v122 + 96) toURI:*(v122 + 104) groupID:*(v122 + 192) completionBlock:v81];
      }

      else if (v68)
      {
        (v81[2])(v81, 0, 0, [*(v122 + 88) _shouldDropMessageForIncomingDecryptionErrorType:{objc_msgSend(v68, "code")}]);
      }

      else
      {
        v98 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "No Message Error, Processing Immediately", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        (v81[2])(v81, 0, 0, 0);
      }

      v97 = v124;
      goto LABEL_112;
    }

    v45 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(v122 + 72);
      v47 = *(v122 + 96);
      *buf = 138412546;
      v173 = v46;
      v174 = 2112;
      v175 = v47;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Message %@ is coming from an account that is firewalled from talking to this device. Sender Was: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v105 = *(v122 + 72);
      v108 = *(v122 + 96);
      _IDSLogV();
    }

    [*(v122 + 88) noteBlockedMessageFromURI:*(v122 + 96) service:{*(v122 + 112), v105, v108}];
    if (+[IDSDaemon _commandIsSessionCommand:](IDSDaemon, "_commandIsSessionCommand:", [v160[5] integerValue]) || +[IDSDaemon _commandIsSessionGroupSessionCommand:](IDSDaemon, "_commandIsSessionGroupSessionCommand:", objc_msgSend(v160[5], "integerValue")))
    {
      v48 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = *(v122 + 72);
        *buf = 138412290;
        v173 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Firewalled message %@ is coming for session.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v106 = *(v122 + 72);
        _IDSLogV();
      }

      v50 = +[IDSDSessionController sharedInstance];
      v51 = [v50 groupSessionGroupIDs];

      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v52 = v51;
      v53 = [v52 countByEnumeratingWithState:&v149 objects:v171 count:16];
      if (v53)
      {
        v54 = 0;
        v55 = *v150;
        do
        {
          for (i = 0; i != v53; i = i + 1)
          {
            if (*v150 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v149 + 1) + 8 * i);
            v58 = +[IDSDSessionController sharedInstance];
            v59 = [v58 sessionWithGroupID:v57];

            if (v59)
            {
              v60 = [v59 getFromService];
              v61 = [*(v122 + 112) identifier];
              if ([v60 isEqualToIgnoringCase:v61])
              {
                v62 = [v59 destinationsContainFromURI:*(v122 + 96)];

                if (v62)
                {
                  if ([v59 groupSessionState] == 1)
                  {
                    v63 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                    {
                      v64 = [*(v122 + 112) identifier];
                      v65 = [v59 groupID];
                      *buf = 138412546;
                      v173 = v64;
                      v174 = 2112;
                      v175 = v65;
                      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Ending session for service %@ with groupID %@", buf, 0x16u);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      v66 = [*(v122 + 112) identifier];
                      [v59 groupID];
                      v109 = v107 = v66;
                      _IDSLogV();
                    }

                    [v59 endSessionWithReason:{48, v107, v109}];
                  }

                  v54 = 1;
                }
              }

              else
              {
              }
            }
          }

          v53 = [v52 countByEnumeratingWithState:&v149 objects:v171 count:16];
        }

        while (v53);

        if (v54)
        {
          goto LABEL_111;
        }
      }

      else
      {
      }
    }

    v103 = [*(v122 + 88) firewallNotificationCenter];
    [v103 postNotificationForURI:*(v122 + 96) onService:*(v122 + 112) shouldRateLimit:1 command:v160[5]];

LABEL_111:
    [IDSDMessageStore deleteIncomingMessageWithGUID:*(v122 + 136)];
    v97 = [[IDSMissingMessageMetric alloc] initWithReason:702 guid:*(v122 + 72) service:*(v122 + 40) additionalInformation:0];
    [IDSMissingMessageMetricReporter sendMetric:v97];
    [*(v122 + 88) _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:*(v122 + 80) service:*(v122 + 40) failureReason:&off_100C3D150 failureReasonMessage:0 generateDeliveryReceipt:0];
    (*(*(v122 + 216) + 16))();
    goto LABEL_112;
  }

  v41 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *(v122 + 72);
    v43 = *(v122 + 96);
    v44 = *(v122 + 104);
    *buf = 138412802;
    v173 = v42;
    v174 = 2112;
    v175 = v43;
    v176 = 2112;
    v177 = v44;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Skipping processing of decrypted incoming message with GUID %@ fromURI: %@ toURI: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v108 = *(v122 + 96);
    v110 = *(v122 + 104);
    v105 = *(v122 + 72);
    _IDSLogV();
  }

  [IDSDMessageStore deleteIncomingMessageWithGUID:*(v122 + 72), v105, v108, v110];
  (*(*(v122 + 216) + 16))();
LABEL_113:

  _Block_object_dispose(&v159, 8);
  _Block_object_dispose(&v165, 8);
}

void sub_100680EEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = [*(a1 + 48) fromURI];
  v4 = [*(a1 + 48) senderPushToken];
  v5 = [*(a1 + 48) toURI];
  v6 = [*(a1 + 48) pushUUID];
  [v2 _handleDeliveryReceiptForSenderKeyCheck:v3 remoteURI:v7 remotePushToken:v4 localURI:v5 originalGUID:v6];
}

void sub_100680FA4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 520);
  v15 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v15 count:1];
  v4 = *(a1 + 48);
  v5 = +[_TtC17identityservicesd23IDSSenderKeySendContext iMessageReceive];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100681114;
  v12[3] = &unk_100BD9CC0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = *(a1 + 32);
  v8 = *(a1 + 56);
  *&v9 = v11;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v13 = v10;
  v14 = v9;
  [v2 generateAndSendKeyIfNeededToURIs:v3 fromURI:v4 context:v5 completion:v12];
}

void sub_100681114(uint64_t a1, int a2)
{
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did trigger generateAndSendKeyIfNeededToURIs: %@ { toURI: %@ fromURI: %@ }", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = @"NO";
    if (a2)
    {
      v8 = @"YES";
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v11 = v8;
    _IDSLogV();
  }

  v9 = [*(a1 + 48) senderKeyDistributionManager];
  v10 = [*(a1 + 56) senderPushToken];
  [v9 markLastIMessagedPeerToken:v10 localURI:*(a1 + 40) remoteURI:*(a1 + 32)];
}

void sub_1006812AC(uint64_t a1, void *a2, void *a3, int a4)
{
  v218 = a2;
  v214 = a3;
  if (v214)
  {
    objc_storeStrong((*(*(a1 + 248) + 8) + 40), a3);
  }

  v7 = +[IDSPeerIDManager sharedInstance];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = [*(a1 + 56) queryService];
  v220 = [v7 senderCorrelationIdentifierForURI:v8 pushToken:v9 fromURI:v10 service:v11];

  if ([v220 length])
  {
    v12 = [[NSMutableDictionary alloc] initWithDictionary:*(*(*(a1 + 248) + 8) + 40)];
    v13 = v220;
    if (v13)
    {
      CFDictionarySetValue(v12, @"mid", v13);
    }

    v14 = [NSDictionary dictionaryWithDictionary:v12];
    v15 = *(*(a1 + 248) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 64);
    v19 = *(a1 + 32);
    v20 = [*(*(*(a1 + 248) + 8) + 40) allKeys];
    *buf = 138413058;
    *v256 = v18;
    *&v256[8] = 2112;
    *&v256[10] = v19;
    *&v256[18] = 2112;
    *&v256[20] = v220;
    v257 = 2112;
    v258 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Finished handling decryption {GUID: %@, URI: %@, SenderCorrelationIdentifier: %@, topLevelPayload: %@}", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v21 = *(a1 + 64);
    v22 = *(a1 + 32);
    [*(*(*(a1 + 248) + 8) + 40) allKeys];
    v189 = v187 = v220;
    v181 = v21;
    v184 = v22;
    _IDSLogV();
  }

  [*(a1 + 72) _sendNiceMessageCheckpointIfNecessary:*(a1 + 80) checkpoint:9300 service:*(a1 + 88) additionalInformation:{0, v181, v184, v187, v189}];
  v23 = [*(a1 + 80) serverTimestamp];
  v219 = sub_10064EDCC(v23);

  [v219 timeIntervalSince1970];
  v25 = v24;
  v26 = +[NSDate date];
  [v26 timeIntervalSince1970];
  v28 = v27;

  v29 = [*(a1 + 96) BOOLValue];
  v30 = v28 - v25;
  v217 = [[IDSNoteMessageReceivedMetric alloc] initWithService:*(a1 + 88) accountType:0 fromStorage:v29 serverTimestamp:v25 localTimeDelta:v30];
  v31 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v31 logMetric:v217];

  v32 = +[IDSAWDLogging sharedInstance];
  [v32 noteMessageReceivedForService:*(a1 + 88) accountType:0 fromStorage:v29 serverTimestamp:v25 localTimeDelta:v30];

  if (!a4)
  {
    v215 = IDSIncomingMessageDecryptedDataKey;
    v37 = [*(*(*(a1 + 248) + 8) + 40) objectForKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [*(*(*(a1 + 248) + 8) + 40) objectForKey:v215];
      v39 = [NSData _IDSDataFromBase64String:v38];
    }

    else
    {
      v38 = [*(*(*(a1 + 248) + 8) + 40) objectForKey:v215];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v40 = 0;
LABEL_25:

        v41 = [*(a1 + 80) rawBulkedData];
        v42 = [*(a1 + 80) isBulkedPayload];
        v43 = [v42 BOOLValue];
        if (v41)
        {
          v44 = 1;
        }

        else
        {
          v44 = v43;
        }

        v45 = [*(a1 + 80) rawUnencryptedPayload];
        v46 = [*(a1 + 80) originalCommand];
        if (v46)
        {
          v47 = v40;
          v48 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = @"YES";
            if (!v47)
            {
              v49 = @"NO";
            }

            *buf = 138412546;
            *v256 = v46;
            *&v256[8] = 2112;
            *&v256[10] = v49;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Overflow attachment (with original command %@) -- checking for original payload? %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v50 = @"YES";
            if (!v47)
            {
              v50 = @"NO";
            }

            v182 = v46;
            v185 = v50;
            _IDSLogV();
          }

          v51 = v47;
          v52 = v51;
          if (v44)
          {
            v53 = v51;
          }

          else
          {
            v53 = 0;
          }

          if (v44)
          {
            v54 = 0;
          }

          else
          {
            v54 = v51;
          }

          if (v54 | v53)
          {
            v55 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v56 = @"NO";
              if (v54)
              {
                v57 = @"YES";
              }

              else
              {
                v57 = @"NO";
              }

              if (v53)
              {
                v56 = @"YES";
              }

              *buf = 138412546;
              *v256 = v57;
              *&v256[8] = 2112;
              *&v256[10] = v56;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Pulled out original payload %@ or bulked payload %@ from attachment message, using original command.", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v58 = @"NO";
              if (v54)
              {
                v59 = @"YES";
              }

              else
              {
                v59 = @"NO";
              }

              if (v53)
              {
                v58 = @"YES";
              }

              v182 = v59;
              v185 = v58;
              _IDSLogV();
            }

            v40 = v54;

            v60 = v53;
            objc_storeStrong((*(*(a1 + 256) + 8) + 40), v46);
            v41 = v60;
          }

          else
          {
            v40 = v51;
          }
        }

        if ([*(*(*(a1 + 256) + 8) + 40) integerValue] == 242 || objc_msgSend(*(*(*(a1 + 256) + 8) + 40), "integerValue") == 153)
        {
          v208 = [v40 _FTOptionallyDecompressData];
        }

        else
        {
          if ([*(*(*(a1 + 256) + 8) + 40) integerValue] != 250)
          {
            if ([*(*(*(a1 + 256) + 8) + 40) integerValue] == 243)
            {
              v71 = [v40 _FTOptionallyDecompressData];
              v206 = JWDecodeDictionary();
              v72 = 0;
              v212 = 2;
            }

            else
            {
              v158 = [*(a1 + 72) _payloadFromDecryptedData:v40];
              if (!v158)
              {
                if (*(a1 + 264) == 1)
                {
                  v159 = v45;
                  v160 = [[IDSOffGridEncryptedMessage alloc] initWithPayload:v40 senderURI:*(a1 + 32) recipientURI:*(a1 + 48)];
                  v161 = [*(a1 + 80) messageChunkNumber];
                  v162 = [v160 encryptionProperties];
                  [v162 setSegmentNumber:v161];

                  v163 = [*(a1 + 80) totalChunkCount];
                  v164 = [v160 encryptionProperties];
                  [v164 setTotalSegments:v163];

                  v165 = [*(a1 + 80) pendingMessageCount];
                  [v160 setPendingTotalCount:v165];

                  v166 = [*(a1 + 80) pendingMessagePerSenderCount];
                  [v160 setPendingCount:v166];

                  v167 = [*(a1 + 80) serverTimestamp];
                  [v167 doubleValue];
                  v169 = [NSDate dateWithTimeIntervalSince1970:v168 / 1000000000.0];
                  [v160 setDate:v169];

                  v170 = [*(a1 + 80) desiredProtocol];
                  [v160 setPreferredService:v170];

                  v171 = [v160 dictionaryRepresentation];
                  v172 = [v171 mutableCopy];

                  v158 = v172;
                  v45 = v159;
                }

                else
                {
                  v158 = 0;
                }
              }

              v210 = v158;
              if (![*(a1 + 88) isEqualToString:IDSServiceNameiMessageLite] || objc_msgSend(*(a1 + 120), "integerValue") != 128)
              {
                v212 = 0;
                v206 = 0;
                v208 = 0;
                goto LABEL_67;
              }

              v173 = [IDSOffGridServiceUpdateMessage alloc];
              v174 = [*(a1 + 80) desiredProtocol];
              v175 = [v174 intValue];
              v213 = [*(a1 + 80) fromURI];
              v176 = [*(a1 + 80) toURI];
              v71 = [v173 initWithPreferredServiceType:v175 senderURI:v213 recipientURI:v176];

              v177 = [*(a1 + 80) expirationDate];
              [v177 doubleValue];
              v178 = [NSDate dateWithTimeIntervalSince1970:?];
              [v71 setExpirationDate:v178];

              v179 = [v71 dictionaryRepresentation];
              v180 = [v179 mutableCopy];

              v72 = v180;
              v212 = 0;
              v206 = 0;
            }

            v208 = 0;
            v210 = v72;
LABEL_67:
            if ([*(a1 + 56) adHocServiceType] == 2)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v61 = [IDSLocalDeliveryMessageReceivedMetric alloc];
                v62 = [*(a1 + 56) identifier];
                v63 = [v61 initWithService:v62 isFromDefaultPairedDevice:1 messageSize:objc_msgSend(v40 linkType:"length") priority:{4, 300}];

                v64 = +[IDSCoreAnalyticsLogger defaultLogger];
                [v64 logMetric:v63];

                v65 = +[IDSAWDLogging sharedInstance];
                v66 = [*(a1 + 56) identifier];
                [v65 messageReceivedForService:v66 isFromDefaultPairedDevice:1 messageSize:objc_msgSend(v40 linkType:"length") priority:{4, 300}];
              }
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v41 length])
            {
              v67 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Found rawBulkedData", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                _IDSLogV();
              }

              v68 = [v41 _FTOptionallyDecompressData];
              v69 = JWDecodeArray();

              if ([v69 count])
              {
                v70 = v69;
              }

              else
              {
                v73 = JWDecodeArray();

                v70 = v73;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
LABEL_89:
                v74 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  v75 = @"YES";
                  v76 = *(*(*(a1 + 256) + 8) + 40);
                  if (v210)
                  {
                    v77 = @"YES";
                  }

                  else
                  {
                    v77 = @"NO";
                  }

                  if (v206)
                  {
                    v78 = @"YES";
                  }

                  else
                  {
                    v78 = @"NO";
                  }

                  *buf = 138413314;
                  if (v208)
                  {
                    v79 = @"YES";
                  }

                  else
                  {
                    v79 = @"NO";
                  }

                  *v256 = v76;
                  *&v256[8] = 2112;
                  if (!v70)
                  {
                    v75 = @"NO";
                  }

                  *&v256[10] = v77;
                  *&v256[18] = 2112;
                  *&v256[20] = v78;
                  v257 = 2112;
                  v258 = v79;
                  v259 = 2112;
                  v260 = v75;
                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "For command %@ we have unpacked dictionaryPayload? %@ protobufPayload? %@ dataPayload? %@ bulkedPayloads? %@", buf, 0x34u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v80 = @"YES";
                  if (v210)
                  {
                    v81 = @"YES";
                  }

                  else
                  {
                    v81 = @"NO";
                  }

                  if (v206)
                  {
                    v82 = @"YES";
                  }

                  else
                  {
                    v82 = @"NO";
                  }

                  if (v208)
                  {
                    v83 = @"YES";
                  }

                  else
                  {
                    v83 = @"NO";
                  }

                  if (!v70)
                  {
                    v80 = @"NO";
                  }

                  v190 = v83;
                  v191 = v80;
                  v186 = v81;
                  v188 = v82;
                  v183 = *(*(*(a1 + 256) + 8) + 40);
                  _IDSLogV();
                }

                v84 = [*(a1 + 80) originalTimestamp];
                v204 = [*(a1 + 80) isTrustedSender];
                v85 = [*(a1 + 80) encryptedPayload];

                v86 = [*(a1 + 96) unsignedIntValue];
                v202 = [*(a1 + 80) snapTrustedUser];
                v200 = [*(a1 + 80) wantsCheckpointing];
                v87 = objc_opt_class();
                v198 = sub_10001B8C4(v87, *(*(*(a1 + 248) + 8) + 40), IDSIncomingMessageShouldShowPeerErrorsKey);
                v88 = [*(a1 + 80) originalCommand];
                v196 = [*(a1 + 80) samplingUUID];
                v195 = [*(a1 + 80) queueOneIdentifier];
                v89 = objc_alloc_init(NSMutableDictionary);
                v90 = *(a1 + 128);
                if (v90)
                {
                  CFDictionarySetValue(v89, IDSMessageContextOutgoingResponseIdentifierKey, v90);
                }

                v91 = *(a1 + 136);
                if (v91)
                {
                  CFDictionarySetValue(v89, IDSMessageContextIncomingResponseIdentifierKey, v91);
                }

                v92 = *(a1 + 144);
                if (v92)
                {
                  CFDictionarySetValue(v89, IDSMessageContextExpectsPeerResponseKey, v92);
                }

                v93 = *(a1 + 152);
                if (v93)
                {
                  CFDictionarySetValue(v89, IDSMessageContextWantsAppAckKey, v93);
                }

                v94 = *(a1 + 104);
                if (v94)
                {
                  CFDictionarySetValue(v89, IDSMessageContextStorageGuidKey, v94);
                }

                v95 = *(a1 + 160);
                if (v95)
                {
                  CFDictionarySetValue(v89, IDSMessageContextCommandContextKey, v95);
                }

                v96 = *(a1 + 120);
                if (v96)
                {
                  CFDictionarySetValue(v89, IDSMessageContextOriginalCommandKey, v96);
                }

                v97 = v88;
                if (v97)
                {
                  v98 = v97;
                  CFDictionarySetValue(v89, IDSMessageContextIncomingOCKey, v97);
                  v97 = v98;
                }

                v194 = v97;

                v99 = [*(a1 + 48) prefixedURI];
                if (v99)
                {
                  CFDictionarySetValue(v89, IDSMessageContextToIDKey, v99);
                }

                v100 = [*(a1 + 168) dictionaryRepresentation];
                if (v100)
                {
                  CFDictionarySetValue(v89, IDSMessageContextTargettedPseudonymKey, v100);
                }

                v101 = *(a1 + 96);
                if (v101)
                {
                  CFDictionarySetValue(v89, IDSMessageContextStorageContextKey, v101);
                }

                v102 = [NSNumber numberWithBool:v29];
                if (v102)
                {
                  CFDictionarySetValue(v89, IDSMessageContextFromServerStorageKey, v102);
                }

                v103 = [NSNumber numberWithBool:(v86 >> 1) & 1];
                if (v103)
                {
                  CFDictionarySetValue(v89, IDSMessageContextLastFromServerStorageKey, v103);
                }

                v104 = *(a1 + 176);
                if (v104)
                {
                  CFDictionarySetValue(v89, IDSMessageContextEngramGroupIDKey, v104);
                }

                v105 = [NSNumber numberWithDouble:v25];
                if (v105)
                {
                  CFDictionarySetValue(v89, IDSMessageContextServerTimestampKey, v105);
                }

                v106 = v84;
                if (v106)
                {
                  v107 = v106;
                  CFDictionarySetValue(v89, IDSMessageContextOriginalTimestampKey, v106);
                  v106 = v107;
                }

                v193 = v106;

                v108 = v220;
                if (v108)
                {
                  CFDictionarySetValue(v89, IDSMessageContextSenderCorrelationIdentifierKey, v108);
                }

                v109 = [*(a1 + 32) prefixedURI];
                if (v109)
                {
                  CFDictionarySetValue(v89, IDSMessageContextFromIDKey, v109);
                }

                v110 = [*(a1 + 48) prefixedURI];
                if (v110)
                {
                  CFDictionarySetValue(v89, IDSMessageContextToIDKey, v110);
                }

                v111 = [*(a1 + 184) dictionaryRepresentation];
                if (v111)
                {
                  CFDictionarySetValue(v89, IDSMessageContextCertifiedDeliveryContextKey, v111);
                }

                v112 = *(a1 + 160);
                if (v112)
                {
                  CFDictionarySetValue(v89, IDSMessageContextPublicIntentActionKey, v112);
                }

                v113 = *(a1 + 64);
                if (v113)
                {
                  CFDictionarySetValue(v89, IDSMessageContextOriginalGUIDKey, v113);
                }

                v114 = *(a1 + 192);
                if (v114)
                {
                  CFDictionarySetValue(v89, IDSMessageContextServiceIdentifierKey, v114);
                }

                v115 = [NSNumber numberWithBool:v204];
                if (v115)
                {
                  CFDictionarySetValue(v89, IDSMessageContextIsFromTrustedSender, v115);
                }

                v116 = [NSNumber numberWithBool:v85 != 0];
                if (v116)
                {
                  CFDictionarySetValue(v89, IDSMessageContextMessageHadEncryptedData, v116);
                }

                v117 = [*(a1 + 40) rawToken];
                if (v117)
                {
                  CFDictionarySetValue(v89, IDSMessageContextSenderPushToken, v117);
                }

                v118 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 80) wantsDeliveryStatus]);
                if (v118)
                {
                  CFDictionarySetValue(v89, IDSMessageContextNeedsDeliveryReceiptKey, v118);
                }

                v119 = v202;
                if (v119)
                {
                  v120 = v119;
                  CFDictionarySetValue(v89, IDSMessageContextSnapTrustedUser, v119);
                  v119 = v120;
                }

                v203 = v119;

                v121 = v200;
                if (v121)
                {
                  v122 = v121;
                  CFDictionarySetValue(v89, IDSMessageContextWantsCheckpointing, v121);
                  v121 = v122;
                }

                v201 = v121;

                v123 = *(a1 + 200);
                if (v123)
                {
                  CFDictionarySetValue(v89, IDSMessageContextDeliveryStatusContext, v123);
                }

                v124 = v198;
                if (v124)
                {
                  v125 = v124;
                  CFDictionarySetValue(v89, IDSMessageContextShouldShowPeerErrors, v124);
                  v124 = v125;
                }

                v192 = v124;

                v126 = v196;
                if (v126)
                {
                  v127 = v126;
                  CFDictionarySetValue(v89, IDSMessageContextSamplingUUIDKey, v126);
                  v126 = v127;
                }

                v199 = v126;

                v128 = v195;
                if (v128)
                {
                  v129 = v128;
                  CFDictionarySetValue(v89, IDSMessageContextQueueOneIdentifierKey, v128);
                  v128 = v129;
                }

                v197 = v128;

                v130 = [*(*(*(a1 + 248) + 8) + 40) objectForKey:v215];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v131 = [*(*(*(a1 + 248) + 8) + 40) objectForKey:v215];
                  v132 = [NSData _IDSDataFromBase64String:v131];
                }

                else
                {
                  v131 = [*(*(*(a1 + 248) + 8) + 40) objectForKey:v215];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v133 = 0;
LABEL_188:

                    v134 = [[IDSMessageContext alloc] initWithDictionary:v89 boostContext:0];
                    v226[0] = _NSConcreteStackBlock;
                    v226[1] = 3221225472;
                    v226[2] = sub_1006832C4;
                    v226[3] = &unk_100BE3BE0;
                    v227 = *(a1 + 64);
                    v135 = *(a1 + 104);
                    v252 = v212;
                    v136 = *(a1 + 72);
                    v137 = *(a1 + 80);
                    v228 = v135;
                    v229 = v136;
                    v230 = v137;
                    v231 = *(a1 + 32);
                    v232 = *(a1 + 56);
                    v233 = v108;
                    v205 = v210;
                    v234 = v205;
                    v216 = v208;
                    v235 = v216;
                    v138 = v206;
                    v139 = *(a1 + 248);
                    v211 = v138;
                    v236 = v138;
                    v250 = v139;
                    v140 = *(a1 + 184);
                    v141 = *(a1 + 256);
                    v237 = v140;
                    v251 = v141;
                    v238 = *(a1 + 40);
                    v239 = *(a1 + 192);
                    v240 = *(a1 + 48);
                    v241 = *(a1 + 136);
                    v209 = v89;
                    v242 = v209;
                    v243 = *(a1 + 208);
                    v244 = *(a1 + 88);
                    v245 = *(a1 + 216);
                    v246 = *(a1 + 224);
                    v247 = *(a1 + 232);
                    v207 = v70;
                    v248 = v207;
                    v249 = *(a1 + 120);
                    v221[0] = _NSConcreteStackBlock;
                    v221[1] = 3221225472;
                    v221[2] = sub_100686EC0;
                    v221[3] = &unk_100BE3C08;
                    v142 = objc_retainBlock(v226);
                    v224 = v142;
                    v225 = *(a1 + 240);
                    v143 = v133;
                    v222 = v143;
                    v144 = v134;
                    v223 = v144;
                    v145 = objc_retainBlock(v221);
                    v146 = [*(a1 + 56) identifier];
                    v147 = [IMUserDefaults serviceConstraintOverride:v146];

                    v148 = [*(a1 + 56) constraintType];
                    if (v147)
                    {
                      v149 = v147;
                    }

                    else
                    {
                      v149 = v148;
                    }

                    v150 = [[IDSBlastDoorMessageContext alloc] initWithService:*(a1 + 56) command:*(*(*(a1 + 256) + 8) + 40)];
                    [(__CFString *)v150 setPayloadType:v212];
                    if (v212 == 2)
                    {
                      v152 = v211;
                    }

                    else
                    {
                      if (v212 == 1)
                      {
                        if (v216)
                        {
                          v253 = @"##payload-data##";
                          v254 = v216;
                          v151 = [NSDictionary dictionaryWithObjects:&v254 forKeys:&v253 count:1];
                        }

                        else
                        {
                          v151 = &__NSDictionary0__struct;
                        }

LABEL_198:
                        v153 = OSLogHandleForIDSCategory();
                        if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                        {
                          v154 = *(a1 + 64);
                          *buf = 138412802;
                          *v256 = v154;
                          *&v256[8] = 1024;
                          *&v256[10] = v149;
                          *&v256[14] = 2112;
                          *&v256[16] = v150;
                          _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "IDSBlastDoor: Incoming message %@ has constraint type %u and BlastDoor context %@", buf, 0x1Cu);
                        }

                        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                        {
                          v186 = v149;
                          v188 = v150;
                          v183 = *(a1 + 64);
                          _IDSLogV();
                        }

                        if (v149 > 2)
                        {
                          if ((v149 - 3) > 1)
                          {
                            goto LABEL_211;
                          }
                        }

                        else if (v149)
                        {
                          if (v149 == 1)
                          {
                            (v145[2])(v145, v151, 1, 0);
                            goto LABEL_218;
                          }

                          if (v149 == 2)
                          {
                            [*(*(a1 + 72) + 472) diffuseClientMessage:v151 context:v150 withCompletionBlock:v145];
LABEL_218:

                            goto LABEL_219;
                          }

LABEL_211:
                          v155 = OSLogHandleForIDSCategory();
                          if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                          {
                            v156 = *(a1 + 64);
                            *buf = 67109378;
                            *v256 = v149;
                            *&v256[4] = 2112;
                            *&v256[6] = v156;
                            _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "IDSBlastDoor: Unknown constraint type %u, dropping message %@", buf, 0x12u);
                          }

                          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                          {
                            v183 = v149;
                            v186 = *(a1 + 64);
                            _IDSLogV();
                          }

                          [IDSDMessageStore deleteIncomingMessageWithGUID:*(a1 + 104), v183, v186, v188, v190, v191, v192, v193, v194];
                          v157 = *(a1 + 240);
                          if (v157)
                          {
                            (*(v157 + 16))(v157, 0, 0, 0);
                          }

                          goto LABEL_218;
                        }

                        (v145[2])(v145, v151, 2, 0);
                        goto LABEL_218;
                      }

                      v152 = v205;
                    }

                    v151 = v152;
                    goto LABEL_198;
                  }

                  v132 = [*(*(*(a1 + 248) + 8) + 40) objectForKey:v215];
                }

                v133 = v132;

                goto LABEL_188;
              }
            }

            v70 = 0;
            goto LABEL_89;
          }

          if (!v45)
          {
            v212 = 0;
            v206 = 0;
            v208 = 0;
            v210 = 0;
            goto LABEL_67;
          }

          v208 = [v45 _FTOptionallyDecompressData];
        }

        v206 = 0;
        v210 = 0;
        v212 = 1;
        goto LABEL_67;
      }

      v39 = [*(*(*(a1 + 248) + 8) + 40) objectForKey:v215];
    }

    v40 = v39;

    goto LABEL_25;
  }

  v33 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = *(a1 + 104);
    v35 = *(a1 + 112);
    *buf = 138478339;
    *v256 = v34;
    *&v256[8] = 2112;
    *&v256[10] = v218;
    *&v256[18] = 2112;
    *&v256[20] = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Dropping message! {guid: %{private}@, processError: %@, decryptionError %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    v185 = v218;
    v188 = *(a1 + 112);
    v182 = *(a1 + 104);
    _IDSLogTransport();
  }

  [objc_msgSend(*(a1 + 72) _messageStoreClass];
  v36 = *(a1 + 240);
  if (v36)
  {
    (*(v36 + 16))(v36, 0, 0, 0);
  }

LABEL_219:
}

void sub_100683090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *exc_buf, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26)
{
  if (a2 == 1)
  {
    v27 = objc_begin_catch(a1);
    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *(v26 - 176) = 138412290;
      *(v26 - 172) = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Hit exception %@ trying to deserialize payloads", (v26 - 176), 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    objc_end_catch();
    JUMPOUT(0x100681F08);
  }

  _Unwind_Resume(a1);
}

void sub_1006832C4(uint64_t a1, void *a2, const __CFString *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!v8)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = @"YES";
      *buf = 138412802;
      if (!v7)
      {
        v13 = @"NO";
      }

      v117 = v12;
      v118 = 2112;
      v119 = v13;
      v120 = 2048;
      v121 = a3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "IDSBlastDoor: Completed blastdoor validation for message %@ with validated payload %@ and message type %ld", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v14 = @"YES";
      if (!v7)
      {
        v14 = @"NO";
      }

      v73 = v14;
      v77 = a3;
      v69 = *(a1 + 32);
      _IDSLogV();
    }

    v15 = *(a1 + 232);
    if (v15 == 2)
    {
      v85 = 0;
      v86 = v7;
    }

    else
    {
      if (v15 != 1)
      {
        v85 = 0;
        v86 = 0;
LABEL_26:
        v16 = [*(a1 + 48) _replayKeyForNiceMessage:*(a1 + 56) encryptedData:{0, v69, v73, v77}];
        if (v16)
        {
          v17 = [*(*(a1 + 48) + 488) objectForKey:v16];
          v18 = [v17 isEqualToIgnoringCase:*(a1 + 32)];

          if ((v18 & 1) == 0)
          {
            v19 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(a1 + 32);
              v21 = [*(*(a1 + 48) + 488) objectForKey:v16];
              *buf = 138412802;
              v117 = v16;
              v118 = 2112;
              v119 = v20;
              v120 = 2112;
              v121 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ERROR: Replay key %@ failed to match to the messageUUID %@ in the map: %@", buf, 0x20u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v22 = *(a1 + 32);
              [*(*(a1 + 48) + 488) objectForKey:v16];
              v78 = v74 = v22;
              v70 = v16;
              _IDSLogV();
            }
          }
        }

        if (a3 == 2)
        {
          v23 = v7;
          v24 = v85;
          v25 = v86;
        }

        else
        {
          if (a3 != 1)
          {
            v29 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *(a1 + 32);
              *buf = 134218242;
              v117 = a3;
              v118 = 2112;
              v119 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "IDSBlastDoor: Invalid message type %ld for message %@, dropping", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v70 = a3;
              v74 = *(a1 + 32);
              _IDSLogV();
            }

            [IDSDMessageStore deleteIncomingMessageWithGUID:*(a1 + 40), v70, v74, v78];
            goto LABEL_98;
          }

          if (([*(a1 + 48) isMessageFromSelfForFromURI:*(a1 + 64) service:*(a1 + 72)] & 1) == 0 && (objc_msgSend(*(a1 + 48), "firewallDatabaseAllowsFromURI:mergeID:isDonated:service:", *(a1 + 64), *(a1 + 80), 1, *(a1 + 72)) & 1) == 0)
          {
            v62 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v63 = *(a1 + 32);
              v64 = *(a1 + 80);
              v65 = *(a1 + 64);
              v66 = [*(a1 + 72) controlCategory];
              *buf = 138413058;
              v117 = v65;
              v118 = 2112;
              v119 = v63;
              v120 = 2112;
              v121 = v64;
              v122 = 1024;
              LODWORD(v123) = v66;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "IDSBlastDoor: Sender %@ of message %@ with mergeID %@ not in allow list for service category %u", buf, 0x26u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v67 = *(a1 + 32);
              v68 = *(a1 + 64);
              v78 = *(a1 + 80);
              v81 = [*(a1 + 72) controlCategory];
              v70 = v68;
              v74 = v67;
              _IDSLogV();
            }

            +[IDSDMessageStore updateExpirationForIncomingMessageWithGUID:expirationDate:](IDSDMessageStore, "updateExpirationForIncomingMessageWithGUID:expirationDate:", *(a1 + 40), [*(a1 + 48) _expirationTimeForRestrictedMessages]);
            goto LABEL_98;
          }

          v23 = *(a1 + 88);
          v24 = *(a1 + 96);
          v25 = *(a1 + 104);
        }

        v26 = v25;
        v27 = *(a1 + 232);
        v83 = v26;
        if (v27 != 2)
        {
          if (v27 == 1)
          {
            value = [v24 _FTCopyOptionallyGzippedData];
            goto LABEL_52;
          }

          if (v27)
          {
            value = 0;
            goto LABEL_52;
          }
        }

        v28 = JWEncodeDictionary();
        value = [v28 _FTCopyOptionallyGzippedData];

LABEL_52:
        v31 = [*(*(*(a1 + 216) + 8) + 40) mutableCopy];
        v32 = IDSIncomingMessageDecryptedDataKey;
        [v31 removeObjectForKey:IDSIncomingMessageDecryptedDataKey];
        if (value)
        {
          CFDictionarySetValue(v31, v32, value);
        }

        if (CUTIsInternalInstall())
        {
          v33 = +[IMUserDefaults isWritePushPayloadsToDiskEnabled];
        }

        else
        {
          v33 = 0;
        }

        v34 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(a1 + 32);
          v36 = @"NO";
          if (*(a1 + 112))
          {
            v37 = @"YES";
          }

          else
          {
            v37 = @"NO";
          }

          *buf = 138413314;
          if (v33)
          {
            v36 = @"YES";
          }

          v117 = v35;
          v118 = 2112;
          v119 = v16;
          v120 = 2112;
          v121 = @"YES";
          v122 = 2112;
          v123 = v37;
          v124 = 2112;
          v125 = v36;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Commit block status for message %@: Replay Key %@, IDSXAccountBlastdoor %@ hasCertifiedDelivery %@, isWritePayloadToDiskEnabled %@", buf, 0x34u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v38 = @"NO";
          if (*(a1 + 112))
          {
            v39 = @"YES";
          }

          else
          {
            v39 = @"NO";
          }

          if (v33)
          {
            v38 = @"YES";
          }

          v81 = v39;
          v82 = v38;
          v75 = v16;
          v79 = @"YES";
          v71 = *(a1 + 32);
          _IDSLogV();
        }

        if (v16 && !((*(a1 + 112) != 0) | v33 & 1))
        {
          v42 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = *(a1 + 32);
            *buf = 138412546;
            v117 = v43;
            v118 = 2112;
            v119 = v16;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Commit block status for message %@: Calling commit block with replay key %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v71 = *(a1 + 32);
            v75 = v16;
            _IDSLogV();
          }

          v44 = [IDSEncryptionController sharedInstance:v71];
          v114[0] = _NSConcreteStackBlock;
          v114[1] = 3221225472;
          v114[2] = sub_100684268;
          v114[3] = &unk_100BD6E40;
          v114[4] = *(a1 + 48);
          v45 = v16;
          v115 = v45;
          [v44 performAsyncBlock:v114 priority:300];

          [*(*(a1 + 48) + 488) removeObjectForKey:v45];
        }

        else
        {
          v40 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = *(a1 + 32);
            *buf = 138412290;
            v117 = v41;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Commit block status for message %@: Not calling commit block.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }
        }

        if ([*(a1 + 48) _processNonMessagingPayloadWithCommand:*(*(*(a1 + 224) + 8) + 40) dictionaryPayload:v23 senderPushToken:*(a1 + 120) topic:*(a1 + 128) toURI:*(a1 + 136) fromURI:*(a1 + 64) peerResponseIdentifier:*(a1 + 144) guid:*(a1 + 40) service:*(a1 + 72) idsMessageContext:*(a1 + 152) messageContext:*(a1 + 160)] & 1) != 0 || (!v23 ? (v47 = objc_opt_class(), sub_10001B8C4(v47, v31, IDSIncomingMessagePushPayloadKey), v46 = objc_claimAutoreleasedReturnValue()) : (v46 = v23), v48 = v46, v49 = objc_msgSend(*(a1 + 48), "_processMessagingPayloadWithCommand:dictionaryPayload:senderPushToken:topic:toURI:fromURI:peerResponseIdentifier:guid:service:idsMessageContext:messageContext:", *(*(*(a1 + 224) + 8) + 40), v46, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 64), *(a1 + 144), *(a1 + 40), *(a1 + 72), *(a1 + 152), *(a1 + 160)), v48, (v49))
        {
          state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
          v88 = _os_activity_create(&_mh_execute_header, "Not broadcasting command", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
          os_activity_scope_enter(v88, &state);
          v50 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = *(a1 + 208);
            v52 = *(a1 + 56);
            v53 = *(a1 + 40);
            *buf = 138412802;
            v117 = v51;
            v118 = 2112;
            v119 = v52;
            v120 = 2112;
            v121 = v53;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Shouldn't broadcast for this command %@ for received message %@ with guid %@", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v76 = *(a1 + 56);
            v80 = *(a1 + 40);
            v72 = *(a1 + 208);
            _IDSLogV();
          }

          [IDSDMessageStore deleteIncomingMessageWithGUID:*(a1 + 40), v72, v76, v80];
          os_activity_scope_leave(&state);
          cut_arc_os_release();
        }

        else
        {
          v95[0] = _NSConcreteStackBlock;
          v95[1] = 3221225472;
          v95[2] = sub_1006842BC;
          v95[3] = &unk_100BE3B90;
          v96 = *(a1 + 152);
          v97 = *(a1 + 32);
          v98 = *(a1 + 120);
          v99 = *(a1 + 64);
          v54 = *(a1 + 168);
          v55 = *(a1 + 48);
          v100 = v54;
          v101 = v55;
          v56 = *(a1 + 136);
          v57 = *(a1 + 224);
          v102 = v56;
          v113 = v57;
          v103 = v31;
          v104 = *(a1 + 128);
          v105 = *(a1 + 72);
          v106 = *(a1 + 40);
          v107 = *(a1 + 56);
          v108 = *(a1 + 176);
          v109 = *(a1 + 184);
          v58 = v23;
          v110 = v58;
          v111 = *(a1 + 160);
          v112 = *(a1 + 192);
          v59 = objc_retainBlock(v95);
          v89[0] = _NSConcreteStackBlock;
          v89[1] = 3221225472;
          v89[2] = sub_100686C5C;
          v89[3] = &unk_100BE3BB8;
          v90 = *(a1 + 200);
          v94 = v59;
          v91 = v58;
          v92 = v24;
          v93 = v83;
          v60 = v59;
          v61 = objc_retainBlock(v89);
          (v61[2])();
        }

LABEL_98:
        goto LABEL_99;
      }

      if (v7)
      {
        v85 = [v7 _dataForKey:@"##payload-data##"];
      }

      else
      {
        v85 = 0;
      }

      v86 = 0;
    }

    v7 = 0;
    goto LABEL_26;
  }

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138412546;
    v117 = v10;
    v118 = 2112;
    v119 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSBlastDoor: Received an error from blastdoor for message %@, dropping message %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v69 = *(a1 + 32);
    v73 = v8;
    _IDSLogV();
  }

  [IDSDMessageStore deleteIncomingMessageWithGUID:*(a1 + 40), v69, v73];
LABEL_99:
}

void sub_100684138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, os_activity_scope_state_s state, char a22)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1006840BCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_100684268(uint64_t a1)
{
  v2 = [*(a1 + 32) replayStateCommitter];
  [v2 commitStateForKey:*(a1 + 40)];
}

void sub_1006842BC(uint64_t a1, void *a2)
{
  v82 = a2;
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412546;
    v152 = v4;
    v153 = 2112;
    v154 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Broadcast will include message context %@, identifier %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v74 = *(a1 + 32);
    v77 = *(a1 + 40);
    _IDSLogV();
  }

  v6 = [*(a1 + 48) rawToken];
  if ([v6 length])
  {
    v7 = [*(a1 + 56) prefixedURI];
    if ([v7 length])
    {
      v8 = [*(a1 + 48) rawToken];
      v9 = [*(a1 + 56) prefixedURI];
      v10 = _IDSCopyIDForTokenWithURI();
      v11 = [IDSURI URIWithPrefixedURI:v10 withServiceLoggingHint:*(a1 + 64)];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [*(a1 + 72) serviceController];
  v13 = [v12 serviceWithIdentifier:*(a1 + 64)];

  v14 = +[IDSDAccountController sharedInstance];
  v83 = [v14 accountsOnService:v13];

  v15 = +[IDSDAccountController sharedInstance];
  v16 = [v15 accountsOnService:v13 withType:0];
  v17 = [v16 firstObject];

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v152 = v13;
    v153 = 2112;
    v154 = v83;
    v155 = 2112;
    v156 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Found Topic %@  with all accounts %@ and Going to use account %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v78 = v83;
    v80 = v17;
    v75 = v13;
    _IDSLogV();
  }

  v19 = *(a1 + 72);
  v20 = [*(a1 + 80) prefixedURI];
  LODWORD(v19) = [v19 shouldProxyMessageForService:v13 toIdentifier:v20];

  if (v19)
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Forwarding Message To Local Device to Process and Broadcast", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v22 = objc_alloc_init(NSMutableDictionary);
    v23 = *(*(*(a1 + 168) + 8) + 40);
    if (v23)
    {
      CFDictionarySetValue(v22, IDSCommandKey, v23);
    }

    v24 = *(a1 + 88);
    if (v24)
    {
      CFDictionarySetValue(v22, IDSProxyTopLevelPayloadKey, v24);
    }

    v25 = *(a1 + 40);
    if (v25)
    {
      CFDictionarySetValue(v22, IDSProxyGuidKey, v25);
    }

    v26 = v82;
    if (v26)
    {
      CFDictionarySetValue(v22, IDSProxyPayloadKey, v26);
    }

    v27 = *(a1 + 96);
    if (v27)
    {
      CFDictionarySetValue(v22, IDSProxyTopicKey, v27);
    }

    v28 = [*(a1 + 80) prefixedURI];
    if (v28)
    {
      CFDictionarySetValue(v22, IDSProxyToIDKey, v28);
    }

    v29 = [v11 prefixedURI];
    if (v29)
    {
      CFDictionarySetValue(v22, IDSProxyFromIDKey, v29);
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v30 = [NSNumber numberWithDouble:?];
    if (v30)
    {
      CFDictionarySetValue(v22, IDSProxyForwardedTimeKey, v30);
    }

    v31 = objc_alloc_init(IDSSendParameters);
    [v31 setMessage:v22];
    [v31 setLocalDelivery:1];
    v32 = [v17 uniqueID];
    [v31 setAccountUUID:v32];

    [v31 setPriority:300];
    [v31 setTimeout:172800.0];
    v33 = IDSDefaultPairedDevice;
    v34 = [[NSSet alloc] initWithObjects:{v33, 0}];
    v35 = [IDSDestination destinationWithStrings:v34];
    [v31 setDestinations:v35];

    v36 = [NSNumber numberWithInteger:229];
    [v31 setCommand:v36];

    v37 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "About To Send Message Over Local Link", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    [v17 sendMessageWithSendParameters:v31 willSendBlock:&stru_100BE3AD0 completionBlock:&stru_100BE3AF0];
  }

  if ([*(a1 + 104) watchOnlyService])
  {
    v38 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "We received a message on a service that is local only, we have kicked off a forwarding of the message if necessary, we can delete this message from our database", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    [IDSDMessageStore deleteIncomingMessageWithGUID:*(a1 + 112)];
  }

  if ([*(a1 + 72) deferMessageForBatchDelivery:*(a1 + 120) service:*(a1 + 104)])
  {
    v39 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 40);
      v41 = *(a1 + 64);
      *buf = 138412546;
      v152 = v40;
      v153 = 2112;
      v154 = v41;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Message with guid %@ topic %@ will be delivered in a batch - skipping individual broadcast", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    goto LABEL_139;
  }

  if (*(a1 + 128))
  {
    v42 = *(*(a1 + 168) + 8);
    v43 = *(v42 + 40);
    *(v42 + 40) = &off_100C3D198;
  }

  v44 = [*(*(*(a1 + 168) + 8) + 40) integerValue];
  if (v44 > 245)
  {
    if (v44 <= 249)
    {
      if ((v44 - 246) < 2)
      {
        v52 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Broadcasting Incoming Invitation Message top", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v46 = v125;
        v125[0] = _NSConcreteStackBlock;
        v125[1] = 3221225472;
        v125[2] = sub_100686258;
        v125[3] = &unk_100BE3838;
        v125[4] = *(a1 + 144);
        v126 = *(a1 + 112);
        v127 = *(a1 + 64);
        v128 = *(a1 + 80);
        v129 = v11;
        v130 = *(a1 + 32);
        v47 = objc_retainBlock(v125);

        goto LABEL_98;
      }

      if ((v44 - 248) < 2)
      {
        v45 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Broadcasting Incoming Invitation Update Message top", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v46 = v119;
        v119[0] = _NSConcreteStackBlock;
        v119[1] = 3221225472;
        v119[2] = sub_100686348;
        v119[3] = &unk_100BE3838;
        v119[4] = *(a1 + 144);
        v120 = *(a1 + 112);
        v121 = *(a1 + 64);
        v122 = *(a1 + 80);
        v123 = v11;
        v124 = *(a1 + 32);
        v47 = objc_retainBlock(v119);

LABEL_98:
        v53 = (v46 + 4);
        v54 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates;
        goto LABEL_122;
      }

      goto LABEL_118;
    }

    if (v44 != 250)
    {
      if (v44 == 251)
      {
        v57 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Broadcasting HomeKit Report Message top", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v131[0] = _NSConcreteStackBlock;
        v131[1] = 3221225472;
        v131[2] = sub_100686128;
        v131[3] = &unk_100BDEBC8;
        v132 = *(a1 + 136);
        v133 = *(a1 + 56);
        v134 = *(a1 + 80);
        v135 = *(a1 + 112);
        v136 = *(a1 + 64);
        v137 = v11;
        v138 = *(a1 + 32);
        v47 = objc_retainBlock(v131);

        v53 = &v132;
        v54 = &kIDSListenerCapConsumesLaunchOnDemandAccessoryReportMessages;
LABEL_122:
        v61 = *v54;

        if (v47)
        {
          v62 = *(a1 + 72);
          v86[0] = _NSConcreteStackBlock;
          v86[1] = 3221225472;
          v86[2] = sub_1006869F0;
          v86[3] = &unk_100BE3B68;
          v87 = *(a1 + 112);
          v88 = *(a1 + 96);
          v89 = *(a1 + 64);
          v63 = v47;
          v90 = v63;
          [v62 enqueueBroadcast:v86 forTopic:*(a1 + 96) entitlement:kIDSMessagingEntitlement command:*(*(*(a1 + 168) + 8) + 40) capabilities:v61 messageContext:*(a1 + 152)];

          goto LABEL_139;
        }

        goto LABEL_132;
      }

      if (v44 == 315)
      {
        v50 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = *(a1 + 120);
          *buf = 138412290;
          v152 = v51;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Got a message of type FTCommandIDEngramEncryptedMessage -- dropping, this is not supported {message: %@}", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v76 = *(a1 + 120);
          _IDSLogV();
        }

        goto LABEL_132;
      }

      goto LABEL_118;
    }

    v55 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Broadcasting HomeKit Message top", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v56 = v139;
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 3221225472;
    v139[2] = sub_100686038;
    v139[3] = &unk_100BE3838;
    v139[4] = v82;
    v140 = *(a1 + 112);
    v141 = *(a1 + 96);
    v142 = *(a1 + 80);
    v143 = v11;
    v144 = *(a1 + 32);
    v47 = objc_retainBlock(v139);

LABEL_115:
    v53 = (v56 + 4);
    v54 = &kIDSListenerCapConsumesLaunchOnDemandIncomingData;
    goto LABEL_122;
  }

  if (v44 <= 241)
  {
    switch(v44)
    {
      case 120:
        if (([v13 wantsRemoteErrors] & 1) == 0 && !objc_msgSend(*(a1 + 64), "isEqualToIgnoringCase:", @"com.apple.madrid"))
        {
          v64 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v65 = *(a1 + 112);
            v66 = *(a1 + 96);
            *buf = 138412546;
            v152 = v65;
            v153 = 2112;
            v154 = v66;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Received IDS remote error (120) for client that can not hanlde it %@ %@", buf, 0x16u);
          }

          if (!os_log_shim_legacy_logging_enabled())
          {
            goto LABEL_132;
          }

          goto LABEL_131;
        }

        v58 = v99;
        v99[0] = _NSConcreteStackBlock;
        v99[1] = 3221225472;
        v99[2] = sub_1006868B8;
        v99[3] = &unk_100BDEBC8;
        v99[4] = *(a1 + 88);
        v100 = *(a1 + 112);
        v101 = v82;
        v102 = *(a1 + 96);
        v103 = *(a1 + 80);
        v104 = v11;
        v105 = *(a1 + 32);
        v47 = objc_retainBlock(v99);

        break;
      case 121:
        v58 = v106;
        v106[0] = _NSConcreteStackBlock;
        v106[1] = 3221225472;
        v106[2] = sub_100686740;
        v106[3] = &unk_100BD8D00;
        v106[4] = *(a1 + 144);
        v107 = *(a1 + 56);
        v108 = *(a1 + 32);
        v47 = objc_retainBlock(v106);

        break;
      case 153:
        v48 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Broadcasting GroupShare Message top", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v49 = +[IDSDGroupContextController sharedInstance];
        v116[0] = _NSConcreteStackBlock;
        v116[1] = 3221225472;
        v116[2] = sub_100686438;
        v116[3] = &unk_100BE3B40;
        v117 = v82;
        v118 = *(a1 + 112);
        [v49 groupContextForProtectionSpace:0 withCompletion:v116];

        goto LABEL_132;
      default:
        goto LABEL_118;
    }

LABEL_121:
    v53 = (v58 + 4);
    v54 = &kIDSListenerCapConsumesLaunchOnDemandIncomingMessages;
    goto LABEL_122;
  }

  switch(v44)
  {
    case 242:
      v56 = v145;
      v145[0] = _NSConcreteStackBlock;
      v145[1] = 3221225472;
      v145[2] = sub_100686024;
      v145[3] = &unk_100BE3838;
      v145[4] = v82;
      v146 = *(a1 + 112);
      v147 = *(a1 + 96);
      v148 = *(a1 + 80);
      v149 = v11;
      v150 = *(a1 + 32);
      v47 = objc_retainBlock(v145);

      goto LABEL_115;
    case 243:
      v109[0] = _NSConcreteStackBlock;
      v109[1] = 3221225472;
      v109[2] = sub_10068672C;
      v109[3] = &unk_100BE3838;
      v110 = v82;
      v111 = *(a1 + 112);
      v112 = *(a1 + 96);
      v113 = *(a1 + 80);
      v114 = v11;
      v115 = *(a1 + 32);
      v47 = objc_retainBlock(v109);

      v53 = &v110;
      v54 = &kIDSListenerCapConsumesLaunchOnDemandIncomingProtobuf;
      goto LABEL_122;
    case 245:
      [*(a1 + 72) _processIncomingRemoteResourceTransferMessage:*(a1 + 88) forceDownload:0 guid:*(a1 + 112) context:*(a1 + 32) specificOriginatorURI:v11 broadcastTopic:*(a1 + 96) toURI:*(a1 + 80) topic:*(a1 + 64) messageContext:*(a1 + 152)];
      goto LABEL_132;
  }

LABEL_118:
  if ([*(*(*(a1 + 168) + 8) + 40) integerValue] != 227 || objc_msgSend(v82, "count"))
  {
    v58 = v91;
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_1006868F0;
    v91[3] = &unk_100BE3860;
    v59 = *(a1 + 160);
    v60 = *(a1 + 72);
    v91[4] = v59;
    v91[5] = v60;
    v92 = *(a1 + 32);
    v93 = *(a1 + 88);
    v94 = *(a1 + 112);
    v95 = v82;
    v96 = *(a1 + 96);
    v97 = *(a1 + 80);
    v98 = v11;
    v47 = objc_retainBlock(v91);

    goto LABEL_121;
  }

  v67 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    v68 = *(a1 + 112);
    v69 = *(a1 + 96);
    *buf = 138412546;
    v152 = v68;
    v153 = 2112;
    v154 = v69;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Received IDS message payload is empty, not delivering %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
LABEL_131:
    _IDSWarnV();
    _IDSLogV();
    v76 = *(a1 + 112);
    v79 = *(a1 + 96);
    _IDSLogTransport();
  }

LABEL_132:
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v85 = _os_activity_create(&_mh_execute_header, "Not broadcasting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v85, &state);
  if ([*(*(*(a1 + 168) + 8) + 40) integerValue] != 245)
  {
    v70 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = *(*(*(a1 + 168) + 8) + 40);
      v72 = *(a1 + 96);
      v73 = *(a1 + 112);
      *buf = 138412802;
      v152 = v71;
      v153 = 2112;
      v154 = v72;
      v155 = 2112;
      v156 = v73;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "No broadcast desired for command %@ topic %@ -- deleting message with guid %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v79 = *(a1 + 96);
      v81 = *(a1 + 112);
      v76 = *(*(*(a1 + 168) + 8) + 40);
      _IDSLogTransport();
    }

    [IDSDMessageStore deleteIncomingMessageWithGUID:*(a1 + 112), v76, v79, v81];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

LABEL_139:
}

void sub_100685D74(id a1, NSArray *a2, NSArray *a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PROXY: Will Send Block", v10, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

void sub_100685E6C(id a1, IDSDeliveryContext *a2)
{
  v2 = a2;
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSDeliveryContext *)v2 idsResponseCode];
    v5 = [(IDSDeliveryContext *)v2 responseError];
    v6 = [(IDSDeliveryContext *)v2 lastCall];
    v7 = @"NO";
    *buf = 134218498;
    v10 = v4;
    v11 = 2112;
    if (v6)
    {
      v7 = @"YES";
    }

    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PROXY: Completion Block %ld, %@, %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [(IDSDeliveryContext *)v2 idsResponseCode];
    v8 = [(IDSDeliveryContext *)v2 responseError];
    [(IDSDeliveryContext *)v2 lastCall];
    _IDSLogV();
  }
}

void sub_100686038(void *a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcasting HomeKit Message brodcast block", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [v3 accessoryDataReceived:a1[4] withGUID:a1[5] forTopic:a1[6] toURI:a1[7] fromURI:a1[8] context:a1[9]];
}

void sub_100686128(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcasting HomeKit Report Message brodcast block", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) prefixedURI];
  v7 = [*(a1 + 48) prefixedURI];
  [v3 accessoryReportMessageReceived:v5 accessoryID:v6 controllerID:v7 withGUID:*(a1 + 56) forTopic:*(a1 + 64) toURI:*(a1 + 48) fromURI:*(a1 + 72) context:*(a1 + 80)];
}

void sub_100686258(void *a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcasting Incoming Invitation Message block", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [v3 incomingInvitation:a1[4] withGUID:a1[5] forTopic:a1[6] toURI:a1[7] fromURI:a1[8] context:a1[9]];
}

void sub_100686348(void *a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcasting Incoming Invitation Update Message block", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [v3 incomingInvitationUpdate:a1[4] withGUID:a1[5] forTopic:a1[6] toURI:a1[7] fromURI:a1[8] context:a1[9]];
}

void sub_100686438(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006864EC;
  v5[3] = &unk_100BE3B18;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = v6;
  [v4 _groupFromPublicDataRepresentation:v3 completion:v5];
}

void sub_1006864EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 && !a3)
  {
    v6 = +[IDSFoundationLog groupCrypto];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 groupID];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received Sent Ahead Group {groupID: %{public}@}", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10068664C;
    v9[3] = &unk_100BDA900;
    v10 = v5;
    v11 = *(a1 + 40);
    [v8 cacheIncomingGroup:v10 completion:v9];
  }
}

void sub_10068664C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog groupCrypto];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543619;
    v7 = v3;
    v8 = 2113;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cached Sent Ahead Group {error: %{public}@, group: %{private}@}", &v6, 0x16u);
  }

  [IDSDMessageStore deleteIncomingMessageWithGUID:*(a1 + 40)];
}

void sub_100686740(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v12 = [v3 objectForKey:@"d"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [*(a1 + 32) objectForKey:@"d"];
    v7 = [NSData _IDSDataFromBase64String:v6];
LABEL_5:
    v8 = v7;
    v9 = isKindOfClass ^ 1;
    goto LABEL_7;
  }

  v6 = [*(a1 + 32) objectForKey:@"d"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 32) objectForKey:@"d"];
    goto LABEL_5;
  }

  v9 = 0;
  v8 = 0;
LABEL_7:
  v10 = objc_opt_class();
  v11 = sub_10001B8C4(v10, *(a1 + 32), @"i");
  [v4 opportunisticDataReceived:v8 withIdentifier:v11 fromURI:*(a1 + 40) context:*(a1 + 48)];

  if (v9)
  {
  }

  if (isKindOfClass)
  {
  }
}

void sub_1006868F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = a2;
  v5 = [v4 currentServerTime];
  [v5 currentServerTimeInterval];
  v6 = [NSNumber numberWithDouble:?];
  v7 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys incomingBroadcastKey];
  [v3 addEntry:v6 forKey:v7];

  v8 = [*(a1 + 32) metricsDictionary];
  if (v8)
  {
    CFDictionarySetValue(*(a1 + 48), IDSMessageContextIncomingMessageMetricsKey, v8);
  }

  [v9 messageReceived:*(a1 + 56) withGUID:*(a1 + 64) withPayload:*(a1 + 72) forTopic:*(a1 + 80) toURI:*(a1 + 88) fromURI:*(a1 + 96) context:*(a1 + 48)];
}

void sub_1006869F0(void *a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    *buf = 138543874;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcasting for received message with guid %{public}@   broadcast topic: %{public}@  (topic: %{public}@)", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = a1[6];
    v12 = *(a1 + 2);
    _IDSLogV();
  }

  if (v3)
  {
    (*(a1[7] + 16))(a1[7], v3, v8);
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      v11 = a1[5];
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No broadcaster found - deleting incoming message %@ on topic %@ with no listeners", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v12 = *(a1 + 2);
      _IDSLogTransport();
    }

    [IDSDMessageStore deleteIncomingMessageWithGUID:a1[4], v12, v13];
  }
}

void sub_100686C5C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = *v13;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v13 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Processing bulked payload ...", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }

          (*(*(a1 + 64) + 16))();
        }

        v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v3);
    }

    return;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(a1 + 48);
    if (!v8)
    {
      v9 = *(a1 + 56);
      goto LABEL_19;
    }
  }

  v9 = v8;
LABEL_19:
  v10 = v9;

  (*(*(a1 + 64) + 16))();
}

void sub_100686EC0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  (*(a1[6] + 16))();
  v5 = a1[7];
  if (v5)
  {
    (*(v5 + 16))(v5, a1[4], a1[5], v6);
  }
}

void sub_100686F4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  im_dispatch_after_primary_queue();
}

void sub_100687014(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100687358(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138412546;
    v27 = v5;
    v28 = 2114;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcasting batchMessage: %@ (topic: %{public}@)", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    _IDSLogV();
  }

  if (v3)
  {
    (*(*(a1 + 56) + 16))(*(a1 + 56), v3);
    v7 = [*(a1 + 32) context];
    v8 = [v7 serverStorageFetchContext];

    if (v8)
    {
      v9 = [*(a1 + 48) serverStorageStateMachine];
      v10 = *(a1 + 40);
      v11 = [v8 serverStorageSSM];
      [v9 deliveredBatchFromServerStorageForTopic:v10 ssm:v11];
    }
  }

  else
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 138412290;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No broadcaster found - deleting incoming messages in batchMessage on topic %@ with no listeners", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v19 = *(a1 + 40);
      _IDSLogTransport();
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [*(a1 + 32) messages];
    v14 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v8);
          }

          v17 = [*(*(&v21 + 1) + 8 * v16) messageContext];
          v18 = [v17 storageGuid];
          [IDSDMessageStore deleteIncomingMessageWithGUID:v18];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }
}

void sub_1006879F4(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = a1[5];
      *buf = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "No broadcaster found - dropping update for incoming pending message %@ on topic %@ with no listeners", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

void sub_1006884F4(void *a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    *buf = 138543874;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcasting for pending Resource with guid %{public}@   broadcast topic: %{public}@  (topic: %{public}@)", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = a1[6];
    v12 = *(a1 + 2);
    _IDSLogV();
  }

  if (v3)
  {
    (*(a1[7] + 16))(a1[7], v3, v8);
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      v11 = a1[5];
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No broadcaster found - deleting incoming message %@ on topic %@ with no listeners", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v12 = *(a1 + 2);
      _IDSLogTransport();
    }

    [IDSDMessageStore deleteIncomingMessageWithGUID:a1[4], v12, v13];
  }
}

void sub_100688760(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v33 = a2;
  v35 = a3;
  v10 = a5;
  v34 = a6;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v35;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "File Has Been Downloaded to %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v12 = CSDBGetMobileUserDirectory();
  if (v12)
  {
    v13 = [NSString stringWithUTF8String:v12];
  }

  else
  {
    v13 = @"~";
  }

  v14 = [NSArray arrayWithObjects:v13, @"/Library/IdentityServices/files/", *(a1 + 32), 0];
  v15 = [NSString pathWithComponents:v14];

  if (v12)
  {
  }

  v16 = +[NSFileManager defaultManager];
  v48 = v10;
  [v16 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v48];
  v32 = v48;

  v17 = sub_1006527A0(v35, v15);
  if (v17)
  {
    v18 = +[NSMutableDictionary dictionary];
    v19 = v17;
    [v17 UTF8String];
    v20 = sandbox_extension_issue_file();
    if (v20)
    {
      v21 = [NSString stringWithUTF8String:v20];
      if (v21)
      {
        CFDictionarySetValue(v18, IDSMessageResourceTransferSandboxExtensionKey, v21);
      }

      free(v20);
    }

    else
    {
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v17;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension for file [%@]", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }
    }

    CFDictionarySetValue(v18, IDSMessageResourceTransferURLKey, v17);
    v23 = [*(a1 + 40) objectForKey:@"attach-meta"];
    if (v23)
    {
      CFDictionarySetValue(v18, IDSMessageResourceTransferMetadataKey, v23);
    }

    v24 = [*(a1 + 48) mutableCopy];
    [v24 addEntriesFromDictionary:v18];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100688D6C;
    v41[3] = &unk_100BE3838;
    v42 = v18;
    v43 = *(a1 + 32);
    v44 = *(a1 + 56);
    v45 = *(a1 + 64);
    v46 = *(a1 + 72);
    v47 = v24;
    v25 = v24;
    v31 = v18;
    v26 = objc_retainBlock(v41);
    v27 = *(a1 + 80);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100688DA4;
    v36[3] = &unk_100BE3B68;
    v37 = *(a1 + 32);
    v38 = *(a1 + 56);
    v39 = *(a1 + 88);
    v40 = v26;
    v28 = *(a1 + 56);
    v29 = v26;
    v30 = [NSNumber numberWithInteger:245];
    [v27 enqueueBroadcast:v36 forTopic:v28 entitlement:kIDSMessagingEntitlement command:v30 capabilities:kIDSListenerCapConsumesLaunchOnDemandIncomingResource messageContext:*(a1 + 96)];
  }

  else
  {
    [IDSDMessageStore deleteIncomingMessageWithGUID:*(a1 + 32)];
  }
}

void sub_100688DA4(void *a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    *buf = 138543874;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcasting for received message with guid %{public}@   broadcast topic: %{public}@  (topic: %{public}@)", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = a1[6];
    v12 = *(a1 + 2);
    _IDSLogV();
  }

  if (v3)
  {
    (*(a1[7] + 16))(a1[7], v3, v8);
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      v11 = a1[5];
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No broadcaster found - deleting incoming message %@ on topic %@ with no listeners", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v12 = *(a1 + 2);
      _IDSLogTransport();
    }

    [IDSDMessageStore deleteIncomingMessageWithGUID:a1[4], v12, v13];
  }
}

void sub_1006895C0(_Unwind_Exception *a1)
{
  os_activity_scope_leave((v1 - 112));
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_10068962C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Storing item from server storage %@  (%@)", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if ((a3 & 1) == 0)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Persisting failed for message %@  (%@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  v10 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    [v10 _noteLastItemFromStorage:v5];
  }

  else
  {
    [v10 _noteItemFromStorage:v5];
  }
}

void sub_10068A184(uint64_t a1)
{
  v2 = +[IDSDMessageStore sharedInstance];
  v3 = [v2 deleteExpiredIncomingRestrictedMessagesOlderThan:*(a1 + 40)];

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling replay commit for expired incoming messages %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = v3;
    _IDSLogV();
  }

  [*(a1 + 32) _callReplayCommitBlockForIncomingMessages:{v3, v7}];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 488);
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Replay key map state: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

void sub_10068A8E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 checkTransportLogWithReason:0];
  }

  else
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to hint service to check transport log {service: %@, reason: connected}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

BOOL sub_10068B7E4(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_10068B830(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) count] - 1;
  v26 = v5;
  v7 = [v5 mutableCopy];
  v8 = *(a1 + 88);
  if (v6 == a3)
  {
    if (*(a1 + 89))
    {
      v8 = v8 | 2;
    }

    else
    {
      v8 = *(a1 + 88);
    }
  }

  v9 = [NSNumber numberWithUnsignedInt:v8];
  if (v9)
  {
    CFDictionarySetValue(v7, IDSStorageFlagsKey, v9);
  }

  v10 = [[IDSIncomingNiceMessage alloc] initWithMessageDictionary:v7 topic:*(a1 + 40)];
  v11 = [v10 command];
  if ([*(a1 + 48) _isUnlistenedCommand:v11])
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v11;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Submessage command is not recognized -- dropping. {subMessageCommand: %@, subMessage: %@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else if (*(a1 + 90) == 1)
  {
    v13 = objc_alloc_init(CUTUnsafePromiseSeal);
    v14 = objc_alloc_init(CUTUnsafePromiseSeal);
    v25 = [[IDSIncomingBatchMemberMessage alloc] initFrom:v10 batchIdentifier:*(a1 + 56) storePromise:v13 processPromise:v14];
    v15 = *(a1 + 64);
    v16 = [v13 promise];
    [v15 addObject:v16];

    v17 = *(a1 + 72);
    v18 = [v14 promise];
    [v17 addObject:v18];

    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v21 = [v10 fromURI];
    [v20 _handleIncomingPushNiceMessage:v25 forTopic:v19 fromURI:v21 messageContext:*(a1 + 80)];
  }

  else
  {
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = [v10 fromURI];
    [v23 _handleIncomingPushNiceMessage:v10 forTopic:v22 fromURI:v24 messageContext:*(a1 + 80)];
  }
}

void sub_10068BB30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [v4 __imArrayByFilteringWithBlock:&stru_100BE3E48];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v7;
    v13 = 2048;
    v14 = [v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished storing messages in message list {identifier: %@} for topic: %@ {stored count: %ld}", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v5 count];
    _IDSLogV();
  }
}

void sub_10068BCDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  [v3 value];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if (![v9 state])
        {
          v10 = [v9 value];
          if (v10)
          {
            [v4 addObject:v10];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v6);
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = [v4 count];
    *buf = 138412802;
    v24 = v13;
    v25 = 2112;
    v26 = v12;
    v27 = 2048;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Finished processing messages in message list {identifier: %@} for topic: %@ {processed count: %ld}", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v4 count];
    _IDSLogV();
  }

  v15 = [[IDSServerStorageFetchContext alloc] initWithServerStorageSSM:*(a1 + 48) service:*(a1 + 40)];
  v16 = [[IDSIncomingBatchMessageContext alloc] initWithBatchIdentifier:*(a1 + 32) serverStorageFetchContext:v15];
  [v16 setIsLastFromStorage:*(a1 + 80)];
  [v16 setBatchNumber:*(a1 + 56)];
  [v16 setTotalBatchCount:*(a1 + 64)];
  v17 = [*(a1 + 72) serverStorageStateMachine];
  [v16 setFirstMessageAfterTimeout:{objc_msgSend(v17, "didTimeOutWaitingForClientAck")}];

  v18 = [[IDSIncomingBatchMessage alloc] initWithMessages:v4 service:*(a1 + 40) context:v16];
  [*(a1 + 72) broadcastBatchMessage:v18 topic:*(a1 + 40)];
}

void sub_10068C8F0(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceController];
  v3 = [v2 serviceWithPushTopic:*(a1 + 40)];

  v4 = +[IDSDAccountController sharedInstance];
  v5 = [v4 appleIDAccountOnService:v3];

  if ([v5 isRegistered])
  {
    v6 = [v5 prefixedURIStringsFromRegistration];
    v7 = [v6 firstObject];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v20 = v8;
  v13 = [IDSURI URIWithPrefixedURI:"URIWithPrefixedURI:withServiceLoggingHint:" withServiceLoggingHint:?];
  v14 = [IDSURI URIWithPrefixedURI:*(a1 + 64) withServiceLoggingHint:*(a1 + 40)];
  LOBYTE(v9) = [v10 _processNonMessagingPayloadWithCommand:v11 dictionaryPayload:v12 senderPushToken:0 topic:v9 toURI:v13 fromURI:v14 peerResponseIdentifier:0 guid:0 service:v3 idsMessageContext:0 messageContext:0];

  if ((v9 & 1) == 0)
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v19 = *(a1 + 56);
      v18 = *(a1 + 64);
      *buf = 138544131;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      v25 = 2113;
      v26 = v18;
      v27 = 2113;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received a message over Bonjour Delivery that we can't process! -- dropping {service: %{public}@, command: %{public}@, deviceID: %{private}@, message: %{private}@}", buf, 0x2Au);
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

void sub_10068D278(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stored incoming message under first lock for service %@ with guid %@. Success: %d", buf, 0x1Cu);
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

void sub_10068D904(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceController];
  v3 = [v2 serviceWithPushTopic:*(a1 + 40)];

  [*(a1 + 32) _ackMessageWithSequenceNumber:objc_msgSend(*(a1 + 48) forDeviceID:"unsignedIntValue") priority:*(a1 + 56) dataProtectionClass:*(a1 + 72) connectionType:objc_msgSend(v3 guid:{"dataProtectionClass"), *(a1 + 80), *(a1 + 64)}];
}

void sub_10068D9B4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) serviceController];
  v4 = [v3 serviceWithPushTopic:*(a1 + 40)];

  if (![*v2 _shouldStoreBeforeFirstUnlockIncomingLocalMessage:*(a1 + 48) from:*(a1 + 56) forTopic:*(a1 + 40)])
  {
    if (sub_100019928([v4 shouldProtectTrafficUsingClassA], objc_msgSend(v4, "dataProtectionClass"), *(a1 + 40)))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 88) data];
      v7 = *(a1 + 40);
      v8 = +[IDSPairingManager sharedInstance];
      v9 = [v8 pairedDeviceUniqueID];
      v35 = 0;
      v10 = [v5 _decryptAOverCMessage:v6 topic:v7 fromDeviceID:v9 error:&v35];
      v11 = v35;

      if (!v10)
      {
        v19 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 40);
          *buf = 138412546;
          v37 = v20;
          v38 = 2112;
          v39 = v11;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to decrypt AoverC message -- dropping {topic: %@, error: %@}", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v21 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10068DD94;
        block[3] = &unk_100BE3980;
        block[4] = *(a1 + 32);
        v29 = *(a1 + 64);
        v22 = *(a1 + 72);
        v23 = *(a1 + 104);
        v30 = v22;
        v33 = v23;
        v24 = v4;
        v25 = *(a1 + 112);
        v31 = v24;
        v34 = v25;
        v32 = *(a1 + 80);
        v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
        dispatch_async(v21, v26);

        goto LABEL_7;
      }

      [*(a1 + 88) setData:v10];
    }

    v12 = *(a1 + 32);
    v11 = [*(a1 + 88) dictionaryRepresentation];
    v13 = *(a1 + 96);
    v14 = *(a1 + 72);
    v15 = *(a1 + 56);
    v16 = *(a1 + 40);
    v17 = [*(a1 + 48) _dictionaryForKey:@"IDSIncomingLocalMessageContext"];
    v18 = [NSNumber numberWithInteger:*(a1 + 104)];
    LOBYTE(v27) = *(a1 + 120);
    [v12 _processIncomingLocalMessage:v11 topic:v16 command:v13 deviceID:v14 btUUID:v15 context:v17 storedGUID:0 priority:v18 connectionType:*(a1 + 112) didWakeHint:v27];

LABEL_7:
    goto LABEL_8;
  }

  [*(a1 + 32) _ackMessageWithSequenceNumber:objc_msgSend(*(a1 + 64) forDeviceID:"unsignedIntValue") priority:*(a1 + 72) dataProtectionClass:*(a1 + 104) connectionType:objc_msgSend(v4 guid:{"dataProtectionClass"), *(a1 + 112), *(a1 + 80)}];
LABEL_8:
}

id sub_10068DD94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) unsignedIntValue];
  v4 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) dataProtectionClass];
  v7 = *(a1 + 80);
  v8 = *(a1 + 64);

  return [v2 _ackMessageWithSequenceNumber:v3 forDeviceID:v5 priority:v4 dataProtectionClass:v6 connectionType:v7 guid:v8];
}

void sub_10068E30C(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceController];
  v3 = [v2 serviceWithPushTopic:*(a1 + 40)];

  [*(a1 + 32) _ackMessageWithSequenceNumber:objc_msgSend(*(a1 + 48) forDeviceID:"unsignedIntValue") priority:*(a1 + 56) dataProtectionClass:*(a1 + 72) connectionType:objc_msgSend(v3 guid:{"dataProtectionClass"), *(a1 + 80), *(a1 + 64)}];
}

void sub_10068E3BC(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) serviceController];
  v4 = [v3 serviceWithPushTopic:*(a1 + 40)];

  if ([*v2 _shouldStoreBeforeFirstUnlockIncomingLocalMessage:*(a1 + 48) from:*(a1 + 56) forTopic:*(a1 + 40)])
  {
    [*(a1 + 32) _ackMessageWithSequenceNumber:objc_msgSend(*(a1 + 64) forDeviceID:"unsignedIntValue") priority:*(a1 + 72) dataProtectionClass:*(a1 + 104) connectionType:objc_msgSend(v4 guid:{"dataProtectionClass"), *(a1 + 112), *(a1 + 80)}];
  }

  else
  {
    v5 = sub_100019928([v4 shouldProtectTrafficUsingClassA], objc_msgSend(v4, "dataProtectionClass"), *(a1 + 40));
    v6 = *(a1 + 88);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v5)
    {
      v9 = +[IDSPairingManager sharedInstance];
      v10 = [v9 pairedDeviceUniqueID];
      v41 = 0;
      v11 = [v8 _decryptAOverCMessage:v6 topic:v7 fromDeviceID:v10 error:&v41];
      v12 = v41;

      if (v11)
      {

        v14 = *(a1 + 32);
        v13 = *(a1 + 40);
        v15 = *(a1 + 96);
        v16 = *(a1 + 72);
        v17 = *(a1 + 56);
        v18 = [*(a1 + 48) _dictionaryForKey:@"IDSIncomingLocalMessageContext"];
        v19 = [NSNumber numberWithInteger:*(a1 + 104)];
        LOBYTE(v33) = *(a1 + 120);
        [v14 _processIncomingLocalMessage:v11 topic:v13 command:v15 deviceID:v16 btUUID:v17 context:v18 storedGUID:0 priority:v19 connectionType:*(a1 + 112) didWakeHint:v33];
      }

      else
      {
        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 40);
          *buf = 138412546;
          v43 = v26;
          v44 = 2112;
          v45 = v12;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Failed to decrypt AoverC message -- dropping {topic: %@, error: %@}", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v27 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10068E7E0;
        block[3] = &unk_100BE3980;
        block[4] = *(a1 + 32);
        v35 = *(a1 + 64);
        v28 = *(a1 + 72);
        v29 = *(a1 + 104);
        v36 = v28;
        v39 = v29;
        v30 = v4;
        v31 = *(a1 + 112);
        v37 = v30;
        v40 = v31;
        v38 = *(a1 + 80);
        v32 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
        dispatch_async(v27, v32);
      }
    }

    else
    {
      v20 = *(a1 + 96);
      v21 = *(a1 + 72);
      v22 = *(a1 + 56);
      v23 = [*(a1 + 48) _dictionaryForKey:@"IDSIncomingLocalMessageContext"];
      v24 = [NSNumber numberWithInteger:*(a1 + 104)];
      LOBYTE(v33) = *(a1 + 120);
      [v8 _processIncomingLocalMessage:v6 topic:v7 command:v20 deviceID:v21 btUUID:v22 context:v23 storedGUID:0 priority:v24 connectionType:*(a1 + 112) didWakeHint:v33];
    }
  }
}

id sub_10068E7E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) unsignedIntValue];
  v4 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) dataProtectionClass];
  v7 = *(a1 + 80);
  v8 = *(a1 + 64);

  return [v2 _ackMessageWithSequenceNumber:v3 forDeviceID:v5 priority:v4 dataProtectionClass:v6 connectionType:v7 guid:v8];
}

void sub_10068ED5C(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceController];
  v3 = [v2 serviceWithPushTopic:*(a1 + 40)];

  [*(a1 + 32) _ackMessageWithSequenceNumber:objc_msgSend(*(a1 + 48) forDeviceID:"unsignedIntValue") priority:*(a1 + 56) dataProtectionClass:*(a1 + 72) connectionType:objc_msgSend(v3 guid:{"dataProtectionClass"), *(a1 + 80), *(a1 + 64)}];
}

void sub_10068EE0C(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceController];
  v3 = [v2 serviceWithPushTopic:*(a1 + 40)];

  v4 = +[IDSDAccountController sharedInstance];
  v47 = [v4 appleIDAccountOnService:v3];

  v5 = v47;
  if ([v47 isRegistered])
  {
    v6 = [v47 prefixedURIStringsFromRegistration];
    v45 = [v6 firstObject];

    v5 = v47;
  }

  else
  {
    v45 = 0;
  }

  v48 = [v5 fromIDForCBUUID:*(a1 + 48) deviceID:*(a1 + 56)];
  if (!v48)
  {
    v7 = +[IDSPairingManager sharedInstance];
    v8 = [v7 pairedDeviceUniqueID];
    v48 = _IDSCopyIDForDeviceUniqueID();
  }

  v9 = sub_100019928([v3 shouldProtectTrafficUsingClassA], objc_msgSend(v3, "dataProtectionClass"), *(a1 + 40));
  if ((v9 & 1) != 0 || (JWDecodeDictionary(), v10 = objc_claimAutoreleasedReturnValue(), v11 = *(a1 + 40), v12 = *(a1 + 32), v13 = *(a1 + 72), +[IDSURI URIWithPrefixedURI:withServiceLoggingHint:](IDSURI, "URIWithPrefixedURI:withServiceLoggingHint:", v45, v11), v14 = objc_claimAutoreleasedReturnValue(), +[IDSURI URIWithPrefixedURI:withServiceLoggingHint:](IDSURI, "URIWithPrefixedURI:withServiceLoggingHint:", v48, *(a1 + 40)), v15 = objc_claimAutoreleasedReturnValue(), LOBYTE(v12) = [v12 _processNonMessagingPayloadWithCommand:v13 dictionaryPayload:v10 senderPushToken:0 topic:v11 toURI:v14 fromURI:v15 peerResponseIdentifier:0 guid:0 service:v3 idsMessageContext:0 messageContext:0], v15, v14, v10, (v12 & 1) == 0))
  {
    LOWORD(v42) = *(a1 + 120);
    v46 = [*(a1 + 32) _incomingMessageStorageDictionaryForPayload:*(a1 + 64) topic:*(a1 + 40) deviceID:*(a1 + 56) btUUID:*(a1 + 48) command:*(a1 + 72) messageUUID:*(a1 + 80) sequenceNumber:*(a1 + 88) wantsAppAck:v42 expectsPeerResponse:*(a1 + 96) peerResponseIdentifier:?];
    if ([*(a1 + 32) _shouldStoreBeforeFirstUnlockIncomingLocalMessage:v46 from:*(a1 + 48) forTopic:*(a1 + 40)])
    {
      [*(a1 + 32) _ackMessageWithSequenceNumber:objc_msgSend(*(a1 + 88) forDeviceID:"unsignedIntValue") priority:*(a1 + 56) dataProtectionClass:*(a1 + 104) connectionType:objc_msgSend(v3 guid:{"dataProtectionClass"), *(a1 + 112), *(a1 + 80)}];
LABEL_19:

      goto LABEL_20;
    }

    if (v9)
    {
      v16 = *(a1 + 40);
      v17 = +[IDSPairingManager sharedInstance];
      v18 = [v17 pairedDeviceUniqueID];
      v19 = [IDSEncryptionHelpers areDataProtectionKeysAvailableForService:v16 withDataProtectionClass:1 fromDevice:v18];

      if (v19)
      {
        v20 = *(a1 + 64);
        v22 = *(a1 + 32);
        v21 = *(a1 + 40);
        v23 = +[IDSPairingManager sharedInstance];
        v24 = [v23 pairedDeviceUniqueID];
        v56 = 0;
        v44 = [v22 _decryptAOverCMessage:v20 topic:v21 fromDeviceID:v24 error:&v56];
        v25 = v56;

        if (!v44)
        {
          v34 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = *(a1 + 40);
            *buf = 138412546;
            v58 = v35;
            v59 = 2112;
            v60 = v25;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Failed to decrypt AoverC message -- dropping {topic: %@, error: %@}", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          v36 = im_primary_queue();
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10068F3E8;
          block[3] = &unk_100BE3980;
          block[4] = *(a1 + 32);
          v50 = *(a1 + 88);
          v37 = *(a1 + 56);
          v38 = *(a1 + 104);
          v51 = v37;
          v54 = v38;
          v39 = v3;
          v40 = *(a1 + 112);
          v52 = v39;
          v55 = v40;
          v53 = *(a1 + 80);
          v41 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
          dispatch_async(v36, v41);

          goto LABEL_18;
        }

        v26 = JWDecodeDictionary();
LABEL_17:
        v27 = *(a1 + 32);
        v28 = *(a1 + 40);
        v29 = *(a1 + 72);
        v30 = *(a1 + 48);
        v31 = *(a1 + 56);
        v32 = [v46 _dictionaryForKey:@"IDSIncomingLocalMessageContext"];
        v33 = [NSNumber numberWithInteger:*(a1 + 104)];
        LOBYTE(v43) = *(a1 + 122);
        [v27 _processIncomingLocalMessage:v26 topic:v28 command:v29 deviceID:v31 btUUID:v30 context:v32 storedGUID:0 priority:v33 connectionType:*(a1 + 112) didWakeHint:v43];

        v25 = v44;
LABEL_18:

        goto LABEL_19;
      }

      v26 = 0;
    }

    else
    {
      v26 = JWDecodeDictionary();
    }

    v44 = 0;
    goto LABEL_17;
  }

LABEL_20:
}

id sub_10068F3E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) unsignedIntValue];
  v4 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) dataProtectionClass];
  v7 = *(a1 + 80);
  v8 = *(a1 + 64);

  return [v2 _ackMessageWithSequenceNumber:v3 forDeviceID:v5 priority:v4 dataProtectionClass:v6 connectionType:v7 guid:v8];
}

void sub_10068F704(uint64_t a1)
{
  if (([*(a1 + 32) _shouldStoreBeforeFirstUnlockIncomingLocalMessage:*(a1 + 40) from:*(a1 + 48) forTopic:*(a1 + 56)] & 1) == 0)
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 72);
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v6 = *(a1 + 32);
    v9 = [*(a1 + 40) _dictionaryForKey:@"IDSIncomingLocalMessageContext"];
    v7 = [NSNumber numberWithInteger:*(a1 + 80)];
    LOBYTE(v8) = 0;
    [v6 _processIncomingLocalMessage:0 topic:v4 command:v2 deviceID:v3 btUUID:v5 context:v9 storedGUID:0 priority:v7 connectionType:*(a1 + 88) didWakeHint:v8];
  }
}

void sub_1006901EC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100690210(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (a6)
  {
    v14 = *(*(*(a1 + 64) + 8) + 40);
    if (v14)
    {
      [v14 cancel];
      [*(*(*(a1 + 64) + 8) + 40) _unpublish];
      v15 = *(*(a1 + 64) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = 0;
    }

    goto LABEL_37;
  }

  v17 = [v12 integerValue];
  v18 = [v13 integerValue];
  v19 = v18;
  if (!a5)
  {
    goto LABEL_11;
  }

  v20 = *(*(*(a1 + 72) + 8) + 24);
  if (v20 == -1)
  {
    goto LABEL_11;
  }

  if (*(*(*(a1 + 80) + 8) + 24) == -1 || v17 == v18)
  {
    goto LABEL_11;
  }

  v60 = v17 - v20;
  if (v60 < 0)
  {
    v60 = -v60;
  }

  if (v60 >> 7 >= 0x7D)
  {
    if (100 * v60 / v18)
    {
      [*(*(*(a1 + 88) + 8) + 40) timeIntervalSinceNow];
      if (v61 <= -1.0)
      {
LABEL_11:
        v22 = *(*(*(a1 + 64) + 8) + 40);
        if (v22)
        {
          [v22 setByteTotalCount:v13];
          [*(*(*(a1 + 64) + 8) + 40) setByteCompletedCount:v12];
        }

        else
        {
          v67 = [*(a1 + 32) message];
          v23 = [v67 objectForKeyedSubscript:IDSMessageResourceTransferOriginalURLKey];
          if (v23)
          {
            v24 = [[NSProgress alloc] initWithParent:0 userInfo:0];
            v25 = *(*(a1 + 64) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v24;

            [*(*(*(a1 + 64) + 8) + 40) setTotalUnitCount:1];
            v27 = [NSURL URLWithString:v23];
            [*(*(*(a1 + 64) + 8) + 40) setFileURL:v27];

            [*(*(*(a1 + 64) + 8) + 40) setByteTotalCount:v13];
            [*(*(*(a1 + 64) + 8) + 40) setByteCompletedCount:v12];
            [*(*(*(a1 + 64) + 8) + 40) setKind:NSProgressKindFile];
            [*(*(*(a1 + 64) + 8) + 40) setCancellable:0];
            [*(*(*(a1 + 64) + 8) + 40) setPausable:0];
            [*(*(*(a1 + 64) + 8) + 40) setFileOperationKind:NSProgressFileOperationKindCopying];
            v28 = *(*(*(a1 + 64) + 8) + 40);
            v29 = [NSURL URLWithString:v23];
            [v28 setUserInfoObject:v29 forKey:NSProgressFileURLKey];

            v30 = *(*(*(a1 + 64) + 8) + 40);
            v31 = [*(a1 + 32) identifier];
            [v30 setUserInfoObject:v31 forKey:IDSSendResourceProgressIdentifier];

            [*(*(*(a1 + 64) + 8) + 40) _publish];
          }
        }

        if (v17 == v19)
        {
          v32 = *(*(*(a1 + 64) + 8) + 40);
          if (v32)
          {
            [v32 setCompletedUnitCount:1];
            [*(*(*(a1 + 64) + 8) + 40) _unpublish];
            v33 = *(*(a1 + 64) + 8);
            v34 = *(v33 + 40);
            *(v33 + 40) = 0;
          }
        }

        *(*(*(a1 + 72) + 8) + 24) = v17;
        *(*(*(a1 + 80) + 8) + 24) = v19;
        v35 = +[NSDate date];
        v36 = *(*(a1 + 88) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = v35;

        v38 = objc_alloc_init(NSMutableDictionary);
        v39 = v38;
        if (v12)
        {
          CFDictionarySetValue(v38, IDSMessageContextBytesSent, v12);
        }

        if (v13)
        {
          CFDictionarySetValue(v39, IDSMessageContextTotalBytes, v13);
        }

        v40 = [*(a1 + 40) localObject];
        if (v40 && ([*(a1 + 40) localObject], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "isValid"), v41, v40, v42))
        {
          v43 = *(a1 + 48);
          v44 = [*(a1 + 40) localObject];
          v45 = [v43 broadcasterForLocalObject:v44 messageContext:*(a1 + 40)];

          if (!v45)
          {
LABEL_35:

            goto LABEL_36;
          }

          v46 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = [*(a1 + 32) identifier];
            v48 = [v11 idsResponseCode];
            v49 = [v11 responseError];
            *buf = 138413314;
            v75 = v47;
            v76 = 2048;
            v77 = v48;
            v78 = 2112;
            v79 = v49;
            v80 = 2112;
            v81 = v12;
            v82 = 2112;
            v83 = v13;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Sending update to listener on %@ with responseCode %ld error %@ - %@/%@ bytes", buf, 0x34u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v50 = [*(a1 + 32) identifier];
            v51 = [v11 idsResponseCode];
            [v11 responseError];
            v65 = v12;
            v66 = v13;
            v64 = v63 = v51;
            v62 = v50;
            _IDSLogV();
          }

          v53 = *(a1 + 32);
          v52 = (a1 + 32);
          v54 = [v53 identifier];
          v55 = [*v52 alternateCallbackID];
          v56 = [*v52 mainAccountUUID];
          v57 = [v11 idsResponseCode];
          v58 = [v11 responseError];
          -[IDSIncomingMessageBroadcast messageIdentifier:alternateCallbackID:forAccount:updatedWithResponseCode:error:lastCall:context:](v45, "messageIdentifier:alternateCallbackID:forAccount:updatedWithResponseCode:error:lastCall:context:", v54, v55, v56, v57, v58, [v11 lastCall], v39);
        }

        else
        {
          if (!*(a1 + 56))
          {
LABEL_36:

            goto LABEL_37;
          }

          v45 = objc_alloc_init(IDSIncomingMessageBroadcast);
          [(IDSIncomingMessageBroadcast *)v45 setTransient:1];
          v59 = *(a1 + 48);
          v68[0] = _NSConcreteStackBlock;
          v68[1] = 3221225472;
          v68[2] = sub_100690970;
          v68[3] = &unk_100BDA870;
          v69 = *(a1 + 32);
          v70 = v11;
          v71 = v12;
          v72 = v13;
          v73 = v39;
          [v59 enqueueIncomingMessageBroadcast:v68 broadcastData:v45 forTopic:*(a1 + 56) entitlement:kIDSMessagingEntitlement command:0 capabilities:0 messageContext:0];

          v54 = v69;
        }

        goto LABEL_35;
      }
    }
  }

LABEL_37:
}

void sub_100690970(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) identifier];
      v6 = [*(a1 + 40) idsResponseCode];
      v7 = [*(a1 + 40) responseError];
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      *buf = 138413314;
      v24 = v5;
      v25 = 2048;
      v26 = v6;
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcasting update to listener on %@ with responseCode %ld error %@ %@/%@ bytes", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v10 = [*(a1 + 32) identifier];
      v11 = [*(a1 + 40) idsResponseCode];
      v12 = [*(a1 + 40) responseError];
      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v19 = v11;
      v20 = v12;
      v18 = v10;
      _IDSLogV();
    }

    v13 = [*(a1 + 32) identifier];
    v14 = [*(a1 + 32) alternateCallbackID];
    v15 = [*(a1 + 32) mainAccountUUID];
    v16 = [*(a1 + 40) idsResponseCode];
    v17 = [*(a1 + 40) responseError];
    [v3 messageIdentifier:v13 alternateCallbackID:v14 forAccount:v15 updatedWithResponseCode:v16 error:v17 lastCall:objc_msgSend(*(a1 + 40) context:{"lastCall"), *(a1 + 64)}];
  }
}

void sub_10069179C(uint64_t a1)
{
  v2 = [*(a1 + 32) service];
  v3 = *(a1 + 64);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [v2 identifier];
  v7 = [v5 dequeueBroadcastWithID:v3 forMessageUUID:v4 service:v6 priority:{objc_msgSend(*(a1 + 56), "intValue")}];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v7 messageSequenceNumber];
    v10 = [v7 messageSenderID];
    [v8 _ackMessageWithSequenceNumber:v9 forDeviceID:v10 priority:objc_msgSend(*(a1 + 56) dataProtectionClass:"intValue") connectionType:objc_msgSend(v2 guid:{"dataProtectionClass"), *(a1 + 72), *(a1 + 48)}];

    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      v13 = *(a1 + 64);
      *buf = 138412802;
      v15 = v12;
      v16 = 2048;
      v17 = v13;
      v18 = 1024;
      v19 = [v7 messageSequenceNumber];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Broadcast: message %@ got client ack, sending IDS ack to sender, broadcast ID %lld, sequence number %u \n", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      [v7 messageSequenceNumber];
      _IDSLogTransport();
    }
  }
}

void sub_1006921C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 lastCall])
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v3 lastCall];
      v7 = @"NO";
      if (v6)
      {
        v7 = @"YES";
      }

      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sent app-level ack with guid %@. Last call? %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v3 lastCall];
      _IDSLogV();
    }
  }
}

void sub_1006939B8(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1006939E0(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[NSMutableString string];
    v5 = [WeakRetained isFirewallOn];
    v6 = @"NO";
    if (v5)
    {
      v6 = @"YES";
    }

    [v4 appendFormat:@"Is firewall enabled %@", v6];
    v7 = [WeakRetained[61] allValues];
    [v4 appendFormat:@"Pending replay blocks for guids %@", v7];

    v8[2](v8, v4);
  }

  else
  {
    v8[2](v8, 0);
  }
}

uint64_t sub_100693AEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained isFirewallOn];
    v4 = @"NO";
    if (v3)
    {
      v4 = @"YES";
    }

    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Is firewall enabled %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [WeakRetained isFirewallOn];
    _IDSLogV();
  }

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained[61] allValues];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pending replay blocks for guids %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = [WeakRetained[61] allValues];
    _IDSLogV();
  }

  return 0;
}

void sub_100693D08(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100693C70);
  }

  _Unwind_Resume(a1);
}

void sub_100693D80(id a1)
{
  v1 = objc_alloc_init(IDSAppleIDRegistrationCenter);
  v2 = qword_100CBF470;
  qword_100CBF470 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10069579C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1006957A0);
  }

  objc_terminate();
}

void sub_100695A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_activity_scope_state_s state, char a19)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_100695A74(uint64_t a1, int a2)
{
  if (!a2)
  {
    sub_100695A78();
  }

  objc_terminate();
}

void sub_100696304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_100696530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, char a10)
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = +[IMRGLog registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v30 = 138412290;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received auth token response for reg: %@", &v30, 0xCu);
  }

  v21 = [v18 integerValue];
  if (!v16 || (a10 & 1) != 0)
  {
    if (a10)
    {
      v23 = +[IMRGLog registration];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " ** user cancelled, bailing", &v30, 2u);
      }

      v25 = *(a1 + 32);
      v24 = *(a1 + 40);
      v26 = 1;
      v27 = 41;
      v28 = 0;
    }

    else
    {
      if (v21 == 5103)
      {
        v25 = *(a1 + 32);
        v24 = *(a1 + 40);
        v26 = 5103;
        v27 = 34;
      }

      else if (v21 == 5100)
      {
        v25 = *(a1 + 32);
        v24 = *(a1 + 40);
        v26 = 5100;
        v27 = 33;
      }

      else
      {
        v29 = +[IMRGLog warning];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          sub_10092E114(v29);
        }

        v25 = *(a1 + 32);
        v24 = *(a1 + 40);
        v26 = 1;
        v27 = 17;
      }

      v28 = v17;
    }

    [v24 _notifyAuthenticationFailure:v25 responseCode:v26 registrationError:v27 error:0 info:v28];
  }

  else
  {
    v22 = +[IMRGLog registration];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " We have a token, great!", &v30, 2u);
    }

    [*(a1 + 40) _noteSuccessfulToken:v16 profileID:v14 selfID:v15 forRegistrationInfo:*(a1 + 32) wasFetched:0];
  }
}

void sub_1006969B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = +[IMRGLog registration];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    v32 = 138412290;
    v33 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Token fetcher finished for registration info: %@", &v32, 0xCu);
  }

  if (!v15)
  {
    v15 = [*(a1 + 32) profileID];
  }

  if ([v15 length] && objc_msgSend(v17, "length"))
  {
    v22 = +[IMRGLog registration];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " We have a token, just sending auth", &v32, 2u);
    }

    [*(a1 + 40) _noteSuccessfulToken:v17 profileID:v15 selfID:v16 forRegistrationInfo:*(a1 + 32) wasFetched:1];
  }

  else if ([v14 length])
  {
    v23 = *(a1 + 48);
    if (v23)
    {
      (*(v23 + 16))();
    }

    if (v19)
    {
      v24 = [v19 integerValue];
      if (v24 == 5103)
      {
        v26 = *(a1 + 32);
        v25 = *(a1 + 40);
        v27 = 5103;
        v28 = 34;
      }

      else
      {
        if (v24 != 5100)
        {
          goto LABEL_26;
        }

        v26 = *(a1 + 32);
        v25 = *(a1 + 40);
        v27 = 5100;
        v28 = 33;
      }

      [v25 _notifyAuthenticationFailure:v26 responseCode:v27 registrationError:v28 error:0 info:v18];
      goto LABEL_26;
    }

    v31 = +[IMRGLog registration];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " ** No token found, requesting it!", &v32, 2u);
    }

    [*(a1 + 40) _renewTokenForRegistrationInfo:*(a1 + 32) forceRenewal:0 failIfNotSilent:*(a1 + 56)];
  }

  else
  {
    v29 = +[IMRGLog warning];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_10092E158(v17, v29);
    }

    v30 = *(a1 + 48);
    if (v30)
    {
      (*(v30 + 16))();
    }
  }

LABEL_26:
}

void sub_100696FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

NSSet *sub_100698878()
{
  objc_opt_self();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [NSSet setWithObjects:v0, v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0];
}

id sub_10069997C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 nextComponent];
  v5 = [v4 runWithInput:v3];

  return v5;
}

void sub_10069D480(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10069D558;
  block[3] = &unk_100BD6E18;
  block[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_10069D558(uint64_t a1)
{
  if (+[IMUserDefaults shouldDropKTAccountKeySignatureResponseOnLaunch]&& CUTIsInternalInstall())
  {
    v2 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Default is set to drop account key signature response from transparencyd. This path is not hit during registration.", buf, 2u);
    }

    v3 = [*(a1 + 32) keyManager];
    v4 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:-7000 userInfo:0];
    [v3 _handleTransparencySignatureResponse:0 error:v4];
  }

  else
  {
    v5 = [*(a1 + 32) keyManager];
    [v5 _handleTransparencySignatureResponse:*(a1 + 40) error:*(a1 + 48)];
  }
}

void sub_10069E254(uint64_t a1, void *a2)
{
  v33 = a2;
  if ([v33 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v3 = [*(a1 + 32) allKeys];
    v4 = [v3 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v39;
      v31 = *v39;
      v32 = v3;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v39 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v38 + 1) + 8 * i);
          v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
          v10 = [*(a1 + 48) serviceController];
          v11 = [v9 serviceIdentifier];
          v12 = [v10 serviceWithIdentifier:v11];

          if ([v12 adHocServiceType])
          {
            v13 = [*(a1 + 48) serviceController];
            v14 = [v13 primaryServiceForAdhocServiceType:{objc_msgSend(v12, "adHocServiceType")}];

            v12 = v14;
          }

          v15 = [*(a1 + 48) _ktApplicationForKTRegistrationIndex:{objc_msgSend(v12, "ktRegistrationDataIndex")}];
          if (v15)
          {
            v16 = [*(a1 + 32) objectForKeyedSubscript:v8];

            if (v16)
            {
              v17 = [v33 objectForKeyedSubscript:v15];
              if (v17)
              {
                v18 = [*(a1 + 32) objectForKeyedSubscript:v8];
                [v18 setKtOptInStatus:{objc_msgSend(v17, "status")}];

                v19 = [*(a1 + 32) objectForKeyedSubscript:v8];
                v20 = [v17 timestamp];
                [v19 setKtOptInTimestamp:v20];

                v21 = [v17 error];

                if (v21)
                {
                  v22 = [*(a1 + 32) objectForKeyedSubscript:v8];
                  v23 = [v17 error];
                  v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v23 code]);
                  [v22 setKtOptInErrorCode:v24];
                }

                [v9 setOptedIntoKT:{objc_msgSend(v17, "status")}];
                v25 = [v17 timestamp];
                [v9 setOptedIntoKTTimestamp:v25];

                v6 = v31;
                v3 = v32;
              }

              else
              {
                [v9 setOptedIntoKT:0];
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v5);
    }
  }

  if ([*(a1 + 56) count])
  {
    v26 = [[TransparencyIDSRegistrationRequest alloc] initWithSignatureRequests:*(a1 + 56)];
    [v26 setInitialTimeout:30.0];
    [v26 setTraceUUID:*(a1 + 64)];
    if (objc_opt_respondsToSelector())
    {
      [v26 setDontWaitForKeySigning:1];
    }

    v27 = *(a1 + 48);
    v28 = *(v27 + 32);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10069E6D0;
    v34[3] = &unk_100BE4050;
    v34[4] = v27;
    v35 = *(a1 + 32);
    v36 = *(a1 + 40);
    v37 = *(a1 + 72);
    [v28 transparencyGetKTSignatures:v26 complete:v34];
  }

  else
  {
    v29 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10092E6A0();
    }

    v30 = *(a1 + 72);
    if (v30)
    {
      (*(v30 + 16))(v30, *(a1 + 32));
    }
  }
}

void sub_10069E6D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = im_primary_queue();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10069E7E0;
  v12[3] = &unk_100BD72C0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

uint64_t sub_10069E7E0(uint64_t a1)
{
  if (+[IMUserDefaults shouldDropKTAccountKeySignatureOnlyDuringReg]&& CUTIsInternalInstall())
  {
    v2 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Default is set to drop signature from KT account key response.", buf, 2u);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v3 = [*(a1 + 32) registrationData];
    v4 = [v3 allValues];

    v5 = [v4 countByEnumeratingWithState:&v80 objects:v92 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v81;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v81 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v80 + 1) + 8 * i) setSignature:0];
        }

        v6 = [v4 countByEnumeratingWithState:&v80 objects:v92 count:16];
      }

      while (v6);
    }
  }

  if (+[IMUserDefaults shouldDropKTAccountKeyOnlyDuringReg]&& CUTIsInternalInstall())
  {
    v9 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Default is set to drop public key from KT account key response.", buf, 2u);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v10 = [*(a1 + 32) registrationData];
    v11 = [v10 allValues];

    v12 = [v11 countByEnumeratingWithState:&v76 objects:v91 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v77;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v77 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v76 + 1) + 8 * j) setPublicKey:0];
        }

        v13 = [v11 countByEnumeratingWithState:&v76 objects:v91 count:16];
      }

      while (v13);
    }
  }

  if (+[IMUserDefaults shouldDropKTAccountKeySignatureResponseDuringReg]&& CUTIsInternalInstall())
  {
    v16 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Default is set to drop account key signature response during registraiton.", buf, 2u);
    }

    v17 = [*(a1 + 40) keyManager];
    v18 = [NSError errorWithDomain:@"IDSKTRegistrationDataManagerErrorDomain" code:-7000 userInfo:0];
    [v17 _handleTransparencySignatureResponseForRegistration:0 error:v18];
  }

  else
  {
    v17 = [*(a1 + 40) keyManager];
    [v17 _handleTransparencySignatureResponseForRegistration:*(a1 + 32) error:*(a1 + 48)];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = [*(a1 + 56) allKeys];
  v19 = [obj countByEnumeratingWithState:&v72 objects:v90 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = *v73;
    *&v20 = 138412802;
    v64 = v20;
    v67 = *v73;
    do
    {
      v23 = 0;
      v65 = v21;
      do
      {
        if (*v73 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v72 + 1) + 8 * v23);
        v25 = [*(a1 + 64) objectForKeyedSubscript:{v24, v64}];
        v26 = [*(a1 + 40) serviceController];
        v71 = v25;
        v27 = [v25 serviceIdentifier];
        v28 = [v26 serviceWithIdentifier:v27];

        if ([v28 adHocServiceType])
        {
          v29 = [*(a1 + 40) serviceController];
          v30 = [v29 primaryServiceForAdhocServiceType:{objc_msgSend(v28, "adHocServiceType")}];

          v28 = v30;
        }

        v31 = [*(a1 + 40) accountController];
        v32 = [v31 appleIDAccountOnService:v28];

        v33 = [*(a1 + 40) _ktApplicationForKTRegistrationIndex:{objc_msgSend(v28, "ktRegistrationDataIndex")}];
        if (v33)
        {
          v34 = [*(a1 + 56) objectForKeyedSubscript:v24];

          if (v34)
          {
            v35 = [*(a1 + 32) registrationData];
            v36 = [v35 objectForKeyedSubscript:v33];

            v70 = v32;
            v37 = [v32 dsID];
            v38 = *(a1 + 40);
            v39 = [v36 dsid];
            v69 = v37;
            v40 = [v38 doesSignatureDSID:v39 matchAccountDSID:v37];

            if (!_os_feature_enabled_impl() || !IDSIsiMessageRegistrationServiceType())
            {
              goto LABEL_46;
            }

            v32 = v70;
            if (!v37)
            {
              v41 = +[IDSFoundationLog KeyTransparency];
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "No Apple Account signed in for IM, falling back to iCloud DSID", buf, 2u);
              }

              v42 = [*(a1 + 40) serviceController];
              v66 = [v42 iCloudService];

              v43 = [*(a1 + 40) accountController];
              v44 = [v43 appleIDAccountOnService:v66];

              v45 = *(a1 + 40);
              v46 = [v36 dsid];
              v47 = [v44 dsID];
              v40 = [v45 doesSignatureDSID:v46 matchAccountDSID:v47];

              v21 = v65;
LABEL_46:
              v32 = v70;
            }

            if (v36 && v40)
            {
              v48 = [*(a1 + 56) objectForKeyedSubscript:v24];
              v49 = [v36 publicKey];
              [v48 setKtPublicAccountKey:v49];

              v50 = [*(a1 + 56) objectForKeyedSubscript:v24];
              v51 = [v36 signature];
              [v50 setKtDataSignature:v51];

              v52 = [*(a1 + 56) objectForKeyedSubscript:v24];
              v53 = [v36 orderedTimestamp];
              [v52 setKtAccountKeyTimestamp:v53];

              goto LABEL_54;
            }

            if ((v40 & 1) == 0)
            {
              v54 = +[IDSFoundationLog KeyTransparency];
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v55 = [v36 dsid];
                v56 = [v70 dsID];
                *buf = v64;
                v85 = v24;
                v86 = 2112;
                v87 = v55;
                v88 = 2112;
                v89 = v56;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "DSID for account and signature do not match. { service: %@, signatureDSID: %@, accountDSID: %@", buf, 0x20u);

                v21 = v65;
              }

              v57 = [*(a1 + 56) objectForKeyedSubscript:v24];
              [v57 setKtPublicAccountKey:0];

              v58 = [*(a1 + 56) objectForKeyedSubscript:v24];
              [v58 setKtDataSignature:0];

              v52 = [*(a1 + 56) objectForKeyedSubscript:v24];
              [v52 setKtAccountKeyTimestamp:0];
LABEL_54:

              v59 = [*(a1 + 56) objectForKeyedSubscript:v24];
              v60 = [v36 dsid];
              [v59 setDsid:v60];

              v32 = v70;
            }

            if (*(a1 + 48))
            {
              v61 = [*(a1 + 56) objectForKeyedSubscript:v24];
              v62 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 48) code]);
              [v61 setKtAccountKeyErrorCode:v62];

              v32 = v70;
            }

            v22 = v67;
          }
        }

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v72 objects:v90 count:16];
    }

    while (v21);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56));
  }

  return result;
}

void sub_1006A0854(uint64_t a1, char a2)
{
  v4 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A0904;
  block[3] = &unk_100BD8FC0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v5;
  v8 = a2;
  dispatch_async(v4, block);
}

void sub_1006A0904(uint64_t a1)
{
  v2 = [*(a1 + 32) keyManager];
  [v2 _handleKVSUpdateResponseForTrustedDevices:*(a1 + 40) withSuccessfulKVSSync:*(a1 + 48)];
}

void sub_1006A37D4(id a1)
{
  v1 = objc_alloc_init(IDSDaemonPriorityQueueController);
  v2 = qword_100CBF480;
  qword_100CBF480 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1006A3A8C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1006A3B70(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1006A3C54(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1006A3D38(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1006A3E28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1006A3F54(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1006A405C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1006A416C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1006A4678(id a1)
{
  v1 = objc_alloc_init(IDSPinnedIdentityController);
  v2 = qword_100CBF490;
  qword_100CBF490 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1006A57C4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

IDSDAccount *__cdecl sub_1006A58F4(id a1, IDSServiceProperties *a2, int a3)
{
  v3 = *&a3;
  v4 = a2;
  v5 = [IDSDAccount alloc];
  v6 = +[NSString stringGUID];
  v7 = [(IDSDAccount *)v5 initWithLoginID:&stru_100C06028 service:v4 uniqueID:v6 accountType:v3 accountConfig:0];

  return v7;
}

id sub_1006A6054(uint64_t a1, void *a2)
{
  v3 = [a2 registration];
  v4 = [v3 userUniqueIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void sub_1006A7C50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006A7CC4;
  block[3] = &unk_100BD6ED0;
  block[4] = v1;
  dispatch_async(v2, block);
}

id sub_1006A7CC4(uint64_t a1)
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Migration completed, performing synchronize", v6, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = 0;

  return [*(a1 + 32) synchronize];
}

id sub_1006A7D50(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 realm])
  {
    if ([v3 realm] != 2)
    {
      goto LABEL_6;
    }

    v4 = 40;
  }

  else
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v3];
LABEL_6:
  v5 = [v3 uniqueIdentifier];

  return v5;
}

IMPair *__cdecl sub_1006A7DD0(id a1, IDSCTSIM *a2)
{
  v2 = a2;
  v3 = [IMPair alloc];
  v4 = [(IDSCTSIM *)v2 mobileCountryCode];
  v5 = [(IDSCTSIM *)v2 mobileNetworkCode];

  v6 = [v3 initWithFirst:v4 second:v5];

  return v6;
}

IMPair *__cdecl sub_1006A7E64(id a1, IDSPhoneUser *a2)
{
  v2 = a2;
  v3 = [IMPair alloc];
  v4 = [(IDSPhoneUser *)v2 countryCode];
  v5 = [(IDSPhoneUser *)v2 networkCode];

  v6 = [v3 initWithFirst:v4 second:v5];

  return v6;
}

id sub_1006A7EF8(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) userUniqueIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_1006A7F5C(uint64_t a1)
{
  v2 = +[IMRGLog registration_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ Current existing accounts {existingIdentifierByService: %@}", &v5, 0x16u);
  }
}

void sub_1006A8018(uint64_t a1)
{
  v2 = +[IMRGLog registration_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ Current disabled accounts {disabledByService: %@}", &v5, 0x16u);
  }
}

void sub_1006ABC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006ABC28(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a7);
  if ([v15 length])
  {
    v17 = [*(a1 + 32) dsHandle];
    v18 = [v17 length];

    if (!v18)
    {
      v19 = +[IMRGLog registration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "  ** Fixed Self ID to be: %@", &v26, 0xCu);
      }

      [*(a1 + 32) setDSHandle:v15];
    }
  }

  if ([v14 length])
  {
    v20 = [*(a1 + 32) profileID];
    v21 = [v20 length];

    if (!v21)
    {
      v22 = +[IMRGLog registration];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "  ** Fixed Profile ID to be: %@", &v26, 0xCu);
      }

      [*(a1 + 32) setProfileID:v14];
    }
  }

  v23 = +[IMRGLog registration];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = IMTruncatedLoggingStringForString();
    v25 = IMGetEnvironmentName();
    v26 = 138413314;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v24;
    v34 = 2112;
    v35 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Successfully fetched token for account (%@:%@:%@): %@  (Environment: %@)", &v26, 0x34u);
  }
}

void sub_1006AC0F0(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v8 = a3;
  v9 = a4;
  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if ([*(a1 + 32) length])
    {
      v11 = @"updated";
    }

    else
    {
      v11 = @"removed";
    }

    if (a5)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = IMGetEnvironmentName();
    v14 = *(a1 + 32);
    v15 = 138413570;
    v16 = v11;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully %@ token for account (%@:%@): %@  (Environment: %@  New Token: %@)", &v15, 0x3Eu);
  }
}

void sub_1006AC480(id a1, NSString *a2, NSString *a3, NSString *a4, BOOL a5)
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = IMGetEnvironmentName();
    v12 = 138413058;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully voided password for account (%@:%@): %@  (Environment: %@)", &v12, 0x2Au);
  }
}

id sub_1006AD620(id a1, IDSCTSIM *a2)
{
  v2 = [(IDSCTSIM *)a2 phoneNumber];
  v3 = [v2 lowercaseString];

  return v3;
}

id sub_1006AD670(id a1, IDSTemporaryPhoneUser *a2)
{
  v2 = [(IDSTemporaryPhoneUser *)a2 phoneNumber];
  v3 = [v2 lowercaseString];

  return v3;
}

uint64_t sub_1006ADF98()
{

  return objc_opt_class();
}

void sub_1006AE028(id a1)
{
  v1 = objc_alloc_init(IDSDeviceConnectionAWDMetrics);
  v2 = qword_100CBF4B0;
  qword_100CBF4B0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1006AE470(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 objectForKeyedSubscript:IDSDeviceConnectionAWDMetricsCreatedAtKey];
  [v4 doubleValue];
  v6 = v5;

  if (*(a1 + 40) - v6 >= 86400.0)
  {
    [*(a1 + 32) addObject:v7];
  }
}

void sub_1006AE504(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = [v3 objectForKeyedSubscript:IDSDeviceConnectionAWDMetricsServiceNameKey];
  v4 = [v3 objectForKeyedSubscript:IDSDeviceConnectionAWDMetricsSuccessKey];
  v5 = [v4 BOOLValue];

  v24 = [v3 objectForKeyedSubscript:IDSDeviceConnectionAWDMetricsClientInitKey];
  v6 = [v3 objectForKeyedSubscript:IDSDeviceConnectionAWDMetricsClientOpenSocketCompletionKey];
  v7 = [v3 objectForKeyedSubscript:IDSDeviceConnectionAWDMetricsDaemonOpenSocketKey];
  v8 = [v3 objectForKeyedSubscript:IDSDeviceConnectionAWDMetricsDaemonCompletionHandlerKey];
  v9 = [v3 objectForKeyedSubscript:IDSDeviceConnectionAWDMetricsFirstDataPacketReceiveKey];
  v10 = [v3 objectForKeyedSubscript:IDSDeviceConnectionAWDMetricsConnectionInitKey];
  if ([*(a1 + 32) _canReportMetric:v3])
  {
    v11 = [[IDSDeviceConnectionDurationEventMetric alloc] initWithService:v25 wasSuccessful:v5 clientInitTime:v24 clientOpenSocketCompletionTime:v6 daemonOpenSocketTime:v7 daemonOpenSocketCompletionTime:v8 firstPacketReceiveTime:v9 connectionInitTime:v10];
    v12 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v12 logMetric:v11];

    v13 = +[IDSAWDLogging sharedInstance];
    [v13 IDSDeviceConnectionForService:v25 wasSuccessful:v5 clientInitTime:v24 clientOpenSocketCompletionTime:v6 daemonOpenSocketTime:v7 daemonOpenSocketCompletionTime:v8 firstPacketReceiveTime:v9 connectionInitTime:v10];

    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Final Report - %@", buf, 0xCu);
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

    v16 = *(a1 + 32);
    v15 = (a1 + 32);
    os_unfair_lock_lock(v16 + 4);
    v17 = *&(*v15)[2]._os_unfair_lock_opaque;
    v18 = [v3 objectForKeyedSubscript:IDSDeviceConnectionAWDMetricsConnectionUUIDKey];
    [v17 removeObjectForKey:v18];

    os_unfair_lock_unlock(*v15 + 4);
  }

  else
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Final Report - %@, but there might be client side errors.", buf, 0xCu);
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

    v21 = *(a1 + 32);
    v20 = (a1 + 32);
    os_unfair_lock_lock(v21 + 4);
    v22 = *&(*v20)[2]._os_unfair_lock_opaque;
    v23 = [v3 objectForKeyedSubscript:IDSDeviceConnectionAWDMetricsConnectionUUIDKey];
    [v22 removeObjectForKey:v23];

    os_unfair_lock_unlock(*v20 + 4);
  }
}

void sub_1006AFE2C(id a1)
{
  v1 = objc_alloc_init(IDSDServiceController);
  v2 = qword_100CBF4C0;
  qword_100CBF4C0 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1006B10DC(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_1006B2B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006B2B98(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = IDSPairedDeviceRepository;
  v2 = objc_msgSendSuper2(&v6, "description");
  v3 = [NSString stringWithFormat:@"%@ %@", v2, *(*(a1 + 32) + 8)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1006B305C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006B3078(uint64_t a1)
{
  v2 = [*(a1 + 32) _criticalPairedDeviceWithCBUUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

id sub_1006B32D4(uint64_t a1)
{
  v2 = [*(a1 + 32) cbuuid];
  v3 = [*(a1 + 40) _criticalPairedDeviceWithCBUUID:v2];
  if (v3)
  {
    v4 = +[IMRGLog pairedDeviceRepo];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10093144C();
    }

    v5 = 0;
  }

  else
  {
    [*(a1 + 40) _criticalPutPairedDevice:*(a1 + 32)];
    v5 = [*(a1 + 40) _criticalPersistState];
  }

  return v5;
}

void sub_1006B3854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006B386C(uint64_t a1)
{
  v2 = [*(a1 + 32) _criticalAllPairedDevices];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1006B3BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1006B3D04(uint64_t a1)
{
  [*(a1 + 32) _criticalPerformPairedDeviceDeactivation];
  v2 = *(a1 + 32);

  return [v2 _criticalPersistState];
}

id sub_1006B5B6C(uint64_t a1)
{
  result = [*(a1 + 32) _criticalPerformTransactionWithBlock:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id sub_1006B67F0(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void sub_1006B7228(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [ENGroupID alloc];
    v6 = [ENStableGroupID alloc];
    v7 = [v11 responseEngramID];
    v8 = [v6 initWithDataRepresentation:v7];
    v9 = [v11 responseVersion];
    v10 = [v5 initWithStableGroupID:v8 generation:{objc_msgSend(v9, "intValue")}];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1006B7334(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_100CBF4C8;
  qword_100CBF4C8 = v1;

  pthread_mutex_init(&stru_100CBF4D8, 0);
}

void sub_1006B7380(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_10000AB24(a2);
  CSDBPerformBlockAfterDelay();
}

void sub_1006B73F0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v4 ensureDatabaseIsInitialized];
  v6 = sub_10000AB24(v4);

  CSDBPerformLockedSectionUsingUnfairLock();
}

void sub_1006B7478(id a1, CSDBRecordStore *a2)
{
  CSDBRecordSaveStore();

  _CSDBRecordStoreInvalidateCachesWithStore(a2);
}

void sub_1006B74B4(void *a1)
{
  v1 = a1;
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Saving database.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  sub_10001E6DC(&stru_100BE45B8, v1);
  v3 = sub_10000AB24(v1);

  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Destroying database.", v8, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v5 = sub_10000AB24(v1);
    CSDBThreadedRecordStoreTeardownDatabase();

    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Closed database.", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

uint64_t sub_1006B7790(uint64_t a1)
{
  v1 = [*(a1 + 32) filename];
  v2 = sub_1006B77D0(v1, 0);

  return v2;
}

uint64_t sub_1006B77D0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  if (v4)
  {
    v6 = [v3 stringByAppendingPathComponent:v4];

    v3 = v6;
  }

  [v3 fileSystemRepresentation];
  CSDBGetMobileUserUID();
  CSDBGetMobileUserGID();
  CSDBCreateDirectoriesToPath();
  v7 = [v3 stringByResolvingAndStandardizingPath];

  objc_autoreleasePoolPop(v5);
  return v7;
}

uint64_t sub_1006B7918(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = CSDBGetMobileUserDirectory();
  if (v3)
  {
    v4 = [NSString alloc];
    v5 = v4;
    if (v1 == 2)
    {
      v6 = [v4 initWithFormat:@"%@", @"ids.db"];
    }

    else
    {
      v7 = IDSDataProtectionClassStringFromDataProtectionClass();
      v8 = [NSString stringWithFormat:@"ids-%@.db", v7];
      v6 = [v5 initWithFormat:@"%@", v8];
    }

    v9 = [NSString stringWithUTF8String:v3];
    v10 = [NSArray arrayWithObjects:v9, @"/Library/IdentityServices/", 0];
    v11 = [NSString pathWithComponents:v10];

    v3 = sub_1006B77D0(v11, v6);
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t sub_1006B7A70()
{
  CSDBRecordStoreCreateTablesForClass();
  CSDBRecordStoreCreateTablesForClass();
  CSDBRecordStoreCreateTablesForClass();

  return sub_1006BB09C();
}

uint64_t sub_1006B7ADC()
{
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Enabling WAL journal mode.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  CSDBSqliteConnectionPerformSQL();
  v1 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Enabling Foreign Key support.", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  return CSDBSqliteConnectionPerformSQL();
}

uint64_t sub_1006B7C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v108 = a3;
    v109 = 1024;
    v110 = 10026;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Beginning migration.  The IDS db is currently at v%d, upgrading to v%d.", buf, 0xEu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v105 = a3;
    v106 = 10026;
    _IDSLogV();
  }

  CSDBSqliteConnectionCommit();
  if (CSDBSqliteDatabaseCheckIntegrity())
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initial integrity check success", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
    {
LABEL_37:
      _IDSLogV();
    }
  }

  else
  {
    v7 = CSDBSqliteConnectionPerformSQL();
    if (v7 == 101 || !v7)
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reindexing the DB worked.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    if (CSDBSqliteDatabaseCheckIntegrity())
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Post-reindex integrity check success", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v10 = CSDBSqliteDatabaseVacuum();
      if (v10 == 101 || !v10)
      {
        v11 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Database vacuum success", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      if (CSDBSqliteDatabaseCheckIntegrity())
      {
        v12 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Final integrity check success", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLog())
          {
            goto LABEL_37;
          }
        }
      }
    }
  }

  CSDBSqliteConnectionBegin();
  if (a3 <= 0x272A)
  {
    CSDBSqliteConnectionBeginTransactionType();
    if (a3 == 7000)
    {
      CSDBSqliteDatabaseSetVersion();
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Adding fields to support iMessage on IDS", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v14 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
      CSDBRecordStoreCreateTablesForClass();
      if (!v14)
      {
        goto LABEL_432;
      }

      CSDBSqliteDatabaseSetVersion();
      v15 = 1;
    }

    else
    {
      v15 = a3 >> 3 > 0x36A;
      if ((a3 & 0x3FFE) != 0x1B58)
      {
        goto LABEL_55;
      }
    }

    CSDBSqliteDatabaseSetVersion();
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Adding field to support sending iMessage from aliases", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v17 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
    CSDBRecordStoreCreateTablesForClass();
    if (!v17)
    {
      goto LABEL_432;
    }

    CSDBSqliteDatabaseSetVersion();
LABEL_55:
    v18 = a3 - 7000;
    if ((a3 - 7000) <= 2)
    {
      CSDBSqliteDatabaseSetVersion();
      v19 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Adding support for high priority messages", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v20 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
      CSDBRecordStoreCreateTablesForClass();
      if (!v20)
      {
        goto LABEL_432;
      }

      CSDBSqliteDatabaseSetVersion();
    }

    if ((a3 & 0x3FFC) == 0x1B58)
    {
      CSDBSqliteDatabaseSetVersion();
      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Flushing stale messages to enable database", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v22 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
      v23 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE incoming_message");
      CSDBRecordStoreCreateTablesForClass();
      CSDBRecordStoreCreateTablesForClass();
      if (!v22 || !v23)
      {
        goto LABEL_432;
      }

      CSDBSqliteDatabaseSetVersion();
    }

    if (v18 > 4)
    {
      if (a3 != 7005)
      {
        if (v18 > 6)
        {
          goto LABEL_95;
        }

        goto LABEL_88;
      }
    }

    else
    {
      CSDBSqliteDatabaseSetVersion();
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Flushing potentially old stale messages", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v25 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
      v26 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE incoming_message");
      CSDBRecordStoreCreateTablesForClass();
      CSDBRecordStoreCreateTablesForClass();
      if (!v25 || !v26)
      {
        goto LABEL_432;
      }

      CSDBSqliteDatabaseSetVersion();
    }

    CSDBSqliteDatabaseSetVersion();
    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Updating outgoing_message to have all needed fields", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v28 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
    CSDBRecordStoreCreateTablesForClass();
    if (!v28)
    {
      goto LABEL_432;
    }

    CSDBSqliteDatabaseSetVersion();
LABEL_88:
    CSDBSqliteDatabaseSetVersion();
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Updating outgoing_message to have is_sent column", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v30 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
    CSDBRecordStoreCreateTablesForClass();
    if (!v30)
    {
      goto LABEL_432;
    }

    CSDBSqliteDatabaseSetVersion();
LABEL_95:
    if ((a3 & 0x3FF8) == 0x1B58)
    {
      CSDBSqliteDatabaseSetVersion();
      v31 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Updating outgoing_message to have new send types and options.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v32 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
      CSDBRecordStoreCreateTablesForClass();
      if (!v32)
      {
        goto LABEL_432;
      }

      CSDBSqliteDatabaseSetVersion();
    }

    if (v18 > 0x3E8)
    {
      if (a3 != 8001)
      {
        if (v18 > 0x3EA)
        {
          if (a3 != 8003)
          {
            if (v18 > 0x3EC)
            {
              if (a3 != 8005)
              {
                if (v18 > 0x3EE)
                {
                  if (a3 != 8007)
                  {
                    if (v18 > 0x3F0)
                    {
                      if (a3 != 8009)
                      {
                        if (v18 > 0x3F2)
                        {
                          if (a3 != 8011)
                          {
                            if (v18 > 0x3F4)
                            {
                              if (a3 != 8013)
                              {
                                if (v18 > 0x3F6)
                                {
                                  if (v18 > 0x7D1)
                                  {
                                    if (a3 != 9002)
                                    {
                                      if (v18 > 0xBB9)
                                      {
                                        if (a3 != 10002)
                                        {
                                          if (v18 > 0xBBB)
                                          {
                                            if (a3 != 10004)
                                            {
                                              if (v18 > 0xBBD)
                                              {
                                                if (a3 != 10006)
                                                {
                                                  if (v18 > 0xBBF)
                                                  {
                                                    if (a3 != 10008)
                                                    {
                                                      if (v18 > 0xBC1)
                                                      {
                                                        if (a3 != 10010)
                                                        {
                                                          if (v18 > 0xBC3)
                                                          {
                                                            if (a3 != 10012)
                                                            {
                                                              if (v18 > 0xBC9)
                                                              {
                                                                if (a3 != 10018)
                                                                {
                                                                  if (v18 > 0xBCB)
                                                                  {
                                                                    if (a3 != 10020)
                                                                    {
                                                                      if (v18 > 0xBCD)
                                                                      {
                                                                        if (a3 != 10022)
                                                                        {
                                                                          if (v18 > 0xBD0)
                                                                          {
                                                                            goto LABEL_388;
                                                                          }

                                                                          goto LABEL_387;
                                                                        }

LABEL_380:
                                                                        CSDBSqliteDatabaseSetVersion();
                                                                        v101 = OSLogHandleForIDSCategory();
                                                                        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                                                                        {
                                                                          *buf = 0;
                                                                          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Add delivery_minimum_time column to outgoing_message", buf, 2u);
                                                                        }

                                                                        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                                        {
                                                                          _IDSLogV();
                                                                        }

                                                                        if (sub_1006BB27C(a2, @"delivery_minimum_time", @"INTEGER DEFAULT 0", @"outgoing_message"))
                                                                        {
                                                                          CSDBSqliteDatabaseSetVersion();
LABEL_387:
                                                                          CSDBSqliteDatabaseSetVersion();
LABEL_388:
                                                                          v102 = !v15;
                                                                          if (a3 == 10026)
                                                                          {
                                                                            v102 = 1;
                                                                          }

                                                                          if (v102)
                                                                          {
                                                                            goto LABEL_398;
                                                                          }

                                                                          CSDBSqliteDatabaseSetVersion();
                                                                          v103 = OSLogHandleForIDSCategory();
                                                                          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                                                                          {
                                                                            *buf = 0;
                                                                            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Add send_reason column to outgoing_message", buf, 2u);
                                                                          }

                                                                          if (os_log_shim_legacy_logging_enabled())
                                                                          {
                                                                            if (_IDSShouldLog())
                                                                            {
                                                                              _IDSLogV();
                                                                            }
                                                                          }

                                                                          if (sub_1006BB27C(a2, @"send_reason", @"TEXT", @"outgoing_message"))
                                                                          {
                                                                            CSDBSqliteDatabaseSetVersion();
LABEL_398:
                                                                            sub_1006BB09C();
                                                                            CSDBSqliteConnectionCommit();
                                                                            CSDBSqliteConnectionPerformSQL();
                                                                            return 0;
                                                                          }
                                                                        }

LABEL_432:
                                                                        CSDBSqliteConnectionCommit();
                                                                        return 2;
                                                                      }

LABEL_363:
                                                                      CSDBSqliteDatabaseSetVersion();
                                                                      v96 = OSLogHandleForIDSCategory();
                                                                      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                                                                      {
                                                                        *buf = 0;
                                                                        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Add kt_uri_verification_map column to outgoing_message", buf, 2u);
                                                                      }

                                                                      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                                      {
                                                                        _IDSLogV();
                                                                      }

                                                                      v97 = sub_1006BB27C(a2, @"kt_uri_verification_map", @"BLOB", @"outgoing_message");
                                                                      v98 = OSLogHandleForIDSCategory();
                                                                      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                                                                      {
                                                                        *buf = 0;
                                                                        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Add delivery_minimum_time_delay column to outgoing_message", buf, 2u);
                                                                      }

                                                                      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                                      {
                                                                        _IDSLogV();
                                                                      }

                                                                      v99 = sub_1006BB27C(a2, @"delivery_minimum_time_delay", @"INTEGER DEFAULT 0", @"outgoing_message");
                                                                      v100 = OSLogHandleForIDSCategory();
                                                                      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                                                                      {
                                                                        *buf = 0;
                                                                        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "Add include_self column to outgoing_message", buf, 2u);
                                                                      }

                                                                      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                                      {
                                                                        _IDSLogV();
                                                                      }

                                                                      if (((v97 && v99) & sub_1006BB27C(a2, @"include_self", @"INTEGER DEFAULT 0", @"outgoing_message")) != 1)
                                                                      {
                                                                        goto LABEL_432;
                                                                      }

                                                                      CSDBSqliteDatabaseSetVersion();
                                                                      goto LABEL_380;
                                                                    }

LABEL_351:
                                                                    CSDBSqliteDatabaseSetVersion();
                                                                    v93 = OSLogHandleForIDSCategory();
                                                                    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                                                                    {
                                                                      *buf = 0;
                                                                      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Add expiration_date column to incoming_message", buf, 2u);
                                                                    }

                                                                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                                    {
                                                                      _IDSLogV();
                                                                    }

                                                                    v94 = sub_1006BB27C(a2, @"expiration_date", @"INTEGER DEFAULT 0", @"incoming_message");
                                                                    v95 = OSLogHandleForIDSCategory();
                                                                    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                                                                    {
                                                                      *buf = 0;
                                                                      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Add control_category column to incoming_message", buf, 2u);
                                                                    }

                                                                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                                    {
                                                                      _IDSLogV();
                                                                    }

                                                                    if ((v94 & sub_1006BB27C(a2, @"control_category", @"INTEGER DEFAULT 0", @"incoming_message")) != 1)
                                                                    {
                                                                      goto LABEL_432;
                                                                    }

                                                                    CSDBSqliteDatabaseSetVersion();
                                                                    goto LABEL_363;
                                                                  }

LABEL_334:
                                                                  CSDBSqliteDatabaseSetVersion();
                                                                  v88 = OSLogHandleForIDSCategory();
                                                                  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                                                                  {
                                                                    *buf = 0;
                                                                    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Add send_mode column to outgoing_message", buf, 2u);
                                                                  }

                                                                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                                  {
                                                                    _IDSLogV();
                                                                  }

                                                                  v89 = sub_1006BB27C(a2, @"send_mode", @"INTEGER DEFAULT 0", @"outgoing_message");
                                                                  v90 = OSLogHandleForIDSCategory();
                                                                  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                                                                  {
                                                                    *buf = 0;
                                                                    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Add kt_uri_verification_map column to outgoing_message", buf, 2u);
                                                                  }

                                                                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                                  {
                                                                    _IDSLogV();
                                                                  }

                                                                  v91 = sub_1006BB27C(a2, @"kt_uri_verification_map", @"BLOB", @"outgoing_message");
                                                                  v92 = OSLogHandleForIDSCategory();
                                                                  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                                                                  {
                                                                    *buf = 0;
                                                                    _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Add wants_firewall_donation column to outgoing_message", buf, 2u);
                                                                  }

                                                                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                                  {
                                                                    _IDSLogV();
                                                                  }

                                                                  if (((v89 && v91) & sub_1006BB27C(a2, @"wants_firewall_donation", @"INTEGER DEFAULT 0", @"outgoing_message")) != 1)
                                                                  {
                                                                    goto LABEL_432;
                                                                  }

                                                                  CSDBSqliteDatabaseSetVersion();
                                                                  goto LABEL_351;
                                                                }

LABEL_322:
                                                                CSDBSqliteDatabaseSetVersion();
                                                                v85 = OSLogHandleForIDSCategory();
                                                                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                                                                {
                                                                  *buf = 0;
                                                                  _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Add send_mode column to outgoing_message", buf, 2u);
                                                                }

                                                                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                                {
                                                                  _IDSLogV();
                                                                }

                                                                v86 = sub_1006BB27C(a2, @"send_mode", @"INTEGER DEFAULT 0", @"outgoing_message");
                                                                v87 = OSLogHandleForIDSCategory();
                                                                if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                                                                {
                                                                  *buf = 0;
                                                                  _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Add wants_firewall_donation column to outgoing_message", buf, 2u);
                                                                }

                                                                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                                {
                                                                  _IDSLogV();
                                                                }

                                                                if ((v86 & sub_1006BB27C(a2, @"wants_firewall_donation", @"INTEGER DEFAULT 0", @"outgoing_message")) != 1)
                                                                {
                                                                  goto LABEL_432;
                                                                }

                                                                CSDBSqliteDatabaseSetVersion();
                                                                goto LABEL_334;
                                                              }

LABEL_310:
                                                              CSDBSqliteDatabaseSetVersion();
                                                              v82 = OSLogHandleForIDSCategory();
                                                              if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                                                              {
                                                                *buf = 0;
                                                                _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Add send_mode column to outgoing_message", buf, 2u);
                                                              }

                                                              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                              {
                                                                _IDSLogV();
                                                              }

                                                              v83 = sub_1006BB27C(a2, @"send_mode", @"INTEGER DEFAULT 0", @"outgoing_message");
                                                              v84 = OSLogHandleForIDSCategory();
                                                              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                                                              {
                                                                *buf = 0;
                                                                _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Add kt_uri_verification_map column to outgoing_message", buf, 2u);
                                                              }

                                                              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                              {
                                                                _IDSLogV();
                                                              }

                                                              if ((v83 & sub_1006BB27C(a2, @"kt_uri_verification_map", @"BLOB", @"outgoing_message")) != 1)
                                                              {
                                                                goto LABEL_432;
                                                              }

                                                              CSDBSqliteDatabaseSetVersion();
                                                              goto LABEL_322;
                                                            }

LABEL_303:
                                                            CSDBSqliteDatabaseSetVersion();
                                                            v81 = OSLogHandleForIDSCategory();
                                                            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                                                            {
                                                              *buf = 0;
                                                              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Add send_mode column to outgoing_message", buf, 2u);
                                                            }

                                                            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                            {
                                                              _IDSLogV();
                                                            }

                                                            if (!sub_1006BB27C(a2, @"send_mode", @"INTEGER DEFAULT 0", @"outgoing_message"))
                                                            {
                                                              goto LABEL_432;
                                                            }

                                                            CSDBSqliteDatabaseSetVersion();
                                                            goto LABEL_310;
                                                          }

LABEL_296:
                                                          CSDBSqliteDatabaseSetVersion();
                                                          v80 = OSLogHandleForIDSCategory();
                                                          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                                                          {
                                                            *buf = 0;
                                                            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Add push_priority column to outgoing_message", buf, 2u);
                                                          }

                                                          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                          {
                                                            _IDSLogV();
                                                          }

                                                          if (!sub_1006BB27C(a2, @"push_priority", @"INTEGER DEFAULT 0", @"outgoing_message"))
                                                          {
                                                            goto LABEL_432;
                                                          }

                                                          CSDBSqliteDatabaseSetVersion();
                                                          goto LABEL_303;
                                                        }

LABEL_289:
                                                        CSDBSqliteDatabaseSetVersion();
                                                        v79 = OSLogHandleForIDSCategory();
                                                        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                                                        {
                                                          *buf = 0;
                                                          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Dropping old bypass_duet messages", buf, 2u);
                                                        }

                                                        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                        {
                                                          _IDSLogV();
                                                        }

                                                        if (!sub_1006BB104(a2, @"Unable to drop bypass_duet messages", @"Successfully dropped bypass_duet messages", @"DELETE FROM outgoing_message where bypass_duet = 1;"))
                                                        {
                                                          goto LABEL_432;
                                                        }

                                                        CSDBSqliteDatabaseSetVersion();
                                                        goto LABEL_296;
                                                      }

LABEL_282:
                                                      CSDBSqliteDatabaseSetVersion();
                                                      v77 = OSLogHandleForIDSCategory();
                                                      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                                                      {
                                                        *buf = 0;
                                                        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Adding message_identifier column to incoming_message", buf, 2u);
                                                      }

                                                      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                      {
                                                        _IDSLogV();
                                                      }

                                                      v78 = sub_1006BB27C(a2, @"message_identifier", @"TEXT", @"incoming_message");
                                                      if ((v78 & sub_1006BB104(a2, @"Unable to add incoming_message message_identifier index", @"Successfully added incoming_message message_identifier index", @"CREATE INDEX incoming_message_message_identifier_idx ON incoming_message(message_identifier);")) != 1)
                                                      {
                                                        goto LABEL_432;
                                                      }

                                                      CSDBSqliteDatabaseSetVersion();
                                                      goto LABEL_289;
                                                    }

LABEL_275:
                                                    CSDBSqliteDatabaseSetVersion();
                                                    v76 = OSLogHandleForIDSCategory();
                                                    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      *buf = 0;
                                                      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Add originalTimestamp column to outgoing_message", buf, 2u);
                                                    }

                                                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                    {
                                                      _IDSLogV();
                                                    }

                                                    if (!sub_1006BB27C(a2, @"original_timestamp", @"INTEGER DEFAULT 0", @"outgoing_message"))
                                                    {
                                                      goto LABEL_432;
                                                    }

                                                    CSDBSqliteDatabaseSetVersion();
                                                    goto LABEL_282;
                                                  }

LABEL_268:
                                                  CSDBSqliteDatabaseSetVersion();
                                                  v75 = OSLogHandleForIDSCategory();
                                                  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *buf = 0;
                                                    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Add wantsCertifiedDelivery column to outgoing_message", buf, 2u);
                                                  }

                                                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                  {
                                                    _IDSLogV();
                                                  }

                                                  if (!sub_1006BB27C(a2, @"wants_certified_delivery", @"INTEGER DEFAULT 0", @"outgoing_message"))
                                                  {
                                                    goto LABEL_432;
                                                  }

                                                  CSDBSqliteDatabaseSetVersion();
                                                  goto LABEL_275;
                                                }

LABEL_261:
                                                CSDBSqliteDatabaseSetVersion();
                                                v74 = OSLogHandleForIDSCategory();
                                                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                                                {
                                                  *buf = 0;
                                                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Add ignoreMaxRetryCount column to outgoing_message", buf, 2u);
                                                }

                                                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                                {
                                                  _IDSLogV();
                                                }

                                                if (!sub_1006BB27C(a2, @"ignore_max_retry_count", @"INTEGER DEFAULT 0", @"outgoing_message"))
                                                {
                                                  goto LABEL_432;
                                                }

                                                CSDBSqliteDatabaseSetVersion();
                                                goto LABEL_268;
                                              }

LABEL_254:
                                              CSDBSqliteDatabaseSetVersion();
                                              v73 = OSLogHandleForIDSCategory();
                                              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                                              {
                                                *buf = 0;
                                                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Add wants progress column to outgoing_message", buf, 2u);
                                              }

                                              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                              {
                                                _IDSLogV();
                                              }

                                              if (!sub_1006BB27C(a2, @"wants_progress", @"INTEGER DEFAULT 0", @"outgoing_message"))
                                              {
                                                goto LABEL_432;
                                              }

                                              CSDBSqliteDatabaseSetVersion();
                                              goto LABEL_261;
                                            }

LABEL_247:
                                            CSDBSqliteDatabaseSetVersion();
                                            v70 = OSLogHandleForIDSCategory();
                                            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                                            {
                                              *buf = 0;
                                              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Add nonCloudWaking column to outgoing_message", buf, 2u);
                                            }

                                            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                            {
                                              _IDSLogV();
                                            }

                                            v71 = sub_1006BB27C(a2, @"live_delivery", @"INTEGER DEFAULT 0", @"outgoing_message");
                                            v72 = sub_1006BB27C(a2, @"require_bluetooth", @"INTEGER DEFAULT 0", @"outgoing_message");
                                            if (((v71 && v72) & sub_1006BB27C(a2, @"require_local_wifi", @"INTEGER DEFAULT 0", @"outgoing_message")) != 1)
                                            {
                                              goto LABEL_432;
                                            }

                                            CSDBSqliteDatabaseSetVersion();
                                            goto LABEL_254;
                                          }

LABEL_240:
                                          CSDBSqliteDatabaseSetVersion();
                                          v69 = OSLogHandleForIDSCategory();
                                          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *buf = 0;
                                            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Add nonCloudWaking column to outgoing_message", buf, 2u);
                                          }

                                          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                          {
                                            _IDSLogV();
                                          }

                                          if (!sub_1006BB27C(a2, @"non_cloud_waking", @"INTEGER DEFAULT 0", @"outgoing_message"))
                                          {
                                            goto LABEL_432;
                                          }

                                          CSDBSqliteDatabaseSetVersion();
                                          goto LABEL_247;
                                        }

LABEL_233:
                                        CSDBSqliteDatabaseSetVersion();
                                        v68 = OSLogHandleForIDSCategory();
                                        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                                        {
                                          *buf = 0;
                                          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Add skip_self column to outgoing_message", buf, 2u);
                                        }

                                        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                        {
                                          _IDSLogV();
                                        }

                                        if (!sub_1006BB27C(a2, @"skip_self", @"INTEGER DEFAULT 0", @"outgoing_message"))
                                        {
                                          goto LABEL_432;
                                        }

                                        CSDBSqliteDatabaseSetVersion();
                                        goto LABEL_240;
                                      }

LABEL_226:
                                      CSDBSqliteDatabaseSetVersion();
                                      v63 = OSLogHandleForIDSCategory();
                                      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 0;
                                        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Setting a reasonable timeout on messages which are missing them", buf, 2u);
                                      }

                                      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                      {
                                        _IDSLogV();
                                      }

                                      v64 = [NSDate date:v105];
                                      v65 = [v64 dateByAddingTimeInterval:172800.0];

                                      [v65 timeIntervalSinceReferenceDate];
                                      v67 = [NSString stringWithFormat:@"UPDATE outgoing_message SET expiration_date = %lld WHERE expiration_date = 0", v66];;
                                      if (!sub_1006BB104(a2, @"Unable to set expiration date on messages", @"Successfully added expiration date on messages", v67))
                                      {

                                        goto LABEL_432;
                                      }

                                      CSDBSqliteDatabaseSetVersion();

                                      goto LABEL_233;
                                    }

LABEL_219:
                                    CSDBSqliteDatabaseSetVersion();
                                    v62 = OSLogHandleForIDSCategory();
                                    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *buf = 0;
                                      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Add message_type column to outgoing_message", buf, 2u);
                                    }

                                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                    {
                                      _IDSLogV();
                                    }

                                    if (!sub_1006BB27C(a2, @"message_type", @"INTEGER DEFAULT 0", @"outgoing_message"))
                                    {
                                      goto LABEL_432;
                                    }

                                    CSDBSqliteDatabaseSetVersion();
                                    goto LABEL_226;
                                  }

LABEL_212:
                                  CSDBSqliteDatabaseSetVersion();
                                  v59 = OSLogHandleForIDSCategory();
                                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *buf = 0;
                                    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Add pending_delete column to outgoing_message", buf, 2u);
                                  }

                                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                  {
                                    _IDSLogV();
                                  }

                                  v60 = sub_1006BB27C(a2, @"pending_delete", @"INTEGER DEFAULT 0", @"outgoing_message");
                                  v61 = sub_1006BB27C(a2, @"local_destination_device_uuid", @"TEXT", @"outgoing_message");
                                  if (((v60 && v61) & sub_1006BB27C(a2, @"enqueued_date", @"INTEGER DEFAULT 0", @"outgoing_message")) != 1)
                                  {
                                    goto LABEL_432;
                                  }

                                  CSDBSqliteDatabaseSetVersion();
                                  goto LABEL_219;
                                }

LABEL_205:
                                CSDBSqliteDatabaseSetVersion();
                                v58 = OSLogHandleForIDSCategory();
                                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 0;
                                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Add main_account_guid column to outgoing_message", buf, 2u);
                                }

                                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                                {
                                  _IDSLogV();
                                }

                                if (!sub_1006BB27C(a2, @"main_account_guid", @"TEXT", @"outgoing_message"))
                                {
                                  goto LABEL_432;
                                }

                                CSDBSqliteDatabaseSetVersion();
                                goto LABEL_212;
                              }

LABEL_198:
                              CSDBSqliteDatabaseSetVersion();
                              v57 = OSLogHandleForIDSCategory();
                              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Adding indexes on account_guid, priority and is_send", buf, 2u);
                              }

                              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                              {
                                _IDSLogV();
                              }

                              if (!sub_1006BB104(a2, @"Unable to add outgoing_message similar message query index", @"Successfully added outgoing_message similar message query index", @"CREATE INDEX outgoing_message_similarity_idx ON outgoing_message(account_guid, priority, is_sent);"))
                              {
                                goto LABEL_432;
                              }

                              CSDBSqliteDatabaseSetVersion();
                              goto LABEL_205;
                            }

LABEL_192:
                            CSDBSqliteDatabaseSetVersion();
                            v56 = OSLogHandleForIDSCategory();
                            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Create table outgoing_messages_to_delete", buf, 2u);
                            }

                            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                            {
                              _IDSLogV();
                            }

                            CSDBRecordStoreCreateTablesForClass();
                            CSDBSqliteDatabaseSetVersion();
                            goto LABEL_198;
                          }

LABEL_185:
                          CSDBSqliteDatabaseSetVersion();
                          v55 = OSLogHandleForIDSCategory();
                          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Add enforce_remote_timeout column to outgoing_message", buf, 2u);
                          }

                          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                          {
                            _IDSLogV();
                          }

                          if (!sub_1006BB27C(a2, @"enforce_remote_timeout", @"INTEGER DEFAULT 0", @"outgoing_message"))
                          {
                            goto LABEL_432;
                          }

                          CSDBSqliteDatabaseSetVersion();
                          goto LABEL_192;
                        }

LABEL_178:
                        CSDBSqliteDatabaseSetVersion();
                        v53 = OSLogHandleForIDSCategory();
                        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Adding indexes on message guid", buf, 2u);
                        }

                        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                        {
                          _IDSLogV();
                        }

                        v54 = sub_1006BB104(a2, @"Unable to add outgoing_message guid index", @"Successfully added outgoing_message guid index", @"CREATE INDEX IF NOT EXISTS outgoing_message_guid_idx ON outgoing_message(guid);");
                        if ((v54 & sub_1006BB104(a2, @"Unable to add incoming_message guid index", @"Successfully added incoming_message guid index", @"CREATE INDEX IF NOT EXISTS incoming_message_guid_idx ON incoming_message(guid);")) != 1)
                        {
                          goto LABEL_432;
                        }

                        CSDBSqliteDatabaseSetVersion();
                        goto LABEL_185;
                      }

LABEL_171:
                      CSDBSqliteDatabaseSetVersion();
                      v51 = OSLogHandleForIDSCategory();
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Duet columns, payload size added to outgoing message record", buf, 2u);
                      }

                      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                      {
                        _IDSLogV();
                      }

                      v52 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
                      CSDBRecordStoreCreateTablesForClass();
                      if (!v52)
                      {
                        goto LABEL_432;
                      }

                      CSDBSqliteDatabaseSetVersion();
                      goto LABEL_178;
                    }

LABEL_164:
                    CSDBSqliteDatabaseSetVersion();
                    v49 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "isLocal added to incoming message record", buf, 2u);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      _IDSLogV();
                    }

                    v50 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE incoming_message");
                    CSDBRecordStoreCreateTablesForClass();
                    if (!v50)
                    {
                      goto LABEL_432;
                    }

                    CSDBSqliteDatabaseSetVersion();
                    goto LABEL_171;
                  }

LABEL_157:
                  CSDBSqliteDatabaseSetVersion();
                  v47 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "AlternateGUID support", buf, 2u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    _IDSLogV();
                  }

                  v48 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
                  CSDBRecordStoreCreateTablesForClass();
                  if (!v48)
                  {
                    goto LABEL_432;
                  }

                  CSDBSqliteDatabaseSetVersion();
                  goto LABEL_164;
                }

LABEL_150:
                CSDBSqliteDatabaseSetVersion();
                v45 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Outgoing message priority changes", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }

                v46 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
                CSDBRecordStoreCreateTablesForClass();
                if (!v46)
                {
                  goto LABEL_432;
                }

                CSDBSqliteDatabaseSetVersion();
                goto LABEL_157;
              }

LABEL_143:
              CSDBSqliteDatabaseSetVersion();
              v43 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Adding nonWaking, fireAndForget, queueOneIdentifier option", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                _IDSLogV();
              }

              v44 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
              CSDBRecordStoreCreateTablesForClass();
              if (!v44)
              {
                goto LABEL_432;
              }

              CSDBSqliteDatabaseSetVersion();
              goto LABEL_150;
            }

LABEL_136:
            CSDBSqliteDatabaseSetVersion();
            v41 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Adding compress option", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }

            v42 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
            CSDBRecordStoreCreateTablesForClass();
            if (!v42)
            {
              goto LABEL_432;
            }

            CSDBSqliteDatabaseSetVersion();
            goto LABEL_143;
          }

LABEL_128:
          CSDBSqliteDatabaseSetVersion();
          v39 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Adding app level ack", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          v40 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
          CSDBRecordStoreCreateTablesForClass();
          if (!v40)
          {
            goto LABEL_432;
          }

          CSDBSqliteDatabaseSetVersion();
          goto LABEL_136;
        }

LABEL_120:
        CSDBSqliteDatabaseSetVersion();
        v37 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Adding expiration date support", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v38 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
        CSDBRecordStoreCreateTablesForClass();
        if (!v38)
        {
          goto LABEL_432;
        }

        CSDBSqliteDatabaseSetVersion();
        goto LABEL_128;
      }
    }

    else
    {
      CSDBSqliteDatabaseSetVersion();
      v33 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Flushing stale outgoing_messages.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v34 = sub_1006BB104(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
      CSDBRecordStoreCreateTablesForClass();
      if (!v34)
      {
        goto LABEL_432;
      }

      CSDBSqliteDatabaseSetVersion();
    }

    CSDBSqliteDatabaseSetVersion();
    v35 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Adding indexes on message guid", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v36 = sub_1006BB104(a2, @"Unable to add outgoing_message guid index", @"Successfully added outgoing_message guid index", @"CREATE INDEX outgoing_message_guid_idx ON outgoing_message(guid);");
    if ((v36 & sub_1006BB104(a2, @"Unable to add incoming_message guid index", @"Successfully added incoming_message guid index", @"CREATE INDEX incoming_message_guid_idx ON incoming_message(guid);")) != 1)
    {
      goto LABEL_432;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_120;
  }

  return 2;
}