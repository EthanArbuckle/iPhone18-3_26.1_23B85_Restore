@interface SelectRouteDescriptor
@end

@implementation SelectRouteDescriptor

uint64_t __routingContextResilientRemote_SelectRouteDescriptor_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 16);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 16) + 16;

  return v6(a2, v3, v4);
}

void __routingContext_SelectRouteDescriptor_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigRoutingManagerContextUtilities_GetContextType(*(DerivedStorage + 8)) == 13 && MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    if (dword_1EB75DF40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(a1 + 48);
    Value = FigCFDictionaryGetValue();
    v7 = *(a1 + 48);
    v8 = FigCFDictionaryGetValue();
    v9 = *(a1 + 40);
    v10 = FigCFDictionaryGetValue();
    [+[MXUserPreferredInputRouteCache sharedInstance](MXUserPreferredInputRouteCache setUserPreferredRoute:"setUserPreferredRoute:hostApplicationBundleID:" hostApplicationBundleID:*(a1 + 40), Value];
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSingleSetUserPreferredInputMessage:"sendSingleSetUserPreferredInputMessage:clientInitiator:audioRouteName:" clientInitiator:Value audioRouteName:v8, v10];
  }

  v11 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(*(a1 + 40), 0);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v11, 0}];
    FigRoutingManagerCreateAggregateForContextIfNecessary(*(DerivedStorage + 8), v13);

    CFRelease(v12);
  }

  FigPredictedRouting_ResetSelectedRouteDescriptor(*(DerivedStorage + 8), 2);
  if (FigRoutingManagerContextUtilities_GetContextType(*(DerivedStorage + 8)) == 2 && MXSystemMirroring_IsTestCodeEnabled())
  {
    MXSystemMirroring_PickRouteDescriptor(*(DerivedStorage + 8), *(a1 + 40), *(a1 + 48), 0);
  }

  else
  {
    IsMirroringScreenAudioSeperateFunctionalityAllowed = MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed();
    v15 = *(DerivedStorage + 8);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    if (IsMirroringScreenAudioSeperateFunctionalityAllowed)
    {
      MXSystemAudio_PickRouteDescriptor(v15, v16, v17, 0);
    }

    else
    {
      FigRoutingManagerPickRouteDescriptorForContext(v15, v16, v17, 0);
    }
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end