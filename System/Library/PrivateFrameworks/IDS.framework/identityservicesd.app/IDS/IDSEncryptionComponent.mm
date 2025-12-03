@interface IDSEncryptionComponent
- (BOOL)_shouldAutoBugCaptureForECError:(id)error;
- (BOOL)_shouldIgnoreAutoBugCaptureForECFailure:(id)failure;
- (IDSEncryptionComponent)initWithEncryptionController:(id)controller pinnedIdentityController:(id)identityController;
- (id)runIndividuallyWithInput:(id)input;
- (void)_shouldDisableEncryption:(id)encryption UserDefaultKey:(id)key;
@end

@implementation IDSEncryptionComponent

- (IDSEncryptionComponent)initWithEncryptionController:(id)controller pinnedIdentityController:(id)identityController
{
  controllerCopy = controller;
  identityControllerCopy = identityController;
  v12.receiver = self;
  v12.super_class = IDSEncryptionComponent;
  v9 = [(IDSEncryptionComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_encryptionController, controller);
    objc_storeStrong(&v10->_pinnedIdentityController, identityController);
  }

  return v10;
}

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
  messageToSend = [inputCopy messageToSend];
  sendMetric = [messageToSend sendMetric];

  currentServerTime = [(IDSEncryptionComponent *)self currentServerTime];
  [currentServerTime currentServerTimeInterval];
  v8 = [NSNumber numberWithDouble:?];
  v9 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys outgoingEncryptStartKey];
  v122 = sendMetric;
  [sendMetric addEntry:v8 forKey:v9];

  [(IDSEncryptionComponent *)self _shouldDisableSecondaryEncryption];
  [(IDSEncryptionComponent *)self _shouldDisableEchnidaEncryption];
  v10 = objc_alloc_init(NSMutableDictionary);
  dataToEncrypt = [inputCopy dataToEncrypt];
  attributes = [inputCopy attributes];
  isScheduled = [inputCopy isScheduled];
  service = [inputCopy service];
  messageToSend2 = [inputCopy messageToSend];
  messageBody = [messageToSend2 messageBody];
  v132 = [messageBody objectForKey:IDSCommandKey];

  v125 = objc_alloc_init(NSMutableDictionary);
  serviceController = [(IDSEncryptionComponent *)self serviceController];
  v144 = service;
  v16 = [serviceController serviceWithIdentifier:service];

  v121 = v16;
  requiresPinnedIdentity = [v16 requiresPinnedIdentity];
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v150 = inputCopy;
  obj = [inputCopy endpoints];
  v136 = [obj countByEnumeratingWithState:&v172 objects:v184 count:16];
  if (!v136)
  {
    goto LABEL_94;
  }

  v134 = isScheduled;
  v135 = *v173;
  v124 = IDSSendErrorDomain;
  v133 = v10;
  do
  {
    v17 = 0;
    do
    {
      if (*v173 != v135)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v172 + 1) + 8 * v17);
      if (requiresPinnedIdentity && ![(IDSPinnedIdentityController *)self->_pinnedIdentityController foundPersistedIdentityForEndpoint:*(*(&v172 + 1) + 8 * v17) forService:v144])
      {
        v118 = [[NSError alloc] initWithDomain:v124 code:39 userInfo:0];
        v117 = [CUTUnsafePromise failedPromiseWithError:v118];

        goto LABEL_101;
      }

      v148 = v17;
      v171 = 2;
      v19 = [IDSCryptionContext alloc];
      guid = [v150 guid];
      fromID = [v150 fromID];
      v22 = [IDSURI URIWithPrefixedURI:fromID];
      v23 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
      pushToken = [v23 pushToken];
      v25 = [IDSPushToken pushTokenWithData:pushToken];
      v26 = [v18 URI];
      v153 = v18;
      pushTokenObject = [v18 pushTokenObject];
      v28 = [(IDSCryptionContext *)v19 initWithGuid:guid sendingURI:v22 sendingPushToken:v25 receivingURI:v26 receivingPushToken:pushTokenObject service:v144];

      v29 = v28;
      [(IDSCryptionContext *)v28 setMessageType:v134];
      if (!dataToEncrypt)
      {
        v37 = 0;
        v38 = 0;
        v34 = 0;
        v39 = 0;
        v10 = v133;
        v40 = v153;
        goto LABEL_83;
      }

      [(IDSCryptionContext *)v28 setMessageType:[(IDSEncryptionComponent *)self messageTypeForCommand:v132]];
      encryptionType = [v150 encryptionType];
      if (encryptionType < 2)
      {
        encryptionController = self->_encryptionController;
        v168 = 0;
        v167 = 0;
        v42 = v28;
        v31 = v153;
        v33 = [(IDSEncryptionController *)encryptionController publicKeyEncryptData:dataToEncrypt encryptionContext:v42 forceSizeOptimizations:0 resetState:0 withEncryptedAttributes:attributes toEndpoint:v153 usedEncryptionType:&v171 priority:300 metadata:&v168 error:&v167];
        v35 = v168;
        v34 = v167;
        goto LABEL_18;
      }

      v31 = v153;
      if (encryptionType == 3)
      {
        v43 = self->_encryptionController;
        v169 = 0;
        v33 = [(IDSEncryptionController *)v43 offGridKeyDistributionEncryptData:dataToEncrypt encryptionContext:v29 toEndpoint:v153 priority:300 error:&v169];
        v34 = v169;
        v35 = 0;
        v36 = 6;
        goto LABEL_16;
      }

      if (encryptionType == 2)
      {
        v32 = self->_encryptionController;
        v170 = 0;
        v33 = [(IDSEncryptionController *)v32 legacyPublicKeyEncryptData:dataToEncrypt withEncryptedAttributes:attributes toEndpoint:v153 priority:300 error:&v170];
        v34 = v170;
        v35 = 0;
        v36 = 1;
LABEL_16:
        v171 = v36;
        goto LABEL_18;
      }

      v35 = 0;
      v34 = 0;
      v33 = 0;
