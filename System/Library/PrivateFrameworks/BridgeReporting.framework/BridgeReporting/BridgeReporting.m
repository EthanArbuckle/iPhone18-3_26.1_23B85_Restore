void sub_241ECCC94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_241ECCE68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_241ECD2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_241ECDDA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

uint64_t BRIsInternalInstall()
{
  if (BRIsInternalInstall___onceToken != -1)
  {
    BRIsInternalInstall_cold_1();
  }

  return BRIsInternalInstall___internalInstall;
}

uint64_t __BRIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  BRIsInternalInstall___internalInstall = result;
  return result;
}

uint64_t BRAutomation()
{
  if (BRIsInternalInstall___onceToken != -1)
  {
    BRIsInternalInstall_cold_1();
  }

  if (BRIsInternalInstall___internalInstall != 1)
  {
    return 0;
  }

  if (CFPreferencesGetAppBooleanValue(@"_ShowInternalAutomationUI", @"com.apple.nanobuddy.automationhelper", 0))
  {
    return 1;
  }

  result = CFPreferencesGetAppBooleanValue(@"PairingAutomationDevice", @"com.apple.nanobuddy", 0);
  if (result)
  {
    return 1;
  }

  return result;
}

id BRGetCurrentMetricIDFromMetricDir()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = @"/var/mobile/Library/Caches/com.apple.Bridge/PairingMetric";
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v1 fileExistsAtPath:v0])
  {
    v2 = [v1 contentsOfDirectoryAtPath:v0 error:0];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v13;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          if ([v8 containsString:@"pairing_metric"])
          {
            v9 = v8;

            v5 = v9;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

id BRGetAllMetricKeysAndValues()
{
  v21[2] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = MEMORY[0x277CCACA8];
  v21[0] = @"/var/mobile/Library/Caches/com.apple.Bridge/PairingMetric";
  v2 = BRGetCurrentMetricIDFromMetricDir();
  v21[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v4 = [v1 pathWithComponents:v3];

  v5 = MEMORY[0x277CBEBC0];
  v6 = MEMORY[0x277CCACA8];
  v20[0] = v4;
  v20[1] = @"BridgePairingMetricDetails.plist";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v8 = [v6 pathWithComponents:v7];
  v9 = [v5 fileURLWithPath:v8];

  v10 = MEMORY[0x277CBEBC0];
  v11 = MEMORY[0x277CCACA8];
  v19[0] = v4;
  v19[1] = @"NRPairingMetricDetails.plist";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v13 = [v11 pathWithComponents:v12];
  v14 = [v10 fileURLWithPath:v13];

  v15 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v9];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v14];
  if (v15)
  {
    [v0 addEntriesFromDictionary:v15];
  }

  if (v16)
  {
    [v0 addEntriesFromDictionary:v16];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v0;
}

BOOL BRStaleOrNoPairingMetric()
{
  v16[2] = *MEMORY[0x277D85DE8];
  v0 = BRGetCurrentMetricIDFromMetricDir();

  if (v0)
  {
    v1 = MEMORY[0x277CCACA8];
    v16[0] = @"/var/mobile/Library/Caches/com.apple.Bridge/PairingMetric";
    v2 = BRGetCurrentMetricIDFromMetricDir();
    v16[1] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v4 = [v1 pathWithComponents:v3];

    v5 = MEMORY[0x277CBEBC0];
    v6 = MEMORY[0x277CCACA8];
    v15[0] = v4;
    v15[1] = @"NRPairingMetricDetails.plist";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v8 = [v6 pathWithComponents:v7];
    v9 = [v5 fileURLWithPath:v8];

    v10 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:v9];
    v11 = [v10 objectForKey:@"MetricSubmitted"];

    v12 = v11 != 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t BRSignInPairingTimeEventForAccountType(void *a1, int a2, int a3)
{
  v5 = a1;
  if ([v5 isEqualToString:@"iCloud"])
  {
    v6 = a3 == 0;
    v7 = 22;
    if (a3)
    {
      v7 = 23;
    }

    v8 = 20;
  }

  else if ([v5 isEqualToString:@"iTunes"])
  {
    v6 = a3 == 0;
    v7 = 27;
    if (a3)
    {
      v7 = 28;
    }

    v8 = 25;
  }

  else if ([v5 isEqualToString:@"iMessage"])
  {
    v6 = a3 == 0;
    v7 = 32;
    if (a3)
    {
      v7 = 33;
    }

    v8 = 30;
  }

  else
  {
    if (![v5 isEqualToString:@"FaceTime"])
    {
      v9 = 49;
      goto LABEL_22;
    }

    v6 = a3 == 0;
    v7 = 37;
    if (a3)
    {
      v7 = 38;
    }

    v8 = 35;
  }

  if (!v6)
  {
    ++v8;
  }

  if (a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

LABEL_22:

  return v9;
}

uint64_t BRSignInFailureErrorForAccountType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iCloud"])
  {
    v2 = 45;
  }

  else if ([v1 isEqualToString:@"iTunes"])
  {
    v2 = 46;
  }

  else if ([v1 isEqualToString:@"iMessage"])
  {
    v2 = 47;
  }

  else if ([v1 isEqualToString:@"FaceTime"])
  {
    v2 = 48;
  }

  else
  {
    v2 = 49;
  }

  return v2;
}

__CFString *BRPairingTimeEventToString(uint64_t a1)
{
  v3 = @"UnrecognizedBRPairingTimeEventType";
  v4 = kScannedWatchCode;
  switch(a1)
  {
    case 0:
      v4 = kNRPairingFailure;
      goto LABEL_79;
    case 1:
      v4 = kUserBackedOutAfterNRPairingSuccess;
      goto LABEL_79;
    case 2:
      v4 = kNRPairingSuccess;
      goto LABEL_79;
    case 3:
      v4 = kGizmoBuild;
      goto LABEL_79;
    case 4:
      v4 = kGizmoHW;
      goto LABEL_79;
    case 5:
      v4 = kNRSubreason;
      goto LABEL_79;
    case 6:
      goto LABEL_79;
    case 7:
      v4 = kUHPPair;
      goto LABEL_79;
    case 8:
      v4 = kBeginNRHPPairing;
      goto LABEL_79;
    case 9:
      v4 = kFireLockOn;
      goto LABEL_79;
    case 10:
      v4 = kSelectedLeftWrist;
      goto LABEL_79;
    case 11:
      v4 = kSelectedRestoreChoice;
      goto LABEL_79;
    case 12:
      v4 = kStartedActivation;
      goto LABEL_79;
    case 13:
      v4 = kWatchActivated;
      goto LABEL_79;
    case 14:
      v4 = kTermsPresented;
      goto LABEL_79;
    case 15:
      v4 = kPairingEndedBeforeNRPairing;
      goto LABEL_79;
    case 16:
      v4 = kEndToEndPairingComplete;
      goto LABEL_79;
    case 17:
      v4 = kEndToEndPairingTimed;
      goto LABEL_79;
    case 18:
      v4 = kWatchActivationTimed;
      goto LABEL_79;
    case 19:
      v4 = kStartSilentSignIn;
      goto LABEL_79;
    case 20:
      v4 = kiCloudSilentSignInSuccess;
      goto LABEL_79;
    case 21:
      v4 = kiCloudSilentSignTimed;
      goto LABEL_79;
    case 22:
      v4 = kiCloudPasswordSignInSuccess;
      goto LABEL_79;
    case 23:
      v4 = kiCloudPasswordSignInTimed;
      goto LABEL_79;
    case 24:
      v4 = kiCloudPasswordSignInSkipped;
      goto LABEL_79;
    case 25:
      v4 = kiTunesSilentSignInSuccess;
      goto LABEL_79;
    case 26:
      v4 = kiTunesSilentSignInTimed;
      goto LABEL_79;
    case 27:
      v4 = kiTunesPasswordSignInSuccess;
      goto LABEL_79;
    case 28:
      v4 = kiTunesPasswordSignInTimed;
      goto LABEL_79;
    case 29:
      v4 = kiTunesPasswordSignInSkipped;
      goto LABEL_79;
    case 30:
      v4 = kiMessageSilentSignInSuccess;
      goto LABEL_79;
    case 31:
      v4 = kiMessageSilentSignInTimed;
      goto LABEL_79;
    case 32:
      v4 = kiMessagePasswordSignInSuccess;
      goto LABEL_79;
    case 33:
      v4 = kiMessagePasswordSignInTimed;
      goto LABEL_79;
    case 34:
      v4 = kiMessagePasswordSignInSkipped;
      goto LABEL_79;
    case 35:
      v4 = kFaceTimeSilentSignInSuccess;
      goto LABEL_79;
    case 36:
      v4 = kFaceTimeSilentSignInTimed;
      goto LABEL_79;
    case 37:
      v4 = kFaceTimePasswordSignInSuccess;
      goto LABEL_79;
    case 38:
      v4 = kFaceTimePasswordSignInTimed;
      goto LABEL_79;
    case 39:
      v4 = kFaceTimePasswordSignInSkipped;
      goto LABEL_79;
    case 40:
      v4 = kSilentSignInSuccess;
      goto LABEL_79;
    case 41:
      v4 = kLastControllerAction;
      goto LABEL_79;
    case 42:
      v4 = kSignInSuccessful;
      goto LABEL_79;
    case 43:
      v4 = kSignInTimed;
      goto LABEL_79;
    case 44:
      v4 = kSilentSignInTimed;
      goto LABEL_79;
    case 45:
      v4 = kiCloudSignInFailureError;
      goto LABEL_79;
    case 46:
      v4 = kiTunesSignInFailureError;
      goto LABEL_79;
    case 47:
      v4 = kiMessageSignInFailureError;
      goto LABEL_79;
    case 48:
      v4 = kFaceTimeSignInFailureError;
      goto LABEL_79;
    case 49:
      v4 = kUnexpectedEvent;
      goto LABEL_79;
    case 50:
      v4 = kAutomationFlow;
      goto LABEL_79;
    case 51:
      v4 = kAlreadyPairedWatchCount;
      goto LABEL_79;
    case 52:
      v4 = kArchivedWatchCount;
      goto LABEL_79;
    case 53:
      v4 = kAlreadyTinkerPairedWatchCount;
      goto LABEL_79;
    case 54:
      v4 = kTinkerPairing;
      goto LABEL_79;
    case 55:
      v4 = kUserBackedOutInSUPane;
      goto LABEL_79;
    case 56:
      v4 = kUserBackedOutInSUChoice;
      goto LABEL_79;
    case 57:
      v4 = kSelectedUpdateChoice;
      goto LABEL_79;
    case 58:
      v4 = kInitiatedSUInstall;
      goto LABEL_79;
    case 59:
      v4 = kNoSUFound;
      goto LABEL_79;
    case 60:
      v4 = kSUScanErrorCode;
      goto LABEL_79;
    case 61:
      v4 = kForcedSU;
      goto LABEL_79;
    case 62:
      v4 = BRStartedCDPEnrollment;
      goto LABEL_79;
    case 63:
      v4 = BRCDPEnrollmentSuccess;
      goto LABEL_79;
    case 64:
      v4 = BRCDPEnrollmentTimed;
      goto LABEL_79;
    case 65:
      v4 = BRTinkerSignInErrorCode;
      goto LABEL_79;
    case 66:
      v4 = BRTinkerSignInErrorDomain;
      goto LABEL_79;
    case 67:
      v4 = BRBridgeAppTerminated;
      goto LABEL_79;
    case 68:
      v4 = kIPEComplete;
      goto LABEL_79;
    case 69:
      v4 = kInitialSyncBegan;
      goto LABEL_79;
    case 70:
      v4 = kUnsupportedCompanionSoftware;
      goto LABEL_79;
    case 71:
      v4 = kUnsupportedTinkerHardware;
      goto LABEL_79;
    case 72:
      v4 = kCancelledEnterPinPane;
      goto LABEL_79;
    case 74:
      v4 = kYorktownEnrolledWatchesCount;
      goto LABEL_79;
    case 75:
      v4 = kYorktownEnrollmentSuccess;
      goto LABEL_79;
    case 76:
      v4 = kYorktownEnrollmentFailureErrorCode;
      goto LABEL_79;
    case 77:
      v4 = kYorktownEnrollmentRetryCount;
      goto LABEL_79;
    case 78:
      v4 = kNetworkRelayPairing;
LABEL_79:
      v3 = *v4;
      break;
    default:
      break;
  }

  return v3;
}

void ___utilityQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("BRReportingSession.queue", v2);
  v1 = _utilityQueue_queue;
  _utilityQueue_queue = v0;
}

id br_metriccollection_log()
{
  if (br_metriccollection_log_onceToken != -1)
  {
    br_metriccollection_log_cold_1();
  }

  v1 = br_metriccollection_log___logger;

  return v1;
}

uint64_t __br_metriccollection_log_block_invoke()
{
  br_metriccollection_log___logger = os_log_create("com.apple.BridgeReporting", "metriccollection");

  return MEMORY[0x2821F96F8]();
}

void sub_241ED10B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}