@interface IDSClientDataGenerator
+ (BOOL)_isKTAsyncEnrollmentDisabledViaServerBag;
+ (BOOL)_isKTAsyncEnrollmentDisabledViaUserDefaults;
+ (id)_createClientDatasForServiceTypes:(id)a3 withAppleIDRegistrationsForServiceTypes:(id)a4 ktRegDataByServiceType:(id)a5 publicIdentityData:(id)a6 publicIdentityError:(id)a7 keyStore:(id)a8 isPresenceCapable:(BOOL)a9 isStewieCapable:(BOOL)a10;
+ (id)clientDatasForRegistrations:(id)a3 registerID:(id)a4 keyStore:(id)a5 keyTransparencyVerifier:(id)a6;
+ (id)serviceTypesFromRegistrations:(id)a3;
+ (id)serviceTypesFromRegistrations:(id)a3 withRegistrationType:(int)a4;
+ (void)_fetchPresenceCapabilityForServiceTypes:(id)a3 withCompletion:(id)a4;
+ (void)_fetchStewieCapabilityForServiceTypes:(id)a3 withCompletion:(id)a4;
@end

@implementation IDSClientDataGenerator

+ (id)serviceTypesFromRegistrations:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 serviceType];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)serviceTypesFromRegistrations:(id)a3 withRegistrationType:(int)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 registrationType] == a4)
        {
          v13 = [v12 serviceType];
          [v6 setObject:v12 forKey:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)clientDatasForRegistrations:(id)a3 registerID:(id)a4 keyStore:(id)a5 keyTransparencyVerifier:(id)a6
{
  v127 = a3;
  v126 = a4;
  v130 = a5;
  v125 = a6;
  v129 = objc_alloc_init(CUTUnsafePromiseSeal);
  v147[0] = 0;
  v147[1] = v147;
  v147[2] = 0x3032000000;
  v147[3] = sub_10000A964;
  v147[4] = sub_10000BC24;
  v148 = objc_alloc_init(NSMutableDictionary);
  v145[0] = 0;
  v145[1] = v145;
  v145[2] = 0x3032000000;
  v145[3] = sub_10000A964;
  v145[4] = sub_10000BC24;
  v146 = objc_alloc_init(NSMutableDictionary);
  v144 = 0;
  v9 = [v130 publicMessageProtectionIdentityDataToRegisterWithError:&v144];
  v128 = v144;
  v10 = [v9 publicLegacyIdentityData];
  LODWORD(a6) = v10 == 0;

  if (!a6)
  {
    v11 = [v130 errorContainerToReport];
    v12 = [IDSNGMKeyLoadingMetric alloc];
    v13 = [v9 publicNGMIdentityData];
    v14 = [v9 publicNGMPrekeyData];
    v124 = [(IDSNGMKeyLoadingMetric *)v12 initWithErrorContainer:v11 missingIdentity:v13 == 0 missingPrekey:v14 == 0];

    v15 = [IDSRTCLogger loggerWithCategory:4000];
    [v15 logMetric:v124];

    v16 = [v9 publicNGMIdentityData];
    if (v16)
    {
      v17 = [v9 publicNGMPrekeyData];
      v18 = v17 == 0;

      if (!v18)
      {
        goto LABEL_62;
      }
    }

    v19 = +[IMRGLog registration];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v107 = [v9 publicNGMIdentityData];
      if (v107)
      {
        v108 = @"YES";
      }

      else
      {
        v108 = @"NO";
      }

      v120 = v108;
      v109 = [v9 publicNGMPrekeyData];
      if (v109)
      {
        v110 = @"YES";
      }

      else
      {
        v110 = @"NO";
      }

      v119 = v110;
      if ([v11 hasRegisteredContainer])
      {
        v111 = @"YES";
      }

      else
      {
        v111 = @"NO";
      }

      v118 = v111;
      if ([v11 hasUnregisteredContainer])
      {
        v112 = @"YES";
      }

      else
      {
        v112 = @"NO";
      }

      v117 = v112;
      if ([v11 hasUnregisteredContainer])
      {
        [v11 unregisteredKeychainError];
      }

      else
      {
        [v11 registeredKeychainError];
      }
      v121 = ;
      if ([v11 hasUnregisteredContainer])
      {
        [v11 unregisteredDeserializationError];
      }

      else
      {
        [v11 registeredKeychainError];
      }
      v113 = ;
      v114 = [v11 generationError];
      v115 = [v11 rollingError];
      v116 = [v11 identityToRegisterError];
      *buf = 138414338;
      v150 = v120;
      v151 = 2112;
      v152 = v119;
      v153 = 2112;
      v154 = v118;
      v155 = 2112;
      v156 = v117;
      v157 = 2112;
      v158 = v121;
      v159 = 2112;
      v160 = v113;
      v161 = 2112;
      v162 = v114;
      v163 = 2112;
      v164 = v115;
      v165 = 2112;
      v166 = v116;
      _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Registering without an NGM key { hasIdentityData: %@, hasPrekeyData: %@, hasRegIdentity: %@, hasUnregIdentity: %@, keychainError: %@, serializationError: %@, generationError: %@, rollingError: %@, dataToRegisterError: %@ }", buf, 0x5Cu);
    }

    if (!+[IDSAutoBugCapture isSupported])
    {
      goto LABEL_62;
    }

    v20 = [v9 publicNGMIdentityData];
    if (v20)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = [v9 publicNGMPrekeyData];
    if (v22)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v24 = [v11 hasRegisteredContainer];
    v25 = [v11 hasUnregisteredContainer];
    if (v24)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    if (v25)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v28 = [NSString stringWithFormat:@"EC Key Loading Failure (iden:%@, pre:%@, reg:%@, unreg:%@)", v21, v23, v26, v27];

    v29 = [v11 registeredKeychainError];
    if (v29)
    {
      v30 = [v11 shouldHaveRegisteredIdentity];
      if (v30)
      {
        v31 = [v11 shouldHaveRegisteredIdentity];
        v32 = [v31 BOOLValue];

        if (!v32)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      v36 = [v11 registeredKeychainError];
      v37 = [v36 domain];

      v38 = [v11 registeredKeychainError];
      v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v38 code]);

      v40 = [v11 registeredKeychainError];
      v41 = [v40 userInfo];

      v42 = [v41 objectForKey:@"IDSKeychainWrapperErrorOSStatus"];
      v43 = [v37 isEqualToString:@"IDSKeychainWrapperErrorDomain"];
      if (v42)
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }

      if (v44 == 1)
      {
        v45 = v42;

        v39 = v45;
      }

      v46 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (regKeychain %@:%ld)", v37, [v39 integerValue]);
      v47 = [v28 stringByAppendingString:v46];

      v28 = v47;
    }

