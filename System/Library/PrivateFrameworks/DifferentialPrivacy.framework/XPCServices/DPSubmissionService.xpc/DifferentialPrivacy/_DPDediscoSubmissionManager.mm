@interface _DPDediscoSubmissionManager
- (BOOL)handleDediscoDonation:(id)donation overrideVerifyDate:(id)date error:(id *)error;
- (_DPDediscoSubmissionManager)init;
- (_DPDediscoSubmissionManager)initWithNetworkingService:(id)service;
- (id)algorithmParamsForDonation:(id)donation dediscoOtherParams:(id)params;
- (id)baaCertificateChainFromBAASignature:(id)signature;
- (id)base64PublicKeyRepresentationFromSecKeyRef:(id)ref;
- (id)encryptWithKey:(id)key data:(id)data;
- (id)payloadForDonation:(id)donation keys:(id)keys error:(id *)error;
- (id)serializeOtherParamsWithMetadata:(id)metadata error:(id *)error;
- (id)uploadDAPPayload:(id)payload withEncoder:(id)encoder withKeys:(id)keys useOHTTP:(BOOL)p telemetryAllowed:(BOOL)allowed;
- (id)uploadSerializedPayload:(id)payload baaCertificateChain:(id)chain baaSignature:(id)signature options:(int64_t)options;
@end

@implementation _DPDediscoSubmissionManager

- (_DPDediscoSubmissionManager)init
{
  v3 = [NSURL URLWithString:@"https://unlinkability.apple.com/config/global-config.plist"];
  v4 = [[_DPDediscoNetworkingService alloc] initWithDomain:@"https://unlinkability.apple.com" configurationURL:v3];
  v5 = [(_DPDediscoSubmissionManager *)self initWithNetworkingService:v4];

  return v5;
}

- (_DPDediscoSubmissionManager)initWithNetworkingService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = _DPDediscoSubmissionManager;
  v6 = [(_DPDediscoSubmissionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_networkingService, service);
  }

  return v7;
}

- (BOOL)handleDediscoDonation:(id)donation overrideVerifyDate:(id)date error:(id *)error
{
  donationCopy = donation;
  dateCopy = date;
  metadata = [donationCopy metadata];
  v11 = [metadata objectForKeyedSubscript:@"telemetryAllowed"];
  bOOLValue = [v11 BOOLValue];

  networkingService = [(_DPDediscoSubmissionManager *)self networkingService];
  v126 = 0;
  v14 = [networkingService downloadConfigSynchronouslyWithError:&v126];
  v15 = v126;

  if (v14)
  {
    v117 = bOOLValue;
    v119 = v15;
    [donationCopy metadata];
    v17 = v16 = dateCopy;
    v18 = kDPMetadataDediscoTaskConfig;
    v19 = [v17 objectForKeyedSubscript:kDPMetadataDediscoTaskConfig];
    v20 = [v19 objectForKeyedSubscript:kDPMetadataDediscoServerConfiguration];
    v125 = 0;
    v120 = v16;
    v21 = [(_DPDediscoSubmissionManager *)self keysFromConfigurationFile:v14 overrideVerifyDate:v16 dediscoServerNames:v20 error:&v125];
    v22 = v125;

    if (v22)
    {
      v23 = +[_DPLog service];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10004F1DC();
      }

      v24 = v21;
      if (error)
      {
        v25 = v22;
        *error = v22;
      }

      v26 = [donationCopy key];
      if (v117)
      {
        v27 = 1;
      }

      else
      {
        v27 = +[_DPDeviceInfo isInternalBuild];
      }

      LOBYTE(v106) = v27;
      [_DPLHBitacoraLogger donateEventToBitacoraForKey:v26 eventPhase:4 uuid:0 succeeded:0 errorCode:402 errorMessage:@"Failed to extract fields from config file" aggregateFunction:0x100000001 count:v106 telemetryAllowed:?];
      v43 = 0;
      goto LABEL_120;
    }

    v124 = 0;
    v31 = [(_DPDediscoSubmissionManager *)self payloadForDonation:donationCopy keys:v21 error:&v124];
    v26 = v124;
    v24 = v21;
    if (!v31)
    {
      v44 = +[_DPLog service];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_10004F620();
      }

      if (error)
      {
        v45 = v26;
        v43 = 0;
        *error = v26;
      }

      else
      {
        v43 = 0;
      }

      goto LABEL_119;
    }

    v123 = 0;
    v32 = [(_DPDediscoSubmissionManager *)self serializePayload:v31 error:&v123];
    v116 = v123;
    if (!v32)
    {
      v46 = +[_DPLog service];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_10004F594(v116, v46);
      }

      if (error)
      {
        *error = [_DPDediscoError errorWithCode:101 underlyingError:v116 description:@"Unable to serialize payload dictionary."];
      }

      v41 = [donationCopy key];
      if (v117)
      {
        v47 = 1;
      }

      else
      {
        v47 = +[_DPDeviceInfo isInternalBuild];
      }

      LOBYTE(v106) = v47;
      [_DPLHBitacoraLogger donateEventToBitacoraForKey:v41 eventPhase:4 uuid:0 succeeded:0 errorCode:407 errorMessage:@"Failed to serialize payload" aggregateFunction:0x100000001 count:v106 telemetryAllowed:?];
      goto LABEL_46;
    }

    if ([v32 length] > 0x100000)
    {
      v33 = +[_DPLog service];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10004F51C(v33, v34, v35, v36, v37, v38, v39, v40);
      }

      v41 = [donationCopy key];
      if (v117)
      {
        v42 = 1;
      }

      else
      {
        v42 = +[_DPDeviceInfo isInternalBuild];
      }

      LOBYTE(v106) = v42;
      [_DPLHBitacoraLogger donateEventToBitacoraForKey:v41 eventPhase:4 uuid:0 succeeded:0 errorCode:408 errorMessage:@"Payload size exceeds 1 MB" aggregateFunction:0x100000001 count:v106 telemetryAllowed:?];
