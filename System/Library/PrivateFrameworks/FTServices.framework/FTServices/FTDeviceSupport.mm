@interface FTDeviceSupport
+ (id)marketingNameForDeviceType:(int64_t)type;
+ (id)sharedInstance;
- (BOOL)SIMInserted;
- (BOOL)_enoughPowerToSupportEffects;
- (BOOL)_legacy_supportsSMSIdentification;
- (BOOL)callingAvailable;
- (BOOL)conferencingEnabled;
- (BOOL)inProcess_isCallingSupported;
- (BOOL)isC2KEquipment;
- (BOOL)isInMultiUserMode;
- (BOOL)lowRAMDevice;
- (BOOL)madridAvailable;
- (BOOL)multiwayAvailable;
- (BOOL)nonWifiAvailableForBundleId:(id)id;
- (BOOL)nonWifiFaceTimeAvailable;
- (BOOL)registrationSupported;
- (BOOL)slowCPUDevice;
- (BOOL)supportsApplePay;
- (BOOL)supportsCinematicFraming;
- (BOOL)supportsFriendingViaPush;
- (BOOL)supportsFunCam;
- (BOOL)supportsHDRdecoding;
- (BOOL)supportsHarmony;
- (BOOL)supportsKeySharing;
- (BOOL)supportsManateeActivitySharing;
- (BOOL)supportsManateeForAppleCash;
- (BOOL)supportsNonWiFiFaceTime;
- (BOOL)supportsRegionForAppleCash;
- (BOOL)supportsSMSIdentification;
- (BOOL)supportsSimultaneousVoiceAndDataRightNow;
- (BOOL)supportsStewie;
- (BOOL)supportsUWB;
- (BOOL)supportsVenice;
- (BOOL)supportsZelkova;
- (BOOL)wantsBreakBeforeMake;
- (BOOL)wifiAllowedForBundleId:(id)id;
- (FTDeviceSupport)init;
- (NSDictionary)CTNetworkInformation;
- (NSDictionary)telephonyCapabilities;
- (NSString)deviceColor;
- (NSString)deviceInformationString;
- (NSString)deviceName;
- (NSString)deviceRegionInfo;
- (NSString)deviceTypeIDPrefix;
- (NSString)enclosureColor;
- (NSString)model;
- (NSString)productBuildVersion;
- (NSString)productName;
- (NSString)productOSVersion;
- (NSString)productVersion;
- (NSString)telephoneNumber;
- (NSString)userAgentString;
- (id)registrationState;
- (int)cpuFamily;
- (int64_t)deviceType;
- (int64_t)memorySize;
- (int64_t)performanceClass;
- (void)_commCenterAlive;
- (void)_handleCarrierSettingsChanged;
- (void)_handlePotentialPhoneNumberRegistrationStateChanged;
- (void)_handleSIMStatusChangedToStatus:(id)status;
- (void)_initializeSIMInsertedCachedValue;
- (void)_invalidateValuesCachedForSelectedPhoneNumberRegistration;
- (void)_lockdownStateChanged:(id)changed;
- (void)_registerForCapabilityNotifications;
- (void)_registerForCarrierNotifications;
- (void)_registerForCommCenterReadyNotifications;
- (void)_registerForInternalCoreTelephonyNotifications;
- (void)_registerForLockdownNotifications;
- (void)_registerForManagedConfigurationNotifications;
- (void)_registerForServiceStatusNotifications;
- (void)_unregisterForCommCenterReadyNotifications;
- (void)_unregisterForManagedConfigurationNotifications;
- (void)_unregisterForServiceStatusNotifications;
- (void)_updateCTNetworkDictionary:(id)dictionary key:(id)key withTelephonyNetworkValue:(id)value telephonyError:(id)error;
- (void)_updateCapabilities;
- (void)_updateManagedConfigurationSettings;
- (void)carrierBundleChange:(id)change;
- (void)dealloc;
- (void)noteSelectedPhoneNumberRegistrationSubscriptionDidChange;
- (void)operatorBundleChange:(id)change;
- (void)phoneNumberChanged:(id)changed;
- (void)pnrReadyStateNotification:(id)notification regState:(BOOL)state;
- (void)simStatusDidChange:(id)change status:(id)status;
- (void)supportsStewieWithCompletion:(id)completion;
@end

@implementation FTDeviceSupport

+ (id)sharedInstance
{
  if (qword_1ED768788 != -1)
  {
    sub_1959265A4();
  }

  v3 = qword_1ED7686E8;

  return v3;
}

- (FTDeviceSupport)init
{
  v13.receiver = self;
  v13.super_class = FTDeviceSupport;
  v2 = [(FTDeviceSupport *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_blockPost = 1;
    v2->_simBecameNotReady = 0;
    v4 = objc_alloc(MEMORY[0x1E69650A0]);
    v5 = im_primary_queue();
    v6 = [v4 initWithQueue:v5];
    v7 = *(v3 + 152);
    *(v3 + 152) = v6;

    if (!*(v3 + 152))
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
      {
        sub_1959629CC(v3, (v3 + 152));
      }
    }

    v9 = +[FTSelectedPNRSubscription sharedInstance];
    v10 = *(v3 + 160);
    *(v3 + 160) = v9;

    *(v3 + 120) = -1;
    [v3 _updateCapabilities];
    [v3 _updateManagedConfigurationSettings];
    *(v3 + 16) = 0;
    *(v3 + 128) = -1;
    *(v3 + 144) = -1;
    v12 = v3;
    im_dispatch_after_primary_queue();
  }

  return v3;
}