LABEL_32:
    v48 = [v11 registeredDeserializationError];
    if (!v48)
    {
      goto LABEL_38;
    }

    v49 = [v11 shouldHaveRegisteredIdentity];
    if (v49)
    {
      v50 = [v11 shouldHaveRegisteredIdentity];
      v51 = [v50 BOOLValue];

      if (!v51)
      {
LABEL_38:
        v57 = [v11 unregisteredKeychainError];
        if (!v57)
        {
          goto LABEL_49;
        }

        v58 = [v11 shouldHaveUnregisteredIdentity];
        if (v58)
        {
          v59 = [v11 shouldHaveUnregisteredIdentity];
          v60 = [v59 BOOLValue];

          if (!v60)
          {
            goto LABEL_49;
          }
        }

        else
        {
        }

        v61 = [v11 unregisteredKeychainError];
        v62 = [v61 domain];

        v63 = [v11 unregisteredKeychainError];
        v64 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v63 code]);

        v65 = [v11 unregisteredKeychainError];
        v66 = [v65 userInfo];

        v67 = [v66 objectForKey:@"IDSKeychainWrapperErrorOSStatus"];
        v68 = [v62 isEqualToString:@"IDSKeychainWrapperErrorDomain"];
        if (v67)
        {
          v69 = v68;
        }

        else
        {
          v69 = 0;
        }

        if (v69 == 1)
        {
          v70 = v67;

          v64 = v70;
        }

        v71 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (unregKeychain %@:%ld)", v62, [v64 integerValue]);
        v72 = [v28 stringByAppendingString:v71];

        v28 = v72;
LABEL_49:
        v73 = [v11 unregisteredDeserializationError];
        if (v73)
        {
          v74 = [v11 shouldHaveUnregisteredIdentity];
          if (v74)
          {
            v75 = [v11 shouldHaveUnregisteredIdentity];
            v76 = [v75 BOOLValue];

            if (!v76)
            {
              goto LABEL_55;
            }
          }

          else
          {
          }

          v77 = [v11 unregisteredDeserializationError];
          v78 = [v77 domain];
          v79 = [v11 unregisteredDeserializationError];
          v80 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (unregDeserial %@:%ld)", v78, [v79 code]);
          v81 = [v28 stringByAppendingString:v80];

          v28 = v81;
        }

LABEL_55:
        v82 = [v11 generationError];

        if (v82)
        {
          v83 = [v11 generationError];
          v84 = [v83 domain];
          v85 = [v11 generationError];
          v86 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (generate %@:%ld)", v84, [v85 code]);
          v87 = [v28 stringByAppendingString:v86];

          v28 = v87;
        }

        v88 = [v11 rollingError];

        if (v88)
        {
          v89 = [v11 rollingError];
          v90 = [v89 domain];
          v91 = [v11 rollingError];
          v92 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (rolling %@:%ld)", v90, [v91 code]);
          v93 = [v28 stringByAppendingString:v92];

          v28 = v93;
        }

        v94 = [v11 identityToRegisterError];

        if (v94)
        {
          v95 = [v11 identityToRegisterError];
          v96 = [v95 domain];
          v97 = [v11 identityToRegisterError];
          v98 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (toRegister %@:%ld)", v96, [v97 code]);
          v99 = [v28 stringByAppendingString:v98];

          v28 = v99;
        }

        v141[0] = _NSConcreteStackBlock;
        v141[1] = 3221225472;
        v141[2] = sub_1003FF548;
        v141[3] = &unk_100BD88C0;
        v100 = v28;
        v142 = v100;
        v143 = v11;
        [IDSAutoBugCapture triggerCaptureWithEvent:202 context:v100 completion:v141];