LABEL_46:
      v43 = 0;
LABEL_118:

LABEL_119:
LABEL_120:

      v15 = v119;
      dateCopy = v120;
      goto LABEL_121;
    }

    v114 = v31;
    v122 = 0;
    v48 = [donationCopy isOHTTPEnabledWithError:&v122];
    v113 = v122;
    v115 = v32;
    if (v113)
    {
      v49 = +[_DPLog service];
      v41 = v113;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_10004F244();
      }

      v50 = [donationCopy key];
      localizedDescription = [v113 localizedDescription];
      v31 = v114;
      if (v117)
      {
        v52 = 1;
      }

      else
      {
        v63 = localizedDescription;
        v52 = +[_DPDeviceInfo isInternalBuild];
        localizedDescription = v63;
      }

      LOBYTE(v106) = v52;
      v64 = v50;
      v65 = localizedDescription;
      [_DPLHBitacoraLogger donateEventToBitacoraForKey:"donateEventToBitacoraForKey:eventPhase:uuid:succeeded:errorCode:errorMessage:aggregateFunction:count:telemetryAllowed:" eventPhase:v50 uuid:4 succeeded:0 errorCode:0 errorMessage:412 aggregateFunction:0x100000001 count:v106 telemetryAllowed:?];
      v43 = 0;
      goto LABEL_117;
    }

    v108 = v48;
    v110 = v24;
    metadata2 = [donationCopy metadata];
    v54 = [metadata2 objectForKeyedSubscript:v18];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (v108)
      {
        v56 = +[_DPLog service];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = [donationCopy key];
          *buf = 138412290;
          v130 = v57;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "Submitting via V2 with OHTTP for key=%@", buf, 0xCu);
        }

        v24 = v110;
        goto LABEL_52;
      }

      v70 = [donationCopy key];
      v71 = [_DPDediscoUtils shouldAllowOHTTPExemptionForCollectionID:v70];

      if (v71)
      {
        v56 = +[_DPLog service];
        v24 = v110;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v72 = [donationCopy key];
          *buf = 138412290;
          v130 = v72;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "Submitting via V2 without OHTTP for key=%@", buf, 0xCu);
        }

