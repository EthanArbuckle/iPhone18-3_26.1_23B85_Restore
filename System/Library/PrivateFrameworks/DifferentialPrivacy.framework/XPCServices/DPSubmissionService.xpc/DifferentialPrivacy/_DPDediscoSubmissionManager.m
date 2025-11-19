@interface _DPDediscoSubmissionManager
- (BOOL)handleDediscoDonation:(id)a3 overrideVerifyDate:(id)a4 error:(id *)a5;
- (_DPDediscoSubmissionManager)init;
- (_DPDediscoSubmissionManager)initWithNetworkingService:(id)a3;
- (id)algorithmParamsForDonation:(id)a3 dediscoOtherParams:(id)a4;
- (id)baaCertificateChainFromBAASignature:(id)a3;
- (id)base64PublicKeyRepresentationFromSecKeyRef:(id)a3;
- (id)encryptWithKey:(id)a3 data:(id)a4;
- (id)payloadForDonation:(id)a3 keys:(id)a4 error:(id *)a5;
- (id)serializeOtherParamsWithMetadata:(id)a3 error:(id *)a4;
- (id)uploadDAPPayload:(id)a3 withEncoder:(id)a4 withKeys:(id)a5 useOHTTP:(BOOL)a6 telemetryAllowed:(BOOL)a7;
- (id)uploadSerializedPayload:(id)a3 baaCertificateChain:(id)a4 baaSignature:(id)a5 options:(int64_t)a6;
@end

@implementation _DPDediscoSubmissionManager

- (_DPDediscoSubmissionManager)init
{
  v3 = [NSURL URLWithString:@"https://unlinkability.apple.com/config/global-config.plist"];
  v4 = [[_DPDediscoNetworkingService alloc] initWithDomain:@"https://unlinkability.apple.com" configurationURL:v3];
  v5 = [(_DPDediscoSubmissionManager *)self initWithNetworkingService:v4];

  return v5;
}

- (_DPDediscoSubmissionManager)initWithNetworkingService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DPDediscoSubmissionManager;
  v6 = [(_DPDediscoSubmissionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_networkingService, a3);
  }

  return v7;
}