LABEL_18:
      if ([v33 length])
      {
        v44 = v34 == 0;
      }

      else
      {
        v44 = 0;
      }

      v45 = v44;
      v152 = v45;
      v147 = v34;
      v143 = v29;
      if (v44 || !-[IDSEncryptionComponent shouldForwardErrorForEncryptionType:forceECC:](self, "shouldForwardErrorForEncryptionType:forceECC:", v171, [v150 encryptionType] == 1))
      {
        if (v171 == 4)
        {
          v60 = [NSNumber numberWithBool:v152];
        }

        else
        {
          v60 = 0;
        }

        if ((v171 & 0xFFFFFFFFFFFFFFFELL) == 4)
        {
          v149 = 0;
        }

        else
        {
          v149 = [NSNumber numberWithBool:v152];
        }

        v63 = v171;
        if (v171 == 4)
        {
          v64 = v34;
        }

        else
        {
          v64 = 0;
        }

        v145 = v64;
        if ((v63 & 0xFFFFFFFFFFFFFFFELL) == 4)
        {
          v62 = 0;
        }

        else
        {
          v62 = v34;
        }

        v61 = v62;
      }

      else
      {
        v46 = +[IDSFoundationLog delivery];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          guid2 = [v150 guid];
          pushToken2 = [v153 pushToken];
          v49 = [v153 URI];
          [v49 prefixedURI];
          v50 = v129 = v33;
          v51 = v35;
          v52 = _IDSCopyIDForTokenWithURI();
          v53 = v52;
          v54 = IDSEncryptionTypeStringFromEncryptionType();

          *buf = 138413058;
          v177 = guid2;
          v178 = 2112;
          v179 = v52;
          v35 = v51;
          v180 = 2112;
          v181 = v54;
          v182 = 2112;
          v183 = v147;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "GUID %@ Destination %@ Falling back to legacy encryption { encryptionType: %@, error: %@ }", buf, 0x2Au);

          v33 = v129;
          v31 = v153;
        }

        v55 = self->_encryptionController;
        v166 = 0;
        v56 = [(IDSEncryptionController *)v55 legacyPublicKeyEncryptData:dataToEncrypt withEncryptedAttributes:attributes toEndpoint:v31 priority:300 error:&v166];
        v57 = v166;

        v171 = 1;
        if ([v56 length])
        {
          v58 = v57 == 0;
        }

        else
        {
          v58 = 0;
        }

        v59 = v58;
        v60 = [NSNumber numberWithBool:0];
        v61 = v57;
        v152 = v59;
        v149 = [NSNumber numberWithBool:v59];
        v34 = v147;
        v62 = v147;
        v145 = v147;
        v33 = v56;
      }

      v65 = v62;
      v142 = v35;
      additionalEncryptionResult = [v35 additionalEncryptionResult];
      v66 = [additionalEncryptionResult objectForKey:&off_100C3C760];
      v67 = v66;
      v68 = v67;
      if (![v67 code])
      {
        domain = [v67 domain];
        v70 = [domain isEqualToString:@"com.apple.messageprotection"];

        v34 = v147;
        v68 = v67;
        if (v70)
        {

          v68 = 0;
        }
      }

      if (v66)
      {
        v71 = [NSNumber numberWithBool:v68 == 0];
      }

      else
      {
        v71 = 0;
      }

      v72 = v145;
      v73 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v177 = v60;
        v178 = 2112;
        v179 = v149;
        v180 = 2112;
        v181 = v71;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Outgoing message - processing metrics { ECSuccess: %@, legacySuccess: %@, secondarySuccess: %@ }", buf, 0x20u);
      }

      v138 = v60;
      if (!+[IDSAutoBugCapture isSupported])
      {
        goto LABEL_72;
      }

      v74 = [IDSMessageMetricReporter errorToReportForNGMError:v68];
      v139 = [IDSMessageMetricReporter errorToReportForNGMError:v145];
      v130 = [IDSMessageMetricReporter errorToReportForLegacyError:v61];
      if (!v152 || (v75 = &stru_100C06028, [(IDSEncryptionComponent *)self _shouldAutoBugCaptureForECError:v145]))
      {
        if (v145 && v61)
        {
          domain2 = [v139 domain];
          code = [v139 code];
          domain3 = [v130 domain];
          v120 = code;
          v72 = v145;
          v79 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"EC (%@:%ld) and Legacy (%@:%ld)", domain2, v120, domain3, [v130 code]);

          goto LABEL_67;
        }

        if (v145)
        {
          domain2 = [v139 domain];
          +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"EC (%@:%ld)", domain2, [v139 code]);
          v79 = LABEL_66:;