- (void)_updateCapabilities
{
  v89 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&stru_1ED7685D8);
  context = objc_autoreleasePoolPush();
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Updating GS Capabilities", buf, 2u);
  }

  _serviceStatus = [(FTDeviceSupport *)self _serviceStatus];
  iMessageSupported = [_serviceStatus iMessageSupported];

  _serviceStatus2 = [(FTDeviceSupport *)self _serviceStatus];
  faceTimeAudioSupported = [_serviceStatus2 faceTimeAudioSupported];

  _serviceStatus3 = [(FTDeviceSupport *)self _serviceStatus];
  faceTimeMultiwaySupported = [_serviceStatus3 faceTimeMultiwaySupported];

  v84 = MGGetBoolAnswer();
  v83 = MGGetBoolAnswer();
  if (MGGetBoolAnswer())
  {
    v82 = [(FTDeviceSupport *)self deviceType]== 2;
  }

  else
  {
    v82 = 0;
  }

  if (MGGetBoolAnswer())
  {
    v80 = [(FTDeviceSupport *)self deviceType]== 2;
  }

  else
  {
    v80 = 0;
  }

  v9 = MGGetBoolAnswer();
  v79 = MGGetBoolAnswer();
  v81 = MGGetBoolAnswer();
  v77 = MGGetBoolAnswer();
  v78 = MGGetBoolAnswer();
  if (v9)
  {
    v10 = [(FTDeviceSupport *)self deviceType]== 2 || [(FTDeviceSupport *)self deviceType]== 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(FTDeviceSupport *)self performanceClass]!= -1;
  v86 = v11 && v10;
  if ([(FTDeviceSupport *)self isInMultiUserMode])
  {
    v12 = faceTimeAudioSupported;
    v13 = _os_feature_enabled_impl();
    registration2 = [MEMORY[0x1E69A6138] registration];
    v15 = os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "In multi user mode, however not disabling handoff due to Feature Flag", buf, 2u);
      }
    }

    else
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "In multi user mode, disabling handoff", buf, 2u);
      }

      v86 = 0;
      v11 = 0;
    }

    faceTimeAudioSupported = v12;
  }

  mEMORY[0x1E6965050] = [MEMORY[0x1E6965050] sharedMessageCenter];
  isMmsConfigured = [mEMORY[0x1E6965050] isMmsConfigured];

  registration3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
  {
    if (v82)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    *buf = 138412290;
    v88 = v18;
    _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "               Supports SMS: %@", buf, 0xCu);
  }

  registration4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
  {
    if (v80)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    *buf = 138412290;
    v88 = v20;
    _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "               Supports MMS: %@", buf, 0xCu);
  }

  registration5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
  {
    if (isMmsConfigured)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    *buf = 138412290;
    v88 = v22;
    _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "             MMS Configured: %@", buf, 0xCu);
  }

  registration6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
  {
    if (v83)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    *buf = 138412290;
    v88 = v24;
    _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "                         GT: %@", buf, 0xCu);
  }

  registration7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration7, OS_LOG_TYPE_DEFAULT))
  {
    if (v84)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    *buf = 138412290;
    v88 = v26;
    _os_log_impl(&dword_195925000, registration7, OS_LOG_TYPE_DEFAULT, "                Supports FT: %@", buf, 0xCu);
  }

  registration8 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration8, OS_LOG_TYPE_DEFAULT))
  {
    if (faceTimeAudioSupported)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    *buf = 138412290;
    v88 = v28;
    _os_log_impl(&dword_195925000, registration8, OS_LOG_TYPE_DEFAULT, "               Supports FTA: %@", buf, 0xCu);
  }

  registration9 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration9, OS_LOG_TYPE_DEFAULT))
  {
    if (faceTimeMultiwaySupported)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    *buf = 138412290;
    v88 = v30;
    _os_log_impl(&dword_195925000, registration9, OS_LOG_TYPE_DEFAULT, "              Supports FTMW: %@", buf, 0xCu);
  }

  registration10 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration10, OS_LOG_TYPE_DEFAULT))
  {
    if (iMessageSupported)
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    *buf = 138412290;
    v88 = v32;
    _os_log_impl(&dword_195925000, registration10, OS_LOG_TYPE_DEFAULT, "          Supports iMessage: %@", buf, 0xCu);
  }

  registration11 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = @"YES";
    _os_log_impl(&dword_195925000, registration11, OS_LOG_TYPE_DEFAULT, "              Supports WiFi: %@", buf, 0xCu);
  }

  registration12 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration12, OS_LOG_TYPE_DEFAULT))
  {
    if (v79)
    {
      v35 = @"YES";
    }

    else
    {
      v35 = @"NO";
    }

    *buf = 138412290;
    v88 = v35;
    _os_log_impl(&dword_195925000, registration12, OS_LOG_TYPE_DEFAULT, "             Supports 3G FT: %@", buf, 0xCu);
  }

  registration13 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration13, OS_LOG_TYPE_DEFAULT))
  {
    if (v78)
    {
      v37 = @"YES";
    }

    else
    {
      v37 = @"NO";
    }

    *buf = 138412290;
    v88 = v37;
    _os_log_impl(&dword_195925000, registration13, OS_LOG_TYPE_DEFAULT, "              Supports WLAN: %@", buf, 0xCu);
  }

  registration14 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration14, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v39 = @"YES";
    }

    else
    {
      v39 = @"NO";
    }

    *buf = 138412290;
    v88 = v39;
    _os_log_impl(&dword_195925000, registration14, OS_LOG_TYPE_DEFAULT, "         Supports Cell Data: %@", buf, 0xCu);
  }

  registration15 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration15, OS_LOG_TYPE_DEFAULT))
  {
    if (v77)
    {
      v41 = @"YES";
    }

    else
    {
      v41 = @"NO";
    }

    *buf = 138412290;
    v88 = v41;
    _os_log_impl(&dword_195925000, registration15, OS_LOG_TYPE_DEFAULT, "      Supports Front Camera: %@", buf, 0xCu);
  }

  registration16 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration16, OS_LOG_TYPE_DEFAULT))
  {
    if (v81)
    {
      v43 = @"YES";
    }

    else
    {
      v43 = @"NO";
    }

    *buf = 138412290;
    v88 = v43;
    _os_log_impl(&dword_195925000, registration16, OS_LOG_TYPE_DEFAULT, "       Supports Back Camera: %@", buf, 0xCu);
  }

  registration17 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration17, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      v45 = @"YES";
    }

    else
    {
      v45 = @"NO";
    }

    *buf = 138412290;
    v88 = v45;
    _os_log_impl(&dword_195925000, registration17, OS_LOG_TYPE_DEFAULT, "           Supports Handoff: %@", buf, 0xCu);
  }

  registration18 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration18, OS_LOG_TYPE_DEFAULT))
  {
    if (v86)
    {
      v47 = @"YES";
    }

    else
    {
      v47 = @"NO";
    }

    *buf = 138412290;
    v88 = v47;
    _os_log_impl(&dword_195925000, registration18, OS_LOG_TYPE_DEFAULT, "         Supports Tethering: %@", buf, 0xCu);
  }

  registration19 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration19, OS_LOG_TYPE_DEFAULT))
  {
    v49 = self->_simInserted + 1;
    if (v49 > 2)
    {
      v50 = @"Invalid";
    }

    else
    {
      v50 = off_1E7435218[v49];
    }

    *buf = 138412290;
    v88 = v50;
    _os_log_impl(&dword_195925000, registration19, OS_LOG_TYPE_DEFAULT, "         SIM Inserted State: %@", buf, 0xCu);
  }

  registration20 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration20, OS_LOG_TYPE_DEFAULT))
  {
    v52 = self->_isPNRSupportedCachedValue + 1;
    if (v52 > 2)
    {
      v53 = @"Invalid";
    }

    else
    {
      v53 = off_1E7435218[v52];
    }

    *buf = 138412290;
    v88 = v53;
    _os_log_impl(&dword_195925000, registration20, OS_LOG_TYPE_DEFAULT, "        PNR Supported State: %@", buf, 0xCu);
  }

  v63 = self->_isGreenTea != v83 || self->_supportsHandoff != v11 || self->_supportsTethering != v86 || self->_supportsFT != v84 || self->_supportsFTA != faceTimeAudioSupported || self->_supportsFTMW != faceTimeMultiwaySupported || self->_supportsSMS != v82 || self->_supportsMMS != v80 || self->_mmsConfigured != isMmsConfigured || self->_supportsWLAN != v78;
  supportsWiFi = self->_supportsWiFi;
  v65 = self->_supportsNonWiFiFaceTime != v79;
  v66 = self->_supportsiMessage != iMessageSupported;
  v67 = self->_supportsCellularData != v9;
  v68 = iMessageSupported;
  v69 = self->_supportsFrontCamera != v77;
  v70 = faceTimeAudioSupported;
  supportsBackCamera = self->_supportsBackCamera;
  self->_isGreenTea = v83;
  self->_supportsHandoff = v11;
  self->_supportsTethering = v86;
  self->_supportsBackCamera = v81;
  self->_supportsFrontCamera = v77;
  self->_supportsMMS = v80;
  self->_mmsConfigured = isMmsConfigured;
  self->_supportsSMS = v82;
  self->_supportsFT = v84;
  self->_supportsFTA = v70;
  self->_supportsFTMW = faceTimeMultiwaySupported;
  self->_supportsWiFi = 1;
  self->_supportsWLAN = v78;
  self->_supportsNonWiFiFaceTime = v79;
  self->_supportsiMessage = v68;
  self->_supportsCellularData = v9;
  self->_supportsStewieState = -1;
  *&v72 = -1;
  *(&v72 + 1) = -1;
  *&self->_supportsZelkovaState = v72;
  *&self->_supportsKeySharingState = v72;
  *&self->_supportsFMDV2State = v72;
  *&self->_supportsManateeForAppleCash = v72;
  *&self->_supportsApplePayState = v72;
  objc_autoreleasePoolPop(context);
  pthread_mutex_unlock(&stru_1ED7685D8);
  if ((supportsBackCamera != v81 || !supportsWiFi || v65 || v66 || v67 || v69 || v63) && !self->_blockPost)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kFaceTimeDeviceCapabilityChangedNotification" object:0];
  }

  v74 = *MEMORY[0x1E69E9840];
}