- (BOOL)handleDediscoDonation:(id)a3 overrideVerifyDate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 metadata];
  v11 = [v10 objectForKeyedSubscript:@"telemetryAllowed"];
  v12 = [v11 BOOLValue];

  v13 = [(_DPDediscoSubmissionManager *)self networkingService];
  v126 = 0;
  v14 = [v13 downloadConfigSynchronouslyWithError:&v126];
  v15 = v126;

  if (v14)
  {
    v117 = v12;
    v119 = v15;
    [v8 metadata];
    v17 = v16 = v9;
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
      if (a5)
      {
        v25 = v22;
        *a5 = v22;
      }

      v26 = [v8 key];
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
    v31 = [(_DPDediscoSubmissionManager *)self payloadForDonation:v8 keys:v21 error:&v124];
    v26 = v124;
    v24 = v21;
    if (!v31)
    {
      v44 = +[_DPLog service];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_10004F620();
      }

      if (a5)
      {
        v45 = v26;
        v43 = 0;
        *a5 = v26;
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

      if (a5)
      {
        *a5 = [_DPDediscoError errorWithCode:101 underlyingError:v116 description:@"Unable to serialize payload dictionary."];
      }

      v41 = [v8 key];
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

      v41 = [v8 key];
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
      v9 = v120;
      goto LABEL_121;
    }

    v114 = v31;
    v122 = 0;
    v48 = [v8 isOHTTPEnabledWithError:&v122];
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

      v50 = [v8 key];
      v51 = [v113 localizedDescription];
      v31 = v114;
      if (v117)
      {
        v52 = 1;
      }

      else
      {
        v63 = v51;
        v52 = +[_DPDeviceInfo isInternalBuild];
        v51 = v63;
      }

      LOBYTE(v106) = v52;
      v64 = v50;
      v65 = v51;
      [_DPLHBitacoraLogger donateEventToBitacoraForKey:"donateEventToBitacoraForKey:eventPhase:uuid:succeeded:errorCode:errorMessage:aggregateFunction:count:telemetryAllowed:" eventPhase:v50 uuid:4 succeeded:0 errorCode:0 errorMessage:412 aggregateFunction:0x100000001 count:v106 telemetryAllowed:?];
      v43 = 0;
      goto LABEL_117;
    }

    v108 = v48;
    v110 = v24;
    v53 = [v8 metadata];
    v54 = [v53 objectForKeyedSubscript:v18];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (v108)
      {
        v56 = +[_DPLog service];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = [v8 key];
          *buf = 138412290;
          v130 = v57;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "Submitting via V2 with OHTTP for key=%@", buf, 0xCu);
        }

        v24 = v110;
        goto LABEL_52;
      }

      v70 = [v8 key];
      v71 = [_DPDediscoUtils shouldAllowOHTTPExemptionForCollectionID:v70];

      if (v71)
      {
        v56 = +[_DPLog service];
        v24 = v110;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v72 = [v8 key];
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
        v109 = [_DPDAPPayloadEncoder encoderForDonation:v8 keys:v24 error:&v121];
        v58 = v121;
        v111 = v58;
        if (v58)
        {
          v59 = v58;
          v60 = [v8 key];
          v61 = [v59 localizedDescription];
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
          [_DPLHBitacoraLogger donateEventToBitacoraForKey:v60 eventPhase:4 uuid:0 succeeded:0 errorCode:413 errorMessage:v61 aggregateFunction:0x100000001 count:v106 telemetryAllowed:?];

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

          if (a5)
          {
            v100 = v101;
            v104 = v101;
            v43 = 0;
            *a5 = v118;
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
      if (a5)
      {
        v91 = v91;
        *a5 = v91;
      }

      v112 = v91;
      v92 = +[_DPLog service];
      v31 = v114;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        sub_10004F420();
      }

      v65 = [v8 key];
      v93 = [v112 localizedDescription];
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
      [_DPLHBitacoraLogger donateEventToBitacoraForKey:v65 eventPhase:4 uuid:0 succeeded:0 errorCode:412 errorMessage:v93 aggregateFunction:0x100000001 count:v106 telemetryAllowed:?];
    }

    else
    {
      v66 = +[_DPLog service];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        sub_10004F2AC(v8, v66);
      }

      v67 = [(_DPDediscoSubmissionManager *)self signPayloadData:v32];
      v31 = v114;
      v112 = v67;
      if (v67)
      {
        v109 = [(_DPDediscoSubmissionManager *)self baaCertificateChainFromBAASignature:v67];
        v68 = [v8 key];
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

        v82 = [v112 signature];
        v83 = [(_DPDediscoSubmissionManager *)self uploadSerializedPayload:v32 baaCertificateChain:v109 baaSignature:v82 options:0];

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
          if (a5)
          {
            v86 = v83;
            *a5 = v83;
          }

          v87 = [v8 key];
          v88 = [v83 localizedDescription];
          if (v117)
          {
            v89 = 1;
          }

          else
          {
            v89 = +[_DPDeviceInfo isInternalBuild];
          }

          LOBYTE(v107) = v89;
          [_DPLHBitacoraLogger donateEventToBitacoraForKey:v87 eventPhase:5 uuid:0 succeeded:0 errorCode:502 errorMessage:v88 aggregateFunction:0x100000001 count:v107 telemetryAllowed:?];
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
          v97 = [v114 getCollectionId];
          v128[1] = v97;
          v128[2] = &__kCFBooleanTrue;
          v127[2] = _DPCoreAnalyticsField_Status;
          v127[3] = _DPCoreAnalyticsField_Counts;
          v128[3] = &off_100075A20;
          v98 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:4];
          [v95 reportMetricsForEvent:v96 withMetrics:v98];

          v87 = [v8 key];
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
      if (a5)
      {
        *a5 = [_DPDediscoError errorWithCode:102 description:@"Unable to get valid signature for payload."];
      }

      v65 = [v8 key];
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

  if (a5)
  {
    v29 = v15;
    *a5 = v15;
  }

  v22 = [v8 key];
  if (v12)
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

- (id)payloadForDonation:(id)a3 keys:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 destinationPublicKey];
  v11 = [v8 share1];
  v12 = [(_DPDediscoSubmissionManager *)self encryptWithKey:v10 data:v11];

  v13 = [v9 facilitatorPublicKey];
  v14 = [v8 share2];
  v15 = [(_DPDediscoSubmissionManager *)self encryptWithKey:v13 data:v14];

  v16 = [v8 metadata];
  v17 = [v16 objectForKeyedSubscript:@"telemetryAllowed"];
  v18 = [v17 BOOLValue];

  v53 = v12;
  if (v12 && v15)
  {
    v19 = [v8 key];
    if (([v19 hasPrefix:@"pfl:"] & 1) == 0 && (objc_msgSend(v19, "hasPrefix:", @"fedstats:") & 1) == 0)
    {
      v20 = [NSString stringWithFormat:@"fedstats:%@", v19];

      v19 = v20;
    }

    v21 = [v8 metadata];
    v22 = [v21 objectForKeyedSubscript:kDPMetadataAlgorithmParameters];

    v54 = 0;
    v23 = [(_DPDediscoSubmissionManager *)self serializeOtherParamsWithMetadata:v22 error:&v54];
    v51 = v9;
    v52 = v54;
    if (v52)
    {
      v49 = v23;
      v24 = +[_DPLog service];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10004F768();
      }

      if (a5)
      {
        *a5 = v52;
      }

      v25 = [v8 key];
      if (v18)
      {
        v26 = 1;
      }

      else
      {
        v26 = +[_DPDeviceInfo isInternalBuild];
      }

      LOBYTE(v44) = v26;
      [_DPLHBitacoraLogger donateEventToBitacoraForKey:v25 eventPhase:4 uuid:0 succeeded:0 errorCode:404 errorMessage:@"Failed to serialize otherParams for Dedisco V1" aggregateFunction:0x100000001 count:v44 telemetryAllowed:?];
      v36 = 0;
      v41 = v49;
    }

    else
    {
      v46 = [_DPDediscoPayload alloc];
      v25 = [v8 serverAlgorithm];
      v37 = [(_DPDediscoSubmissionManager *)self algorithmParamsForDonation:v8 dediscoOtherParams:v23];
      v47 = [v9 facilitatorPublicKey];
      v38 = [(_DPDediscoSubmissionManager *)self base64PublicKeyRepresentationFromSecKeyRef:v47];
      v45 = [v9 destinationPublicKey];
      [(_DPDediscoSubmissionManager *)self base64PublicKeyRepresentationFromSecKeyRef:v45];
      v48 = v22;
      v39 = v50 = v15;
      v40 = [v8 metadata];
      [v40 objectForKeyedSubscript:kDPMetadataVersionHash];
      v42 = v41 = v23;
      v36 = [(_DPDediscoPayload *)v46 initWithCollectionId:v19 algorithm:v25 algorithmParameters:v37 fsEncryptedShare:v50 dsEncryptedShare:v53 fsPublicKey:v38 dsPublicKey:v39 versionHash:v42 report:0];

      v22 = v48;
      v15 = v50;
    }

    v9 = v51;
  }

  else
  {
    v27 = +[_DPLog service];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10004F6F0(v27, v28, v29, v30, v31, v32, v33, v34);
    }

    if (a5)
    {
      *a5 = [_DPDediscoError errorWithCode:100 description:@"Unable to encrypt shares."];
    }

    v19 = [v8 key];
    if (v18)
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