LABEL_62:
        v101 = [a1 serviceTypesFromRegistrations:v127];
        v102 = [a1 serviceTypesFromRegistrations:v127 withRegistrationType:1];
        v131[0] = _NSConcreteStackBlock;
        v131[1] = 3221225472;
        v131[2] = sub_1003FF620;
        v131[3] = &unk_100BDB1C0;
        v140 = a1;
        v103 = v101;
        v132 = v103;
        v138 = v145;
        v133 = v130;
        v134 = v9;
        v139 = v147;
        v104 = v102;
        v135 = v104;
        v136 = v128;
        v105 = v129;
        v137 = v105;
        [a1 _fetchKTDataSignatureForServiceTypes:v103 publicIdentityData:v134 registerID:v126 keyStore:v133 withCompletion:v131];
        v35 = [v105 promise];

        goto LABEL_63;
      }
    }

    else
    {
    }

    v52 = [v11 registeredDeserializationError];
    v53 = [v52 domain];
    v54 = [v11 registeredDeserializationError];
    v55 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (regDeserial %@:%ld)", v53, [v54 code]);
    v56 = [v28 stringByAppendingString:v55];

    v28 = v56;
    goto LABEL_38;
  }

  v33 = +[IMRGLog registration];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    sub_10091CAF4(v128, v9, v33);
  }

  v34 = [NSError errorWithDomain:@"IDSClientDataErrorDomain" code:-2000 userInfo:0];
  [v129 failWithError:v34];

  v35 = [v129 promise];
LABEL_63:

  _Block_object_dispose(v145, 8);
  _Block_object_dispose(v147, 8);

  return v35;
}