- (int64_t)deviceType
{
  result = qword_1ED768778;
  if (qword_1ED768778 <= 0)
  {
    v3 = MGCopyAnswer();
    [v3 rangeOfString:@"iPhone"];
    if (v4)
    {
      v5 = 2;
    }

    else
    {
      [v3 rangeOfString:@"iPod"];
      if (v6)
      {
        v5 = 3;
      }

      else
      {
        [v3 rangeOfString:@"iPad"];
        if (v7)
        {
          v5 = 4;
        }

        else
        {
          [v3 rangeOfString:@"Watch"];
          if (v8)
          {
            v5 = 6;
          }

          else
          {
            [v3 rangeOfString:@"Vision"];
            if (!v9)
            {
              if (qword_1EAED77C8 != -1)
              {
                sub_195962D24();
              }

              goto LABEL_13;
            }

            v5 = 9;
          }
        }
      }
    }

    qword_1ED768778 = v5;
LABEL_13:

    return qword_1ED768778;
  }

  return result;
}

- (int64_t)performanceClass
{
  v42 = *MEMORY[0x1E69E9840];
  result = self->_performanceClass;
  if (result < 0)
  {
    v4 = MGCopyAnswer();
    if ([v4 length] < 4)
    {
      v6 = [v4 copy];
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = [v4 substringWithRange:{0, 4}];
      v6 = [v5 copy];

      if (v6)
      {
LABEL_4:
        v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"N94", @"K94", @"K93", @"K95", @"J2A", @"J2a", @"J1A", @"J1a", 0}];
        v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"P105", @"P106", @"P107", 0}];
        v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"N41", @"N42", 0}];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v10 = v7;
        v11 = [v10 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v36;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v36 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([v6 hasPrefix:*(*(&v35 + 1) + 8 * i)])
              {
                v23 = -1;
                v15 = v10;
                goto LABEL_36;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v35 objects:v41 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v15 = v8;
        v16 = [v15 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v32;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v32 != v18)
              {
                objc_enumerationMutation(v15);
              }

              if ([v6 hasPrefix:*(*(&v31 + 1) + 8 * j)])
              {
                v23 = 0;
                goto LABEL_36;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v31 objects:v40 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = v9;
        v20 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v20)
        {
          v21 = v20;
          v26 = v9;
          v22 = *v28;
          v23 = 2;
          while (2)
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v28 != v22)
              {
                objc_enumerationMutation(v15);
              }

              if ([v6 hasPrefix:*(*(&v27 + 1) + 8 * k)])
              {
                v23 = 1;
                goto LABEL_34;
              }
            }

            v21 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

LABEL_34:
          v9 = v26;
        }

        else
        {
          v23 = 2;
        }

LABEL_36:

        goto LABEL_37;
      }
    }

    v23 = 2;
LABEL_37:
    self->_performanceClass = v23;

    result = self->_performanceClass;
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_updateManagedConfigurationSettings
{
  v3 = objc_autoreleasePoolPush();
  if (qword_1ED7686C0 != -1)
  {
    sub_195928780();
  }

  if (qword_1ED7686B0 != -1)
  {
    sub_195962A54();
  }

  if (qword_1ED7686A8 != -1)
  {
    sub_195962A68();
  }

  if (qword_1ED7686B8 != -1)
  {
    sub_195962A7C();
  }

  if (qword_1ED768750 != -1)
  {
    sub_195962A90();
  }

  pthread_mutex_lock(&stru_1ED768598);
  iMessageBlocked = self->_iMessageBlocked;
  faceTimeBlocked = self->_faceTimeBlocked;
  accountModificationRestricted = self->_accountModificationRestricted;
  sharedConnection = [qword_1ED768760 sharedConnection];
  v8 = sharedConnection;
  if (qword_1ED7686D0)
  {
    v9 = [sharedConnection effectiveBoolValueForSetting:?] == 2;
  }

  else
  {
    v9 = 0;
  }

  self->_iMessageBlocked = v9;
  if (qword_1ED7686C8)
  {
    v10 = [v8 effectiveBoolValueForSetting:?] == 2;
  }

  else
  {
    v10 = 0;
  }

  self->_faceTimeBlocked = v10;
  self->_accountModificationRestricted = [v8 effectiveBoolValueForSetting:qword_1ED7686E0] == 2;
  sharedManager = [qword_1ED768758 sharedManager];
  [sharedManager invalidateRestrictions];

  sharedManager2 = [qword_1ED768758 sharedManager];
  [sharedManager2 invalidateSettings];

  v13 = self->_iMessageBlocked;
  v14 = self->_faceTimeBlocked;
  v15 = self->_accountModificationRestricted;
  pthread_mutex_unlock(&stru_1ED768598);
  if ((iMessageBlocked != v13 || faceTimeBlocked != v14 || accountModificationRestricted != v15) && !self->_blockPost)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kFaceTimeDeviceRestictionsChangedNotification" object:0];
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)isInMultiUserMode
{
  v2 = MEMORY[0x19A8B8550](@"UMUserManager", @"UserManagement");
  qword_1ED768780 = v2;
  if (v2)
  {
    sharedManager = [v2 sharedManager];
    isMultiUser = [sharedManager isMultiUser];

    LOBYTE(v2) = isMultiUser;
  }

  return v2;
}

- (void)_unregisterForCommCenterReadyNotifications
{
  if (self->_supportsSMS)
  {
    v8 = v2;
    v9 = v3;
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Unregistering for comm center launch", v7, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E6965268], 0);
  }
}