LABEL_52:
        v31 = v114;

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10004F488();
        }

        v121 = 0;
        v109 = [_DPDAPPayloadEncoder encoderForDonation:donationCopy keys:v24 error:&v121];
        v58 = v121;
        v111 = v58;
        if (v58)
        {
          v59 = v58;
          v60 = [donationCopy key];
          localizedDescription2 = [v59 localizedDescription];
          if (v117)
          {
            v62 = 1;
          }

          else
          {
            v62 = +[_DPDeviceInfo isInternalBuild];
          }

          LOBYTE(v106) = v62;
          v41 = 0;
          v100 = v60;
          [_DPLHBitacoraLogger donateEventToBitacoraForKey:v60 eventPhase:4 uuid:0 succeeded:0 errorCode:413 errorMessage:localizedDescription2 aggregateFunction:0x100000001 count:v106 telemetryAllowed:?];

          v43 = 0;
          v64 = v111;
          goto LABEL_115;
        }

        if (v117)
        {
          v90 = 1;
        }

        else
        {
          v90 = +[_DPDeviceInfo isInternalBuild];
        }

        v101 = [(_DPDediscoSubmissionManager *)self uploadDAPPayload:v114 withEncoder:v109 withKeys:v24 useOHTTP:v108 telemetryAllowed:v90];
        v102 = +[_DPLog service];
        v103 = v102;
        v118 = v101;
        if (v101)
        {
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            sub_10004F4B4();
          }

          if (error)
          {
            v100 = v101;
            v104 = v101;
            v43 = 0;
            *error = v118;
            v64 = 0;
            v41 = 0;
LABEL_115:

LABEL_116:
            v65 = v109;
            goto LABEL_117;
          }

          v43 = 0;
        }

        else
        {
          if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "Payload submission was successful", buf, 2u);
          }

          v43 = 1;
        }

        v64 = 0;
        v41 = 0;
        v100 = v118;
        goto LABEL_115;
      }

      v91 = [_DPDediscoError errorWithCode:400 underlyingError:0 description:@"OHTTP is not enabled in donation metadata, but it should be strictly required."];
      v24 = v110;
      if (error)
      {
        v91 = v91;
        *error = v91;
      }

      v112 = v91;
      v92 = +[_DPLog service];
      v31 = v114;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        sub_10004F420();
      }

      v65 = [donationCopy key];
      localizedDescription3 = [v112 localizedDescription];
      v41 = 0;
      if (v117)
      {
        v94 = 1;
      }

      else
      {
        v94 = +[_DPDeviceInfo isInternalBuild];
      }

      LOBYTE(v106) = v94;
      [_DPLHBitacoraLogger donateEventToBitacoraForKey:v65 eventPhase:4 uuid:0 succeeded:0 errorCode:412 errorMessage:localizedDescription3 aggregateFunction:0x100000001 count:v106 telemetryAllowed:?];
    }

    else
    {
      v66 = +[_DPLog service];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        sub_10004F2AC(donationCopy, v66);
      }

      v67 = [(_DPDediscoSubmissionManager *)self signPayloadData:v32];
      v31 = v114;
      v112 = v67;
      if (v67)
      {
        v109 = [(_DPDediscoSubmissionManager *)self baaCertificateChainFromBAASignature:v67];
        v68 = [donationCopy key];
        if (v117)
        {
          v69 = 1;
        }

        else
        {
          v69 = +[_DPDeviceInfo isInternalBuild];
        }

        LOBYTE(v106) = v69;
        [_DPLHBitacoraLogger donateEventToBitacoraForKey:v68 eventPhase:4 uuid:0 succeeded:1 errorCode:400 errorMessage:0 aggregateFunction:0x100000001 count:v106 telemetryAllowed:?];

        signature = [v112 signature];
        v83 = [(_DPDediscoSubmissionManager *)self uploadSerializedPayload:v32 baaCertificateChain:v109 baaSignature:signature options:0];

        v43 = v83 == 0;
        v84 = +[_DPLog service];
        v85 = v84;
        if (v83)
        {
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            sub_10004F340();
          }

          v24 = v110;
          v31 = v114;
          if (error)
          {
            v86 = v83;
            *error = v83;
          }

          v87 = [donationCopy key];
          localizedDescription4 = [v83 localizedDescription];
          if (v117)
          {
            v89 = 1;
          }

          else
          {
            v89 = +[_DPDeviceInfo isInternalBuild];
          }

          LOBYTE(v107) = v89;
          [_DPLHBitacoraLogger donateEventToBitacoraForKey:v87 eventPhase:5 uuid:0 succeeded:0 errorCode:502 errorMessage:localizedDescription4 aggregateFunction:0x100000001 count:v107 telemetryAllowed:?];
        }

        else
        {
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Payload submission was successful", buf, 2u);
          }

          v95 = +[_DPCoreAnalyticsCollector sharedInstance];
          v96 = _DPCoreAnalyticsEvent_PhaseCount;
          v128[0] = &off_100075A08;
          v127[0] = _DPCoreAnalyticsField_Phase;
          v127[1] = _DPCoreAnalyticsField_TaskName;
          getCollectionId = [v114 getCollectionId];
          v128[1] = getCollectionId;
          v128[2] = &__kCFBooleanTrue;
          v127[2] = _DPCoreAnalyticsField_Status;
          v127[3] = _DPCoreAnalyticsField_Counts;
          v128[3] = &off_100075A20;
          v98 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:4];
          [v95 reportMetricsForEvent:v96 withMetrics:v98];

          v87 = [donationCopy key];
          if (v117)
          {
            v99 = 1;
          }

          else
          {
            v99 = +[_DPDeviceInfo isInternalBuild];
          }

          v24 = v110;
          LOBYTE(v107) = v99;
          [_DPLHBitacoraLogger donateEventToBitacoraForKey:v87 eventPhase:5 uuid:0 succeeded:1 errorCode:500 errorMessage:0 aggregateFunction:0x100000001 count:v107 telemetryAllowed:?];
          v31 = v114;
        }

        v64 = v112;
        v41 = 0;
        goto LABEL_116;
      }

      v73 = +[_DPLog service];
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_10004F3A8(v73, v74, v75, v76, v77, v78, v79, v80);
      }

      v24 = v110;
      if (error)
      {
        *error = [_DPDediscoError errorWithCode:102 description:@"Unable to get valid signature for payload."];
      }

      v65 = [donationCopy key];
      if (v117)
      {
        v81 = 1;
      }

      else
      {
        v81 = +[_DPDeviceInfo isInternalBuild];
      }

      v41 = 0;
      LOBYTE(v106) = v81;
      [_DPLHBitacoraLogger donateEventToBitacoraForKey:v65 eventPhase:4 uuid:0 succeeded:0 errorCode:409 errorMessage:@"Failed to obtain signature for payload" aggregateFunction:0x100000001 count:v106 telemetryAllowed:?];
    }

    v43 = 0;
    v64 = v112;
