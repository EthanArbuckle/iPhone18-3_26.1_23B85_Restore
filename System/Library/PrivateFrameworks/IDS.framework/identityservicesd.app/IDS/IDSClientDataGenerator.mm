@interface IDSClientDataGenerator
+ (BOOL)_isKTAsyncEnrollmentDisabledViaServerBag;
+ (BOOL)_isKTAsyncEnrollmentDisabledViaUserDefaults;
+ (id)_createClientDatasForServiceTypes:(id)types withAppleIDRegistrationsForServiceTypes:(id)serviceTypes ktRegDataByServiceType:(id)type publicIdentityData:(id)data publicIdentityError:(id)error keyStore:(id)store isPresenceCapable:(BOOL)capable isStewieCapable:(BOOL)self0;
+ (id)clientDatasForRegistrations:(id)registrations registerID:(id)d keyStore:(id)store keyTransparencyVerifier:(id)verifier;
+ (id)serviceTypesFromRegistrations:(id)registrations;
+ (id)serviceTypesFromRegistrations:(id)registrations withRegistrationType:(int)type;
+ (void)_fetchPresenceCapabilityForServiceTypes:(id)types withCompletion:(id)completion;
+ (void)_fetchStewieCapabilityForServiceTypes:(id)types withCompletion:(id)completion;
@end

@implementation IDSClientDataGenerator