+ (id)_createClientDatasForServiceTypes:(id)a3 withAppleIDRegistrationsForServiceTypes:(id)a4 ktRegDataByServiceType:(id)a5 publicIdentityData:(id)a6 publicIdentityError:(id)a7 keyStore:(id)a8 isPresenceCapable:(BOOL)a9 isStewieCapable:(BOOL)a10
{
  v15 = a3;
  v266 = a4;
  v280 = a5;
  v16 = a6;
  v149 = a7;
  v279 = a8;
  v17 = objc_alloc_init(NSMutableDictionary);
  v285 = 0u;
  v286 = 0u;
  v287 = 0u;
  v288 = 0u;
  v18 = v15;
  v19 = v16;
  obj = v18;
  v281 = [v18 countByEnumeratingWithState:&v285 objects:v297 count:16];
  if (v281)
  {
    v277 = *v286;
    key = _IDSIdentityClientDataMessageProtectionIdentityKey;
    v269 = _IDSIdentityClientDataMessageProtectionVersionNumberKey;
    v276 = IDSRegistrationPropertyShowPeerErrors;
    v265 = IDSRegistrationPropertyIsC2KEquipment;
    v156 = IDSGameCenterContactsSharingState;
    v157 = IDSGameCenterContactsAssociationID;
    v154 = IDSGameCenterContactsLastUpdatedDate;
    v176 = IDSGameCenterSupportsFriendingViaPush;
    v204 = IDSGameCenterSupportsMessageTransportV2;
    v179 = _IDSIdentityClientDataMessageProtectionNGMDevicePrekeyDataKey;
    v178 = _IDSIdentityClientDataMessageProtectionNGMVersionNumberKey;
    v209 = IDSRegistrationPropertyKeyTransparencyVersion;
    v155 = IDSRegistrationPropertyKeyTransparencyDeviceKeySignature;
    v175 = IDSRegistrationPropertySupportsModernGFT;
    v174 = IDSRegistrationPropertySupportsCo;
    v153 = IDSRegistrationPropertyIsGreenTea;
    v173 = IDSRegistrationPropertySupportsGondola;
    v152 = IDSRegistrationPropertyDoesNotSupportGFTCalls;
    v172 = IDSRegistrationPropertySupportsSelfOneToOneInvites;
    v151 = IDSRegistrationPropertySupportsHiResVideoMessaging;
    v170 = IDSRegistrationPropertySupportsAVLess;
    v171 = IDSRegistrationPropertySupportsLiveTranslation;
    v203 = IDSRegistrationPropertySupportsHEIFEncoding;
    v268 = IDSRegistrationPropertySupportsQTAAudio;
    v202 = IDSRegistrationPropertySupportsAnimojiV2;
    v208 = IDSRegistrationPropertySupportsHDRVideo;
    v267 = IDSRegistrationPropertyPrefersSDRVideo;
    v210 = IDSRegistrationPropertySupportsUWB;
    v211 = IDSRegistrationPropertySupportsActivitySharing;
    *&v20 = 138412546;
    v148 = v20;
    v169 = IDSRegistrationPropertySupportsSSRC;
    v168 = IDSRegistrationPropertySupportsURIlessMembershipUpdates;
    v167 = IDSRegistrationPropertySupportsCalls25;
    v166 = IDSRegistrationPropertySupportsUserDrivenCallActivation;
    v198 = IDSRegistrationPropertySupportsScreenTimeV2;
    v197 = IDSRegistrationPropertySupportsMapsRoutingPathLeg;
    v196 = IDSRegistrationPropertySupportsMapsWGS84ElevationModel;
    v195 = IDSRegistrationPropertySupportsBeaconSharingV2;
    v194 = IDSRegistrationPropertySupportsBeneficiaryInvites;
    v193 = IDSRegistrationPropertySupportsMapsWaypointRouteSharing;
    v273 = IDSRegistrationPropertySupportsCrossPlatformSharing;
    v272 = IDSRegistrationPropertySupportsRecurringPaymentBubbles;
    v165 = IDSRegistrationPropertySupportsSharedExperiencePresence;
    v192 = IDSRegistrationPropertySupportsIncomingFindMyV1;
    v164 = IDSRegistrationPropertySupportsFMDV2;
    v177 = IDSRegistrationPropertySupportsFMFenceV1;
    v191 = IDSRegistrationPropertySupportsSecureLocationsV1;
    v163 = IDSRegistrationPropertySupportsKeySharing;
    v162 = IDSRegistrationPropertySupportsHarmony;
    v161 = IDSRegistrationPropertySupportsManateeForAppleCash;
    v160 = IDSRegistrationPropertySupportsRegionForAppleCash;
    v159 = IDSRegistrationPropertySupportsHomeKitResident;
    v190 = IDSRegistrationPropertySupportsMapsProtocolV5;
    v158 = IDSRegistrationPropertySupportsManateeActivitySharing;
    v207 = IDSRegistrationPropertySupportsZelkova;
    v189 = IDSRegistrationPropertySupportsPeopleRangingV1;
    v188 = IDSRegistrationPropertySupportsBeaconSharingV3;
    v271 = IDSRegistrationPropertySupportsFindMyPluginMessages;
    v187 = IDSRegistrationPropertySupportsRestrictedGuest;
    v186 = IDSRegistrationPropertySupportsAdaptiveTemperatureAutomations;
    v185 = IDSRegistrationPropertySupportsRemoteATVSignIn;
    v184 = IDSRegistrationPropertySupportsLegacyContactInvitesV1;
    v183 = IDSRegistrationPropertySupportsLegacyContactInvitesV2;
    v182 = IDSRegistrationPropertySupportsLegacyContactInvitesV3;
    v264 = IDSRegistrationPropertySupportsInlineAttachments;
    v263 = IDSRegistrationPropertySupportsKeepReceipts;
    v262 = IDSRegistrationPropertySupportsLocationSharing;
    v261 = IDSRegistrationPropertySupportsMediaV2;
    v260 = IDSRegistrationPropertySupportsStickersV1;
    v259 = IDSRegistrationPropertySupportsChatAppsV1;
    v258 = IDSRegistrationPropertySupportsBubbleEditingV1;
    v257 = IDSRegistrationPropertySupportsAcknowledgementsV1;
    v256 = IDSRegistrationPropertySupportsInvisibleInkV1;
    v255 = IDSRegistrationPropertySupportsFullScreenMomentsV1;
    v254 = IDSRegistrationPropertySupportsFullScreenMomentsV2;
    v253 = IDSRegistrationPropertySupportsFullScreenMomentsV3;
    v252 = IDSRegistrationPropertySupportsImpactEffectsV1;
    v251 = IDSRegistrationPropertySupportsUpdateAttachmentsV1;
    v250 = IDSRegistrationPropertySupportsAutoloopVideoV1;
    v249 = IDSRegistrationPropertySupportsPhotosExtensionV1;
    v248 = IDSRegistrationPropertySupportsPhotosExtensionV2;
    v247 = IDSRegistrationPropertySupportsAudioMessagingV2;
    v246 = IDSRegistrationPropertySupportsCertifiedDeliveryV1;
    v245 = IDSRegistrationPropertySupportsOriginalTimestampOrderingV1;
    v244 = IDSRegistrationPropertyOptionallyReceiveTypingIndicator;
    v243 = IDSRegistrationPropertyNicknamesVersion;
    v201 = IDSRegistrationPropertyECVersion;
    v242 = IDSRegistrationPropertySupportsProtobufPayloadDataV2;
    v241 = IDSRegistrationPropertySupportsSyndicationActionsV1;
    v240 = IDSRegistrationPropertySupportsDeliveredQuietlyAndNotifyRecipient;
    v239 = IDSRegistrationPropertySupportsRetractAndEditMessages;
    v238 = IDSRegistrationPropertySupportsEmojiStickers;
    v237 = IDSRegistrationPropertySupportsStickerEditing;
    v236 = IDSRegistrationPropertySupportsHybridGroupsV1;
    v235 = IDSRegistrationPropertySupportsTranscriptBackgrounds;
    v234 = IDSRegistrationPropertySupportsPolls;
    v233 = IDSRegistrationPropertySupportsLQMHQ;
    v232 = IDSRegistrationPropertySupportsGroupAppleCash;
    v206 = IDSRegistrationPropertySupportsConditionalCKVEnforcement;
    v231 = IDSRegistrationPropertySupportsGroupTypingIndicators;
    v230 = IDSRegistrationPropertySupportsAutomaticTranslation;
    v200 = IDSRegistrationPropertySupportsGroupPhotoRefreshVersion;
    v205 = IDSRegistrationPropertySupportsSOSAlerting;
    v229 = IDSRegistrationPropertySupportsPeopleRequestMessages;
    v228 = IDSRegistrationPropertySupportsPeopleRequestMessagesV2;
    v227 = IDSRegistrationPropertySupportsPeopleRequestMessagesV3;
    v226 = IDSRegistrationPropertySupportsAskTo;
    v225 = IDSRegistrationPropertySupportsAskToV2;
    v224 = IDSRegistrationPropertySupportsAskToResponseUI;
    v223 = IDSRegistrationPropertySupportsFamilyInviteMessageBubble;
    v222 = IDSRegistrationPropertySupportsRecoveryContactUpsell;
    v221 = IDSRegistrationPropertySupportsEmojiTapbacks;
    v220 = IDSRegistrationPropertySupportsSendLaterMessages;
    v219 = IDSRegistrationPropertySupportsIntroductions;
    v218 = IDSRegistrationPropertySupportsStickMojiBacks;
    v181 = IDSRegistrationPropertySupportsEmojiImages;
    v217 = IDSRegistrationPropertySupportsHighQualityPhotoFileSizes;
    v180 = IDSRegistrationPropertySupportsStewie;
    v199 = IDSRegistrationPropertySenderKeyMessageVersion;
    v216 = IDSRegistrationPropertySupportsSenderKey;
    v215 = IDSRegistrationPropertySupportsSenderKeySelfCheck;
    v214 = IDSRegistrationPropertySupportsRBMChatBot;
    v213 = IDSRegistrationPropertySupportsQueueOneReadReceipts;
    v212 = IDSRegistrationPropertySupportsQueueOneReadReceiptsV2;
    v275 = IDSRegistrationPropertySupportsLiveDelivery;
    v21 = &uuid_unparse_upper_ptr;
    v22 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
    v23 = &OBJC_METACLASS___IDSStewieDeviceInfo;
    v274 = v16;
    v278 = v17;
    do
    {
      v24 = 0;
      do
      {
        if (*v286 != v277)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v285 + 1) + 8 * v24);
        v26 = objc_alloc_init(NSMutableDictionary);
        v27 = [v21[504] registration];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          sub_10091CB7C(v295, v19, &v296, v27);
        }

        v28 = [v19 publicLegacyIdentityData];
        if (v28)
        {
          CFDictionarySetValue(v26, key, v28);
        }

        v29 = _IDSIdentityVersionNumber();
        if (v29)
        {
          CFDictionarySetValue(v26, v269, v29);
        }

        CFDictionarySetValue(v26, v276, &__kCFBooleanTrue);
        v30 = [v22[372] sharedInstance];
        v31 = [v30 isC2KEquipment];

        if (v31)
        {
          CFDictionarySetValue(v26, v265, &__kCFBooleanTrue);
        }

        if (IDSIsGameCenterRegistrationServiceType())
        {
          v32 = [v266 objectForKey:v25];
          if (v32)
          {
            v33 = +[FTPasswordManager sharedInstance];
            v34 = [v32 userID];
            v35 = [v33 gameCenterPropertiesFromAccountWithUsername:v34];

            v36 = [v21[504] registration];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v290 = v35;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Game center contacts client data: %@", buf, 0xCu);
            }

            if (v35)
            {
              v37 = [v35 contactsAssociationID];
              if (v37)
              {
                CFDictionarySetValue(v26, v157, v37);
              }

              v38 = [v35 contactsSharingState];
              if (v38)
              {
                CFDictionarySetValue(v26, v156, v38);
              }

              v39 = [v35 contactsLastUpdatedDate];

              if (v39)
              {
                v40 = [v35 contactsLastUpdatedDate];
                [v40 timeIntervalSince1970];
                v41 = [NSNumber numberWithDouble:?];

                if (v41)
                {
                  CFDictionarySetValue(v26, v154, v41);
                }
              }
            }

            v42 = +[FTDeviceSupport sharedInstance];
            v43 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v42 supportsFriendingViaPush]);

            if (v43)
            {
              CFDictionarySetValue(v26, v176, v43);
            }

            CFDictionarySetValue(v26, v204, &__kCFBooleanTrue);
          }

          else
          {
            v35 = [v21[504] registration];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [obj objectForKey:v25];
              *buf = 138412290;
              v290 = v44;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Game center registration %@ found. Skipping", buf, 0xCu);
            }
          }

          v22 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
          v23 = &OBJC_METACLASS___IDSStewieDeviceInfo;
        }

        v45 = [v19 publicNGMIdentityData];
        if (v45 && (v46 = v45, [v19 publicNGMPrekeyData], v47 = objc_claimAutoreleasedReturnValue(), v47, v46, v47))
        {
          v48 = [v19 publicNGMPrekeyData];
          if (v48)
          {
            CFDictionarySetValue(v26, v179, v48);
          }

          v49 = [v19 NGMVersion];
          if (v49)
          {
            CFDictionarySetValue(v26, v178, v49);
          }
        }

        else
        {
          v49 = [v21[504] registration];
          if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
          {
            v139 = [v19 publicNGMIdentityData];
            if (v139)
            {
              v140 = @"YES";
            }

            else
            {
              v140 = @"NO";
            }

            v141 = [v274 publicNGMPrekeyData];
            *buf = 138544131;
            if (v141)
            {
              v142 = @"YES";
            }

            else
            {
              v142 = @"NO";
            }

            v23 = &OBJC_METACLASS___IDSStewieDeviceInfo;
            v290 = v149;
            v291 = 2113;
            *v292 = v140;
            v19 = v274;
            *&v292[8] = 2113;
            *&v292[10] = v142;
            v293 = 2113;
            v294 = v274;
            _os_log_fault_impl(&_mh_execute_header, v49, OS_LOG_TYPE_FAULT, "Missing ngm public identity data from [<IDSClientDataRegistrationKeyManager> publicMessageProtectionIdentityDataToRegisterWithError:] -- {error: %{public}@, publicNGMIdentityData: %{private}@, publicNGMPrekeyData: %{private}@, publicIdentityData: %{private}@ }", buf, 0x2Au);

            v22 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
          }
        }

        v50 = [v279 keyTransparencyVersionNumberToRegisterForServiceType:v25];
        if ([v50 unsignedIntValue])
        {
          v51 = v50;
          if (v51)
          {
            CFDictionarySetValue(v26, v209, v51);
          }
        }

        v284 = v50;
        v52 = [obj objectForKeyedSubscript:v25];
        v53 = [&v23[25] sharedInstance];
        v283 = v52;
        v54 = [v52 serviceIdentifier];
        v55 = [v53 serviceWithIdentifier:v54];

        if ([v55 adHocServiceType])
        {
          v56 = [&v23[25] sharedInstance];
          v57 = [v56 primaryServiceForAdhocServiceType:{objc_msgSend(v55, "adHocServiceType")}];

          v55 = v57;
        }

        v58 = [v280 objectForKeyedSubscript:v25];
        v59 = +[IDSFoundationLog KeyTransparency];
        v60 = v59;
        if (!v58)
        {
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v67 = [v55 ktRegistrationDataIndex];
            *buf = v148;
            v290 = v25;
            v291 = 1024;
            *v292 = v67;
            v68 = v60;
            v69 = "No KT Registration Data found for key index. { serviceType: %@, ktKeyIndex: %u }";
            v70 = 18;
            goto LABEL_162;
          }