LABEL_117:

    v32 = v115;
    goto LABEL_118;
  }

  v28 = +[_DPLog service];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_10004F688();
  }

  if (error)
  {
    v29 = v15;
    *error = v15;
  }

  v22 = [donationCopy key];
  if (bOOLValue)
  {
    v30 = 1;
  }

  else
  {
    v30 = +[_DPDeviceInfo isInternalBuild];
  }

  LOBYTE(v106) = v30;
  [_DPLHBitacoraLogger donateEventToBitacoraForKey:v22 eventPhase:4 uuid:0 succeeded:0 errorCode:401 errorMessage:@"Failed to download config file from server" aggregateFunction:0x100000001 count:v106 telemetryAllowed:?];
  v43 = 0;
LABEL_121:

  return v43;
}

- (id)payloadForDonation:(id)donation keys:(id)keys error:(id *)error
{
  donationCopy = donation;
  keysCopy = keys;
  destinationPublicKey = [keysCopy destinationPublicKey];
  share1 = [donationCopy share1];
  v12 = [(_DPDediscoSubmissionManager *)self encryptWithKey:destinationPublicKey data:share1];

  facilitatorPublicKey = [keysCopy facilitatorPublicKey];
  share2 = [donationCopy share2];
  v15 = [(_DPDediscoSubmissionManager *)self encryptWithKey:facilitatorPublicKey data:share2];

  metadata = [donationCopy metadata];
  v17 = [metadata objectForKeyedSubscript:@"telemetryAllowed"];
  bOOLValue = [v17 BOOLValue];

  v53 = v12;
  if (v12 && v15)
  {
    v19 = [donationCopy key];
    if (([v19 hasPrefix:@"pfl:"] & 1) == 0 && (objc_msgSend(v19, "hasPrefix:", @"fedstats:") & 1) == 0)
    {
      v20 = [NSString stringWithFormat:@"fedstats:%@", v19];

      v19 = v20;
    }

    metadata2 = [donationCopy metadata];
    v22 = [metadata2 objectForKeyedSubscript:kDPMetadataAlgorithmParameters];

    v54 = 0;
    v23 = [(_DPDediscoSubmissionManager *)self serializeOtherParamsWithMetadata:v22 error:&v54];
    v51 = keysCopy;
    v52 = v54;
    if (v52)
    {
      v49 = v23;
      v24 = +[_DPLog service];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10004F768();
      }

      if (error)
      {
        *error = v52;
      }

      serverAlgorithm = [donationCopy key];
      if (bOOLValue)
      {
        v26 = 1;
      }

      else
      {
        v26 = +[_DPDeviceInfo isInternalBuild];
      }

      LOBYTE(v44) = v26;
      [_DPLHBitacoraLogger donateEventToBitacoraForKey:serverAlgorithm eventPhase:4 uuid:0 succeeded:0 errorCode:404 errorMessage:@"Failed to serialize otherParams for Dedisco V1" aggregateFunction:0x100000001 count:v44 telemetryAllowed:?];
      v36 = 0;
      v41 = v49;
    }

    else
    {
      v46 = [_DPDediscoPayload alloc];
      serverAlgorithm = [donationCopy serverAlgorithm];
      v37 = [(_DPDediscoSubmissionManager *)self algorithmParamsForDonation:donationCopy dediscoOtherParams:v23];
      facilitatorPublicKey2 = [keysCopy facilitatorPublicKey];
      v38 = [(_DPDediscoSubmissionManager *)self base64PublicKeyRepresentationFromSecKeyRef:facilitatorPublicKey2];
      destinationPublicKey2 = [keysCopy destinationPublicKey];
      [(_DPDediscoSubmissionManager *)self base64PublicKeyRepresentationFromSecKeyRef:destinationPublicKey2];
      v48 = v22;
      v39 = v50 = v15;
      metadata3 = [donationCopy metadata];
      [metadata3 objectForKeyedSubscript:kDPMetadataVersionHash];
      v42 = v41 = v23;
      v36 = [(_DPDediscoPayload *)v46 initWithCollectionId:v19 algorithm:serverAlgorithm algorithmParameters:v37 fsEncryptedShare:v50 dsEncryptedShare:v53 fsPublicKey:v38 dsPublicKey:v39 versionHash:v42 report:0];

      v22 = v48;
      v15 = v50;
    }

    keysCopy = v51;
  }

  else
  {
    v27 = +[_DPLog service];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10004F6F0(v27, v28, v29, v30, v31, v32, v33, v34);
    }

    if (error)
    {
      *error = [_DPDediscoError errorWithCode:100 description:@"Unable to encrypt shares."];
    }

    v19 = [donationCopy key];
    if (bOOLValue)
    {
      v35 = 1;
    }

    else
    {
      v35 = +[_DPDeviceInfo isInternalBuild];
    }

    LOBYTE(v44) = v35;
    [_DPLHBitacoraLogger donateEventToBitacoraForKey:v19 eventPhase:4 uuid:0 succeeded:0 errorCode:403 errorMessage:@"Failed to encrypt shares for Dedisco V1" aggregateFunction:0x100000001 count:v44 telemetryAllowed:?];
    v36 = 0;
  }

  return v36;
}