+ (id)serviceTypesFromRegistrations:(id)registrations
{
  registrationsCopy = registrations;
  v4 = objc_alloc_init(NSMutableDictionary);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = registrationsCopy;
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
        serviceType = [v10 serviceType];
        [v4 setObject:v10 forKey:serviceType];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)serviceTypesFromRegistrations:(id)registrations withRegistrationType:(int)type
{
  registrationsCopy = registrations;
  v6 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = registrationsCopy;
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
        if ([v12 registrationType] == type)
        {
          serviceType = [v12 serviceType];
          [v6 setObject:v12 forKey:serviceType];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)clientDatasForRegistrations:(id)registrations registerID:(id)d keyStore:(id)store keyTransparencyVerifier:(id)verifier
{
  registrationsCopy = registrations;
  dCopy = d;
  storeCopy = store;
  verifierCopy = verifier;
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
  v9 = [storeCopy publicMessageProtectionIdentityDataToRegisterWithError:&v144];
  v128 = v144;
  publicLegacyIdentityData = [v9 publicLegacyIdentityData];
  LODWORD(verifier) = publicLegacyIdentityData == 0;

  if (!verifier)
  {
    errorContainerToReport = [storeCopy errorContainerToReport];
    v12 = [IDSNGMKeyLoadingMetric alloc];
    publicNGMIdentityData = [v9 publicNGMIdentityData];
    publicNGMPrekeyData = [v9 publicNGMPrekeyData];
    v124 = [(IDSNGMKeyLoadingMetric *)v12 initWithErrorContainer:errorContainerToReport missingIdentity:publicNGMIdentityData == 0 missingPrekey:publicNGMPrekeyData == 0];

    v15 = [IDSRTCLogger loggerWithCategory:4000];
    [v15 logMetric:v124];

    publicNGMIdentityData2 = [v9 publicNGMIdentityData];
    if (publicNGMIdentityData2)
    {
      publicNGMPrekeyData2 = [v9 publicNGMPrekeyData];
      v18 = publicNGMPrekeyData2 == 0;

      if (!v18)
      {
        goto LABEL_62;
      }
    }

    v19 = +[IMRGLog registration];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      publicNGMIdentityData3 = [v9 publicNGMIdentityData];
      if (publicNGMIdentityData3)
      {
        v108 = @"YES";
      }

      else
      {
        v108 = @"NO";
      }

      v120 = v108;
      publicNGMPrekeyData3 = [v9 publicNGMPrekeyData];
      if (publicNGMPrekeyData3)
      {
        v110 = @"YES";
      }

      else
      {
        v110 = @"NO";
      }

      v119 = v110;
      if ([errorContainerToReport hasRegisteredContainer])
      {
        v111 = @"YES";
      }

      else
      {
        v111 = @"NO";
      }

      v118 = v111;
      if ([errorContainerToReport hasUnregisteredContainer])
      {
        v112 = @"YES";
      }

      else
      {
        v112 = @"NO";
      }

      v117 = v112;
      if ([errorContainerToReport hasUnregisteredContainer])
      {
        [errorContainerToReport unregisteredKeychainError];
      }

      else
      {
        [errorContainerToReport registeredKeychainError];
      }
      v121 = ;
      if ([errorContainerToReport hasUnregisteredContainer])
      {
        [errorContainerToReport unregisteredDeserializationError];
      }

      else
      {
        [errorContainerToReport registeredKeychainError];
      }
      v113 = ;
      generationError = [errorContainerToReport generationError];
      rollingError = [errorContainerToReport rollingError];
      identityToRegisterError = [errorContainerToReport identityToRegisterError];
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
      v162 = generationError;
      v163 = 2112;
      v164 = rollingError;
      v165 = 2112;
      v166 = identityToRegisterError;
      _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Registering without an NGM key { hasIdentityData: %@, hasPrekeyData: %@, hasRegIdentity: %@, hasUnregIdentity: %@, keychainError: %@, serializationError: %@, generationError: %@, rollingError: %@, dataToRegisterError: %@ }", buf, 0x5Cu);
    }

    if (!+[IDSAutoBugCapture isSupported])
    {
      goto LABEL_62;
    }

    publicNGMIdentityData4 = [v9 publicNGMIdentityData];
    if (publicNGMIdentityData4)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    publicNGMPrekeyData4 = [v9 publicNGMPrekeyData];
    if (publicNGMPrekeyData4)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    hasRegisteredContainer = [errorContainerToReport hasRegisteredContainer];
    hasUnregisteredContainer = [errorContainerToReport hasUnregisteredContainer];
    if (hasRegisteredContainer)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    if (hasUnregisteredContainer)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v28 = [NSString stringWithFormat:@"EC Key Loading Failure (iden:%@, pre:%@, reg:%@, unreg:%@)", v21, v23, v26, v27];

    registeredKeychainError = [errorContainerToReport registeredKeychainError];
    if (registeredKeychainError)
    {
      shouldHaveRegisteredIdentity = [errorContainerToReport shouldHaveRegisteredIdentity];
      if (shouldHaveRegisteredIdentity)
      {
        shouldHaveRegisteredIdentity2 = [errorContainerToReport shouldHaveRegisteredIdentity];
        bOOLValue = [shouldHaveRegisteredIdentity2 BOOLValue];

        if (!bOOLValue)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      registeredKeychainError2 = [errorContainerToReport registeredKeychainError];
      domain = [registeredKeychainError2 domain];

      registeredKeychainError3 = [errorContainerToReport registeredKeychainError];
      v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [registeredKeychainError3 code]);

      registeredKeychainError4 = [errorContainerToReport registeredKeychainError];
      userInfo = [registeredKeychainError4 userInfo];

      v42 = [userInfo objectForKey:@"IDSKeychainWrapperErrorOSStatus"];
      v43 = [domain isEqualToString:@"IDSKeychainWrapperErrorDomain"];
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

      v46 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (regKeychain %@:%ld)", domain, [v39 integerValue]);
      v47 = [v28 stringByAppendingString:v46];

      v28 = v47;
    }

LABEL_32:
    registeredDeserializationError = [errorContainerToReport registeredDeserializationError];
    if (!registeredDeserializationError)
    {
      goto LABEL_38;
    }

    shouldHaveRegisteredIdentity3 = [errorContainerToReport shouldHaveRegisteredIdentity];
    if (shouldHaveRegisteredIdentity3)
    {
      shouldHaveRegisteredIdentity4 = [errorContainerToReport shouldHaveRegisteredIdentity];
      bOOLValue2 = [shouldHaveRegisteredIdentity4 BOOLValue];

      if (!bOOLValue2)
      {
LABEL_38:
        unregisteredKeychainError = [errorContainerToReport unregisteredKeychainError];
        if (!unregisteredKeychainError)
        {
          goto LABEL_49;
        }

        shouldHaveUnregisteredIdentity = [errorContainerToReport shouldHaveUnregisteredIdentity];
        if (shouldHaveUnregisteredIdentity)
        {
          shouldHaveUnregisteredIdentity2 = [errorContainerToReport shouldHaveUnregisteredIdentity];
          bOOLValue3 = [shouldHaveUnregisteredIdentity2 BOOLValue];

          if (!bOOLValue3)
          {
            goto LABEL_49;
          }
        }

        else
        {
        }

        unregisteredKeychainError2 = [errorContainerToReport unregisteredKeychainError];
        domain2 = [unregisteredKeychainError2 domain];

        unregisteredKeychainError3 = [errorContainerToReport unregisteredKeychainError];
        v64 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [unregisteredKeychainError3 code]);

        unregisteredKeychainError4 = [errorContainerToReport unregisteredKeychainError];
        userInfo2 = [unregisteredKeychainError4 userInfo];

        v67 = [userInfo2 objectForKey:@"IDSKeychainWrapperErrorOSStatus"];
        v68 = [domain2 isEqualToString:@"IDSKeychainWrapperErrorDomain"];
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

        v71 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (unregKeychain %@:%ld)", domain2, [v64 integerValue]);
        v72 = [v28 stringByAppendingString:v71];

        v28 = v72;
LABEL_49:
        unregisteredDeserializationError = [errorContainerToReport unregisteredDeserializationError];
        if (unregisteredDeserializationError)
        {
          shouldHaveUnregisteredIdentity3 = [errorContainerToReport shouldHaveUnregisteredIdentity];
          if (shouldHaveUnregisteredIdentity3)
          {
            shouldHaveUnregisteredIdentity4 = [errorContainerToReport shouldHaveUnregisteredIdentity];
            bOOLValue4 = [shouldHaveUnregisteredIdentity4 BOOLValue];

            if (!bOOLValue4)
            {
              goto LABEL_55;
            }
          }

          else
          {
          }

          unregisteredDeserializationError2 = [errorContainerToReport unregisteredDeserializationError];
          domain3 = [unregisteredDeserializationError2 domain];
          unregisteredDeserializationError3 = [errorContainerToReport unregisteredDeserializationError];
          v80 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (unregDeserial %@:%ld)", domain3, [unregisteredDeserializationError3 code]);
          v81 = [v28 stringByAppendingString:v80];

          v28 = v81;
        }

LABEL_55:
        generationError2 = [errorContainerToReport generationError];

        if (generationError2)
        {
          generationError3 = [errorContainerToReport generationError];
          domain4 = [generationError3 domain];
          generationError4 = [errorContainerToReport generationError];
          v86 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (generate %@:%ld)", domain4, [generationError4 code]);
          v87 = [v28 stringByAppendingString:v86];

          v28 = v87;
        }

        rollingError2 = [errorContainerToReport rollingError];

        if (rollingError2)
        {
          rollingError3 = [errorContainerToReport rollingError];
          domain5 = [rollingError3 domain];
          rollingError4 = [errorContainerToReport rollingError];
          v92 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (rolling %@:%ld)", domain5, [rollingError4 code]);
          v93 = [v28 stringByAppendingString:v92];

          v28 = v93;
        }

        identityToRegisterError2 = [errorContainerToReport identityToRegisterError];

        if (identityToRegisterError2)
        {
          identityToRegisterError3 = [errorContainerToReport identityToRegisterError];
          domain6 = [identityToRegisterError3 domain];
          identityToRegisterError4 = [errorContainerToReport identityToRegisterError];
          v98 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (toRegister %@:%ld)", domain6, [identityToRegisterError4 code]);
          v99 = [v28 stringByAppendingString:v98];

          v28 = v99;
        }

        v141[0] = _NSConcreteStackBlock;
        v141[1] = 3221225472;
        v141[2] = sub_1003FF548;
        v141[3] = &unk_100BD88C0;
        v100 = v28;
        v142 = v100;
        v143 = errorContainerToReport;
        [IDSAutoBugCapture triggerCaptureWithEvent:202 context:v100 completion:v141];

LABEL_62:
        v101 = [self serviceTypesFromRegistrations:registrationsCopy];
        v102 = [self serviceTypesFromRegistrations:registrationsCopy withRegistrationType:1];
        v131[0] = _NSConcreteStackBlock;
        v131[1] = 3221225472;
        v131[2] = sub_1003FF620;
        v131[3] = &unk_100BDB1C0;
        selfCopy = self;
        v103 = v101;
        v132 = v103;
        v138 = v145;
        v133 = storeCopy;
        v134 = v9;
        v139 = v147;
        v104 = v102;
        v135 = v104;
        v136 = v128;
        v105 = v129;
        v137 = v105;
        [self _fetchKTDataSignatureForServiceTypes:v103 publicIdentityData:v134 registerID:dCopy keyStore:v133 withCompletion:v131];
        promise = [v105 promise];

        goto LABEL_63;
      }
    }

    else
    {
    }

    registeredDeserializationError2 = [errorContainerToReport registeredDeserializationError];
    domain7 = [registeredDeserializationError2 domain];
    registeredDeserializationError3 = [errorContainerToReport registeredDeserializationError];
    v55 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (regDeserial %@:%ld)", domain7, [registeredDeserializationError3 code]);
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

  promise = [v129 promise];
LABEL_63:

  _Block_object_dispose(v145, 8);
  _Block_object_dispose(v147, 8);

  return promise;
}