LABEL_67:
        }

        else
        {
          if (v61)
          {
            domain2 = [v130 domain];
            +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Legacy (%@:%ld)", domain2, [v130 code]);
            goto LABEL_66;
          }

          v79 = &stru_100C06028;
        }

        v161[0] = _NSConcreteStackBlock;
        v161[1] = 3221225472;
        v161[2] = sub_100482934;
        v161[3] = &unk_100BDD160;
        v75 = v79;
        v162 = v75;
        v163 = v72;
        v164 = v61;
        v165 = v68;
        [IDSAutoBugCapture triggerCaptureWithEvent:100 context:v75 completion:v161];

        v34 = v147;
      }

      if (v68)
      {
        domain4 = [v74 domain];
        v81 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Secondary (%@:%ld)", domain4, [v74 code]);

        v156[0] = _NSConcreteStackBlock;
        v156[1] = 3221225472;
        v156[2] = sub_100482A04;
        v156[3] = &unk_100BDD160;
        v75 = v81;
        v157 = v75;
        v158 = v72;
        v159 = v61;
        v160 = v68;
        v34 = v147;
        [IDSAutoBugCapture triggerCaptureWithEvent:104 context:v75 completion:v156];
      }

      v60 = v138;
      v31 = v153;
LABEL_72:
      v140 = v67;
      v82 = v149;
      if (v152)
      {
        v83 = v133;
        if (v71 || v60 || !v149)
        {
          [IDSMessageMetricReporter messageMetadataWithEndpoint:v31 secondarySuccess:v71 ECSuccess:v60 legacySuccess:v149 secondaryError:v68 ECError:v72 legacyError:v61];
          v38 = v84 = v60;
        }

        else
        {
          [IDSMessageMetricReporter reportEncryptionSideMetricWithEndpoint:v31 secondarySuccess:0 ECSuccess:0 legacySuccess:v149 secondaryError:v68 ECError:v72 legacyError:v61];
          v84 = 0;
          v38 = 0;
        }
      }

      else
      {
        v85 = +[IDSFoundationLog delivery];
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          guid3 = [v150 guid];
          pushToken3 = [v31 pushToken];
          v88 = [v31 URI];
          [v88 prefixedURI];
          v89 = v126 = v61;
          v90 = _IDSCopyIDForTokenWithURI();
          v131 = v33;
          v91 = v90;
          v92 = IDSEncryptionTypeStringFromEncryptionType();

          *buf = 138413058;
          v177 = guid3;
          v178 = 2112;
          v179 = v90;
          v31 = v153;
          v180 = 2112;
          v181 = v92;
          v182 = 2112;
          v183 = v147;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "GUID %@ Destination %@ Failed encryption type %@ with error %@", buf, 0x2Au);

          v61 = v126;
          v34 = v147;

          v33 = v131;
          v82 = v149;
        }

        v93 = v31;
        v84 = v138;
        v72 = v145;
        [IDSMessageMetricReporter reportEncryptionSideMetricWithEndpoint:v93 secondarySuccess:v71 ECSuccess:v138 legacySuccess:v82 secondaryError:v68 ECError:v145 legacyError:v61];
        v94 = v61;
        v95 = [NSDictionary alloc];
        v96 = [NSString stringWithFormat:@"Failed encrypting message %@", v34];
        v97 = [v95 initWithObjectsAndKeys:{v96, NSLocalizedDescriptionKey, v150, @"IDSPipelineParameter", 0}];

        v98 = [[NSError alloc] initWithDomain:v124 code:3 userInfo:v97];
        v123 = [CUTUnsafePromise failedPromiseWithError:v98];

        v82 = v149;
        v61 = v94;
        v38 = 0;
        v83 = v133;
      }

      if (!v152)
      {
        v105 = 0;
        v37 = v142;
        v29 = v143;
        v10 = v83;
        v39 = v33;
        goto LABEL_89;
      }

      v37 = v142;
      v29 = v143;
      v10 = v83;
      v40 = v153;
      v39 = v33;
