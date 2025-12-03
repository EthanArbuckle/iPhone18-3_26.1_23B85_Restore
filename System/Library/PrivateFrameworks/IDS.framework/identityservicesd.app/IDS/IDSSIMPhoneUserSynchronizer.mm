@interface IDSSIMPhoneUserSynchronizer
- (BOOL)_isInDualPhoneIdentityModeForSims:(id)sims;
- (IDSSIMPhoneUserSynchronizer)initWithUserStore:(id)store queue:(id)queue lockdownManager:(id)manager systemMonitor:(id)monitor CTAdapter:(id)adapter userConfiguration:(id)configuration registrationController:(id)controller pairingManager:(id)self0 phoneUserRegistry:(id)self1;
- (id)updatedUserDescriptionSetForRealm:(int64_t)realm currentUserDescriptions:(id)descriptions;
- (void)_checkRegistrationStatus;
- (void)_setupForCurrentSubscriptionState;
- (void)dealloc;
- (void)didUpdatePairedDevice:(id)device;
- (void)forceRemoveUser:(id)user silently:(BOOL)silently;
- (void)userStore:(id)store didRemoveUser:(id)user withAuthenticationCertificate:(id)certificate;
- (void)verifyState;
@end

@implementation IDSSIMPhoneUserSynchronizer

- (IDSSIMPhoneUserSynchronizer)initWithUserStore:(id)store queue:(id)queue lockdownManager:(id)manager systemMonitor:(id)monitor CTAdapter:(id)adapter userConfiguration:(id)configuration registrationController:(id)controller pairingManager:(id)self0 phoneUserRegistry:(id)self1
{
  storeCopy = store;
  managerCopy = manager;
  monitorCopy = monitor;
  adapterCopy = adapter;
  configurationCopy = configuration;
  controllerCopy = controller;
  pairingManagerCopy = pairingManager;
  registryCopy = registry;
  v31.receiver = self;
  v31.super_class = IDSSIMPhoneUserSynchronizer;
  v18 = [(IDSSIMPhoneUserSynchronizer *)&v31 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_userStore, store);
    objc_storeStrong(&v19->_lockdownManager, manager);
    objc_storeStrong(&v19->_systemMonitor, monitor);
    objc_storeStrong(&v19->_userConfiguration, configuration);
    objc_storeStrong(&v19->_CTAdapter, adapter);
    objc_storeStrong(&v19->_registrationController, controller);
    objc_storeStrong(&v19->_pairingManager, pairingManager);
    v20 = objc_alloc_init(NSMutableDictionary);
    cachedIsSameSIM = v19->_cachedIsSameSIM;
    v19->_cachedIsSameSIM = v20;

    objc_storeStrong(&v19->_phoneUserRegistry, registry);
    [(IDSCTAdapter *)v19->_CTAdapter addListener:v19];
    [(IDSPairingManager *)v19->_pairingManager addDelegate:v19];
    [(IDSUserStore *)v19->_userStore addActionListener:v19];
    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v19 selector:"selectedSubscriptionLabelDidChange:" name:FTUserConfigurationSelectedSubscriptionLabelDidChange object:0];
  }

  return v19;
}

- (void)dealloc
{
  [(IDSUserStore *)self->_userStore removeActionListener:self];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:FTUserConfigurationSelectedSubscriptionLabelDidChange object:0];

  v4.receiver = self;
  v4.super_class = IDSSIMPhoneUserSynchronizer;
  [(IDSSIMPhoneUserSynchronizer *)&v4 dealloc];
}

- (void)verifyState
{
  v3 = +[IMRGLog sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initial state check for Phone numbers", v4, 2u);
  }

  [(IDSSIMPhoneUserSynchronizer *)self _setupForCurrentSubscriptionState];
}