LABEL_59:

          goto LABEL_60;
        }

        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v61 = [v55 ktRegistrationDataIndex];
          *buf = 138412802;
          v290 = v25;
          v291 = 1024;
          *v292 = v61;
          *&v292[4] = 2112;
          *&v292[6] = v58;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Found KT Registration Data for key index. { serviceType: %@, ktKeyIndex: %u, ktRegData: %@ }", buf, 0x1Cu);
        }

        if ([v55 ktRegistrationDataIndex])
        {
          v62 = [v58 ktPublicAccountKey];
          if (v62 && (v63 = v62, [v58 ktDataSignature], v64 = objc_claimAutoreleasedReturnValue(), v64, v63, v64))
          {
            v65 = [v58 ktDataSignature];
            if (v65)
            {
              CFDictionarySetValue(v26, v155, v65);
            }

            v60 = +[IDSFoundationLog KeyTransparency];
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v66 = [v55 ktRegistrationDataIndex];
              *buf = 138412802;
              v290 = v25;
              v291 = 1024;
              *v292 = v66;
              *&v292[4] = 2112;
              *&v292[6] = v58;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Adding KT data signature to IDS client data. { serviceType: %@, ktKeyIndex: %u, ktRegData: %@ }", buf, 0x1Cu);
            }
          }

          else
          {
            v60 = +[IDSFoundationLog KeyTransparency];
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v144 = [v55 ktRegistrationDataIndex];
              *buf = 138412802;
              v290 = v25;
              v291 = 1024;
              *v292 = v144;
              *&v292[4] = 2112;
              *&v292[6] = v58;
              v68 = v60;
              v69 = "KT Registration data missing public account key or data signature. { serviceType: %@, ktKeyIndex: %u, ktRegData: %@ }";
              v70 = 28;
LABEL_162:
              _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, v69, buf, v70);
            }
          }

          goto LABEL_59;
        }