- (id)algorithmParamsForDonation:(id)a3 dediscoOtherParams:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 algorithmParameters];
  v8 = [v7 objectForKeyedSubscript:@"epsilon"];

  v9 = [_DPDediscoAlgorithmParameters alloc];
  v10 = [v6 dimension];

  [v8 doubleValue];
  if (v5)
  {
    v11 = [(_DPDediscoAlgorithmParameters *)v9 initWithDimension:v10 epsilon:v5 otherParams:?];
  }

  else
  {
    v11 = [(_DPDediscoAlgorithmParameters *)v9 initWithDimension:v10 epsilon:?];
  }

  v12 = v11;

  return v12;
}

- (id)serializeOtherParamsWithMetadata:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_20;
  }

  v7 = kDPMetadataAlgoParamCurrentCohortSize;
  v8 = [v5 objectForKeyedSubscript:kDPMetadataAlgoParamCurrentCohortSize];

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
        v16 = [v15 longLongValue];

        v17 = [v6 objectForKeyedSubscript:v12];
        [v17 doubleValue];
        v19 = v18;

        v20 = [[_DPDediscoAlgorithmParametersOtherParams alloc] initWithCohortSize:v16 sigma:v19];
LABEL_6:
        v21 = v20;
        v22 = [(_DPDediscoAlgorithmParametersOtherParams *)v20 serializeAndReturnError:a4];

        goto LABEL_21;
      }
    }

    else
    {
    }

    if (a4)
    {
      v37 = @"Malformed key for parameters in moments accountant.";
LABEL_19:
      [_DPDediscoError errorWithCode:101 description:v37];
      *a4 = v22 = 0;
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
    v30 = [v29 unsignedIntValue];

    v31 = [v6 objectForKeyedSubscript:v24];
    [v31 doubleValue];
    v33 = v32;

    v34 = [v6 objectForKeyedSubscript:v26];
    [v34 doubleValue];
    v36 = v35;

    v20 = [[_DPDediscoAlgorithmParametersOtherParams alloc] initWithPiRapporPrime:v30 piRapporAlpha0:v33 piRapporAlpha1:v36];
    goto LABEL_6;
  }

