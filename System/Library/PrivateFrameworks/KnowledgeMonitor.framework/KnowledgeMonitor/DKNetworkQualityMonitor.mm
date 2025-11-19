@interface DKNetworkQualityMonitor
@end

@implementation DKNetworkQualityMonitor

uint64_t __48___DKNetworkQualityMonitor_didStartTrackingNOI___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateInstantQuality];
  [*(a1 + 32) updatePredictionAsync];
  v2 = *(a1 + 32);

  return [v2 updateInterfaceClass];
}

uint64_t __75___DKNetworkQualityMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"predictionsGeneratedAt"])
  {
    v2 = *(a1 + 40);

    return [v2 updatePredictionAsync];
  }

  else if ([*(a1 + 32) isEqualToString:@"discretionaryTrafficInvited"])
  {
    v4 = *(a1 + 40);

    return [v4 updateDiscretionaryTrafficInvited];
  }

  else if ([*(a1 + 32) isEqualToString:@"linkQuality"])
  {
    v5 = *(a1 + 40);

    return [v5 updateInstantQuality];
  }

  else if ([*(a1 + 32) isEqualToString:@"powerCostDL"])
  {
    v6 = *(a1 + 40);

    return [v6 updatePowerCostDL];
  }

  else if ([*(a1 + 32) isEqualToString:@"powerCostUL"])
  {
    v7 = *(a1 + 40);

    return [v7 updatePowerCostUL];
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:@"interfaceClass"];
    if (result)
    {
      v8 = *(a1 + 40);

      return [v8 updateInterfaceClass];
    }
  }

  return result;
}

@end