LABEL_83:
      v99 = [IDSEncryptedData alloc];
      v100 = [(IDSEncryptedData *)v99 initWithData:v39 encryptionType:v171 payloadMetadata:v38];
      [v10 setObject:v100 forKey:v40];
      if (v100)
      {
        v101 = v34;
        v102 = [v40 URI];
        pushTokenObject2 = [v40 pushTokenObject];
        v104 = [v102 URIByAddingPushToken:pushTokenObject2];

        if (v104)
        {
          [v125 setObject:v100 forKey:v104];
        }

        v34 = v101;
      }

      v105 = 1;
LABEL_89:

      if (!v105)
      {
        v117 = v123;
LABEL_101:

        v112 = v125;
        goto LABEL_102;
      }

      v17 = v148 + 1;
    }

    while (v136 != (v148 + 1));
    v106 = [obj countByEnumeratingWithState:&v172 objects:v184 count:16];
    v136 = v106;
  }

  while (v106);
LABEL_94:

  v107 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    guid4 = [v150 guid];
    *buf = 138412290;
    v177 = guid4;
    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "GUID %@ finished encryption", buf, 0xCu);
  }

  currentServerTime2 = [(IDSEncryptionComponent *)self currentServerTime];
  [currentServerTime2 currentServerTimeInterval];
  v110 = [NSNumber numberWithDouble:?];
  v111 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys outgoingEncryptEndKey];
  [v122 addEntry:v110 forKey:v111];

  v112 = v125;
  if ([v125 count])
  {
    guid5 = [v150 guid];
    v114 = [guid5 copy];

    [v125 debugDescription];
    v155 = v154 = v114;
    v115 = v155;
    v116 = v114;
    cut_dispatch_log_queue();

    v112 = v125;
  }

  [v150 setEndpointsToEncryptedData:v10];
  v117 = [CUTUnsafePromise fulfilledPromiseWithValue:v150];
LABEL_102:

  return v117;
}

- (BOOL)_shouldAutoBugCaptureForECError:(id)error
{
  if (error)
  {
    return ![(IDSEncryptionComponent *)self _shouldIgnoreAutoBugCaptureForECFailure:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldIgnoreAutoBugCaptureForECFailure:(id)failure
{
  failureCopy = failure;
  domain = [failureCopy domain];
  if ([domain isEqualToString:IDSEncryptionErrorDomain])
  {
    v5 = [failureCopy code] == 13;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_shouldDisableEncryption:(id)encryption UserDefaultKey:(id)key
{
  keyCopy = key;
  encryptionCopy = encryption;
  v6 = [IDSServerBag sharedInstanceForBagType:1];
  v7 = [v6 objectForKey:encryptionCopy];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v7 BOOLValue];
      v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
      if (bOOLValue != [v9 BOOLForKey:keyCopy])
      {
        [v9 setBool:bOOLValue forKey:keyCopy];
      }
    }
  }
}

@end