- (void)_registerForCommCenterReadyNotifications
{
  if (self->_supportsSMS)
  {
    v8 = v2;
    v9 = v3;
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Registering for comm center launch", v7, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_195934D90, *MEMORY[0x1E6965268], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)_registerForServiceStatusNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateCapabilities name:@"FTServiceStatusDidChangeNotification" object:0];
}

- (void)_registerForCarrierNotifications
{
  v7 = *MEMORY[0x1E69E9840];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Registering %@ for carrier changes", &v5, 0xCu);
  }

  if (self->_supportsSMS)
  {
    [(FTDeviceSupport *)self _unregisterForCommCenterReadyNotifications];
    [(FTDeviceSupport *)self _registerForCommCenterReadyNotifications];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (NSString)telephoneNumber
{
  if ([(FTDeviceSupport *)self isTelephonyDevice]&& [(FTDeviceSupport *)self isTelephonyDevice])
  {
    number = self->_number;
    if (number)
    {
      v4 = number;
    }

    else
    {
      v6 = [(FTSelectedPNRSubscription *)self->_selectedPNRSubscription selectedRegistrationPhoneNumberWithError:0];
      if (v6)
      {
        v7 = IMInternationalForPhoneNumberWithOptions();
        if ([v7 length])
        {
          v8 = v7;

          v6 = v8;
        }
      }

      v9 = self->_number;
      self->_number = v6;
      v10 = v6;

      v4 = self->_number;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_registerForCapabilityNotifications
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195928D2C;
  block[3] = &unk_1E7435088;
  block[4] = self;
  if (qword_1ED768770 != -1)
  {
    dispatch_once(&qword_1ED768770, block);
  }
}

- (void)_registerForLockdownNotifications
{
  v8 = *MEMORY[0x1E69E9840];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Registering %@ for lockdown changes", &v6, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__lockdownStateChanged_ name:*MEMORY[0x1E69A5FC0] object:0];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_registerForManagedConfigurationNotifications
{
  v3 = [MEMORY[0x19A8B8550](@"MCProfileConnection" @"ManagedConfiguration")];
  [v3 registerObserver:self];
}

- (BOOL)supportsSimultaneousVoiceAndDataRightNow
{
  if (!self->_supportsSMS)
  {
    return 1;
  }

  mEMORY[0x1E69A51E8] = [MEMORY[0x1E69A51E8] sharedInstance];
  doesAnySIMSupportsSimultaneousVoiceAndDataRightNow = [mEMORY[0x1E69A51E8] doesAnySIMSupportsSimultaneousVoiceAndDataRightNow];

  return doesAnySIMSupportsSimultaneousVoiceAndDataRightNow;
}

- (NSString)userAgentString
{
  mEMORY[0x1E69A60B8] = [MEMORY[0x1E69A60B8] sharedInstance];
  userAgentString = [mEMORY[0x1E69A60B8] userAgentString];

  return userAgentString;
}

- (NSString)deviceInformationString
{
  mEMORY[0x1E69A60B8] = [MEMORY[0x1E69A60B8] sharedInstance];
  deviceInformationString = [mEMORY[0x1E69A60B8] deviceInformationString];

  return deviceInformationString;
}

- (void)dealloc
{
  [(FTDeviceSupport *)self _unregisterForManagedConfigurationNotifications];
  [(FTDeviceSupport *)self _unregisterForCommCenterReadyNotifications];
  [(FTDeviceSupport *)self _unregisterForServiceStatusNotifications];
  v3.receiver = self;
  v3.super_class = FTDeviceSupport;
  [(FTDeviceSupport *)&v3 dealloc];
}

- (void)_unregisterForManagedConfigurationNotifications
{
  v3 = [MEMORY[0x19A8B8550](@"MCProfileConnection" @"ManagedConfiguration")];
  [v3 unregisterObserver:self];
}

- (void)_unregisterForServiceStatusNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"FTServiceStatusDidChangeNotification" object:0];
}

- (void)_commCenterAlive
{
  if (self->_supportsSMS)
  {
    self->_isPNRSupportedCachedValue = -1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kFaceTimeDeviceRegistrationCapabilityChangedNotification" object:0];
  }
}

- (void)_registerForInternalCoreTelephonyNotifications
{
  v11 = *MEMORY[0x1E69E9840];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = coreTelephonyClient;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Setting CoreTelephonyClient delegate to start receiving notifications { self: %@, coreTelephonyClient: %@ }", &v7, 0x16u);
  }

  [(CoreTelephonyClient *)self->_coreTelephonyClient setDelegate:self];
  if (self->_supportsSMS && !self->_isPNRSupportedCachedValue)
  {
    self->_isPNRSupportedCachedValue = -1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kFaceTimeDeviceRegistrationCapabilityChangedNotification" object:0];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)madridAvailable
{
  madridSupported = [(FTDeviceSupport *)self madridSupported];
  if (madridSupported)
  {
    LOBYTE(madridSupported) = ![(FTDeviceSupport *)self madridBlocked];
  }

  return madridSupported;
}

- (BOOL)callingAvailable
{
  if (![(FTDeviceSupport *)self callingSupported])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "FTA isn't allowed, disabled";
      v5 = buf;
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  if ([(FTDeviceSupport *)self callingBlocked])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v4 = "FTA isn't allowed, managed profile doesn't allow it";
      v5 = &v7;
LABEL_7:
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return 1;
}

- (BOOL)multiwayAvailable
{
  if (![(FTDeviceSupport *)self multiwaySupported])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "FTMW isn't allowed, disabled";
      v5 = buf;
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  if ([(FTDeviceSupport *)self multiwayBlocked])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v4 = "FTMW isn't allowed, managed profile doesn't allow it";
      v5 = &v7;
LABEL_7:
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return 1;
}

- (BOOL)inProcess_isCallingSupported
{
  v31 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A51E8] = [MEMORY[0x1E69A51E8] sharedInstance];
  v3 = [mEMORY[0x1E69A51E8] carrierBundleValueFromAllSIMsForKey:@"AllowsFaceTimeAudio" ofType:objc_opt_class() withFallback:MEMORY[0x1E695E110]];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    bOOLValue = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (bOOLValue)
        {
          bOOLValue = [*(*(&v20 + 1) + 8 * i) BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    bOOLValue = 1;
  }

  v10 = ([v4 count] != 0) & bOOLValue;
  v11 = MGGetBoolAnswer();
  v12 = MGGetBoolAnswer();
  if (v12)
  {
    v13 = v10 | v11 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    if (v12)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    if (v10)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    *buf = 138412802;
    v25 = v16;
    v26 = 2112;
    v27 = v17;
    if (v11)
    {
      v15 = @"YES";
    }

    v28 = 2112;
    v29 = v15;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Checked FTA support in process {supportsFT: %@, carrierOverrideFTA: %@, GT: %@}", buf, 0x20u);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (BOOL)supportsNonWiFiFaceTime
{
  if (self->_supportsNonWiFiFaceTime)
  {
    return 1;
  }

  v3 = +[FTUserConfiguration sharedInstance];
  _nonWifiFaceTimeEntitled = [v3 _nonWifiFaceTimeEntitled];

  return _nonWifiFaceTimeEntitled;
}

- (BOOL)conferencingEnabled
{
  if (![(FTDeviceSupport *)self conferencingAllowed])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Conferencing isn't allowed, disabled";
      v5 = buf;
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  if ([(FTDeviceSupport *)self conferencingBlocked])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v4 = "Conferencing isn't allowed, managed profile doesn't allow it";
      v5 = &v7;
LABEL_7:
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return 1;
}

- (BOOL)registrationSupported
{
  if ([(FTDeviceSupport *)self faceTimeSupported]|| (v3 = [(FTDeviceSupport *)self iMessageSupported]) != 0)
  {

    LOBYTE(v3) = MEMORY[0x1EEE66B58](self, sel_supportsAppleIDIdentification);
  }

  return v3;
}

- (BOOL)supportsCinematicFraming
{
  v4 = *MEMORY[0x1E69E9840];
  result = MGIsDeviceOneOfType();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)model
{
  mEMORY[0x1E69A60B8] = [MEMORY[0x1E69A60B8] sharedInstance];
  model = [mEMORY[0x1E69A60B8] model];

  return model;
}

- (NSString)deviceTypeIDPrefix
{
  if (!self->_supportsSMS)
  {
    return @"U";
  }

  if ([(FTDeviceSupport *)self isC2KEquipment:v2])
  {
    return @"m";
  }

  return @"i";
}

- (NSDictionary)telephonyCapabilities
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_supportsSMS)
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = _CTServerConnectionCreate();
    if (v3)
    {
      v4 = _CTServerConnectionCopySystemCapabilities();
      CFRelease(v3);
      if (v4 != 2)
      {
        registration = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v11 = 0;
          v12 = 2048;
          v13 = v4;
          v14 = 2048;
          v15 = v4 >> 32;
          _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_INFO, "CT returned system capabilities: %@  error: (%ld:%ld)", buf, 0x20u);
        }

        if (v4)
        {
          v8 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v11 = v4;
            v12 = 2048;
            v13 = v4 >> 32;
            _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_ERROR, "Error querying system capabilities: (%ld:%ld)", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            _IDSLogTransport();
          }
        }

        v9 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_ERROR, "Empty system capabilities returned", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];

  return 0;
}

- (BOOL)isC2KEquipment
{
  if (!self->_supportsSMS)
  {
    return 0;
  }

  telephonyCapabilities = [(FTDeviceSupport *)self telephonyCapabilities];
  v3 = [telephonyCapabilities objectForKey:*MEMORY[0x1E6965540]];
  v4 = [v3 intValue] == 0;

  return v4;
}

- (BOOL)supportsHDRdecoding
{
  v2 = VTCopyHEVCDecoderCapabilitiesDictionary();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFDictionaryGetValue(v2, *MEMORY[0x1E69838F8]) == *MEMORY[0x1E695E4D0];
  CFRelease(v3);
  return v4;
}

- (BOOL)SIMInserted
{
  simInserted = self->_simInserted;
  if (simInserted == -1)
  {
    [(FTDeviceSupport *)self _initializeSIMInsertedCachedValue];
    simInserted = self->_simInserted;
  }

  return simInserted == 1;
}

- (void)_initializeSIMInsertedCachedValue
{
  v18 = *MEMORY[0x1E69E9840];
  selectedPNRSubscription = self->_selectedPNRSubscription;
  v15 = 0;
  v4 = [(FTSelectedPNRSubscription *)selectedPNRSubscription selectedPhoneNumberRegistrationSubscriptionWithError:&v15];
  v5 = v15;
  if (v4)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v14 = 0;
    v7 = [(CoreTelephonyClient *)coreTelephonyClient getSIMStatus:v4 error:&v14];
    v8 = v14;
    registration = [MEMORY[0x1E69A6138] registration];
    v10 = registration;
    if (v7)
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "Loaded initial SIM status { simStatus: %@ }", buf, 0xCu);
      }

      if ([v7 isEqualToString:*MEMORY[0x1E6965438]])
      {
        v11 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_195962AA4();
      }
    }

    v11 = 1;
    goto LABEL_14;
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Unable to find selected context to load SIM status { subscriptionError: %@ }", buf, 0xCu);
  }

  v11 = 0;
  v7 = 0;
