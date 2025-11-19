@interface MAAutoAssetError
+ (id)buildError:(int64_t)a3 fromOperation:(id)a4 underlyingError:(id)a5 withDescription:(id)a6;
+ (id)stringForCode:(int64_t)a3;
+ (id)summaryForCode:(int64_t)a3 fromOperation:(id)a4;
+ (void)mapAutoAssetErrorIndications;
@end

@implementation MAAutoAssetError

+ (id)stringForCode:(int64_t)a3
{
  result = @"MAAutoAssetError";
  if (a3 > 6500)
  {
    if (a3 <= 6700)
    {
      switch(a3)
      {
        case 6501:
          result = @"NotCurrentlyLocked";
          break;
        case 6502:
          result = @"LockInitiatedNoWait";
          break;
        case 6503:
          result = @"LockNoWaitNoDownloadedAsset";
          break;
        case 6504:
          result = @"LockAttemptedNoDownloadedAsset";
          break;
        case 6505:
          result = @"LockTimeoutNoDownloadedAsset";
          break;
        case 6531:
          result = @"NotSecureAssetFormat";
          break;
        case 6532:
          result = @"SecureOperationInProgress";
          break;
        case 6533:
          result = @"WouldRequireNetwork";
          break;
        case 6534:
          result = @"SecureOperationFailure";
          break;
        case 6535:
          result = @"SecureUnableToPersonalize";
          break;
        case 6536:
          result = @"SecureUnableToBeginAccess";
          break;
        case 6537:
          result = @"SecureUnableToMapToExclave";
          break;
        case 6538:
          result = @"SecureUnableToGraftDeviceLocked";
          break;
        case 6551:
          result = @"SetAtomicInstanceUnknown";
          break;
        case 6552:
          result = @"SetSubAtomicInstanceUnavailable";
          break;
        case 6553:
          result = @"SetSubAtomicInstanceReference";
          break;
        case 6554:
          result = @"SetConfigurationInvalid";
          break;
        case 6555:
          result = @"SetEmptyEntriesNotValid";
          break;
        case 6556:
          result = @"SetNoneFoundServerSide";
          break;
        case 6557:
          result = @"SetAtomicInstanceOrphaned";
          break;
        case 6558:
          result = @"SetIdentifierNotFound";
          break;
        case 6559:
          result = @"SetJobNoLatestToVend";
          break;
        case 6560:
          result = @"SetJobNewerOncePersonalized";
          break;
        case 6561:
          result = @"SetNotYetServiced";
          break;
        case 6562:
          result = @"SetJobActive";
          break;
        case 6563:
          result = @"SetAtomicInstanceIncomplete";
          break;
        case 6564:
          result = @"SetAtomicInstanceEliminated";
          break;
        case 6570:
          result = @"PolicyInvalidClientRequest";
          break;
        case 6571:
          result = @"PolicyInvalidUserInitiated";
          break;
        case 6572:
          result = @"PolicyInvalidLockInhibits";
          break;
        case 6573:
          result = @"PolicyInvalidBlockCheck";
          break;
        case 6580:
          result = @"InvalidForLockerMode";
          break;
        case 6581:
          result = @"RestrictedToLockerMode";
          break;
        case 6582:
          result = @"NoSharedLock";
          break;
        case 6583:
          result = @"FailedSharedLockPreparation";
          break;
        case 6584:
          result = @"ShortTermLocked";
          break;
        case 6601:
          result = @"StagingOperationReplaced";
          break;
        case 6602:
          result = @"StagingDetermineUnableWhenRequired";
          break;
        case 6603:
          result = @"StagingDetermineUnableNoRequired";
          break;
        case 6604:
          result = @"StagingDetermineAlreadyDownloading";
          break;
        case 6605:
          result = @"StagingDetermineAlreadyDownloaded";
          break;
        case 6606:
          result = @"StagingWrongMode";
          break;
        case 6607:
          result = @"StagingAlreadyDetermining";
          break;
        case 6608:
          result = @"StagingNoGroupsStaged";
          break;
        case 6609:
          result = @"StagingOperationCanceled";
          break;
        case 6611:
          result = @"StagingDownloadUnableWhenRequired";
          break;
        case 6612:
          result = @"StagingDifferentClientThanLatched";
          break;
        case 6613:
          result = @"StagingSpecifierNotInLookupResults";
          break;
        default:
          return result;
      }

      return result;
    }

    v4 = 6702;
    v15 = @"NotImplemented";
    if (a3 != 6801)
    {
      v15 = @"MAAutoAssetError";
    }

    if (a3 == 6703)
    {
      v6 = @"BlockedSuspendedForSoftwareUpdate";
    }

    else
    {
      v6 = v15;
    }

    v7 = @"BlockedNoNetwork";
    v8 = a3 == 6702;
    v9 = @"BlockedRecentUserActivity";
    v10 = 6701;
    goto LABEL_36;
  }

  if (a3 > 6200)
  {
    if (a3 <= 6206)
    {
      v4 = 6203;
      v6 = @"CheckInitiatedNoWait";
      v11 = @"CheckNoWaitNoDownloadedAsset";
      if (a3 != 6206)
      {
        v11 = @"MAAutoAssetError";
      }

      if (a3 == 6205)
      {
        v12 = @"SameVersionFound";
      }

      else
      {
        v12 = v11;
      }

      if (a3 != 6204)
      {
        v6 = v12;
      }

      v13 = @"NewerVersionRevoked";
      v14 = @"AvailableVersionRevoked";
      if (a3 != 6203)
      {
        v14 = @"MAAutoAssetError";
      }

      if (a3 != 6202)
      {
        v13 = v14;
      }

      if (a3 == 6201)
      {
        v7 = @"NoVersionFound";
      }

      else
      {
        v7 = v13;
      }

      goto LABEL_40;
    }

    if (a3 > 6209)
    {
      v4 = 6300;
      v5 = @"DownloadPostponed";
      if (a3 != 6401)
      {
        v5 = @"MAAutoAssetError";
      }

      if (a3 == 6301)
      {
        v6 = @"NotAwareOfAsset";
      }

      else
      {
        v6 = v5;
      }

      v7 = @"SomeContentNotAvailable";
      v8 = a3 == 6251;
      v9 = @"CheckNoWaitNoDownloadedInstance";
      v10 = 6210;
LABEL_36:
      if (!v8)
      {
        v9 = @"MAAutoAssetError";
      }

      if (a3 != v10)
      {
        v7 = v9;
      }

LABEL_40:
      if (a3 <= v4)
      {
        return v7;
      }

      else
      {
        return v6;
      }
    }

    if (a3 == 6209)
    {
      v16 = @"NotEnoughSpaceForSetDownload";
    }

    else
    {
      v16 = @"MAAutoAssetError";
    }

    if (a3 == 6208)
    {
      v17 = @"CheckTimeoutNoDownloadedAsset";
    }

    else
    {
      v17 = v16;
    }

    if (a3 == 6207)
    {
      return @"CheckAttemptedNoDownloadedAsset";
    }

    else
    {
      return v17;
    }
  }

  else
  {
    switch(a3)
    {
      case 6101:
        result = @"ResourceUnavailable";
        break;
      case 6102:
        result = @"MissingParameter";
        break;
      case 6103:
        result = @"InvalidInstance";
        break;
      case 6104:
        result = @"CommunicationFailure";
        break;
      case 6105:
        result = @"OperationTimedOut";
        break;
      case 6106:
        result = @"UnknownOperation";
        break;
      case 6107:
        result = @"UnderlyingError";
        break;
      case 6108:
        result = @"InvalidValue";
        break;
      case 6109:
        result = @"TooManyEntries";
        break;
      case 6110:
        result = @"NoValidEntries";
        break;
      case 6111:
        result = @"MissingReference";
        break;
      case 6112:
        result = @"NotSupportedForSimulator";
        break;
      case 6113:
        result = @"BusyPerformingOperation";
        break;
      case 6114:
        result = @"EliminationInProgress";
        break;
      case 6115:
        result = @"OperationCanceled";
        break;
      case 6116:
        result = @"CorruptedAtomicEntries";
        break;
      default:
        if (!a3)
        {
          result = @"SUCCESS";
        }

        break;
    }
  }

  return result;
}