- (id)algorithmParamsForDonation:(id)donation dediscoOtherParams:(id)params
{
  paramsCopy = params;
  donationCopy = donation;
  algorithmParameters = [donationCopy algorithmParameters];
  v8 = [algorithmParameters objectForKeyedSubscript:@"epsilon"];

  v9 = [_DPDediscoAlgorithmParameters alloc];
  dimension = [donationCopy dimension];

  [v8 doubleValue];
  if (paramsCopy)
  {
    v11 = [(_DPDediscoAlgorithmParameters *)v9 initWithDimension:dimension epsilon:paramsCopy otherParams:?];
  }

  else
  {
    v11 = [(_DPDediscoAlgorithmParameters *)v9 initWithDimension:dimension epsilon:?];
  }

  v12 = v11;

  return v12;
}

- (id)serializeOtherParamsWithMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  v6 = metadataCopy;
  if (!metadataCopy)
  {
    goto LABEL_20;
  }

  v7 = kDPMetadataAlgoParamCurrentCohortSize;
  v8 = [metadataCopy objectForKeyedSubscript:kDPMetadataAlgoParamCurrentCohortSize];

  v9 = kDPMetadataAlgoParamPiRapporPrime;
  v10 = [v6 objectForKeyedSubscript:kDPMetadataAlgoParamPiRapporPrime];

  if (v8)
  {
    v11 = [v6 objectForKeyedSubscript:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = kDPMetadataAlgoParamSigma;
      v13 = [v6 objectForKeyedSubscript:kDPMetadataAlgoParamSigma];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = [v6 objectForKeyedSubscript:v7];
        longLongValue = [v15 longLongValue];

        v17 = [v6 objectForKeyedSubscript:v12];
        [v17 doubleValue];
        v19 = v18;

        v20 = [[_DPDediscoAlgorithmParametersOtherParams alloc] initWithCohortSize:longLongValue sigma:v19];
LABEL_6:
        v21 = v20;
        v22 = [(_DPDediscoAlgorithmParametersOtherParams *)v20 serializeAndReturnError:error];

        goto LABEL_21;
      }
    }

    else
    {
    }

    if (error)
    {
      v37 = @"Malformed key for parameters in moments accountant.";
LABEL_19:
      [_DPDediscoError errorWithCode:101 description:v37];
      *error = v22 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  v23 = [v6 objectForKeyedSubscript:v9];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v24 = kDPMetadataAlgoParamPiRapporAlpha0;
  v25 = [v6 objectForKeyedSubscript:kDPMetadataAlgoParamPiRapporAlpha0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_16:
    goto LABEL_17;
  }

  v26 = kDPMetadataAlgoParamPiRapporAlpha1;
  v27 = [v6 objectForKeyedSubscript:kDPMetadataAlgoParamPiRapporAlpha1];
  objc_opt_class();
  v28 = objc_opt_isKindOfClass();

  if (v28)
  {
    v29 = [v6 objectForKeyedSubscript:v9];
    unsignedIntValue = [v29 unsignedIntValue];

    v31 = [v6 objectForKeyedSubscript:v24];
    [v31 doubleValue];
    v33 = v32;

    v34 = [v6 objectForKeyedSubscript:v26];
    [v34 doubleValue];
    v36 = v35;

    v20 = [[_DPDediscoAlgorithmParametersOtherParams alloc] initWithPiRapporPrime:unsignedIntValue piRapporAlpha0:v33 piRapporAlpha1:v36];
    goto LABEL_6;
  }

LABEL_17:
  if (error)
  {
    v37 = @"Malformed key for parameters in Pi-Rappor.";
    goto LABEL_19;
  }

LABEL_20:
  v22 = 0;
LABEL_21:

  return v22;
}