LABEL_60:
        if (IDSIsiMessageRegistrationServiceType())
        {
          CFDictionarySetValue(v26, v264, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v263, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v262, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v261, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v260, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v259, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v258, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v257, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v256, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v255, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v254, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v253, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v252, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v251, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v250, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v249, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v248, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v247, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v247, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v246, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v245, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v244, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v243, &off_100C3BF98);
          v71 = _IDSECVersion();
          if (v71)
          {
            CFDictionarySetValue(v26, v201, v71);
          }

          CFDictionarySetValue(v26, v242, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v241, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v240, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v239, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v273, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v238, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v237, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v236, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v272, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v235, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v234, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v233, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v232, &__kCFBooleanTrue);
          v72 = _os_feature_enabled_impl();
          v73 = &off_100C3BFB0;
          if ((v72 & 1) != 0 || (v74 = _os_feature_enabled_impl(), v73 = &off_100C3BFC8, v74))
          {
            CFDictionarySetValue(v26, v206, v73);
          }

          CFDictionarySetValue(v26, v231, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v230, &__kCFBooleanTrue);
          v75 = _IDSGroupPhotoRefreshVersionNumber();
          if (v75)
          {
            CFDictionarySetValue(v26, v200, v75);
          }

          CFDictionarySetValue(v26, v271, &__kCFBooleanTrue);
          v76 = [v22[372] sharedInstance];
          if ([v76 deviceType] == 2)
          {

            goto LABEL_103;
          }

          v103 = [v22[372] sharedInstance];
          v104 = [v103 deviceType];

          v105 = v104 == 6;
          v22 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
          if (v105)
          {
LABEL_103:
            CFDictionarySetValue(v26, v205, &__kCFBooleanTrue);
          }

          CFDictionarySetValue(v26, v229, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v228, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v227, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v226, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v225, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v224, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v223, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v222, &__kCFBooleanTrue);
          v106 = [v22[372] sharedInstance];
          v107 = [v106 supportsHEIFEncoding];

          if (v107)
          {
            CFDictionarySetValue(v26, v203, &__kCFBooleanTrue);
          }

          CFDictionarySetValue(v26, v268, &__kCFBooleanTrue);
          v108 = [v22[372] sharedInstance];
          v109 = [v108 supportsAnimojiV2];

          if (v109)
          {
            CFDictionarySetValue(v26, v202, &__kCFBooleanTrue);
          }

          v110 = [v22[372] sharedInstance];
          v111 = [v110 supportsZelkova];

          if (v111)
          {
            CFDictionarySetValue(v26, v207, &__kCFBooleanTrue);
          }

          v112 = [v22[372] sharedInstance];
          v113 = [v112 supportsHDRdecoding];

          v114 = [NSNumber numberWithBool:v113];
          if (v114)
          {
            CFDictionarySetValue(v26, v208, v114);
          }

          CFDictionarySetValue(v26, v267, &__kCFBooleanFalse);
          v115 = [v22[372] sharedInstance];
          v116 = [v115 supportsUWB];

          if (v116)
          {
            CFDictionarySetValue(v26, v210, &__kCFBooleanTrue);
          }

          v117 = [v22[372] sharedInstance];
          if ([v117 deviceType] == 2)
          {

            goto LABEL_135;
          }

          v132 = [v22[372] sharedInstance];
          v133 = [v132 deviceType];

          v105 = v133 == 6;
          v22 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
          if (v105)
          {
LABEL_135:
            CFDictionarySetValue(v26, v211, &__kCFBooleanTrue);
          }

          CFDictionarySetValue(v26, v221, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v220, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v219, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v218, &__kCFBooleanTrue);
          v134 = [v22[372] sharedInstance];
          v135 = [v134 supportsEmojiImages];

          if (v135)
          {
            CFDictionarySetValue(v26, v181, &__kCFBooleanTrue);
          }

          CFDictionarySetValue(v26, v217, &__kCFBooleanTrue);
          if (a10)
          {
            CFDictionarySetValue(v26, v180, &__kCFBooleanTrue);
          }

          v136 = _IDSSenderKeyMessageVersionNumber();
          if (v136)
          {
            CFDictionarySetValue(v26, v199, v136);
          }

          v98 = v216;
          v99 = v215;
          v100 = v214;
          v101 = v213;
          v102 = v212;
          goto LABEL_143;
        }

        if (IDSIsMultiplex1RegistrationServiceType())
        {
          if (_os_feature_enabled_impl())
          {
            CFDictionarySetValue(v26, v166, &__kCFBooleanTrue);
          }

          CFDictionarySetValue(v26, v198, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v197, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v196, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v195, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v194, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v193, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v273, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v272, &__kCFBooleanTrue);
          if (a9)
          {
            CFDictionarySetValue(v26, v165, &__kCFBooleanTrue);
          }

          CFDictionarySetValue(v26, v192, &__kCFBooleanTrue);
          v77 = [v22[372] sharedInstance];
          v78 = [v77 supportsFMDV2];

          if (v78)
          {
            CFDictionarySetValue(v26, v164, &__kCFBooleanTrue);
          }

          v79 = [v22[372] sharedInstance];
          if ([v79 deviceType] == 2)
          {
            goto LABEL_82;
          }

          v80 = [v22[372] sharedInstance];
          if ([v80 deviceType] == 6)
          {
            goto LABEL_81;
          }

          v81 = [v22[372] sharedInstance];
          if ([v81 deviceType] == 4)
          {

LABEL_81:
LABEL_82:

LABEL_83:
            CFDictionarySetValue(v26, v177, &__kCFBooleanTrue);
          }

          else
          {
            v143 = [v22[372] sharedInstance];
            v150 = [v143 deviceType];

            v22 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
            if (v150 == 3)
            {
              goto LABEL_83;
            }
          }

          CFDictionarySetValue(v26, v191, &__kCFBooleanTrue);
          v82 = [v22[372] sharedInstance];
          v83 = [v82 supportsKeySharing];

          if (v83)
          {
            CFDictionarySetValue(v26, v163, &__kCFBooleanTrue);
          }

          v84 = [v22[372] sharedInstance];
          v85 = [v84 supportsHarmony];

          if (v85)
          {
            CFDictionarySetValue(v26, v162, &__kCFBooleanTrue);
          }

          v86 = [v22[372] sharedInstance];
          v87 = [v86 supportsManateeForAppleCash];

          if (v87)
          {
            CFDictionarySetValue(v26, v161, &__kCFBooleanTrue);
          }

          v88 = [v22[372] sharedInstance];
          v89 = [v88 supportsRegionForAppleCash];

          if (v89)
          {
            CFDictionarySetValue(v26, v160, &__kCFBooleanTrue);
          }

          v90 = [v22[372] sharedInstance];
          v91 = [v90 supportsUWB];

          if (v91)
          {
            CFDictionarySetValue(v26, v210, &__kCFBooleanTrue);
          }

          v92 = [v22[372] sharedInstance];
          v93 = [v92 supportsHomeKitResident];

          if (v93)
          {
            CFDictionarySetValue(v26, v159, &__kCFBooleanTrue);
          }

          CFDictionarySetValue(v26, v190, &__kCFBooleanTrue);
          v94 = [v22[372] sharedInstance];
          v95 = [v94 supportsManateeActivitySharing];

          if (v95)
          {
            CFDictionarySetValue(v26, v158, &__kCFBooleanTrue);
          }

          v96 = [v22[372] sharedInstance];
          v97 = [v96 supportsZelkova];

          if (v97)
          {
            CFDictionarySetValue(v26, v207, &__kCFBooleanTrue);
          }

          CFDictionarySetValue(v26, v189, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v188, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v271, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v187, &__kCFBooleanTrue);
          v99 = v185;
          v98 = v186;
          v101 = v183;
          v100 = v184;
          v102 = v182;
LABEL_143:
          CFDictionarySetValue(v26, v98, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v99, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v100, &__kCFBooleanTrue);
          CFDictionarySetValue(v26, v101, &__kCFBooleanTrue);
          v19 = v274;
          v22 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
LABEL_144:
          CFDictionarySetValue(v26, v102, &__kCFBooleanTrue);
          goto LABEL_145;
        }

        if (!IDSIsAnyFaceTimeRelatedRegistrationServiceType())
        {
          goto LABEL_145;
        }

        CFDictionarySetValue(v26, v175, &__kCFBooleanTrue);
        CFDictionarySetValue(v26, v174, &__kCFBooleanTrue);
        v118 = [v22[372] sharedInstance];
        v119 = [v118 isGreenTea];

        if (v119)
        {
          CFDictionarySetValue(v26, v153, &__kCFBooleanTrue);
        }

        CFDictionarySetValue(v26, v173, &__kCFBooleanTrue);
        v120 = [v22[372] sharedInstance];
        v121 = [v120 supportsVenice];

        if ((v121 & 1) == 0)
        {
          CFDictionarySetValue(v26, v152, &__kCFBooleanTrue);
        }

        CFDictionarySetValue(v26, v172, &__kCFBooleanTrue);
        if (_os_feature_enabled_impl())
        {
          CFDictionarySetValue(v26, v151, &__kCFBooleanTrue);
        }

        CFDictionarySetValue(v26, v171, &__kCFBooleanTrue);
        CFDictionarySetValue(v26, v170, &__kCFBooleanTrue);
        v122 = [v22[372] sharedInstance];
        v123 = [v122 supportsHEIFEncoding];

        if (v123)
        {
          CFDictionarySetValue(v26, v203, &__kCFBooleanTrue);
        }

        CFDictionarySetValue(v26, v268, &__kCFBooleanTrue);
        v124 = [v22[372] sharedInstance];
        v125 = [v124 supportsAnimojiV2];

        if (v125)
        {
          CFDictionarySetValue(v26, v202, &__kCFBooleanTrue);
        }

        v126 = [v22[372] sharedInstance];
        v127 = [v126 supportsHDRdecoding];

        v128 = [NSNumber numberWithBool:v127];
        if (v128)
        {
          CFDictionarySetValue(v26, v208, v128);
        }

        CFDictionarySetValue(v26, v267, &__kCFBooleanFalse);
        v129 = [v22[372] sharedInstance];
        v130 = [v129 supportsUWB];

        if (v130)
        {
          CFDictionarySetValue(v26, v210, &__kCFBooleanTrue);
        }

        v131 = [v22[372] sharedInstance];
        if ([v131 deviceType] == 2)
        {

LABEL_149:
          CFDictionarySetValue(v26, v211, &__kCFBooleanTrue);
          goto LABEL_150;
        }

        v137 = [v22[372] sharedInstance];
        v138 = [v137 deviceType];

        v105 = v138 == 6;
        v22 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
        if (v105)
        {
          goto LABEL_149;
        }