+ (id)_createClientDatasForServiceTypes:(id)types withAppleIDRegistrationsForServiceTypes:(id)serviceTypes ktRegDataByServiceType:(id)type publicIdentityData:(id)data publicIdentityError:(id)error keyStore:(id)store isPresenceCapable:(BOOL)capable isStewieCapable:(BOOL)self0
{
  typesCopy = types;
  serviceTypesCopy = serviceTypes;
  typeCopy = type;
  dataCopy = data;
  errorCopy = error;
  storeCopy = store;
  v17 = objc_alloc_init(NSMutableDictionary);
  v285 = 0u;
  v286 = 0u;
  v287 = 0u;
  v288 = 0u;
  v18 = typesCopy;
  v19 = dataCopy;
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
    v274 = dataCopy;
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
        registration = [v21[504] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
        {
          sub_10091CB7C(v295, v19, &v296, registration);
        }

        publicLegacyIdentityData = [v19 publicLegacyIdentityData];
        if (publicLegacyIdentityData)
        {
          CFDictionarySetValue(v26, key, publicLegacyIdentityData);
        }

        v29 = _IDSIdentityVersionNumber();
        if (v29)
        {
          CFDictionarySetValue(v26, v269, v29);
        }

        CFDictionarySetValue(v26, v276, &__kCFBooleanTrue);
        sharedInstance = [v22[372] sharedInstance];
        isC2KEquipment = [sharedInstance isC2KEquipment];

        if (isC2KEquipment)
        {
          CFDictionarySetValue(v26, v265, &__kCFBooleanTrue);
        }

        if (IDSIsGameCenterRegistrationServiceType())
        {
          v32 = [serviceTypesCopy objectForKey:v25];
          if (v32)
          {
            v33 = +[FTPasswordManager sharedInstance];
            userID = [v32 userID];
            registration3 = [v33 gameCenterPropertiesFromAccountWithUsername:userID];

            registration2 = [v21[504] registration];
            if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v290 = registration3;
              _os_log_impl(&_mh_execute_header, registration2, OS_LOG_TYPE_DEFAULT, "Game center contacts client data: %@", buf, 0xCu);
            }

            if (registration3)
            {
              contactsAssociationID = [registration3 contactsAssociationID];
              if (contactsAssociationID)
              {
                CFDictionarySetValue(v26, v157, contactsAssociationID);
              }

              contactsSharingState = [registration3 contactsSharingState];
              if (contactsSharingState)
              {
                CFDictionarySetValue(v26, v156, contactsSharingState);
              }

              contactsLastUpdatedDate = [registration3 contactsLastUpdatedDate];

              if (contactsLastUpdatedDate)
              {
                contactsLastUpdatedDate2 = [registration3 contactsLastUpdatedDate];
                [contactsLastUpdatedDate2 timeIntervalSince1970];
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
            registration3 = [v21[504] registration];
            if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [obj objectForKey:v25];
              *buf = 138412290;
              v290 = v44;
              _os_log_impl(&_mh_execute_header, registration3, OS_LOG_TYPE_DEFAULT, "Game center registration %@ found. Skipping", buf, 0xCu);
            }
          }

          v22 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
          v23 = &OBJC_METACLASS___IDSStewieDeviceInfo;
        }

        publicNGMIdentityData = [v19 publicNGMIdentityData];
        if (publicNGMIdentityData && (v46 = publicNGMIdentityData, [v19 publicNGMPrekeyData], v47 = objc_claimAutoreleasedReturnValue(), v47, v46, v47))
        {
          publicNGMPrekeyData = [v19 publicNGMPrekeyData];
          if (publicNGMPrekeyData)
          {
            CFDictionarySetValue(v26, v179, publicNGMPrekeyData);
          }

          nGMVersion = [v19 NGMVersion];
          if (nGMVersion)
          {
            CFDictionarySetValue(v26, v178, nGMVersion);
          }
        }

        else
        {
          nGMVersion = [v21[504] registration];
          if (os_log_type_enabled(nGMVersion, OS_LOG_TYPE_FAULT))
          {
            publicNGMIdentityData2 = [v19 publicNGMIdentityData];
            if (publicNGMIdentityData2)
            {
              v140 = @"YES";
            }

            else
            {
              v140 = @"NO";
            }

            publicNGMPrekeyData2 = [v274 publicNGMPrekeyData];
            *buf = 138544131;
            if (publicNGMPrekeyData2)
            {
              v142 = @"YES";
            }

            else
            {
              v142 = @"NO";
            }

            v23 = &OBJC_METACLASS___IDSStewieDeviceInfo;
            v290 = errorCopy;
            v291 = 2113;
            *v292 = v140;
            v19 = v274;
            *&v292[8] = 2113;
            *&v292[10] = v142;
            v293 = 2113;
            v294 = v274;
            _os_log_fault_impl(&_mh_execute_header, nGMVersion, OS_LOG_TYPE_FAULT, "Missing ngm public identity data from [<IDSClientDataRegistrationKeyManager> publicMessageProtectionIdentityDataToRegisterWithError:] -- {error: %{public}@, publicNGMIdentityData: %{private}@, publicNGMPrekeyData: %{private}@, publicIdentityData: %{private}@ }", buf, 0x2Au);

            v22 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
          }
        }

        v50 = [storeCopy keyTransparencyVersionNumberToRegisterForServiceType:v25];
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
        sharedInstance2 = [&v23[25] sharedInstance];
        v283 = v52;
        serviceIdentifier = [v52 serviceIdentifier];
        v55 = [sharedInstance2 serviceWithIdentifier:serviceIdentifier];

        if ([v55 adHocServiceType])
        {
          sharedInstance3 = [&v23[25] sharedInstance];
          v57 = [sharedInstance3 primaryServiceForAdhocServiceType:{objc_msgSend(v55, "adHocServiceType")}];

          v55 = v57;
        }

        v58 = [typeCopy objectForKeyedSubscript:v25];
        v59 = +[IDSFoundationLog KeyTransparency];
        v60 = v59;
        if (!v58)
        {
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            ktRegistrationDataIndex = [v55 ktRegistrationDataIndex];
            *buf = v148;
            v290 = v25;
            v291 = 1024;
            *v292 = ktRegistrationDataIndex;
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
          ktRegistrationDataIndex2 = [v55 ktRegistrationDataIndex];
          *buf = 138412802;
          v290 = v25;
          v291 = 1024;
          *v292 = ktRegistrationDataIndex2;
          *&v292[4] = 2112;
          *&v292[6] = v58;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Found KT Registration Data for key index. { serviceType: %@, ktKeyIndex: %u, ktRegData: %@ }", buf, 0x1Cu);
        }

        if ([v55 ktRegistrationDataIndex])
        {
          ktPublicAccountKey = [v58 ktPublicAccountKey];
          if (ktPublicAccountKey && (v63 = ktPublicAccountKey, [v58 ktDataSignature], v64 = objc_claimAutoreleasedReturnValue(), v64, v63, v64))
          {
            ktDataSignature = [v58 ktDataSignature];
            if (ktDataSignature)
            {
              CFDictionarySetValue(v26, v155, ktDataSignature);
            }

            v60 = +[IDSFoundationLog KeyTransparency];
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              ktRegistrationDataIndex3 = [v55 ktRegistrationDataIndex];
              *buf = 138412802;
              v290 = v25;
              v291 = 1024;
              *v292 = ktRegistrationDataIndex3;
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
              ktRegistrationDataIndex4 = [v55 ktRegistrationDataIndex];
              *buf = 138412802;
              v290 = v25;
              v291 = 1024;
              *v292 = ktRegistrationDataIndex4;
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
          sharedInstance4 = [v22[372] sharedInstance];
          if ([sharedInstance4 deviceType] == 2)
          {

            goto LABEL_103;
          }

          sharedInstance5 = [v22[372] sharedInstance];
          deviceType = [sharedInstance5 deviceType];

          v105 = deviceType == 6;
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
          sharedInstance6 = [v22[372] sharedInstance];
          supportsHEIFEncoding = [sharedInstance6 supportsHEIFEncoding];

          if (supportsHEIFEncoding)
          {
            CFDictionarySetValue(v26, v203, &__kCFBooleanTrue);
          }

          CFDictionarySetValue(v26, v268, &__kCFBooleanTrue);
          sharedInstance7 = [v22[372] sharedInstance];
          supportsAnimojiV2 = [sharedInstance7 supportsAnimojiV2];

          if (supportsAnimojiV2)
          {
            CFDictionarySetValue(v26, v202, &__kCFBooleanTrue);
          }

          sharedInstance8 = [v22[372] sharedInstance];
          supportsZelkova = [sharedInstance8 supportsZelkova];

          if (supportsZelkova)
          {
            CFDictionarySetValue(v26, v207, &__kCFBooleanTrue);
          }

          sharedInstance9 = [v22[372] sharedInstance];
          supportsHDRdecoding = [sharedInstance9 supportsHDRdecoding];

          v114 = [NSNumber numberWithBool:supportsHDRdecoding];
          if (v114)
          {
            CFDictionarySetValue(v26, v208, v114);
          }

          CFDictionarySetValue(v26, v267, &__kCFBooleanFalse);
          sharedInstance10 = [v22[372] sharedInstance];
          supportsUWB = [sharedInstance10 supportsUWB];

          if (supportsUWB)
          {
            CFDictionarySetValue(v26, v210, &__kCFBooleanTrue);
          }

          sharedInstance11 = [v22[372] sharedInstance];
          if ([sharedInstance11 deviceType] == 2)
          {

            goto LABEL_135;
          }

          sharedInstance12 = [v22[372] sharedInstance];
          deviceType2 = [sharedInstance12 deviceType];

          v105 = deviceType2 == 6;
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
          sharedInstance13 = [v22[372] sharedInstance];
          supportsEmojiImages = [sharedInstance13 supportsEmojiImages];

          if (supportsEmojiImages)
          {
            CFDictionarySetValue(v26, v181, &__kCFBooleanTrue);
          }

          CFDictionarySetValue(v26, v217, &__kCFBooleanTrue);
          if (stewieCapable)
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
          if (capable)
          {
            CFDictionarySetValue(v26, v165, &__kCFBooleanTrue);
          }

          CFDictionarySetValue(v26, v192, &__kCFBooleanTrue);
          sharedInstance14 = [v22[372] sharedInstance];
          supportsFMDV2 = [sharedInstance14 supportsFMDV2];

          if (supportsFMDV2)
          {
            CFDictionarySetValue(v26, v164, &__kCFBooleanTrue);
          }

          sharedInstance15 = [v22[372] sharedInstance];
          if ([sharedInstance15 deviceType] == 2)
          {
            goto LABEL_82;
          }

          sharedInstance16 = [v22[372] sharedInstance];
          if ([sharedInstance16 deviceType] == 6)
          {
            goto LABEL_81;
          }

          sharedInstance17 = [v22[372] sharedInstance];
          if ([sharedInstance17 deviceType] == 4)
          {

LABEL_81:
LABEL_82:

LABEL_83:
            CFDictionarySetValue(v26, v177, &__kCFBooleanTrue);
          }

          else
          {
            sharedInstance18 = [v22[372] sharedInstance];
            deviceType3 = [sharedInstance18 deviceType];

            v22 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
            if (deviceType3 == 3)
            {
              goto LABEL_83;
            }
          }

          CFDictionarySetValue(v26, v191, &__kCFBooleanTrue);
          sharedInstance19 = [v22[372] sharedInstance];
          supportsKeySharing = [sharedInstance19 supportsKeySharing];

          if (supportsKeySharing)
          {
            CFDictionarySetValue(v26, v163, &__kCFBooleanTrue);
          }

          sharedInstance20 = [v22[372] sharedInstance];
          supportsHarmony = [sharedInstance20 supportsHarmony];

          if (supportsHarmony)
          {
            CFDictionarySetValue(v26, v162, &__kCFBooleanTrue);
          }

          sharedInstance21 = [v22[372] sharedInstance];
          supportsManateeForAppleCash = [sharedInstance21 supportsManateeForAppleCash];

          if (supportsManateeForAppleCash)
          {
            CFDictionarySetValue(v26, v161, &__kCFBooleanTrue);
          }

          sharedInstance22 = [v22[372] sharedInstance];
          supportsRegionForAppleCash = [sharedInstance22 supportsRegionForAppleCash];

          if (supportsRegionForAppleCash)
          {
            CFDictionarySetValue(v26, v160, &__kCFBooleanTrue);
          }

          sharedInstance23 = [v22[372] sharedInstance];
          supportsUWB2 = [sharedInstance23 supportsUWB];

          if (supportsUWB2)
          {
            CFDictionarySetValue(v26, v210, &__kCFBooleanTrue);
          }

          sharedInstance24 = [v22[372] sharedInstance];
          supportsHomeKitResident = [sharedInstance24 supportsHomeKitResident];

          if (supportsHomeKitResident)
          {
            CFDictionarySetValue(v26, v159, &__kCFBooleanTrue);
          }

          CFDictionarySetValue(v26, v190, &__kCFBooleanTrue);
          sharedInstance25 = [v22[372] sharedInstance];
          supportsManateeActivitySharing = [sharedInstance25 supportsManateeActivitySharing];

          if (supportsManateeActivitySharing)
          {
            CFDictionarySetValue(v26, v158, &__kCFBooleanTrue);
          }

          sharedInstance26 = [v22[372] sharedInstance];
          supportsZelkova2 = [sharedInstance26 supportsZelkova];

          if (supportsZelkova2)
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
        sharedInstance27 = [v22[372] sharedInstance];
        isGreenTea = [sharedInstance27 isGreenTea];

        if (isGreenTea)
        {
          CFDictionarySetValue(v26, v153, &__kCFBooleanTrue);
        }

        CFDictionarySetValue(v26, v173, &__kCFBooleanTrue);
        sharedInstance28 = [v22[372] sharedInstance];
        supportsVenice = [sharedInstance28 supportsVenice];

        if ((supportsVenice & 1) == 0)
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
        sharedInstance29 = [v22[372] sharedInstance];
        supportsHEIFEncoding2 = [sharedInstance29 supportsHEIFEncoding];

        if (supportsHEIFEncoding2)
        {
          CFDictionarySetValue(v26, v203, &__kCFBooleanTrue);
        }

        CFDictionarySetValue(v26, v268, &__kCFBooleanTrue);
        sharedInstance30 = [v22[372] sharedInstance];
        supportsAnimojiV22 = [sharedInstance30 supportsAnimojiV2];

        if (supportsAnimojiV22)
        {
          CFDictionarySetValue(v26, v202, &__kCFBooleanTrue);
        }

        sharedInstance31 = [v22[372] sharedInstance];
        supportsHDRdecoding2 = [sharedInstance31 supportsHDRdecoding];

        v128 = [NSNumber numberWithBool:supportsHDRdecoding2];
        if (v128)
        {
          CFDictionarySetValue(v26, v208, v128);
        }

        CFDictionarySetValue(v26, v267, &__kCFBooleanFalse);
        sharedInstance32 = [v22[372] sharedInstance];
        supportsUWB3 = [sharedInstance32 supportsUWB];

        if (supportsUWB3)
        {
          CFDictionarySetValue(v26, v210, &__kCFBooleanTrue);
        }

        sharedInstance33 = [v22[372] sharedInstance];
        if ([sharedInstance33 deviceType] == 2)
        {

LABEL_149:
          CFDictionarySetValue(v26, v211, &__kCFBooleanTrue);
          goto LABEL_150;
        }

        sharedInstance34 = [v22[372] sharedInstance];
        deviceType4 = [sharedInstance34 deviceType];

        v105 = deviceType4 == 6;
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
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)_fetchStewieCapabilityForServiceTypes:(id)types withCompletion:(id)completion
{
  typesCopy = types;
  completionCopy = completion;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = typesCopy;
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
      v19 = completionCopy;
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

  (*(completionCopy + 2))(completionCopy, 0);
LABEL_14:
}

+ (void)_fetchPresenceCapabilityForServiceTypes:(id)types withCompletion:(id)completion
{
  typesCopy = types;
  completionCopy = completion;
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
  v9 = typesCopy;
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

    completionCopy[2](completionCopy, 0);
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
  v21 = completionCopy;
  v22 = buf;
  v17 = objc_retainBlock(v19);
  dispatch_time(0, 10000000000);
  im_dispatch_async_with_timeout();

  _Block_object_dispose(buf, 8);
LABEL_18:
}

@end