- (id)baaCertificateChainFromBAASignature:(id)signature
{
  signatureCopy = signature;
  v4 = [_DPBAACertificateChain alloc];
  intermediateCertificate = [signatureCopy intermediateCertificate];
  leafCertificate = [signatureCopy leafCertificate];

  v7 = [(_DPBAACertificateChain *)v4 initWithIntermediateCertificate:intermediateCertificate leafCertificate:leafCertificate];

  return v7;
}

- (id)uploadSerializedPayload:(id)payload baaCertificateChain:(id)chain baaSignature:(id)signature options:(int64_t)options
{
  signatureCopy = signature;
  chainCopy = chain;
  payloadCopy = payload;
  v12 = objc_opt_new();
  v13 = [v12 submitSyncronouslyWithSerializedPayload:payloadCopy baaCertificateChain:chainCopy baaSignature:signatureCopy options:options];

  return v13;
}

- (id)encryptWithKey:(id)key data:(id)data
{
  error = 0;
  v4 = SecKeyCreateEncryptedData(key, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, data, &error);
  v5 = error;
  if (!v4)
  {
    v6 = +[_DPLog service];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004F7D0();
    }
  }

  return v4;
}

- (id)base64PublicKeyRepresentationFromSecKeyRef:(id)ref
{
  error = 0;
  v3 = SecKeyCopyExternalRepresentation(ref, &error);
  v4 = error;
  if (!v3)
  {
    v5 = +[_DPLog service];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10004F838();
    }
  }

  v6 = [(__CFData *)v3 base64EncodedStringWithOptions:0];

  return v6;
}

- (id)uploadDAPPayload:(id)payload withEncoder:(id)encoder withKeys:(id)keys useOHTTP:(BOOL)p telemetryAllowed:(BOOL)allowed
{
  payloadCopy = payload;
  v9 = +[_DPLog service];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10004F8A0(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  getCollectionId = [payloadCopy getCollectionId];
  LOBYTE(v21) = allowed;
  [_DPLHBitacoraLogger donateEventToBitacoraForKey:getCollectionId eventPhase:4 uuid:0 succeeded:1 errorCode:400 errorMessage:0 aggregateFunction:0x100000001 count:v21 telemetryAllowed:?];

  getCollectionId2 = [payloadCopy getCollectionId];

  LOBYTE(v22) = allowed;
  [_DPLHBitacoraLogger donateEventToBitacoraForKey:getCollectionId2 eventPhase:5 uuid:0 succeeded:0 errorCode:504 errorMessage:@"Failed to directly upload payload: v1 payload is unsupported" aggregateFunction:0x100000001 count:v22 telemetryAllowed:?];

  v19 = [_DPDediscoError errorWithCode:203 description:@"Failed to directly upload payload: v1 payload is unsupported"];

  return v19;
}

@end