- (BOOL)_isInDualPhoneIdentityModeForSims:(id)sims
{
  v4 = [sims __imArrayByApplyingBlock:&stru_100BDF2C8];
  v5 = [v4 count];

  v6 = +[IMUserDefaults sharedDefaults];
  v7 = [v6 appValueForKey:@"isInDualSIMIdentifier"];

  v8 = +[IDSCurrentDevice sharedInstance];
  deviceIdentifier = [v8 deviceIdentifier];

  if ([(FTUserConfiguration *)self->_userConfiguration isDeviceInDualPhoneIdentityMode]&& ([(__CFString *)v7 isEqualToString:deviceIdentifier]& 1) == 0)
  {
    [(FTUserConfiguration *)self->_userConfiguration setIsDeviceInDualPhoneIdentityMode:0];
    v10 = +[IMRGLog sms];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = v7;
      v24 = 2112;
      v25 = deviceIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device identifier differs disabling dual mode {persistedDeviceIdentifier: %@, currentDeviceIdentifier: %@}", &v22, 0x16u);
    }
  }

  if (([(FTUserConfiguration *)self->_userConfiguration isDeviceInDualPhoneIdentityMode]& 1) == 0 && v5 >= 2)
  {
    [(FTUserConfiguration *)self->_userConfiguration setIsDeviceInDualPhoneIdentityMode:1];
    v11 = +[IMUserDefaults sharedDefaults];
    [v11 setAppValue:deviceIdentifier forKey:@"isInDualSIMIdentifier"];
  }

  dualSIMCapabilityEnabled = [(IDSCTAdapter *)self->_CTAdapter dualSIMCapabilityEnabled];
  isDeviceInDualPhoneIdentityMode = [(FTUserConfiguration *)self->_userConfiguration isDeviceInDualPhoneIdentityMode];
  v14 = isDeviceInDualPhoneIdentityMode;
  if (v5 > 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = dualSIMCapabilityEnabled;
  }

  v16 = v15 & isDeviceInDualPhoneIdentityMode;
  v17 = +[IMRGLog registration];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    if (v16)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    if (v5 <= 1)
    {
      v20 = @"NO";
    }

    else
    {
      v20 = @"YES";
    }

    v22 = 138412802;
    v23 = v19;
    v24 = 2112;
    v25 = v20;
    if (v14)
    {
      v18 = @"YES";
    }

    v26 = 2112;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Determined if device is in dual phone identity mode { isDualIdentity: %@, multipleInsertedSims: %@, isDeviceInDualPhoneIdentityMode: %@ }", &v22, 0x20u);
  }

  return v16;
}

- (void)forceRemoveUser:(id)user silently:(BOOL)silently
{
  userCopy = user;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100927D6C(userCopy, v5);
  }
}

- (id)updatedUserDescriptionSetForRealm:(int64_t)realm currentUserDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  registrationController = [(IDSSIMPhoneUserSynchronizer *)self registrationController];
  systemSupportsPhoneNumberRegistration = [registrationController systemSupportsPhoneNumberRegistration];

  if ((systemSupportsPhoneNumberRegistration & 1) == 0)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v225 = descriptionsCopy;
      v9 = "Finished synchronizing Sims to users - this device does not support identification {currentUserDescriptions: %@, updatedUsers: {(\n)}}";
      v10 = v8;
      v11 = 12;
      goto LABEL_7;
    }