LABEL_14:
  self->_simInserted = v11;

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)supportsStewie
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1ED768628 != -1)
  {
    sub_195962B18();
  }

  if (!byte_1EAED7710)
  {
    supportsStewieState = self->_supportsStewieState;
    if (supportsStewieState != -1)
    {
LABEL_17:
      result = supportsStewieState == 1;
      goto LABEL_18;
    }

    coreTelephonyClient = self->_coreTelephonyClient;
    v15 = 0;
    v7 = [(CoreTelephonyClient *)coreTelephonyClient getStewieSupport:&v15];
    v8 = v15;
    hwSupport = [v7 hwSupport];
    registration = [MEMORY[0x1E69A6138] registration];
    v11 = os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        *buf = 138412290;
        v17 = v8;
        v12 = "Failed to get stewie hw support { error: %@ }";
LABEL_15:
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
      }
    }

    else if (v11)
    {
      v13 = @"NO";
      if (hwSupport)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      v17 = v13;
      v12 = "Got stewie hw support { stewieHWSupport: %@ }";
      goto LABEL_15;
    }

    self->_supportsStewieState = hwSupport;
    supportsStewieState = self->_supportsStewieState;
    goto LABEL_17;
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Device is Dev Board, Returning YES for supporting Stewie", buf, 2u);
  }

  result = 1;
LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)supportsStewieWithCompletion:(id)completion
{
  completionCopy = completion;
  if (qword_1ED768628 != -1)
  {
    sub_195962B18();
  }

  if (byte_1EAED7710)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Device is Dev Board, Returning YES for supporting Stewie", buf, 2u);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    supportsStewieState = self->_supportsStewieState;
    if (supportsStewieState == -1)
    {
      coreTelephonyClient = self->_coreTelephonyClient;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_19593623C;
      v8[3] = &unk_1E7435180;
      v8[4] = self;
      v9 = completionCopy;
      [(CoreTelephonyClient *)coreTelephonyClient getStewieSupportWithCompletion:v8];
    }

    else
    {
      completionCopy[2](completionCopy, supportsStewieState == 1, 0);
    }
  }
}

- (BOOL)supportsFriendingViaPush
{
  if (qword_1ED768628 != -1)
  {
    sub_195962B18();
  }

  if (byte_1EAED7710)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Device is Dev Board, Returning YES for supporting Game Center Friending", v4, 2u);
    }

    return 1;
  }

  else
  {

    return _os_feature_enabled_impl();
  }
}

- (BOOL)wantsBreakBeforeMake
{
  if (IMGetCachedDomainBoolForKey())
  {
    return 1;
  }

  if (!self->_supportsSMS || [(FTDeviceSupport *)self supportsSimultaneousVoiceAndDataRightNow])
  {
    return 0;
  }

  v4 = +[FTEntitlementSupport sharedInstance];
  faceTimeNonWiFiEntitled = [v4 faceTimeNonWiFiEntitled];

  return faceTimeNonWiFiEntitled;
}

- (NSString)deviceRegionInfo
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)deviceName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = SCDynamicStoreCopyComputerName(0, 0);
  objc_sync_exit(selfCopy);

  if ([(__CFString *)v3 length])
  {
    __stringByStrippingControlCharacters = [(__CFString *)v3 __stringByStrippingControlCharacters];
  }

  else
  {
    model = [(FTDeviceSupport *)selfCopy model];
    if ([model length])
    {
      __stringByStrippingControlCharacters = [model __stringByStrippingControlCharacters];
    }

    else
    {
      __stringByStrippingControlCharacters = @"Unnamed Device";
    }
  }

  return __stringByStrippingControlCharacters;
}

+ (id)marketingNameForDeviceType:(int64_t)type
{
  if (type <= 3)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        v4 = MEMORY[0x1E69A65A0];
      }

      else
      {
        v4 = MEMORY[0x1E69A65A8];
      }

      goto LABEL_20;
    }

    if (!type)
    {
      v4 = MEMORY[0x1E69A6588];
      goto LABEL_20;
    }

    if (type == 1)
    {
      v4 = MEMORY[0x1E69A6578];
      goto LABEL_20;
    }
  }

  else
  {
    if (type <= 5)
    {
      if (type == 4)
      {
        v4 = MEMORY[0x1E69A6598];
      }

      else
      {
        v4 = MEMORY[0x1E69A6560];
      }

      goto LABEL_20;
    }

    switch(type)
    {
      case 6:
        v4 = MEMORY[0x1E69A6590];
        goto LABEL_20;
      case 7:
        v4 = MEMORY[0x1E69A6568];
        goto LABEL_20;
      case 8:
        v4 = MEMORY[0x1E69A6570];
LABEL_20:
        v5 = *v4;
        goto LABEL_21;
    }
  }

  v5 = *MEMORY[0x1E69A6588];
  if (type == 9)
  {
    v7 = *MEMORY[0x1E69A6580];

    v5 = v7;
  }

