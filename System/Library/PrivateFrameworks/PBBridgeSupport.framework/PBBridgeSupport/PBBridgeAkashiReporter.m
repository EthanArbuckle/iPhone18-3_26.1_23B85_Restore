@interface PBBridgeAkashiReporter
+ (id)descriptionForSetUpType:(unint64_t)a3;
+ (void)incrementSetUpEvent:(unint64_t)a3;
@end

@implementation PBBridgeAkashiReporter

+ (id)descriptionForSetUpType:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      v8 = v3;
      v9 = v4;
      v5 = pbb_shared_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Unexpcted PBCAAkashiEvent.", v7, 2u);
      }

      result = &stru_286FA8098;
      break;
    case 1uLL:
      result = @"CellularPaneShown";
      break;
    case 2uLL:
      result = @"CellularPaneSkippedAreadySetUp";
      break;
    case 3uLL:
      result = @"CellularPaneSkippedBlocked";
      break;
    case 4uLL:
      result = @"CellularShownSpinner";
      break;
    case 5uLL:
      result = @"CellularShownSetUpNow";
      break;
    case 6uLL:
      result = @"CellularShownContinue";
      break;
    case 7uLL:
      result = @"CellularShownPreinstallSpinner";
      break;
    case 8uLL:
      result = @"CellularShownTrialOffer";
      break;
    case 9uLL:
      result = @"CellularShownError";
      break;
    case 0xAuLL:
      result = @"CellularShownConsentRequest";
      break;
    case 0xBuLL:
      result = @"CellularUserTappedSkip";
      break;
    case 0xCuLL:
      result = @"CellularUserTappedSetUpNow";
      break;
    case 0xDuLL:
      result = @"CellularUserTappedNext";
      break;
    case 0xEuLL:
      result = @"CellularUserTappedConsent";
      break;
    case 0xFuLL:
      result = @"CellularUserTappedTransfer";
      break;
    case 0x10uLL:
      result = @"CellularUserTappedSetUpNew";
      break;
    default:
      result = &stru_286FA8098;
      break;
  }

  return result;
}

+ (void)incrementSetUpEvent:(unint64_t)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"setUpType";
  v3 = [PBBridgeAkashiReporter descriptionForSetUpType:a3];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  AnalyticsSendEvent();
  v5 = *MEMORY[0x277D85DE8];
}

@end