LABEL_8:

    v12 = +[NSSet set];
    goto LABEL_9;
  }

  if (realm)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Finished synnchronizing Sims to users - invalid realm provided.";
      v10 = v8;
      v11 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  selectedPhoneNumberRegistrationSubscriptionLabels = [(FTUserConfiguration *)self->_userConfiguration selectedPhoneNumberRegistrationSubscriptionLabels];
  v14 = [(IDSUserDescription *)descriptionsCopy mutableCopy];
  CTAdapter = self->_CTAdapter;
  v223 = 0;
  v16 = [(IDSCTAdapter *)CTAdapter currentSIMsWithError:&v223];
  v157 = v223;
  cachedIsSameSIM = [(IDSSIMPhoneUserSynchronizer *)self cachedIsSameSIM];
  [cachedIsSameSIM removeAllObjects];

  v18 = [(IDSSIMPhoneUserSynchronizer *)self _isInDualPhoneIdentityModeForSims:v16];
  isDeviceInManualPhoneSelectionMode = [(FTUserConfiguration *)self->_userConfiguration isDeviceInManualPhoneSelectionMode];
  v19 = 0;
  if (v18)
  {
    userStore = [(IDSSIMPhoneUserSynchronizer *)self userStore];
    v21 = [userStore usersWithRealm:2];
    v19 = [v21 __imArrayByApplyingBlock:&stru_100BDF308];
  }

  v22 = [v16 __imArrayByApplyingBlock:&stru_100BDF348];
  v162 = v19;
  v165 = v22;
  v180 = v14;
  selfCopy = self;
  if (v19)
  {
    v23 = v22;
    __imSetFromArray = [v19 __imSetFromArray];
    __imSetFromArray2 = [v23 __imSetFromArray];
    v26 = [__imSetFromArray intersectsSet:__imSetFromArray2];
  }

  else
  {
    v26 = 0;
  }

  v155 = v18;
  v27 = ((selectedPhoneNumberRegistrationSubscriptionLabels != 0) | v26) & (v18 | isDeviceInManualPhoneSelectionMode);
  v28 = objc_alloc_init(NSMutableArray);
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  obj = v16;
  v185 = v28;
  v189 = [obj countByEnumeratingWithState:&v219 objects:v244 count:16];
  if (v189)
  {
    v186 = *v220;
    v177 = ((selectedPhoneNumberRegistrationSubscriptionLabels != 0) | v26) & (v18 | isDeviceInManualPhoneSelectionMode);
    do
    {
      for (i = 0; i != v189; i = i + 1)
      {
        if (*v220 != v186)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v219 + 1) + 8 * i);
        sIMIdentifier = [v30 SIMIdentifier];
        slot = [v30 slot];
        if (sIMIdentifier)
        {
          v33 = slot;
          if ((v27 & 1) == 0 || ([selectedPhoneNumberRegistrationSubscriptionLabels containsObject:sIMIdentifier] & 1) != 0 || objc_msgSend(v162, "containsObject:", sIMIdentifier))
          {
            v182 = v33;
            v192 = i;
            v217 = 0u;
            v218 = 0u;
            v215 = 0u;
            v216 = 0u;
            v34 = descriptionsCopy;
            v35 = [(IDSPhoneUser *)v34 countByEnumeratingWithState:&v215 objects:v243 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v216;
LABEL_28:
              v38 = 0;
              while (1)
              {
                if (*v216 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v215 + 1) + 8 * v38);
                user = [v39 user];
                uniqueIdentifier = [user uniqueIdentifier];
                v42 = [uniqueIdentifier isEqualToString:sIMIdentifier];

                if (v42)
                {
                  break;
                }

                if (v36 == ++v38)
                {
                  v36 = [(IDSPhoneUser *)v34 countByEnumeratingWithState:&v215 objects:v243 count:16];
                  if (v36)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_34;
                }
              }

              v28 = v185;
              [v185 addObject:sIMIdentifier];
              if ([user realm])
              {
                v27 = v177;
                i = v192;
                goto LABEL_65;
              }

              v50 = user;
              v171 = selfCopy->_CTAdapter;
              phoneNumber = [(IDSUserDescription *)v50 phoneNumber];
              phoneBookNumber = [(IDSUserDescription *)v50 phoneBookNumber];
              uniqueIdentifier2 = [(IDSUserDescription *)v50 uniqueIdentifier];
              v214 = 0;
              v53 = [(IDSCTAdapter *)v171 isPNRNumber:phoneNumber andPhoneBookNumber:phoneBookNumber differentEnoughFromSIMIdentifier:uniqueIdentifier2 toReregisterWithNewNumber:&v214];
              v163 = v214;

              v160 = v53;
              v54 = [NSNumber numberWithInt:v53 ^ 1];
              cachedIsSameSIM2 = [(IDSSIMPhoneUserSynchronizer *)selfCopy cachedIsSameSIM];
              uniqueIdentifier3 = [(IDSUserDescription *)v50 uniqueIdentifier];
              [cachedIsSameSIM2 setObject:v54 forKeyedSubscript:uniqueIdentifier3];

              mobileCountryCode = [v30 mobileCountryCode];
              v174 = v50;
              if ([mobileCountryCode length])
              {
                [v30 mobileCountryCode];
              }

              else
              {
                [(IDSUserDescription *)v50 countryCode];
              }
              v172 = ;

              mobileNetworkCode = [v30 mobileNetworkCode];
              v59 = v163;
              if ([mobileNetworkCode length])
              {
                [v30 mobileNetworkCode];
              }

              else
              {
                [(IDSUserDescription *)v174 networkCode];
              }
              v170 = ;

              if (v160)
              {
                v60 = [IDSPhoneUser alloc];
                isDefaultVoiceSIM = [v30 isDefaultVoiceSIM];
                mobileCountryCode2 = [v30 mobileCountryCode];
                mobileNetworkCode2 = [v30 mobileNetworkCode];
                v64 = [(IDSPhoneUser *)v60 initWithLabelID:sIMIdentifier phoneBookNumber:v163 isDefaultUser:isDefaultVoiceSIM countryCode:mobileCountryCode2 networkCode:mobileNetworkCode2];

                v65 = [IDSUserProperties alloc];
                v66 = [(IDSUserProperties *)v65 propsByUpdatingHasActiveSIM:v182 != 2];

                v67 = +[IMRGLog registration];
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v225 = sIMIdentifier;
                  v226 = 2112;
                  v227 = v174;
                  v228 = 2112;
                  v229 = v64;
                  _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Recognized phone number change without labelID change {labelID: %@, currentUser: %@, newUser: %@}", buf, 0x20u);
                }

                v68 = [[IDSUserDescription alloc] initWithUser:v64 properties:v66];
                [(IDSUserDescription *)v180 removeObject:v39];
                [(IDSUserDescription *)v180 addObject:v68];
                v69 = +[IDSRegistrationReasonTracker sharedInstance];
                uniqueIdentifier4 = [(IDSPhoneUser *)v64 uniqueIdentifier];
                [v69 setPNRReason:4 forUserUniqueIdentifier:uniqueIdentifier4];

                i = v192;
                v49 = v174;
LABEL_63:

                user = v49;
                v27 = v177;
                goto LABEL_64;
              }

              v49 = v174;
              isDefaultUser = [(IDSUserDescription *)v174 isDefaultUser];
              if (isDefaultUser == [v30 isDefaultVoiceSIM])
              {
                countryCode = [(IDSUserDescription *)v174 countryCode];
                if ([countryCode isEqualToString:v172])
                {
                  networkCode = [(IDSUserDescription *)v174 networkCode];
                  v74 = [networkCode isEqualToString:v170];

                  if (v74)
                  {
                    v75 = +[IMRGLog registration];
                    i = v192;
                    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "SIM appears to be the same, but is now selected.", buf, 2u);
                    }

                    [(IDSUserDescription *)v180 removeObject:v39];
                    v76 = [IDSUserProperties alloc];
                    v64 = [(IDSUserProperties *)v76 propsByUpdatingHasActiveSIM:v182 != 2];

                    v66 = [[IDSUserDescription alloc] initWithUser:v174 properties:v64];
                    [(IDSUserDescription *)v180 addObject:v66];
                    goto LABEL_63;
                  }
                }

                else
                {
                }
              }

              v64 = -[IDSUserDescription phoneUserWithUpdatedDefaultUser:countryCode:networkCode:](v174, "phoneUserWithUpdatedDefaultUser:countryCode:networkCode:", [v30 isDefaultVoiceSIM], v172, v170);
              v77 = [IDSUserProperties alloc];
              v66 = [(IDSUserProperties *)v77 propsByUpdatingHasActiveSIM:v182 != 2];

              v78 = +[IMRGLog registration];
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                if ([(IDSUserDescription *)v174 isDefaultUser])
                {
                  v79 = @"YES";
                }

                else
                {
                  v79 = @"NO";
                }

                v156 = v79;
                if ([(IDSPhoneUser *)v64 isDefaultUser])
                {
                  v80 = @"YES";
                }

                else
                {
                  v80 = @"NO";
                }

                countryCode2 = [(IDSUserDescription *)v174 countryCode];
                countryCode3 = [(IDSPhoneUser *)v64 countryCode];
                [(IDSUserDescription *)v174 networkCode];
                v82 = v183 = v66;
                networkCode2 = [(IDSPhoneUser *)v64 networkCode];
                *buf = 138413570;
                v225 = v156;
                v226 = 2112;
                v227 = v80;
                v28 = v185;
                v228 = 2112;
                v229 = countryCode2;
                v230 = 2112;
                v231 = countryCode3;
                v84 = countryCode3;
                v232 = 2112;
                v233 = v82;
                v234 = 2112;
                v235 = networkCode2;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Recognized SIM property change {currentUser.defaultUser: %@, newUser.defaultUser: %@, currentUser.mcc: %@, newUser.mcc: %@, currentUser.mnc: %@, newUser.mnc: %@}", buf, 0x3Eu);

                v66 = v183;
                v49 = v174;

                v59 = v163;
              }

              v85 = [[IDSUserDescription alloc] initWithUser:v64 properties:v66];
              [(IDSUserDescription *)v180 removeObject:v39];
              [(IDSUserDescription *)v180 addObject:v85];

              i = v192;
              goto LABEL_63;
            }