LABEL_21:

  return v5;
}

- (NSString)deviceColor
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)enclosureColor
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)registrationState
{
  v35 = *MEMORY[0x1E69E9840];
  selectedPNRSubscription = self->_selectedPNRSubscription;
  v22 = 0;
  v4 = [(FTSelectedPNRSubscription *)selectedPNRSubscription selectedPhoneNumberRegistrationSubscriptionWithError:&v22];
  v5 = v22;
  if (v4)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v21 = 0;
    v7 = [(CoreTelephonyClient *)coreTelephonyClient getPNRContext:v4 outError:&v21];
    registration2 = v21;
    registration = [MEMORY[0x1E69A6138] registration];
    plmn2 = registration;
    if (v7)
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        if ([v7 isReady])
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        phoneNumber = [v7 phoneNumber];
        imsi = [v7 imsi];
        plmn = [v7 plmn];
        *buf = 138413570;
        v24 = v7;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = phoneNumber;
        v29 = 2112;
        v30 = imsi;
        v31 = 2112;
        v32 = plmn;
        v33 = 2112;
        v34 = v4;
        _os_log_impl(&dword_195925000, plmn2, OS_LOG_TYPE_DEFAULT, "Read telephony phone number registration context { PNRContext: %@, isReady: %@, phoneNumber: %@, IMSI: %@, PLMN: %@, subscriptionContext: %@ }", buf, 0x3Eu);
      }

      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "isReady")}];
      if (v16)
      {
        CFDictionarySetValue(v15, @"__kFTCTRegistrationStatusCanRegisterKey", v16);
      }

      phoneNumber2 = [v7 phoneNumber];
      if (phoneNumber2)
      {
        CFDictionarySetValue(v15, @"__kFTCTRegistrationStatusPhoneNumberKey", phoneNumber2);
      }

      imsi2 = [v7 imsi];
      if (imsi2)
      {
        CFDictionarySetValue(v15, @"__kFTCTRegistrationStatusIMSIKey", imsi2);
      }

      plmn2 = [v7 plmn];
      if (plmn2)
      {
        CFDictionarySetValue(v15, @"__kFTCTRegistrationStatusPLMNKey", plmn2);
      }
    }

    else
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_195962B2C();
      }

      v15 = 0;
    }
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Could not find user-selected subscription to check phone number registration state -- returning nil { error: %@ }", buf, 0xCu);
    }

    v15 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)pnrReadyStateNotification:(id)notification regState:(BOOL)state
{
  notificationCopy = notification;
  v4 = notificationCopy;
  im_dispatch_after_primary_queue();
}

- (void)phoneNumberChanged:(id)changed
{
  changedCopy = changed;
  v3 = changedCopy;
  im_dispatch_after_primary_queue();
}

- (void)carrierBundleChange:(id)change
{
  v4 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195936E08;
  block[3] = &unk_1E7435088;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)operatorBundleChange:(id)change
{
  v4 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195936E98;
  block[3] = &unk_1E7435088;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  changeCopy = change;
  statusCopy = status;
  v6 = changeCopy;
  v7 = statusCopy;
  im_dispatch_after_primary_queue();
}

- (void)_handleSIMStatusChangedToStatus:(id)status
{
  v10 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = statusCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Handling relevant SIM status change { status: %@ }", buf, 0xCu);
  }

  if (self->_supportsSMS)
  {
    if ([statusCopy isEqualToString:*MEMORY[0x1E6965470]])
    {
      self->_simInserted = 1;
      if (self->_simBecameNotReady)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter __mainThreadPostNotificationName:@"__kFaceTimeDeviceSIMInsertedNotification" object:0];
      }

      self->_simBecameNotReady = 0;
    }

    else if ([statusCopy isEqualToString:*MEMORY[0x1E6965438]])
    {
      self->_simBecameNotReady = 1;
      self->_simInserted = 0;
      im_dispatch_after_primary_queue();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleCarrierSettingsChanged
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Carrier bundle changed, processing in a bit...", buf, 2u);
  }

  im_dispatch_after_primary_queue();
  if (self->_supportsSMS)
  {
    self->_isPNRSupportedCachedValue = -1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kFaceTimeDeviceRegistrationCapabilityChangedNotification" object:0];
  }
}

- (void)noteSelectedPhoneNumberRegistrationSubscriptionDidChange
{
  [(FTDeviceSupport *)self _invalidateValuesCachedForSelectedPhoneNumberRegistration];

  [(FTDeviceSupport *)self _handlePotentialPhoneNumberRegistrationStateChanged];
}

- (void)_invalidateValuesCachedForSelectedPhoneNumberRegistration
{
  self->_simBecameNotReady = 0;
  self->_simInserted = -1;
  self->_isPNRSupportedCachedValue = -1;
  number = self->_number;
  self->_number = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)_handlePotentialPhoneNumberRegistrationStateChanged
{
  if ((byte_1EAED7718 & 1) == 0)
  {
    number = self->_number;
    self->_number = 0;

    byte_1EAED7718 = 1;
    im_dispatch_after_primary_queue();
  }
}