LABEL_17:
  if (a4)
  {
    v37 = @"Malformed key for parameters in Pi-Rappor.";
    goto LABEL_19;
  }

LABEL_20:
  v22 = 0;
LABEL_21:

  return v22;
}

- (id)baaCertificateChainFromBAASignature:(id)a3
{
  v3 = a3;
  v4 = [_DPBAACertificateChain alloc];
  v5 = [v3 intermediateCertificate];
  v6 = [v3 leafCertificate];

  v7 = [(_DPBAACertificateChain *)v4 initWithIntermediateCertificate:v5 leafCertificate:v6];

  return v7;
}

- (id)uploadSerializedPayload:(id)a3 baaCertificateChain:(id)a4 baaSignature:(id)a5 options:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_opt_new();
  v13 = [v12 submitSyncronouslyWithSerializedPayload:v11 baaCertificateChain:v10 baaSignature:v9 options:a6];

  return v13;
}

- (id)encryptWithKey:(id)a3 data:(id)a4
{
  error = 0;
  v4 = SecKeyCreateEncryptedData(a3, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, a4, &error);
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

- (id)base64PublicKeyRepresentationFromSecKeyRef:(id)a3
{
  error = 0;
  v3 = SecKeyCopyExternalRepresentation(a3, &error);
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

- (id)uploadDAPPayload:(id)a3 withEncoder:(id)a4 withKeys:(id)a5 useOHTTP:(BOOL)a6 telemetryAllowed:(BOOL)a7
{
  v8 = a3;
  v9 = +[_DPLog service];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10004F8A0(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = [v8 getCollectionId];
  LOBYTE(v21) = a7;
  [_DPLHBitacoraLogger donateEventToBitacoraForKey:v17 eventPhase:4 uuid:0 succeeded:1 errorCode:400 errorMessage:0 aggregateFunction:0x100000001 count:v21 telemetryAllowed:?];

  v18 = [v8 getCollectionId];

  LOBYTE(v22) = a7;
  [_DPLHBitacoraLogger donateEventToBitacoraForKey:v18 eventPhase:5 uuid:0 succeeded:0 errorCode:504 errorMessage:@"Failed to directly upload payload: v1 payload is unsupported" aggregateFunction:0x100000001 count:v22 telemetryAllowed:?];

  v19 = [_DPDediscoError errorWithCode:203 description:@"Failed to directly upload payload: v1 payload is unsupported"];

  return v19;
}

@end