LABEL_34:

            v43 = [IDSPhoneUser alloc];
            phoneNumber2 = [v30 phoneNumber];
            isDefaultVoiceSIM2 = [v30 isDefaultVoiceSIM];
            mobileCountryCode3 = [v30 mobileCountryCode];
            mobileNetworkCode3 = [v30 mobileNetworkCode];
            v34 = [(IDSPhoneUser *)v43 initWithLabelID:sIMIdentifier phoneBookNumber:phoneNumber2 isDefaultUser:isDefaultVoiceSIM2 countryCode:mobileCountryCode3 networkCode:mobileNetworkCode3];

            v48 = [IDSUserProperties alloc];
            user = [(IDSUserProperties *)v48 propsByUpdatingHasActiveSIM:v182 != 2];

            v49 = [[IDSUserDescription alloc] initWithUser:v34 properties:user];
            [(IDSUserDescription *)v180 addObject:v49];
            v28 = v185;
            v27 = v177;
            i = v192;
LABEL_64:

LABEL_65:
            if ((v27 & 1) == 0)
            {

              goto LABEL_70;
            }
          }
        }
      }

      v189 = [obj countByEnumeratingWithState:&v219 objects:v244 count:16];
    }

    while (v189);
  }

LABEL_70:

  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v193 = descriptionsCopy;
  v86 = [(IDSUserDescription *)v193 countByEnumeratingWithState:&v210 objects:v242 count:16];
  v87 = v180;
  if (v86)
  {
    v88 = v86;
    v89 = *v211;
    do
    {
      for (j = 0; j != v88; j = j + 1)
      {
        if (*v211 != v89)
        {
          objc_enumerationMutation(v193);
        }

        v91 = *(*(&v210 + 1) + 8 * j);
        user2 = [v91 user];
        uniqueIdentifier5 = [user2 uniqueIdentifier];
        v94 = [v28 containsObject:uniqueIdentifier5];

        if ((v94 & 1) == 0)
        {
          [(IDSUserDescription *)v180 removeObject:v91];
        }
      }

      v88 = [(IDSUserDescription *)v193 countByEnumeratingWithState:&v210 objects:v242 count:16];
    }

    while (v88);
  }

  v95 = [(IDSUserDescription *)v180 __imSetByApplyingBlock:&stru_100BDF388];
  v96 = objc_autoreleasePoolPush();
  v164 = v95;
  if (v27)
  {
    v97 = 0;
    v98 = selectedPhoneNumberRegistrationSubscriptionLabels;
  }

  else
  {
    v98 = selectedPhoneNumberRegistrationSubscriptionLabels;
    __imSetFromArray3 = [selectedPhoneNumberRegistrationSubscriptionLabels __imSetFromArray];
    v97 = [v95 isSubsetOfSet:__imSetFromArray3] ^ 1;
  }

  v100 = v165;
  if (v98)
  {
    v101 = 0;
  }

  else
  {
    __imSetFromArray4 = [v162 __imSetFromArray];
    v101 = [__imSetFromArray4 isEqualToSet:v164];
  }

  if ((v97 | v101))
  {
    if ([selectedPhoneNumberRegistrationSubscriptionLabels count] < 2)
    {
      v104 = +[NSMutableSet set];
    }

    else
    {
      __imSetFromArray5 = [selectedPhoneNumberRegistrationSubscriptionLabels __imSetFromArray];
      v104 = [__imSetFromArray5 mutableCopy];
    }

    [v104 unionSet:v164];
    userConfiguration = selfCopy->_userConfiguration;
    allObjects = [v104 allObjects];
    [(FTUserConfiguration *)userConfiguration silentlySetSelectedPhoneNumberRegistrationSubscriptionLabels:allObjects];
  }

  objc_autoreleasePoolPop(v96);
  if ([(IDSUserDescription *)v180 count]< 3)
  {
    v184 = v180;
  }

  else
  {
    v107 = [(IDSCTAdapter *)selfCopy->_CTAdapter PNRRegistrationPriorityListWithError:0];
    v184 = +[NSMutableSet set];
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v108 = v107;
    v187 = [(__CFString *)v108 countByEnumeratingWithState:&v206 objects:v241 count:16];
    if (v187)
    {
      v175 = *v207;
      v178 = v108;
LABEL_93:
      v109 = 0;
      while (1)
      {
        if (*v207 != v175)
        {
          objc_enumerationMutation(v108);
        }

        v190 = v109;
        v110 = *(*(&v206 + 1) + 8 * v109);
        v202 = 0u;
        v203 = 0u;
        v204 = 0u;
        v205 = 0u;
        v111 = v87;
        v112 = [(IDSUserDescription *)v111 countByEnumeratingWithState:&v202 objects:v240 count:16];
        if (v112)
        {
          v113 = v112;
          v114 = *v203;
          while (2)
          {
            for (k = 0; k != v113; k = k + 1)
            {
              if (*v203 != v114)
              {
                objc_enumerationMutation(v111);
              }

              v116 = *(*(&v202 + 1) + 8 * k);
              user3 = [v116 user];
              uniqueIdentifier6 = [user3 uniqueIdentifier];
              sIMIdentifier2 = [v110 SIMIdentifier];
              v120 = [uniqueIdentifier6 isEqualToString:sIMIdentifier2];

              if (v120)
              {
                [(__CFString *)v184 addObject:v116];
                goto LABEL_106;
              }
            }

            v113 = [(IDSUserDescription *)v111 countByEnumeratingWithState:&v202 objects:v240 count:16];
            if (v113)
            {
              continue;
            }

            break;
          }
        }

LABEL_106:

        v100 = v165;
        v28 = v185;
        v108 = v178;
        v87 = v180;
        if ([(__CFString *)v184 count]== 2)
        {
          break;
        }

        v109 = v190 + 1;
        if ((v190 + 1) == v187)
        {
          v187 = [(__CFString *)v178 countByEnumeratingWithState:&v206 objects:v241 count:16];
          if (v187)
          {
            goto LABEL_93;
          }

          break;
        }
      }
    }

    v121 = +[IMRGLog registration];
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v225 = v87;
      v226 = 2112;
      v227 = v184;
      v228 = 2112;
      v229 = v108;
      _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "Finished prioritizing users {updatedUsers: %@, prioritizedUsers: %@, registrationPriority: %@", buf, 0x20u);
    }
  }

  if (_os_feature_enabled_impl())
  {
    v122 = [(__CFString *)v184 __imSetByApplyingBlock:&stru_100BDF3A8];
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    v181 = obj;
    v123 = [v181 countByEnumeratingWithState:&v198 objects:v239 count:16];
    if (v123)
    {
      v124 = v123;
      v125 = *v199;
      v173 = *v199;
      v176 = v122;
      do
      {
        v126 = 0;
        v179 = v124;
        do
        {
          if (*v199 != v125)
          {
            objc_enumerationMutation(v181);
          }

          v127 = *(*(&v198 + 1) + 8 * v126);
          sIMIdentifier3 = [v127 SIMIdentifier];
          v129 = [v122 containsObject:sIMIdentifier3];

          if ((v129 & 1) == 0)
          {
            v191 = v126;
            slot2 = [v127 slot];
            v194 = 0u;
            v195 = 0u;
            v196 = 0u;
            v197 = 0u;
            v130 = v193;
            v131 = [(IDSUserDescription *)v130 countByEnumeratingWithState:&v194 objects:v238 count:16];
            if (v131)
            {
              v132 = v131;
              v133 = *v195;
LABEL_122:
              v134 = 0;
              while (1)
              {
                if (*v195 != v133)
                {
                  objc_enumerationMutation(v130);
                }

                v135 = *(*(&v194 + 1) + 8 * v134);
                user4 = [v135 user];
                uniqueIdentifier7 = [user4 uniqueIdentifier];
                sIMIdentifier4 = [v127 SIMIdentifier];
                v139 = [uniqueIdentifier7 isEqualToString:sIMIdentifier4];

                if (v139)
                {
                  break;
                }

                if (v132 == ++v134)
                {
                  v132 = [(IDSUserDescription *)v130 countByEnumeratingWithState:&v194 objects:v238 count:16];
                  if (v132)
                  {
                    goto LABEL_122;
                  }

                  goto LABEL_128;
                }
              }

              user5 = [v135 user];

              if (user5)
              {
                goto LABEL_131;
              }
            }

            else
            {
LABEL_128:
            }

            v141 = [IDSPhoneUser alloc];
            sIMIdentifier5 = [v127 SIMIdentifier];
            phoneNumber3 = [v127 phoneNumber];
            isDefaultVoiceSIM3 = [v127 isDefaultVoiceSIM];
            mobileCountryCode4 = [v127 mobileCountryCode];
            mobileNetworkCode4 = [v127 mobileNetworkCode];
            user5 = [(IDSPhoneUser *)v141 initWithLabelID:sIMIdentifier5 phoneBookNumber:phoneNumber3 isDefaultUser:isDefaultVoiceSIM3 countryCode:mobileCountryCode4 networkCode:mobileNetworkCode4];

LABEL_131:
            v147 = [IDSUserProperties alloc];
            v148 = [(IDSUserProperties *)v147 propsByUpdatingDisableRegistration:1];

            v149 = [v148 propsByUpdatingHasActiveSIM:slot2 != 2];

            v150 = [[IDSUserDescription alloc] initWithUser:user5 properties:v149];
            [(__CFString *)v184 addObject:v150];
            v151 = +[IMRGLog registration];
            v28 = v185;
            v124 = v179;
            if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v225 = v150;
              _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "Adding user as registration disabled user. { user: %@ }", buf, 0xCu);
            }

            v125 = v173;
            v122 = v176;
            v126 = v191;
          }

          v126 = v126 + 1;
        }

        while (v126 != v124);
        v124 = [v181 countByEnumeratingWithState:&v198 objects:v239 count:16];
      }

      while (v124);
    }

    v100 = v165;
  }

  v152 = +[IMRGLog registration];
  if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
  {
    if (v155)
    {
      v153 = @"YES";
    }

    else
    {
      v153 = @"NO";
    }

    *buf = 138413826;
    if (isDeviceInManualPhoneSelectionMode)
    {
      v154 = @"YES";
    }

    else
    {
      v154 = @"NO";
    }

    v225 = v193;
    v226 = 2112;
    v227 = v184;
    v228 = 2112;
    v229 = v153;
    v230 = 2112;
    v231 = v154;
    v232 = 2112;
    v233 = selectedPhoneNumberRegistrationSubscriptionLabels;
    v234 = 2112;
    v235 = v162;
    v236 = 2112;
    v237 = obj;
    _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "Finished synchronizing Sims to users {currentUsers: %@, updatedUsers: %@, dualMode: %@, inManualSelectionMode %@, selectedLabelIDs: %@, tempLabelIDs: %@, sims: %@}", buf, 0x48u);
  }

  v12 = v184;