- (NSDictionary)CTNetworkInformation
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_supportsSMS)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    selectedPNRSubscription = self->_selectedPNRSubscription;
    v27 = 0;
    v5 = [(FTSelectedPNRSubscription *)selectedPNRSubscription selectedPhoneNumberRegistrationSubscriptionWithError:&v27];
    v6 = v27;
    v7 = v6;
    if (v5)
    {

      coreTelephonyClient = self->_coreTelephonyClient;
      v26 = 0;
      registration = [(CoreTelephonyClient *)coreTelephonyClient copyLastKnownMobileSubscriberCountryCode:v5 error:&v26];
      v10 = v26;
      [(FTDeviceSupport *)self _updateCTNetworkDictionary:v3 key:@"sim-mcc" withTelephonyNetworkValue:registration telephonyError:v10];

      v11 = self->_coreTelephonyClient;
      v25 = 0;
      v12 = [(CoreTelephonyClient *)v11 copyMobileSubscriberNetworkCode:v5 error:&v25];
      v13 = v25;
      [(FTDeviceSupport *)self _updateCTNetworkDictionary:v3 key:@"sim-mnc" withTelephonyNetworkValue:v12 telephonyError:v13];

      v14 = self->_coreTelephonyClient;
      v24 = 0;
      v15 = [(CoreTelephonyClient *)v14 copyMobileCountryCode:v5 error:&v24];
      v16 = v24;
      [(FTDeviceSupport *)self _updateCTNetworkDictionary:v3 key:@"network-mcc" withTelephonyNetworkValue:v15 telephonyError:v16];

      v17 = self->_coreTelephonyClient;
      v23 = 0;
      v18 = [(CoreTelephonyClient *)v17 copyMobileNetworkCode:v5 error:&v23];
      v7 = v23;
      [(FTDeviceSupport *)self _updateCTNetworkDictionary:v3 key:@"network-mnc" withTelephonyNetworkValue:v18 telephonyError:v7];
    }

    else
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v7;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Unable to find selected context to load telephony network information { error: %@ }", buf, 0xCu);
      }
    }

    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v3;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Returning telephony network information { networkInformation: %@ }", buf, 0xCu);
    }

    v19 = v3;
  }

  else
  {
    v19 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)_updateCTNetworkDictionary:(id)dictionary key:(id)key withTelephonyNetworkValue:(id)value telephonyError:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keyCopy = key;
  valueCopy = value;
  errorCopy = error;
  v13 = [valueCopy length];
  if (keyCopy && v13)
  {
    [dictionaryCopy setObject:valueCopy forKey:keyCopy];
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    v15 = registration;
    if (errorCopy)
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412802;
        v18 = keyCopy;
        v19 = 2112;
        v20 = valueCopy;
        v21 = 2112;
        v22 = errorCopy;
        _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "Error reading telephony network information { key: %@, value: %@, error: %@ }", &v17, 0x20u);
      }
    }

    else if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195962BA0();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)supportsSMSIdentification
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_supportsSMS)
  {
    isPNRSupportedCachedValue = self->_isPNRSupportedCachedValue;
    if (isPNRSupportedCachedValue == -1)
    {
      selectedPNRSubscription = self->_selectedPNRSubscription;
      v18 = 0;
      v6 = [(FTSelectedPNRSubscription *)selectedPNRSubscription selectedPhoneNumberRegistrationSubscriptionWithError:&v18];
      v7 = v18;
      registration = [MEMORY[0x1E69A6138] registration];
      v4 = registration;
      if (v6)
      {
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
        {
          sub_195962C14();
        }

        coreTelephonyClient = self->_coreTelephonyClient;
        v17 = 0;
        v10 = [(CoreTelephonyClient *)coreTelephonyClient getPNRSupportStatus:v6 outError:&v17];
        v11 = v17;
        LODWORD(v4) = [v10 isSupported];

        registration2 = [MEMORY[0x1E69A6138] registration];
        v13 = registration2;
        if (v11)
        {
          if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
          {
            sub_195962C88();
          }

          LOBYTE(v4) = [(FTDeviceSupport *)self _legacy_supportsSMSIdentification];
        }

        else
        {
          if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
          {
            v14 = @"NO";
            if (v4)
            {
              v14 = @"YES";
            }

            *buf = 138412546;
            v20 = v14;
            v21 = 2112;
            v22 = v6;
            _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "Determined value for isPNRSupported { isPNRSupported: %@, subscription: %@ }", buf, 0x16u);
          }

          self->_isPNRSupportedCachedValue = v4;
        }
      }

      else
      {
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v7;
          _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Unable to locate user-selected subscription to check isPNRSupported -- falling back { error: %@ }", buf, 0xCu);
        }

        LOBYTE(v4) = [(FTDeviceSupport *)self _legacy_supportsSMSIdentification];
      }
    }

    else
    {
      LOBYTE(v4) = isPNRSupportedCachedValue == 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)_legacy_supportsSMSIdentification
{
  *&v17[7] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  if (qword_1EAED77B0 != -1)
  {
    sub_195962CFC();
  }

  if (qword_1EAED77C0 != -1)
  {
    sub_195962D10();
  }

  v13 = -86;
  v2 = off_1EAED77A8(*MEMORY[0x1E695E480], nullsub_1, &v10);
  if (v2)
  {
    v3 = v2;
    v4 = off_1EAED77B8(v2, &v13);
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v15 = v13;
      v16 = 1024;
      *v17 = v4;
      v17[2] = 2048;
      *&v17[3] = v4 >> 32;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionIsPhoneNumberRegistrationSupported returned value { registrationSupported: %d, error: (%d:%ld) }", buf, 0x18u);
    }

    CFRelease(v3);
    if (!v4)
    {
      result = v13 != 0;
      goto LABEL_17;
    }

    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v15 = v4;
      v16 = 2048;
      *v17 = v4 >> 32;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Failed to query _CTServerConnectionIsPhoneNumberRegistrationSupported from CT { error: (%d:%ld) }", buf, 0x12u);
    }
  }

  else
  {
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Could not create CT server connection to query _CTServerConnectionIsPhoneNumberRegistrationSupported", buf, 2u);
    }
  }

  result = 1;
LABEL_17:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)productName
{
  mEMORY[0x1E69A60B8] = [MEMORY[0x1E69A60B8] sharedInstance];
  productName = [mEMORY[0x1E69A60B8] productName];

  return productName;
}

- (NSString)productVersion
{
  mEMORY[0x1E69A60B8] = [MEMORY[0x1E69A60B8] sharedInstance];
  productVersion = [mEMORY[0x1E69A60B8] productVersion];

  return productVersion;
}

- (NSString)productBuildVersion
{
  mEMORY[0x1E69A60B8] = [MEMORY[0x1E69A60B8] sharedInstance];
  productBuildVersion = [mEMORY[0x1E69A60B8] productBuildVersion];

  return productBuildVersion;
}

- (NSString)productOSVersion
{
  v3 = MEMORY[0x1E696AEC0];
  productName = [(FTDeviceSupport *)self productName];
  productVersion = [(FTDeviceSupport *)self productVersion];
  productBuildVersion = [(FTDeviceSupport *)self productBuildVersion];
  v7 = [v3 stringWithFormat:@"%@, %@, %@", productName, productVersion, productBuildVersion];

  return v7;
}

- (void)_lockdownStateChanged:(id)changed
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isActivated = [mEMORY[0x1E69A60F0] isActivated];

  if (isActivated)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Lockdown became activated, let's notify", v8, 2u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kFaceTimeDeviceRegistrationStateChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 __mainThreadPostNotificationName:@"__kFaceTimeDeviceRegistrationCapabilityChangedNotification" object:0];
  }
}

- (BOOL)nonWifiFaceTimeAvailable
{
  v3 = +[FTEntitlementSupport sharedInstance];
  if ([v3 faceTimeNonWiFiEntitled])
  {
    v4 = [(FTDeviceSupport *)self nonWifiAvailableForBundleId:@"com.apple.facetime"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)nonWifiAvailableForBundleId:(id)id
{
  idCopy = id;
  v4 = +[FTUserConfiguration sharedInstance];
  v5 = [v4 cellularDataEnabledForBundleId:idCopy];

  if (v5)
  {
    allowAnyNetwork = 1;
  }

  else
  {
    v7 = +[FTNetworkSupport sharedInstance];
    allowAnyNetwork = [v7 allowAnyNetwork];
  }

  return allowAnyNetwork;
}

- (BOOL)wifiAllowedForBundleId:(id)id
{
  idCopy = id;
  if (MGGetBoolAnswer())
  {
    v4 = +[FTUserConfiguration sharedInstance];
    if ([v4 wifiAllowedForBundleId:idCopy])
    {
      allowAnyNetwork = 1;
    }

    else
    {
      v6 = +[FTNetworkSupport sharedInstance];
      allowAnyNetwork = [v6 allowAnyNetwork];
    }
  }

  else
  {
    allowAnyNetwork = 1;
  }

  return allowAnyNetwork;
}

- (BOOL)supportsApplePay
{
  if (qword_1ED768628 != -1)
  {
    sub_195962B18();
  }

  if (byte_1EAED7710)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Device is Dev Board, Returning YES for supporting Apple Pay", v6, 2u);
    }

    return 1;
  }

  else
  {
    supportsApplePayState = self->_supportsApplePayState;
    if (supportsApplePayState == -1)
    {
      if (qword_1EAED7700 != -1)
      {
        sub_195962D38();
      }

      supportsApplePayState = off_1EAED7708;
      if (off_1EAED7708)
      {
        supportsApplePayState = off_1EAED7708();
      }

      self->_supportsApplePayState = supportsApplePayState;
    }

    return supportsApplePayState == 1;
  }
}