+ (id)summaryForCode:(int64_t)a3 fromOperation:(id)a4
{
  v5 = a4;
  v6 = [MAAutoAssetError stringForCode:a3];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@(%lld)", v5, v6, a3];

  return v7;
}

+ (void)mapAutoAssetErrorIndications
{
  if (mapAutoAssetErrorIndications_autoAssetErrorInfoOnce != -1)
  {
    +[MAAutoAssetError mapAutoAssetErrorIndications];
  }
}

void __48__MAAutoAssetError_mapAutoAssetErrorIndications__block_invoke()
{
  v0 = MEMORY[0x1E69D3888];
  v1 = [MAAutoAssetError stringForCode:0];
  [v0 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:0 codeName:v1];

  v2 = MEMORY[0x1E69D3888];
  v3 = [MAAutoAssetError stringForCode:6101];
  [v2 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6101 codeName:v3];

  v4 = MEMORY[0x1E69D3888];
  v5 = [MAAutoAssetError stringForCode:6102];
  [v4 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6102 codeName:v5];

  v6 = MEMORY[0x1E69D3888];
  v7 = [MAAutoAssetError stringForCode:6103];
  [v6 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6103 codeName:v7];

  v8 = MEMORY[0x1E69D3888];
  v9 = [MAAutoAssetError stringForCode:6104];
  [v8 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6104 codeName:v9];

  v10 = MEMORY[0x1E69D3888];
  v11 = [MAAutoAssetError stringForCode:6105];
  [v10 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6105 codeName:v11];

  v12 = MEMORY[0x1E69D3888];
  v13 = [MAAutoAssetError stringForCode:6106];
  [v12 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6106 codeName:v13];

  v14 = MEMORY[0x1E69D3888];
  v15 = [MAAutoAssetError stringForCode:6107];
  [v14 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6107 codeName:v15];

  v16 = MEMORY[0x1E69D3888];
  v17 = [MAAutoAssetError stringForCode:6108];
  [v16 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6108 codeName:v17];

  v18 = MEMORY[0x1E69D3888];
  v19 = [MAAutoAssetError stringForCode:6109];
  [v18 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6109 codeName:v19];

  v20 = MEMORY[0x1E69D3888];
  v21 = [MAAutoAssetError stringForCode:6110];
  [v20 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6110 codeName:v21];

  v22 = MEMORY[0x1E69D3888];
  v23 = [MAAutoAssetError stringForCode:6111];
  [v22 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6111 codeName:v23];

  v24 = MEMORY[0x1E69D3888];
  v25 = [MAAutoAssetError stringForCode:6112];
  [v24 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6112 codeName:v25];

  v26 = MEMORY[0x1E69D3888];
  v27 = [MAAutoAssetError stringForCode:6113];
  [v26 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6113 codeName:v27];

  v28 = MEMORY[0x1E69D3888];
  v29 = [MAAutoAssetError stringForCode:6114];
  [v28 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6114 codeName:v29];

  v30 = MEMORY[0x1E69D3888];
  v31 = [MAAutoAssetError stringForCode:6115];
  [v30 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6115 codeName:v31];

  v32 = MEMORY[0x1E69D3888];
  v33 = [MAAutoAssetError stringForCode:6116];
  [v32 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6116 codeName:v33];

  v34 = MEMORY[0x1E69D3888];
  v35 = [MAAutoAssetError stringForCode:6201];
  [v34 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6201 codeName:v35];

  v36 = MEMORY[0x1E69D3888];
  v37 = [MAAutoAssetError stringForCode:6202];
  [v36 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6202 codeName:v37];

  v38 = MEMORY[0x1E69D3888];
  v39 = [MAAutoAssetError stringForCode:6203];
  [v38 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6203 codeName:v39];

  v40 = MEMORY[0x1E69D3888];
  v41 = [MAAutoAssetError stringForCode:6204];
  [v40 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6204 codeName:v41];

  v42 = MEMORY[0x1E69D3888];
  v43 = [MAAutoAssetError stringForCode:6205];
  [v42 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6205 codeName:v43];

  v44 = MEMORY[0x1E69D3888];
  v45 = [MAAutoAssetError stringForCode:6206];
  [v44 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6206 codeName:v45];

  v46 = MEMORY[0x1E69D3888];
  v47 = [MAAutoAssetError stringForCode:6207];
  [v46 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6207 codeName:v47];

  v48 = MEMORY[0x1E69D3888];
  v49 = [MAAutoAssetError stringForCode:6208];
  [v48 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6208 codeName:v49];

  v50 = MEMORY[0x1E69D3888];
  v51 = [MAAutoAssetError stringForCode:6209];
  [v50 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6209 codeName:v51];

  v52 = MEMORY[0x1E69D3888];
  v53 = [MAAutoAssetError stringForCode:6210];
  [v52 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6210 codeName:v53];

  v54 = MEMORY[0x1E69D3888];
  v55 = [MAAutoAssetError stringForCode:6251];
  [v54 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6251 codeName:v55];

  v56 = MEMORY[0x1E69D3888];
  v57 = [MAAutoAssetError stringForCode:6301];
  [v56 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6301 codeName:v57];

  v58 = MEMORY[0x1E69D3888];
  v59 = [MAAutoAssetError stringForCode:6401];
  [v58 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6401 codeName:v59];

  v60 = MEMORY[0x1E69D3888];
  v61 = [MAAutoAssetError stringForCode:6501];
  [v60 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6501 codeName:v61];

  v62 = MEMORY[0x1E69D3888];
  v63 = [MAAutoAssetError stringForCode:6502];
  [v62 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6502 codeName:v63];

  v64 = MEMORY[0x1E69D3888];
  v65 = [MAAutoAssetError stringForCode:6503];
  [v64 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6503 codeName:v65];

  v66 = MEMORY[0x1E69D3888];
  v67 = [MAAutoAssetError stringForCode:6504];
  [v66 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6504 codeName:v67];

  v68 = MEMORY[0x1E69D3888];
  v69 = [MAAutoAssetError stringForCode:6505];
  [v68 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6505 codeName:v69];

  v70 = MEMORY[0x1E69D3888];
  v71 = [MAAutoAssetError stringForCode:6531];
  [v70 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6531 codeName:v71];

  v72 = MEMORY[0x1E69D3888];
  v73 = [MAAutoAssetError stringForCode:6532];
  [v72 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6532 codeName:v73];

  v74 = MEMORY[0x1E69D3888];
  v75 = [MAAutoAssetError stringForCode:6533];
  [v74 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6533 codeName:v75];

  v76 = MEMORY[0x1E69D3888];
  v77 = [MAAutoAssetError stringForCode:6534];
  [v76 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6534 codeName:v77];

  v78 = MEMORY[0x1E69D3888];
  v79 = [MAAutoAssetError stringForCode:6535];
  [v78 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6535 codeName:v79];

  v80 = MEMORY[0x1E69D3888];
  v81 = [MAAutoAssetError stringForCode:6536];
  [v80 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6536 codeName:v81];

  v82 = MEMORY[0x1E69D3888];
  v83 = [MAAutoAssetError stringForCode:6537];
  [v82 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6537 codeName:v83];

  v84 = MEMORY[0x1E69D3888];
  v85 = [MAAutoAssetError stringForCode:6538];
  [v84 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6538 codeName:v85];

  v86 = MEMORY[0x1E69D3888];
  v87 = [MAAutoAssetError stringForCode:6551];
  [v86 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6551 codeName:v87];

  v88 = MEMORY[0x1E69D3888];
  v89 = [MAAutoAssetError stringForCode:6552];
  [v88 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6552 codeName:v89];

  v90 = MEMORY[0x1E69D3888];
  v91 = [MAAutoAssetError stringForCode:6553];
  [v90 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6553 codeName:v91];

  v92 = MEMORY[0x1E69D3888];
  v93 = [MAAutoAssetError stringForCode:6554];
  [v92 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6554 codeName:v93];

  v94 = MEMORY[0x1E69D3888];
  v95 = [MAAutoAssetError stringForCode:6555];
  [v94 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6555 codeName:v95];

  v96 = MEMORY[0x1E69D3888];
  v97 = [MAAutoAssetError stringForCode:6556];
  [v96 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6556 codeName:v97];

  v98 = MEMORY[0x1E69D3888];
  v99 = [MAAutoAssetError stringForCode:6557];
  [v98 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6557 codeName:v99];

  v100 = MEMORY[0x1E69D3888];
  v101 = [MAAutoAssetError stringForCode:6558];
  [v100 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6558 codeName:v101];

  v102 = MEMORY[0x1E69D3888];
  v103 = [MAAutoAssetError stringForCode:6559];
  [v102 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6559 codeName:v103];

  v104 = MEMORY[0x1E69D3888];
  v105 = [MAAutoAssetError stringForCode:6560];
  [v104 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6560 codeName:v105];

  v106 = MEMORY[0x1E69D3888];
  v107 = [MAAutoAssetError stringForCode:6561];
  [v106 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6561 codeName:v107];

  v108 = MEMORY[0x1E69D3888];
  v109 = [MAAutoAssetError stringForCode:6562];
  [v108 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6562 codeName:v109];

  v110 = MEMORY[0x1E69D3888];
  v111 = [MAAutoAssetError stringForCode:6563];
  [v110 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6563 codeName:v111];

  v112 = MEMORY[0x1E69D3888];
  v113 = [MAAutoAssetError stringForCode:6564];
  [v112 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6564 codeName:v113];

  v114 = MEMORY[0x1E69D3888];
  v115 = [MAAutoAssetError stringForCode:6570];
  [v114 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6570 codeName:v115];

  v116 = MEMORY[0x1E69D3888];
  v117 = [MAAutoAssetError stringForCode:6571];
  [v116 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6571 codeName:v117];

  v118 = MEMORY[0x1E69D3888];
  v119 = [MAAutoAssetError stringForCode:6572];
  [v118 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6572 codeName:v119];

  v120 = MEMORY[0x1E69D3888];
  v121 = [MAAutoAssetError stringForCode:6573];
  [v120 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6573 codeName:v121];

  v122 = MEMORY[0x1E69D3888];
  v123 = [MAAutoAssetError stringForCode:6580];
  [v122 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6580 codeName:v123];

  v124 = MEMORY[0x1E69D3888];
  v125 = [MAAutoAssetError stringForCode:6581];
  [v124 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6581 codeName:v125];

  v126 = MEMORY[0x1E69D3888];
  v127 = [MAAutoAssetError stringForCode:6582];
  [v126 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6582 codeName:v127];

  v128 = MEMORY[0x1E69D3888];
  v129 = [MAAutoAssetError stringForCode:6583];
  [v128 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6583 codeName:v129];

  v130 = MEMORY[0x1E69D3888];
  v131 = [MAAutoAssetError stringForCode:6584];
  [v130 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6584 codeName:v131];

  v132 = MEMORY[0x1E69D3888];
  v133 = [MAAutoAssetError stringForCode:6601];
  [v132 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6601 codeName:v133];

  v134 = MEMORY[0x1E69D3888];
  v135 = [MAAutoAssetError stringForCode:6602];
  [v134 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6602 codeName:v135];

  v136 = MEMORY[0x1E69D3888];
  v137 = [MAAutoAssetError stringForCode:6603];
  [v136 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6603 codeName:v137];

  v138 = MEMORY[0x1E69D3888];
  v139 = [MAAutoAssetError stringForCode:6604];
  [v138 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6604 codeName:v139];

  v140 = MEMORY[0x1E69D3888];
  v141 = [MAAutoAssetError stringForCode:6605];
  [v140 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6605 codeName:v141];

  v142 = MEMORY[0x1E69D3888];
  v143 = [MAAutoAssetError stringForCode:6606];
  [v142 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6606 codeName:v143];

  v144 = MEMORY[0x1E69D3888];
  v145 = [MAAutoAssetError stringForCode:6607];
  [v144 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6607 codeName:v145];

  v146 = MEMORY[0x1E69D3888];
  v147 = [MAAutoAssetError stringForCode:6608];
  [v146 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6608 codeName:v147];

  v148 = MEMORY[0x1E69D3888];
  v149 = [MAAutoAssetError stringForCode:6609];
  [v148 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6609 codeName:v149];

  v150 = MEMORY[0x1E69D3888];
  v151 = [MAAutoAssetError stringForCode:6611];
  [v150 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6611 codeName:v151];

  v152 = MEMORY[0x1E69D3888];
  v153 = [MAAutoAssetError stringForCode:6612];
  [v152 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6612 codeName:v153];

  v154 = MEMORY[0x1E69D3888];
  v155 = [MAAutoAssetError stringForCode:6613];
  [v154 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6613 codeName:v155];

  v156 = MEMORY[0x1E69D3888];
  v157 = [MAAutoAssetError stringForCode:6701];
  [v156 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6701 codeName:v157];

  v158 = MEMORY[0x1E69D3888];
  v159 = [MAAutoAssetError stringForCode:6702];
  [v158 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6702 codeName:v159];

  v160 = MEMORY[0x1E69D3888];
  v161 = [MAAutoAssetError stringForCode:6703];
  [v160 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6703 codeName:v161];

  v162 = MEMORY[0x1E69D3888];
  v163 = [MAAutoAssetError stringForCode:6801];
  [v162 attributesOfErrorForDomain:@"com.apple.MobileAssetError.AutoAsset" withCode:6801 codeName:v163];
}

+ (id)buildError:(int64_t)a3 fromOperation:(id)a4 underlyingError:(id)a5 withDescription:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = objc_opt_new();
  v13 = [MAAutoAssetError summaryForCode:a3 fromOperation:v11];

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v10)
  {
    v15 = [v14 initWithFormat:@"[%@] %@", v13, v10];
  }

  else
  {
    v15 = [v14 initWithFormat:@"[%@]", v13, v19];
  }

  v16 = v15;
  if (v15)
  {
    [v12 setObject:v15 forKey:*MEMORY[0x1E696A578]];
  }

  if (v9)
  {
    [v12 setObject:v9 forKey:*MEMORY[0x1E696AA08]];
  }

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.MobileAssetError.AutoAsset" code:a3 userInfo:v12];

  return v17;
}

@end