LABEL_150:
        CFDictionarySetValue(v26, v169, &__kCFBooleanTrue);
        CFDictionarySetValue(v26, v168, &__kCFBooleanTrue);
        v102 = v167;
        if (_os_feature_enabled_impl())
        {
          goto LABEL_144;
        }

LABEL_145:
        CFDictionarySetValue(v26, v275, &__kCFBooleanTrue);
        v17 = v278;
        [v278 setObject:v26 forKeyedSubscript:v25];

        v24 = v24 + 1;
        v21 = &uuid_unparse_upper_ptr;
        v23 = &OBJC_METACLASS___IDSStewieDeviceInfo;
      }

      while (v281 != v24);
      v145 = [obj countByEnumeratingWithState:&v285 objects:v297 count:16];
      v281 = v145;
    }

    while (v145);
  }

  v146 = v17;
  return v17;
}

+ (BOOL)_isKTAsyncEnrollmentDisabledViaUserDefaults
{
  v2 = +[IMUserDefaults isKTAsyncEnrollmentDisabled];
  if (v2)
  {

    LOBYTE(v2) = CUTIsInternalInstall();
  }

  return v2;
}

+ (BOOL)_isKTAsyncEnrollmentDisabledViaServerBag
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"kt-async-enrollment-disabled"];

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