- (BOOL)supportsManateeForAppleCash
{
  if (qword_1ED768628 != -1)
  {
    sub_195962B18();
  }

  if (byte_1EAED7710)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Device is Dev Board, Returning YES for supporting Apple Cash", v6, 2u);
    }

    return 1;
  }

  else
  {
    supportsManateeForAppleCash = self->_supportsManateeForAppleCash;
    if (supportsManateeForAppleCash == -1)
    {
      if (qword_1EAED76F0 != -1)
      {
        sub_195962D4C();
      }

      supportsManateeForAppleCash = off_1EAED76F8;
      if (off_1EAED76F8)
      {
        supportsManateeForAppleCash = off_1EAED76F8();
      }

      self->_supportsManateeForAppleCash = supportsManateeForAppleCash;
    }

    return supportsManateeForAppleCash == 1;
  }
}

- (BOOL)supportsRegionForAppleCash
{
  if (qword_1ED768628 != -1)
  {
    sub_195962B18();
  }

  if (byte_1EAED7710)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Device is Dev Board, Returning YES for supporting Apple Cash", v6, 2u);
    }

    return 1;
  }

  else
  {
    supportsRegionForAppleCash = self->_supportsRegionForAppleCash;
    if (supportsRegionForAppleCash == -1)
    {
      if (qword_1EAED76E0 != -1)
      {
        sub_195962D60();
      }

      supportsRegionForAppleCash = off_1EAED76E8;
      if (off_1EAED76E8)
      {
        supportsRegionForAppleCash = off_1EAED76E8();
      }

      self->_supportsRegionForAppleCash = supportsRegionForAppleCash;
    }

    return supportsRegionForAppleCash == 1;
  }
}

- (BOOL)supportsVenice
{
  supportsVeniceState = self->_supportsVeniceState;
  if (supportsVeniceState == -1)
  {
    supportsVeniceState = MGGetBoolAnswer();
    self->_supportsVeniceState = supportsVeniceState;
  }

  return supportsVeniceState == 1;
}

- (BOOL)supportsKeySharing
{
  if (qword_1ED768628 != -1)
  {
    sub_195962B18();
  }

  if (byte_1EAED7710)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Device is Dev Board, Returning YES for supporting Key Sharing", v6, 2u);
    }

    return 1;
  }

  else
  {
    supportsKeySharingState = self->_supportsKeySharingState;
    if (supportsKeySharingState == -1)
    {
      supportsKeySharingState = [MEMORY[0x19A8B8550](@"DAManager" @"DigitalAccess")];
      self->_supportsKeySharingState = supportsKeySharingState;
    }

    return supportsKeySharingState == 1;
  }
}

- (BOOL)supportsHarmony
{
  if (qword_1ED768628 != -1)
  {
    sub_195962B18();
  }

  if (byte_1EAED7710)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Device is Dev Board, Returning YES for supporting Harmony", v6, 2u);
    }

    return 1;
  }

  else
  {
    supportsHarmonyState = self->_supportsHarmonyState;
    if (supportsHarmonyState == -1)
    {
      if (qword_1ED768618 != -1)
      {
        sub_195962D74();
      }

      supportsHarmonyState = off_1ED768620;
      if (off_1ED768620)
      {
        supportsHarmonyState = off_1ED768620();
      }

      self->_supportsHarmonyState = supportsHarmonyState;
    }

    return supportsHarmonyState == 1;
  }
}

- (BOOL)supportsZelkova
{
  if (qword_1ED768628 != -1)
  {
    sub_195962B18();
  }

  if (byte_1EAED7710)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Device is Dev Board, Returning YES for supporting Zelkova", v6, 2u);
    }

    return 1;
  }

  else
  {
    supportsZelkovaState = self->_supportsZelkovaState;
    if (supportsZelkovaState == -1)
    {
      if (qword_1EAED76D0 != -1)
      {
        sub_195962D88();
      }

      supportsZelkovaState = off_1EAED76D8;
      if (off_1EAED76D8)
      {
        supportsZelkovaState = off_1EAED76D8();
      }

      self->_supportsZelkovaState = supportsZelkovaState;
    }

    return supportsZelkovaState == 1;
  }
}

- (BOOL)supportsManateeActivitySharing
{
  if (qword_1ED768628 != -1)
  {
    sub_195962B18();
  }

  if (byte_1EAED7710)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Device is Dev Board, Returning YES for supporting Activity Sharing", v6, 2u);
    }

    return 1;
  }

  else
  {
    supportsManateeActivitySharing = self->_supportsManateeActivitySharing;
    if (supportsManateeActivitySharing == -1)
    {
      supportsManateeActivitySharing = _os_feature_enabled_impl();
      self->_supportsManateeActivitySharing = supportsManateeActivitySharing;
    }

    return supportsManateeActivitySharing == 1;
  }
}

- (BOOL)supportsUWB
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED768628 != -1)
  {
    sub_195962B18();
  }

  if (byte_1EAED7710)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Device is Dev Board, Returning YES for supporting UWB", &v10, 2u);
    }

    result = 1;
  }

  else
  {
    supportsUWBState = self->_supportsUWBState;
    if (supportsUWBState == -1)
    {
      v6 = [MEMORY[0x19A8B8550](@"NISession" @"NearbyInteraction")];
      self->_supportsUWBState = v6;
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        v8 = @"NO";
        if (v6)
        {
          v8 = @"YES";
        }

        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Supports UWB: %@", &v10, 0xCu);
      }

      supportsUWBState = self->_supportsUWBState;
    }

    result = supportsUWBState == 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)slowCPUDevice
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195938CF0;
  block[3] = &unk_1E7435088;
  block[4] = self;
  if (qword_1EAED77D8 != -1)
  {
    dispatch_once(&qword_1EAED77D8, block);
  }

  return byte_1EAED77D0;
}

- (int)cpuFamily
{
  if (qword_1EAED77E8 != -1)
  {
    sub_195962D9C();
  }

  return dword_1EAED77E0;
}

- (BOOL)lowRAMDevice
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195938F9C;
  block[3] = &unk_1E7435088;
  block[4] = self;
  if (qword_1ED768668 != -1)
  {
    dispatch_once(&qword_1ED768668, block);
  }

  return byte_1EAED7778;
}

- (int64_t)memorySize
{
  if (qword_1ED768658 != -1)
  {
    sub_195962DB0();
  }

  return qword_1ED768660;
}

- (BOOL)_enoughPowerToSupportEffects
{
  v5 = 0;
  sysctlbyname("hw.cpufamily", 0, &v5, 0, 0);
  v4 = 0;
  sysctlbyname("hw.cpufamily", &v4, &v5, 0, 0);
  result = 0;
  if (v4 > 2465937351)
  {
    if (v4 > 2823887817)
    {
      if (v4 == 2823887818)
      {
        return result;
      }

      v3 = 3172666089;
    }

    else
    {
      if (v4 == 2465937352)
      {
        return result;
      }

      v3 = 2517073649;
    }
  }

  else if (v4 > 747742333)
  {
    if (v4 == 747742334)
    {
      return result;
    }

    v3 = 933271106;
  }

  else
  {
    if (v4 == 214503012)
    {
      return result;
    }

    v3 = 506291073;
  }

  if (v4 != v3)
  {
    return 1;
  }

  return result;
}

- (BOOL)supportsFunCam
{
  _enoughPowerToSupportEffects = [(FTDeviceSupport *)self _enoughPowerToSupportEffects];
  lowRAMDevice = [(FTDeviceSupport *)self lowRAMDevice];
  if ([(FTDeviceSupport *)self deviceType]== 4)
  {
    return _enoughPowerToSupportEffects && !lowRAMDevice;
  }

  else
  {
    return _enoughPowerToSupportEffects;
  }
}

@end