LABEL_9:

  return v12;
}

- (void)userStore:(id)store didRemoveUser:(id)user withAuthenticationCertificate:(id)certificate
{
  userCopy = user;
  if (![userCopy realm])
  {
    phoneUserRegistry = [(IDSSIMPhoneUserSynchronizer *)self phoneUserRegistry];
    [phoneUserRegistry clearConsentDenialsForPhoneUser:userCopy];
  }
}

- (void)_setupForCurrentSubscriptionState
{
  [(IDSUserStore *)self->_userStore reloadUsersForRealm:0];

  [(IDSSIMPhoneUserSynchronizer *)self _checkRegistrationStatus];
}

- (void)_checkRegistrationStatus
{
  lockdownManager = [(IDSSIMPhoneUserSynchronizer *)self lockdownManager];
  isActivated = [lockdownManager isActivated];

  if (isActivated)
  {
    if (+[IDSRegistrationController isBuddyBlockingRegistration])
    {
      v5 = +[IMRGLog sms];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "****** Device is not configured yet, bailing";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      }
    }

    else
    {
      v7 = +[IDSRegistrationKeyManager sharedInstance];
      requiresKeychainMigration = [v7 requiresKeychainMigration];

      if (requiresKeychainMigration)
      {
        v5 = +[IMRGLog sms];
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        *buf = 0;
        v6 = "****** Under first lock and keychain upgrade pending, bailing";
        goto LABEL_7;
      }

      v5 = [(IDSUserStore *)self->_userStore usersWithRealm:0];
      v9 = [v5 count];
      v10 = +[IMRGLog sms];
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          *buf = 138412290;
          v41 = v5;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "** Found Tracked Phone Number users: %@", buf, 0xCu);
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = v5;
        obj = v5;
        v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v36;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v36 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v35 + 1) + 8 * i);
              phoneNumber = [v16 phoneNumber];
              phoneBookNumber = [v16 phoneBookNumber];
              v19 = phoneBookNumber;
              if (phoneNumber)
              {
                v20 = 1;
              }

              else
              {
                v20 = phoneBookNumber == 0;
              }

              if (!v20)
              {
                v21 = [(IDSUserStore *)self->_userStore authenticationCertificateForUser:v16];

                if (v21)
                {
                  userStore = self->_userStore;
                  v23 = [v16 phoneUserWithUpdatedPhoneNumber:v19];
                  [(IDSUserStore *)userStore updateUser:v23];

                  phoneNumber = v19;
                }

                else
                {
                  phoneNumber = 0;
                }
              }

              cachedIsSameSIM = [(IDSSIMPhoneUserSynchronizer *)self cachedIsSameSIM];
              uniqueIdentifier = [v16 uniqueIdentifier];
              v26 = [cachedIsSameSIM objectForKeyedSubscript:uniqueIdentifier];

              if (!v26 || ([v26 BOOLValue] & 1) == 0)
              {
                CTAdapter = self->_CTAdapter;
                uniqueIdentifier2 = [v16 uniqueIdentifier];
                LODWORD(CTAdapter) = [(IDSCTAdapter *)CTAdapter isPNRNumber:phoneNumber andPhoneBookNumber:v19 differentEnoughFromSIMIdentifier:uniqueIdentifier2 toReregisterWithNewNumber:0];

                if (CTAdapter)
                {
                  v29 = +[IMRGLog sms];
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "** Dispatching request to re-register via SMS", buf, 2u);
                  }

                  v30 = +[IDSRegistrationReasonTracker sharedInstance];
                  uniqueIdentifier3 = [v16 uniqueIdentifier];
                  [v30 setPNRReason:3 forUserUniqueIdentifier:uniqueIdentifier3];

                  v32 = +[IDSPACStateTracker sharedInstance];
                  [v32 notePhoneAuthCertLost:8];

                  [(IDSUserStore *)self->_userStore setAuthenticationCertificate:0 forUser:v16];
                }
              }
            }

            v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v13);
        }

        v10 = +[IDSHeartbeatCenter sharedInstance];
        [v10 checkHeartbeat];
        v5 = v33;
      }

      else if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "** Found no tracked Phone Number registration", buf, 2u);
      }
    }
  }

  else
  {
    v5 = +[IMRGLog sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "****** Device isn't in a state that can register right now, bailing";
      goto LABEL_7;
    }
  }

LABEL_38:
}

- (void)didUpdatePairedDevice:(id)device
{
  deviceCopy = device;
  pairingManager = [(IDSSIMPhoneUserSynchronizer *)self pairingManager];
  isCurrentDeviceTinkerConfiguredWatch = [pairingManager isCurrentDeviceTinkerConfiguredWatch];

  v7 = [deviceCopy objectForKey:IDSDevicePropertyPairingType];

  integerValue = [v7 integerValue];
  v9 = +[IMRGLog registration];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (isCurrentDeviceTinkerConfiguredWatch && integerValue == 1)
  {
    if (v10)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSSIMPhoneUserSynchronizer received an update to the paired tinker device", v11, 2u);
    }

    [(IDSUserStore *)self->_userStore reloadUsersForRealm:0];
  }

  else
  {
    if (v10)
    {
      v11[0] = 67109376;
      v11[1] = isCurrentDeviceTinkerConfiguredWatch;
      v12 = 2048;
      v13 = integerValue;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSSimPhoneUserSynchronizer does not support non-tinker devices. isTinkerConfiguredWatch: %d pairingType: %ld", v11, 0x12u);
    }
  }
}

@end