+ (void)_fetchStewieCapabilityForServiceTypes:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v9 |= IDSIsiMessageRegistrationServiceType();
      }

      v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);

    if (v9)
    {
      *buf = 0;
      v25 = buf;
      v26 = 0x2020000000;
      v27 = 0;
      im_primary_queue();
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100401D10;
      v12 = v21[3] = &unk_100BDB238;
      v22 = v12;
      v23 = buf;
      v13 = objc_retainBlock(v21);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100401F5C;
      v17[3] = &unk_100BDB288;
      v14 = v12;
      v18 = v14;
      v19 = v6;
      v20 = buf;
      v15 = objc_retainBlock(v17);
      dispatch_time(0, 10000000000);
      im_dispatch_async_with_timeout();

      _Block_object_dispose(buf, 8);
      goto LABEL_14;
    }
  }

  else
  {
  }

  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not checking stewie capability because we're not registering madrid", buf, 2u);
  }

  (*(v6 + 2))(v6, 0);
LABEL_14:
}

+ (void)_fetchPresenceCapabilityForServiceTypes:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = IMWeakLinkClass();
  if (!v7)
  {
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "StatusKit framework not available on this platform", buf, 2u);
    }

    goto LABEL_17;
  }

  v8 = v7;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v10)
  {

LABEL_15:
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not checking presence capability because we're not registering multiplex", buf, 2u);
    }

LABEL_17:

    v6[2](v6, 0);
    goto LABEL_18;
  }

  v11 = 0;
  v12 = *v32;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v32 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v11 |= IDSIsMultiplex1RegistrationServiceType();
    }

    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v10);

  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x2020000000;
  v30 = 0;
  im_primary_queue();
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1004023DC;
  v14 = v23[3] = &unk_100BDB320;
  v25 = buf;
  v26 = v8;
  v24 = v14;
  v15 = objc_retainBlock(v23);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100402604;
  v19[3] = &unk_100BDB288;
  v16 = v14;
  v20 = v16;
  v21 = v6;
  v22 = buf;
  v17 = objc_retainBlock(v19);
  dispatch_time(0, 10000000000);
  im_dispatch_async_with_timeout();

  _Block_object_dispose(buf, 8);
LABEL_18:
}

@end