@interface CoreCECDeviceProvider
- (BOOL)activeARCAudioSystem;
- (BOOL)activeSource:(id *)a3;
- (BOOL)audioSystemRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 error:(id *)a4;
- (BOOL)deckControlCommandWithMode:(unint64_t)a3 target:(id)a4 error:(id *)a5;
- (BOOL)deckControlPlayWithMode:(unint64_t)a3 target:(id)a4 error:(id *)a5;
- (BOOL)deckControlRefreshStatus:(id)a3 requestType:(unint64_t)a4 error:(id *)a5;
- (BOOL)deckControlSetDeckStatus:(unint64_t)a3 error:(id *)a4;
- (BOOL)deviceRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 error:(id *)a4;
- (BOOL)getRemoteControlDestination:(id *)a3 logicalAddress:(unsigned __int8 *)a4 forTargetDevice:(id)a5 command:(unsigned __int8)a6 error:(id *)a7;
- (BOOL)handlingRequiredForAudioReturnChannelMessage:(id)a3;
- (BOOL)handlingRequiredForSystemAudioModeMessage:(id)a3;
- (BOOL)initiatorAddressErrorDetectedForMessage:(id)a3;
- (BOOL)performStandbyWithTargetDevice:(id)a3 error:(id *)a4;
- (BOOL)refreshProperties:(id)a3 ofDevice:(id)a4 error:(id *)a5;
- (BOOL)reportFeatures:(id *)a3;
- (BOOL)reportPhysicalAddress:(id *)a3;
- (BOOL)reportShortAudioDescriptorTo:(unsigned __int8)a3 error:(id *)a4;
- (BOOL)requestActiveSource:(id *)a3;
- (BOOL)requestAudioReturnChannelStatusChangeTo:(unint64_t)a3 error:(id *)a4;
- (BOOL)requestAudioStatus:(id *)a3;
- (BOOL)requestShortAudioDescriptor:(unsigned __int8)a3 error:(id *)a4;
- (BOOL)requestSystemAudioModeStatusChangeTo:(unint64_t)a3 error:(id *)a4;
- (BOOL)resignActiveSource:(id *)a3;
- (BOOL)sendHIDEvent:(id)a3 target:(id)a4 error:(id *)a5;
- (BOOL)setAudioVolumeStatus:(unint64_t)a3 error:(id *)a4;
- (BOOL)setExtendedProperty:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setMenuLanguage:(CECLanguage)a3 error:(id *)a4;
- (BOOL)setSupportedAudioFormats:(id)a3 error:(id *)a4;
- (BOOL)setSystemAudioMode:(unint64_t)a3 to:(unsigned __int8)a4 error:(id *)a5;
- (BOOL)systemAudioModeRequest:(unint64_t)a3 error:(id *)a4;
- (BOOL)systemAudioModeStatus:(unsigned __int8)a3 error:(id *)a4;
- (CoreCECDeviceProvider)initWithCoder:(id)a3;
- (CoreCECDeviceProvider)initWithDevice:(id)a3;
- (OS_dispatch_queue)serialQueue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)extendedPropertyForKey:(id)a3 error:(id *)a4;
- (id)filterActiveSourceMessage:(id)a3;
- (id)filterCECVersionMessage:(id)a3 toDevice:(id)a4;
- (id)filterDeckStatusMessage:(id)a3 toDevice:(id)a4;
- (id)filterDeviceVendorIDMessage:(id)a3;
- (id)filterInactiveSourceMessage:(id)a3 toDevice:(id)a4;
- (id)filterMessage:(id)a3 toDevice:(id)a4;
- (id)filterReportFeaturesMessage:(id)a3 toDevice:(id)a4;
- (id)filterReportPhysicalAddressMessage:(id)a3;
- (id)filterReportPowerStatusMessage:(id)a3 toDevice:(id)a4;
- (id)filterRoutingChangeMessage:(id)a3;
- (id)filterRoutingInformationMessage:(id)a3;
- (id)filterSetMenuLanguageMessage:(id)a3;
- (id)filterSetOSDNameMessage:(id)a3 toDevice:(id)a4;
- (id)filterSetStreamPathMessage:(id)a3;
- (id)filterSetSystemAudioModeMessage:(id)a3 toDevice:(id)a4;
- (id)filterSystemAudioModeStatusMessage:(id)a3 toDevice:(id)a4;
- (uint64_t)arcStarting;
- (uint64_t)arcStopping;
- (uint64_t)dsamStopping;
- (uint64_t)samStarting_broadcast_Req_Act_Src;
- (uint64_t)samStarting_broadcast_SSAM_ON;
- (uint64_t)samStarting_send_SSAM_ON_to_TV;
- (uint64_t)samStopping;
- (uint64_t)serialQueue;
- (uint64_t)userControlFollowerSafetyTimeoutExpired;
- (uint64_t)userControlFollowerSynthesizeRelease;
- (void)arcInformDelegateOfSuccessTransitioningTo:(unint64_t)a3;
- (void)arcInformDelegateTransitionTo:(unint64_t)a3 failedWithError:(id)a4;
- (void)arcStarting;
- (void)arcStarting_handleReportARCInitiatedReceived;
- (void)arcStopping;
- (void)arcStopping_handleReportARCTerminatedReceived;
- (void)audioStatusChanged;
- (void)audioStatusHandleUserControl:(CECUserControl)a3 pressed:(BOOL)a4;
- (void)audioStatusHandleUserControlReleased;
- (void)broadcastPresence;
- (void)dealloc;
- (void)didAddToBus:(id)a3;
- (void)didChangePowerStatus:(unint64_t)a3;
- (void)didNotHandleMessage:(id)a3 unsupportedOperand:(BOOL)a4;
- (void)didRemoveFromBus:(id)a3;
- (void)dispatchAsyncLowPriority:(id)a3;
- (void)dispatchSelector:(SEL)a3;
- (void)dispatchSelector:(SEL)a3 afterDelay:(double)a4;
- (void)dispatchSelector:(SEL)a3 withObject:(id)a4;
- (void)dispatchSelector:(SEL)a3 withObject:(id)a4 afterDelay:(double)a5;
- (void)dsamStarting:(id)a3;
- (void)dsamStarting_handleBroadcastSSAMOnResponseReceived;
- (void)dsamStarting_handleBroadcastSSAMOnResponseTimeout;
- (void)dsamStopping;
- (void)dsamStopping_handleBroadcastSSAMOffResponseReceived;
- (void)dsamStopping_handleBroadcastSSAMOffResponseTimeout;
- (void)error:(id)a3 handlingMessage:(id)a4 fromDevice:(id)a5;
- (void)handleActiveSourceMessage:(id)a3 fromDevice:(id)a4;
- (void)handleDeckControlMessage:(id)a3 fromDevice:(id)a4;
- (void)handleDeckControlPlayMessage:(id)a3 fromDevice:(id)a4;
- (void)handleFeatureAbortMessage:(id)a3 fromDevice:(id)a4;
- (void)handleGetCECVersionMessage:(id)a3 fromDevice:(id)a4;
- (void)handleGetMenuLanguageMessage:(id)a3 fromDevice:(id)a4;
- (void)handleGiveAudioStatusMessage:(id)a3 fromDevice:(id)a4;
- (void)handleGiveDeckStatusMessage:(id)a3 fromDevice:(id)a4;
- (void)handleGiveDevicePowerStatusMessage:(id)a3 fromDevice:(id)a4;
- (void)handleGiveDeviceVendorIDMessage:(id)a3 fromDevice:(id)a4;
- (void)handleGiveFeaturesMessage:(id)a3 fromDevice:(id)a4;
- (void)handleGiveOSDNameMessage:(id)a3 fromDevice:(id)a4;
- (void)handleGivePhysicalAddressMessage:(id)a3 fromDevice:(id)a4;
- (void)handleGiveSystemAudioModeStatusMessage:(id)a3 fromDevice:(id)a4;
- (void)handleMenuRequest:(id)a3 fromDevice:(id)a4;
- (void)handleMessage:(id)a3 fromDevice:(id)a4 broadcast:(BOOL)a5;
- (void)handleReportARCInitiatedMessage:(id)a3 fromDevice:(id)a4;
- (void)handleReportARCTerminatedMessage:(id)a3 fromDevice:(id)a4;
- (void)handleReportAudioStatusMessage:(id)a3 fromDevice:(id)a4;
- (void)handleRequestARCInitiationMessage:(id)a3 fromDevice:(id)a4;
- (void)handleRequestARCTerminationMessage:(id)a3 fromDevice:(id)a4;
- (void)handleRequestActiveSourceMessage:(id)a3 fromDevice:(id)a4;
- (void)handleRequestShortAudioDescriptorMessage:(id)a3 fromDevice:(id)a4;
- (void)handleSetAudioVolumeLevelMessage:(id)a3 fromDevice:(id)a4;
- (void)handleSetStreamPathMessage:(id)a3;
- (void)handleSetSystemAudioModeMessage:(id)a3 fromDevice:(id)a4;
- (void)handleSystemAudioModeRequestMessage:(id)a3 fromDevice:(id)a4;
- (void)handleUserControlPressedMessage:(id)a3 fromDevice:(id)a4;
- (void)handleUserControlReleasedMessage:(id)a3 fromDevice:(id)a4;
- (void)hibernationChanged:(BOOL)a3;
- (void)probeAbsoluteVolumeControl_handleFeatureAbortReceivedFromDevice:(id)a3 withOpcode:(unsigned __int8)a4 reason:(unsigned __int8)a5;
- (void)refreshActiveSource;
- (void)refreshSystemAudioModeStatus;
- (void)resetAudioStatusState;
- (void)samInformDelegateOfSuccessTransitioningTo:(unint64_t)a3;
- (void)samInformDelegateTransitionTo:(unint64_t)a3 failedWithError:(id)a4;
- (void)samResetStateToOff;
- (void)samStarting;
- (void)samStarting_broadcast_Req_Act_Src;
- (void)samStarting_broadcast_SSAM_ON;
- (void)samStarting_handleActiveSourceReceived;
- (void)samStarting_handleActiveSourceResponseTimeout;
- (void)samStarting_handleFeatureAbortReceived;
- (void)samStarting_handleFeatureAbortResponseTimeout;
- (void)samStarting_send_SSAM_ON_to_TV;
- (void)samStopping;
- (void)sendDeckStatusToDevice:(id)a3;
- (void)userControlFollowerSafetyTimeoutExpired;
- (void)userControlFollowerSynthesizeRelease;
- (void)userControlInitiatorRepetitionTimeoutExpired;
- (void)userControlInitiatorTrackAudioStatusTimeoutExpired;
- (void)userControlScheduleFollowerSafetyTimeout;
- (void)userControlScheduleInitiatorRepetitionTimeout;
- (void)userControlScheduleInitiatorTrackAudioStatusTimeout;
- (void)willRemoveFromBus:(id)a3;
@end

@implementation CoreCECDeviceProvider

- (CoreCECDeviceProvider)initWithDevice:(id)a3
{
  v7.receiver = self;
  v7.super_class = CoreCECDeviceProvider;
  v4 = [(CoreCECDevice *)&v7 initWithDevice:?];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a3 sendFromAddress];
    }

    else
    {
      v5 = 15;
    }

    v4->_sendFromAddress = v5;
    v4->_isValid = 1;
  }

  return v4;
}

- (CoreCECDeviceProvider)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CoreCECDeviceProvider;
  result = [(CoreCECDevice *)&v4 initWithCoder:a3];
  if (result)
  {
    result->_sendFromAddress = 15;
    result->_isValid = 1;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CoreCECDeviceProvider;
  [(CoreCECDevice *)&v2 dealloc];
}

- (void)willRemoveFromBus:(id)a3
{
  self->_isValid = 0;
  p_userControlInitiatorState = &self->_userControlInitiatorState;
  if (self->_userControlInitiatorState.isValid)
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider willRemoveFromBus:];
    }

    p_userControlInitiatorState->isValid = 0;
    [(CoreCECDeviceProvider *)self userControlCancelInitiatorRepetitionTimeout];
    [(CoreCECDeviceProvider *)self userControlReleasedTo:p_userControlInitiatorState->destination error:0];
  }

  if ([(CoreCECDeviceProvider *)self systemAudioModeState]&& [(CoreCECDeviceProvider *)self systemAudioModeState]<= 6)
  {
    [(CoreCECDeviceProvider *)self samResetStateToOff];
    -[CoreCECDevice requestSystemAudioModeStatusChangeTo:didFinishWithResult:error:](self, "requestSystemAudioModeStatusChangeTo:didFinishWithResult:error:", 1, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6723 userInfo:0]);
  }

  if ([(CoreCECDeviceProvider *)self audioReturnChannelState]== 1)
  {
    [(CoreCECDeviceProvider *)self setAudioReturnChannelState:0];
    -[CoreCECDevice requestAudioReturnChannelStatusChangeTo:didFinishWithResult:error:](self, "requestAudioReturnChannelStatusChangeTo:didFinishWithResult:error:", 1, 0, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6723 userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = CoreCECDeviceProvider;
  [(CoreRCDevice *)&v6 willRemoveFromBus:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CoreCECDeviceProvider;
  return [(CoreRCDevice *)&v4 copyWithZone:a3];
}

- (OS_dispatch_queue)serialQueue
{
  v2 = [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  if (!v2)
  {
    [CoreCECDeviceProvider serialQueue];
  }

  return v2;
}

- (BOOL)setExtendedProperty:(id)a3 forKey:(id)a4 error:(id *)a5
{
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

- (id)extendedPropertyForKey:(id)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

- (void)didAddToBus:(id)a3
{
  v5.receiver = self;
  v5.super_class = CoreCECDeviceProvider;
  v6 = 0;
  [(CoreRCDevice *)&v5 didAddToBus:?];
  if ([(CoreRCDevice *)self isLocalDevice])
  {
    if (([a3 setAllowHibernation:0 error:&v6] & 1) == 0)
    {
      [CoreCECDeviceProvider didAddToBus:];
    }
  }
}

- (BOOL)deckControlCommandWithMode:(unint64_t)a3 target:(id)a4 error:(id *)a5
{
  v14 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:target:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CoreIRDeviceProvider setOSDName:v9 error:?];
    goto LABEL_12;
  }

  v10 = [a4 logicalAddress];
  if (v10 == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v11 target:? error:?];
LABEL_12:
    v12 = v15;
    if (!a5)
    {
      return v12 == 0;
    }

    goto LABEL_7;
  }

  [(CoreCECDeviceProvider *)self deckControlWithMode:a3 to:v10 error:&v14];
  v12 = v14;
  if (a5)
  {
LABEL_7:
    *a5 = v12;
  }

  return v12 == 0;
}

- (BOOL)deckControlPlayWithMode:(unint64_t)a3 target:(id)a4 error:(id *)a5
{
  v14 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider deckControlPlayWithMode:target:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CoreIRDeviceProvider setOSDName:v9 error:?];
    goto LABEL_12;
  }

  v10 = [a4 logicalAddress];
  if (v10 == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v11 target:? error:?];
LABEL_12:
    v12 = v15;
    if (!a5)
    {
      return v12 == 0;
    }

    goto LABEL_7;
  }

  [(CoreCECDeviceProvider *)self playWithMode:a3 to:v10 error:&v14];
  v12 = v14;
  if (a5)
  {
LABEL_7:
    *a5 = v12;
  }

  return v12 == 0;
}

- (BOOL)deckControlRefreshStatus:(id)a3 requestType:(unint64_t)a4 error:(id *)a5
{
  v17 = 0;
  v16 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider deckControlRefreshStatus:requestType:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CoreIRDeviceProvider setOSDName:v9 error:?];
    goto LABEL_14;
  }

  v10 = [a3 logicalAddress];
  if (v10 == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v11 target:? error:?];
    goto LABEL_14;
  }

  v12 = v10;
  if (!CECStatusRequestForCoreCECStatusRequest(&v16, a4))
  {
    [CoreIRDeviceProvider setOSDName:v13 error:?];
LABEL_14:
    v14 = v18;
    if (!a5)
    {
      return v14 == 0;
    }

    goto LABEL_8;
  }

  [(CoreCECDeviceProvider *)self giveDeckStatusWithRequest:v16 to:v12 error:&v17];
  v14 = v17;
  if (a5)
  {
LABEL_8:
    *a5 = v14;
  }

  return v14 == 0;
}

- (BOOL)performStandbyWithTargetDevice:(id)a3 error:(id *)a4
{
  v12 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider performStandbyWithTargetDevice:error:];
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_9:
    v9 = 15;
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CoreIRDeviceProvider setOSDName:v7 error:?];
LABEL_14:
    v10 = v13;
    if (!a4)
    {
      return v10 == 0;
    }

    goto LABEL_11;
  }

  v9 = [a3 logicalAddress];
  if (v9 == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v8 target:? error:?];
    goto LABEL_14;
  }

LABEL_10:
  [(CoreCECDeviceProvider *)self standbyTo:v9 error:&v12];
  v10 = v12;
  if (a4)
  {
LABEL_11:
    *a4 = v10;
  }

  return v10 == 0;
}

- (BOOL)refreshProperties:(id)a3 ofDevice:(id)a4 error:(id *)a5
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v16 = a3;
    v17 = a4;
    v14 = objc_opt_class();
    v15 = self;
    LogPrintF();
  }

  if (a3 || a4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [CoreIRDeviceProvider setOSDName:a2 error:?];
LABEL_17:
    v12 = v27;
    if (!a5)
    {
      return v12 == 0;
    }

    goto LABEL_12;
  }

  v9 = [a4 logicalAddress];
  if (v9 == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v10 target:? error:?];
    goto LABEL_17;
  }

  v11 = v9;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__CoreCECDeviceProvider_refreshProperties_ofDevice_error___block_invoke;
  v25[3] = &unk_278EA42E8;
  v25[4] = self;
  v26 = v9;
  [(CoreCECDeviceProvider *)self dispatchAsyncLowPriority:v25];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __58__CoreCECDeviceProvider_refreshProperties_ofDevice_error___block_invoke_2;
  v23[3] = &unk_278EA42E8;
  v23[4] = self;
  v24 = v11;
  [(CoreCECDeviceProvider *)self dispatchAsyncLowPriority:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__CoreCECDeviceProvider_refreshProperties_ofDevice_error___block_invoke_3;
  v21[3] = &unk_278EA42E8;
  v21[4] = self;
  v22 = v11;
  [(CoreCECDeviceProvider *)self dispatchAsyncLowPriority:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__CoreCECDeviceProvider_refreshProperties_ofDevice_error___block_invoke_4;
  v19[3] = &unk_278EA42E8;
  v19[4] = self;
  v20 = v11;
  [(CoreCECDeviceProvider *)self dispatchAsyncLowPriority:v19];
  if ([a4 logicalAddress] == 5)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__CoreCECDeviceProvider_refreshProperties_ofDevice_error___block_invoke_5;
    v18[3] = &unk_278EA3400;
    v18[4] = self;
    [(CoreCECDeviceProvider *)self dispatchAsyncLowPriority:v18];
  }

  v12 = 0;
  if (a5)
  {
LABEL_12:
    *a5 = v12;
  }

  return v12 == 0;
}

- (void)refreshActiveSource
{
  v2 = 0;
  if (![(CoreCECDeviceProvider *)self requestActiveSource:&v2]&& gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)&v2 refreshActiveSource];
  }
}

- (void)refreshSystemAudioModeStatus
{
  if ([(CoreCECDevice *)self deviceType]!= 1)
  {
    v3 = 0;
    if (![(CoreCECDeviceProvider *)self giveSystemAudioModeStatusTo:5 error:&v3])
    {
      if ([v3 isCECAcknowledgementError])
      {
        if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          [CoreCECDeviceProvider refreshSystemAudioModeStatus];
        }

        [-[CoreCECDeviceProvider busProvider](self "busProvider")];
      }
    }
  }
}

- (void)broadcastPresence
{
  if ([(CoreCECDevice *)self isCEC2Device])
  {
    [(CoreCECDeviceProvider *)self reportFeatures:0];
  }

  [(CoreCECDeviceProvider *)self reportPhysicalAddress:0];
  v3 = [(CoreCECDevice *)self vendorID];

  [(CoreCECDeviceProvider *)self deviceVendorID:v3 error:0];
}

- (void)dispatchAsyncLowPriority:(id)a3
{
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, a3);
  dispatch_async([(CoreCECDeviceProvider *)self serialQueue], v4);

  _Block_release(v4);
}

- (void)probeAbsoluteVolumeControl_handleFeatureAbortReceivedFromDevice:(id)a3 withOpcode:(unsigned __int8)a4 reason:(unsigned __int8)a5
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider probeAbsoluteVolumeControl_handleFeatureAbortReceivedFromDevice:a5 withOpcode:? reason:?];
  }

  [a3 setFeature:20 supportStatus:1];
}

- (BOOL)systemAudioModeRequest:(unint64_t)a3 error:(id *)a4
{
  v9 = 0;
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider systemAudioModeRequest:error:];
  }

  if (![(CoreCECDevice *)self systemAudioControlEnabled]|| [(CoreCECDevice *)self deviceType]!= 2)
  {
    [CoreCECDeviceProvider systemAudioModeRequest:v7 error:?];
    goto LABEL_17;
  }

  if (a3 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [CoreIRDeviceProvider setOSDName:v7 error:?];
LABEL_17:
    result = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ([-[CoreCECDeviceProvider busProvider](self "busProvider")] == a3)
  {
    return 1;
  }

  result = [(CoreCECDeviceProvider *)self deviceRequestSystemAudioModeStatusChangeTo:a3 == 2 error:&v9];
  if (a4)
  {
LABEL_10:
    if (!result)
    {
      result = 0;
      *a4 = v9;
    }
  }

  return result;
}

- (BOOL)requestSystemAudioModeStatusChangeTo:(unint64_t)a3 error:(id *)a4
{
  v9 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestSystemAudioModeStatusChangeTo:error:];
  }

  if (![(CoreCECDevice *)self systemAudioControlEnabled])
  {
    [CoreCECDeviceProvider systemAudioModeRequest:v7 error:?];
    goto LABEL_14;
  }

  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    [CoreCECDeviceProvider requestSystemAudioModeStatusChangeTo:? error:?];
    goto LABEL_14;
  }

  if ([(CoreCECDevice *)self deviceType]!= 1)
  {
    if (![(CoreCECDeviceProvider *)self deviceRequestSystemAudioModeStatusChangeTo:a3 error:&v9])
    {
      goto LABEL_14;
    }

    return 1;
  }

  if ([(CoreCECDeviceProvider *)self audioSystemRequestSystemAudioModeStatusChangeTo:a3 error:&v9])
  {
    return 1;
  }

LABEL_14:
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestSystemAudioModeStatusChangeTo:error:];
  }

  result = 0;
  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

- (BOOL)requestAudioReturnChannelStatusChangeTo:(unint64_t)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestAudioReturnChannelStatusChangeTo:a3 error:?];
  }

  v7 = [(CoreCECDevice *)self audioReturnChannelControlEnabled];
  if (v7)
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider requestAudioReturnChannelStatusChangeTo:a3 error:?];
    }

    if (a3 == 1)
    {
      v8 = sel_arcStarting;
    }

    else
    {
      v8 = sel_arcStopping;
    }

    [(CoreCECDeviceProvider *)self dispatchSelector:v8];
  }

  else
  {
    [CoreCECDeviceProvider requestAudioReturnChannelStatusChangeTo:a4 error:a3];
  }

  return v7;
}

- (void)didChangePowerStatus:(unint64_t)a3
{
  if (a3 == 2)
  {
    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  else if (a3 == 1 && [(CoreCECDevice *)self systemAudioControlEnabled])
  {
    [(CoreCECDeviceProvider *)self refreshSystemAudioModeStatus];
  }

  [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  if ([(CoreCECDevice *)self isCEC2Device])
  {
    v7 = 0;
    v6 = 0;
    CECPowerStatusForCoreCECPowerStatus(&v6, a3);
    if (![(CoreCECDeviceProvider *)self reportPowerStatus:v6 to:15 error:&v7]&& gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider didChangePowerStatus:?];
    }
  }

  v5.receiver = self;
  v5.super_class = CoreCECDeviceProvider;
  [(CoreCECDevice *)&v5 didChangePowerStatus:a3];
}

- (BOOL)requestAudioStatus:(id *)a3
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestAudioStatus:];
  }

  v8 = 0;
  v7 = 0;
  v5 = [(CoreCECDeviceProvider *)self getRemoteControlDestination:0 logicalAddress:&v7 forTargetDevice:0 command:65 error:&v8];
  if (v5)
  {
    [(CoreCECDeviceProvider *)self giveAudioStatusTo:v7 error:&v8];
  }

  else if (a3)
  {
    *a3 = v8;
  }

  return v5;
}

- (BOOL)getRemoteControlDestination:(id *)a3 logicalAddress:(unsigned __int8 *)a4 forTargetDevice:(id)a5 command:(unsigned __int8)a6 error:(id *)a7
{
  if (a5)
  {
    v10 = a5;
    goto LABEL_3;
  }

  if ((a6 - 65) <= 0x25 && ((1 << (a6 - 65)) & 0x3000400007) != 0)
  {
    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider getRemoteControlDestination:? logicalAddress:? forTargetDevice:? command:? error:?];
    }

    if ([(CoreCECDevice *)self systemAudioControlEnabled])
    {
      v10 = 0;
      if ([-[CoreCECDeviceProvider busProvider](self "busProvider")] == 2)
      {
        v11 = 5;
      }

      else
      {
        v11 = 0;
      }

      if (!a3)
      {
LABEL_5:
        v12 = 0;
        if (a4)
        {
          *a4 = v11;
        }

        if (a7)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }

LABEL_4:
      *a3 = v10;
      goto LABEL_5;
    }
  }

  else if ([(CoreCECDevice *)self isActiveSource])
  {
    if ([(CoreCECDevice *)self logicalAddress])
    {
      v10 = 0;
      v11 = 0;
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v16 = [-[CoreRCDevice bus](self "bus")];
    if (v16)
    {
      v10 = v16;
LABEL_3:
      v11 = [v10 logicalAddress];
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  [CoreCECDeviceProvider systemAudioModeRequest:v15 error:?];
  v12 = v17;
  if (a7)
  {
LABEL_8:
    *a7 = v12;
  }

LABEL_9:
  if (v12)
  {
    [CoreCECDeviceProvider getRemoteControlDestination:logicalAddress:forTargetDevice:command:error:];
  }

  return v12 == 0;
}

- (void)userControlScheduleInitiatorRepetitionTimeout
{
  v3 = self->_userControlInitiatorRepetitionTimeoutGeneration + 1;
  self->_userControlInitiatorRepetitionTimeoutGeneration = v3;
  v4 = dispatch_time(0, 250000000);
  v5 = [(CoreCECDeviceProvider *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__CoreCECDeviceProvider_userControlScheduleInitiatorRepetitionTimeout__block_invoke;
  v6[3] = &unk_278EA4310;
  v7 = v3;
  v6[4] = self;
  dispatch_after(v4, v5, v6);
}

_DWORD *__70__CoreCECDeviceProvider_userControlScheduleInitiatorRepetitionTimeout__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(a1 + 32);
  if (v1 == result[58])
  {
    return [result userControlInitiatorRepetitionTimeoutExpired];
  }

  return result;
}

- (void)userControlInitiatorRepetitionTimeoutExpired
{
  if (self->_userControlInitiatorState.isValid)
  {
    v3 = [CECMessage userControlPressed:*&self->_userControlInitiatorState.control from:[(CoreCECDeviceProvider *)self sendFromAddress] to:self->_userControlInitiatorState.destination];
    v4 = 0;
    [(CoreCECDeviceProvider *)self userControlScheduleInitiatorRepetitionTimeout];
    if (![(CoreCECDeviceProvider *)self sendMessage:v3 error:&v4])
    {
      if ([v4 isCECAcknowledgementError])
      {
        [(CoreCECDeviceProvider *)self userControlCancelInitiatorRepetitionTimeout];
        if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }
    }
  }
}

- (void)userControlScheduleInitiatorTrackAudioStatusTimeout
{
  v3 = self->_userControlInitiatorTrackAudioStatusTimeoutGeneration + 1;
  self->_userControlInitiatorTrackAudioStatusTimeoutGeneration = v3;
  if (gLogCategory_CoreRCDevice <= 10)
  {
    userControlInitiatorTrackAudioStatusTimeoutGeneration = v3;
    if (gLogCategory_CoreRCDevice != -1)
    {
LABEL_3:
      v8 = v3;
      v9 = userControlInitiatorTrackAudioStatusTimeoutGeneration;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      userControlInitiatorTrackAudioStatusTimeoutGeneration = self->_userControlInitiatorTrackAudioStatusTimeoutGeneration;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_userControlInitiatorState.isValid)
  {
    if ([(CoreCECDeviceProvider *)self trackAudioStatusPollInterval]< 0)
    {
      return;
    }

    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self userControlScheduleInitiatorTrackAudioStatusTimeout];
    }

    v5 = [(CoreCECDeviceProvider *)self trackAudioStatusPollInterval:v8];
  }

  else
  {
    if ([(CoreCECDeviceProvider *)self trackAudioStatusPressTimeout]< 0)
    {
      return;
    }

    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self userControlScheduleInitiatorTrackAudioStatusTimeout];
    }

    v5 = [(CoreCECDeviceProvider *)self trackAudioStatusPressTimeout:v8];
  }

  v6 = dispatch_time(0, 1000000 * v5);
  v7 = [(CoreCECDeviceProvider *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CoreCECDeviceProvider_userControlScheduleInitiatorTrackAudioStatusTimeout__block_invoke;
  block[3] = &unk_278EA4310;
  v11 = v3;
  block[4] = self;
  dispatch_after(v6, v7, block);
}

_DWORD *__76__CoreCECDeviceProvider_userControlScheduleInitiatorTrackAudioStatusTimeout__block_invoke(uint64_t a1)
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    __76__CoreCECDeviceProvider_userControlScheduleInitiatorTrackAudioStatusTimeout__block_invoke_cold_1(a1);
  }

  result = *(a1 + 32);
  if (*(a1 + 40) == result[59])
  {

    return [result userControlInitiatorTrackAudioStatusTimeoutExpired];
  }

  return result;
}

- (void)userControlInitiatorTrackAudioStatusTimeoutExpired
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self userControlInitiatorTrackAudioStatusTimeoutExpired];
  }

  p_userControlInitiatorState = &self->_userControlInitiatorState;
  if (self->_userControlInitiatorState.isValid)
  {
    v5 = 0;
    if (-[CoreCECDeviceProvider giveAudioStatusTo:error:](self, "giveAudioStatusTo:error:", p_userControlInitiatorState->destination, &v5) || ![v5 isCECAcknowledgementError])
    {
      if ([(CoreCECDeviceProvider *)self trackAudioStatusPollInterval])
      {
        [(CoreCECDeviceProvider *)self userControlScheduleInitiatorTrackAudioStatusTimeout];
      }
    }

    else
    {
      [(CoreCECDeviceProvider *)self userControlCancelInitiatorTrackAudioStatusTimeout];
      if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [(CoreCECDeviceProvider *)&v5 userControlInitiatorTrackAudioStatusTimeoutExpired];
      }
    }
  }

  else
  {
    destination = p_userControlInitiatorState->destination;

    [(CoreCECDeviceProvider *)self giveAudioStatusTo:destination error:0];
  }
}

- (void)userControlScheduleFollowerSafetyTimeout
{
  v3 = self->_userControlFollowerSafetyTimeoutGeneration + 1;
  self->_userControlFollowerSafetyTimeoutGeneration = v3;
  v4 = dispatch_time(0, 550000000);
  v5 = [(CoreCECDeviceProvider *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__CoreCECDeviceProvider_userControlScheduleFollowerSafetyTimeout__block_invoke;
  v6[3] = &unk_278EA4310;
  v7 = v3;
  v6[4] = self;
  dispatch_after(v4, v5, v6);
}

_DWORD *__65__CoreCECDeviceProvider_userControlScheduleFollowerSafetyTimeout__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(a1 + 32);
  if (v1 == result[60])
  {
    return [result userControlFollowerSafetyTimeoutExpired];
  }

  return result;
}

- (void)userControlFollowerSafetyTimeoutExpired
{
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self userControlFollowerSafetyTimeoutExpired];
  }

  [(CoreCECDeviceProvider *)self userControlFollowerSynthesizeRelease];
}

- (void)userControlFollowerSynthesizeRelease
{
  p_userControlFollowerState = &self->_userControlFollowerState;
  if (self->_userControlFollowerState.isValid)
  {
    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider userControlFollowerSynthesizeRelease];
    }

    [(CoreCECDeviceProvider *)self handleUserControl:*&p_userControlFollowerState->control pressed:0 fromDevice:p_userControlFollowerState->sender abortReason:0];
    p_userControlFollowerState->isValid = 0;

    p_userControlFollowerState->sender = 0;
  }
}

- (void)audioStatusChanged
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider audioStatusChanged];
  }

  if ([(CoreCECDeviceProvider *)self activeARCAudioSystem]&& (p_userControlAudioState = &self->_userControlAudioState, self->_userControlAudioState.audioUserControlPressed))
  {
    v4 = dispatch_time(0, 0);
    self->_userControlAudioState.reportAudioStatusNeeded = 1;
    nextTransmitTimestamp = p_userControlAudioState->nextTransmitTimestamp;
    if (self->_userControlAudioState.audioUserControlReleased)
    {
      if (v4 >= p_userControlAudioState->nextTransmitTimestamp)
      {
        [(CoreCECDeviceProvider *)self scheduleReportAudioStatus];
      }

      [(CoreCECDeviceProvider *)self resetAudioStatusState];
    }

    else if (v4 >= p_userControlAudioState->nextTransmitTimestamp)
    {
      [(CoreCECDeviceProvider *)self scheduleReportAudioStatus];
      p_userControlAudioState->nextTransmitTimestamp = dispatch_time(0, 500000000);
      self->_userControlAudioState.reportAudioStatusNeeded = 0;
    }
  }

  else if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider audioStatusChanged];
  }
}

- (void)audioStatusHandleUserControl:(CECUserControl)a3 pressed:(BOOL)a4
{
  v4 = a4;
  if ([(CoreCECDeviceProvider *)self activeARCAudioSystem])
  {
    if (v4)
    {

      [(CoreCECDeviceProvider *)self audioStatusHandleUserControlPressed];
    }

    else
    {

      [(CoreCECDeviceProvider *)self audioStatusHandleUserControlReleased];
    }
  }
}

- (void)audioStatusHandleUserControlReleased
{
  p_userControlAudioState = &self->_userControlAudioState;
  if (!self->_userControlAudioState.audioUserControlPressed)
  {
    return;
  }

  v4 = dispatch_time(0, 0);
  p_userControlAudioState->audioUserControlReleased = v4;
  nextTransmitTimestamp = p_userControlAudioState->nextTransmitTimestamp;
  if (p_userControlAudioState->reportAudioStatusNeeded)
  {
    if (nextTransmitTimestamp)
    {
      if (v4 >= nextTransmitTimestamp)
      {
        [(CoreCECDeviceProvider *)self scheduleReportAudioStatus];
      }
    }

    else if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider audioStatusHandleUserControlReleased];
    }

    goto LABEL_14;
  }

  if (nextTransmitTimestamp)
  {
LABEL_14:

    [(CoreCECDeviceProvider *)self resetAudioStatusState];
    return;
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider audioStatusHandleUserControlReleased];
  }
}

- (BOOL)activeARCAudioSystem
{
  if ([(CoreCECDevice *)self deviceType]!= 1 || [(CoreCECDeviceProvider *)self systemAudioModeState]!= 7)
  {
    return 0;
  }

  v3 = [objc_msgSend(-[CoreCECDeviceProvider busProvider](self "busProvider")];
  return v3 != [(CoreCECDevice *)self physicalAddress];
}

- (void)resetAudioStatusState
{
  self->_userControlAudioState.audioUserControlPressed = 0;
  self->_userControlAudioState.audioUserControlReleased = 0;
  self->_userControlAudioState.nextTransmitTimestamp = 0;
  self->_userControlAudioState.reportAudioStatusNeeded = 0;
}

- (BOOL)deviceRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 error:(id *)a4
{
  v6 = gLogCategory_CoreRCDevice;
  if (gLogCategory_CoreRCDevice <= 10)
  {
    if (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize())
    {
      [CoreCECDeviceProvider deviceRequestSystemAudioModeStatusChangeTo:a3 error:?];
    }

    v6 = gLogCategory_CoreRCDevice;
  }

  if (v6 <= 40 && (v6 != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider deviceRequestSystemAudioModeStatusChangeTo:a3 error:self];
  }

  if (a3 == 1)
  {
    -[CoreCECDeviceProvider dispatchSelector:withObject:](self, "dispatchSelector:withObject:", sel_dsamStarting_, [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[CoreCECDevice physicalAddress](self, "physicalAddress")}]);
  }

  else
  {
    [(CoreCECDeviceProvider *)self dispatchSelector:sel_dsamStopping];
  }

  return 1;
}

- (void)dsamStarting:(id)a3
{
  v4 = [a3 unsignedIntegerValue];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider dsamStarting:];
  }

  [(CoreCECDeviceProvider *)self dsamStartingWithPhysicalAddress:v4];
}

- (void)dsamStarting_handleBroadcastSSAMOnResponseTimeout
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 10)
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider dsamStarting_handleBroadcastSSAMOnResponseTimeout];
      }

      [(CoreCECDeviceProvider *)self samResetStateToOff];
      v3 = [MEMORY[0x277CCA9B8] cecTimeoutError];

      [(CoreCECDeviceProvider *)self samInformDelegateTransitionTo:1 failedWithError:v3];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self dsamStarting_handleBroadcastSSAMOnResponseTimeout];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self dsamStarting_handleBroadcastSSAMOnResponseTimeout];
  }
}

- (void)dsamStarting_handleBroadcastSSAMOnResponseReceived
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 10)
    {
      [(CoreCECDeviceProvider *)self setSystemAudioModeState:7];

      [(CoreCECDeviceProvider *)self samInformDelegateOfSuccessTransitioningTo:1];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self dsamStarting_handleBroadcastSSAMOnResponseReceived];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self dsamStarting_handleBroadcastSSAMOnResponseReceived];
  }
}

- (void)dsamStopping
{
  v3 = 0;
  [(CoreCECDeviceProvider *)self setSystemAudioModeState:8];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider dsamStopping];
  }

  if ([(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"systemAudioModeRequestWithPhysicalAddress:from:to:" systemAudioModeRequestWithPhysicalAddress:[(CoreCECDeviceProvider *)self sendFromAddress] from:5 to:?], &v3])
  {
    [(CoreCECDeviceProvider *)self dispatchSelector:sel_dsamStopping_handleBroadcastSSAMOffResponseTimeout afterDelay:2.0];
    [(CoreCECDeviceProvider *)self setSystemAudioModeState:11];
  }

  else
  {
    [CoreCECDeviceProvider dsamStopping];
  }
}

- (void)dsamStopping_handleBroadcastSSAMOffResponseTimeout
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 11)
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider dsamStopping_handleBroadcastSSAMOffResponseTimeout];
      }

      [(CoreCECDeviceProvider *)self setSystemAudioModeState:7];
      v3 = [MEMORY[0x277CCA9B8] cecTimeoutError];

      [(CoreCECDeviceProvider *)self samInformDelegateTransitionTo:0 failedWithError:v3];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self dsamStopping_handleBroadcastSSAMOffResponseTimeout];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self dsamStopping_handleBroadcastSSAMOffResponseTimeout];
  }
}

- (void)dsamStopping_handleBroadcastSSAMOffResponseReceived
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 11)
    {
      [(CoreCECDeviceProvider *)self samResetStateToOff];

      [(CoreCECDeviceProvider *)self samInformDelegateOfSuccessTransitioningTo:0];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self dsamStopping_handleBroadcastSSAMOffResponseReceived];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self dsamStopping_handleBroadcastSSAMOffResponseReceived];
  }
}

- (BOOL)audioSystemRequestSystemAudioModeStatusChangeTo:(unint64_t)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider audioSystemRequestSystemAudioModeStatusChangeTo:a3 error:self];
  }

  v6 = &selRef_samStarting;
  if (a3 != 1)
  {
    v6 = &selRef_samStopping;
  }

  [(CoreCECDeviceProvider *)self dispatchSelector:*v6];
  return 1;
}

- (void)samStarting
{
  v3 = [(CoreCECDeviceProvider *)self systemAudioModeRequestedByTV];
  v4 = [(CoreCECDeviceProvider *)self systemAudioModeRequestedByOtherDevice];
  [(CoreCECDeviceProvider *)self setSystemAudioModeState:1];
  [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByTV:0];
  [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByOtherDevice:0];
  if (v3)
  {

    [(CoreCECDeviceProvider *)self samStarting_broadcast_SSAM_ON];
  }

  else if (v4 || [-[CoreCECDeviceProvider busProvider](self "busProvider")])
  {

    [(CoreCECDeviceProvider *)self samStarting_send_SSAM_ON_to_TV];
  }

  else
  {

    [(CoreCECDeviceProvider *)self samStarting_broadcast_Req_Act_Src];
  }
}

- (void)samStarting_broadcast_Req_Act_Src
{
  v3 = 0;
  [(CoreCECDeviceProvider *)self setSystemAudioModeState:2];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider samStarting_broadcast_Req_Act_Src];
  }

  if ([(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"requestActiveSourceFrom:" requestActiveSourceFrom:?], &v3])
  {
    [(CoreCECDeviceProvider *)self dispatchSelector:sel_samStarting_handleActiveSourceResponseTimeout afterDelay:2.0];
    [(CoreCECDeviceProvider *)self setSystemAudioModeState:3];
  }

  else
  {
    [CoreCECDeviceProvider samStarting_broadcast_Req_Act_Src];
  }
}

- (void)samStarting_handleActiveSourceResponseTimeout
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 3)
    {
      [(CoreCECDeviceProvider *)self setSystemAudioModeState:4];
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider samStarting_handleActiveSourceResponseTimeout];
      }

      [(CoreCECDeviceProvider *)self samStarting_send_SSAM_ON_to_TV];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self samStarting_handleActiveSourceResponseTimeout];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self samStarting_handleActiveSourceResponseTimeout];
  }
}

- (void)samStarting_handleActiveSourceReceived
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 3)
    {
      [(CoreCECDeviceProvider *)self setSystemAudioModeState:4];
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider samStarting_handleActiveSourceReceived];
      }

      [(CoreCECDeviceProvider *)self samStarting_send_SSAM_ON_to_TV];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self samStarting_handleActiveSourceReceived];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self samStarting_handleActiveSourceReceived];
  }
}

- (void)samStarting_send_SSAM_ON_to_TV
{
  v3 = 0;
  [(CoreCECDeviceProvider *)self setSystemAudioModeState:4];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider samStarting_send_SSAM_ON_to_TV];
  }

  if ([(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"setSystemAudioMode:from:to:" setSystemAudioMode:[(CoreCECDevice *)self logicalAddress] from:0 to:?], &v3])
  {
    [(CoreCECDeviceProvider *)self dispatchSelector:sel_samStarting_handleFeatureAbortResponseTimeout afterDelay:1.0];
    [(CoreCECDeviceProvider *)self setSystemAudioModeState:5];
  }

  else
  {
    [CoreCECDeviceProvider samStarting_send_SSAM_ON_to_TV];
  }
}

- (void)samStarting_handleFeatureAbortResponseTimeout
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 5)
    {
      [(CoreCECDeviceProvider *)self setSystemAudioModeState:6];

      [(CoreCECDeviceProvider *)self samStarting_broadcast_SSAM_ON];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self samStarting_handleFeatureAbortResponseTimeout];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self samStarting_handleFeatureAbortResponseTimeout];
  }
}

- (void)samStarting_handleFeatureAbortReceived
{
  if ([(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress])
  {
    if ([(CoreCECDeviceProvider *)self systemAudioModeState]== 5)
    {
      v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6735 userInfo:0];
      [(CoreCECDeviceProvider *)self samResetStateToOff];

      [(CoreCECDeviceProvider *)self samInformDelegateTransitionTo:1 failedWithError:v3];
    }

    else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [(CoreCECDeviceProvider *)self samStarting_handleFeatureAbortReceived];
    }
  }

  else if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self samStarting_handleFeatureAbortReceived];
  }
}

- (void)samStarting_broadcast_SSAM_ON
{
  v3 = 0;
  [(CoreCECDeviceProvider *)self setSystemAudioModeState:6];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider samStarting_broadcast_SSAM_ON];
  }

  if ([(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"setSystemAudioMode:from:to:" setSystemAudioMode:[(CoreCECDevice *)self logicalAddress] from:15 to:?], &v3])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider samStarting_broadcast_SSAM_ON];
    }

    [(CoreCECDeviceProvider *)self setSystemAudioModeState:7];
    [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByTV:0];
    [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByOtherDevice:0];
    [(CoreCECDeviceProvider *)self samInformDelegateOfSuccessTransitioningTo:1];
  }

  else
  {
    [(CoreCECDeviceProvider *)gLogCategory_CoreRCDevice samStarting_broadcast_SSAM_ON];
  }
}

- (void)samStopping
{
  v3 = 0;
  [(CoreCECDeviceProvider *)self setSystemAudioModeState:8];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider samStopping];
  }

  if ([(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"setSystemAudioMode:from:to:" setSystemAudioMode:[(CoreCECDevice *)self logicalAddress] from:15 to:?], &v3])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider samStopping];
    }

    [(CoreCECDeviceProvider *)self samResetStateToOff];
    [(CoreCECDeviceProvider *)self samInformDelegateOfSuccessTransitioningTo:0];
  }

  else
  {
    [(CoreCECDeviceProvider *)gLogCategory_CoreRCDevice samStopping];
  }
}

- (void)samResetStateToOff
{
  [(CoreCECDeviceProvider *)self setSystemAudioModeState:0];
  [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByTV:0];

  [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByOtherDevice:0];
}

- (void)samInformDelegateOfSuccessTransitioningTo:(unint64_t)a3
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {

    [(CoreCECDevice *)self requestSystemAudioModeStatusChangeTo:a3 didFinishWithResult:1 error:0];
  }
}

- (void)samInformDelegateTransitionTo:(unint64_t)a3 failedWithError:(id)a4
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {

    [(CoreCECDevice *)self requestSystemAudioModeStatusChangeTo:a3 didFinishWithResult:0 error:a4];
  }
}

- (void)arcStarting
{
  v4 = 0;
  v3 = [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider arcStarting];
  }

  [(CoreCECDeviceProvider *)self setAudioReturnChannelState:1];
  if (![(CoreCECDeviceProvider *)self initiateARC:v3 error:&v4])
  {
    [CoreCECDeviceProvider arcStarting];
  }
}

- (void)arcStarting_handleReportARCInitiatedReceived
{
  if ([(CoreCECDeviceProvider *)self audioReturnChannelState]!= 1 && gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self arcStarting_handleReportARCInitiatedReceived];
  }

  [(CoreCECDeviceProvider *)self setAudioReturnChannelState:2];

  [(CoreCECDeviceProvider *)self arcInformDelegateOfSuccessTransitioningTo:1];
}

- (void)arcStopping
{
  v4 = 0;
  v3 = [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider arcStopping];
  }

  [(CoreCECDeviceProvider *)self setAudioReturnChannelState:3];
  if (![(CoreCECDeviceProvider *)self terminateARC:v3 error:&v4])
  {
    [CoreCECDeviceProvider arcStopping];
  }
}

- (void)arcStopping_handleReportARCTerminatedReceived
{
  if ([(CoreCECDeviceProvider *)self audioReturnChannelState]!= 3 && gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreCECDeviceProvider *)self arcStopping_handleReportARCTerminatedReceived];
  }

  [(CoreCECDeviceProvider *)self setAudioReturnChannelState:0];

  [(CoreCECDeviceProvider *)self arcInformDelegateOfSuccessTransitioningTo:0];
}

- (void)arcInformDelegateOfSuccessTransitioningTo:(unint64_t)a3
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {

    [(CoreCECDevice *)self requestAudioReturnChannelStatusChangeTo:a3 didFinishWithResult:1 error:0];
  }
}

- (void)arcInformDelegateTransitionTo:(unint64_t)a3 failedWithError:(id)a4
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {

    [(CoreCECDevice *)self requestAudioReturnChannelStatusChangeTo:a3 didFinishWithResult:0 error:a4];
  }
}

- (void)dispatchSelector:(SEL)a3
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {
    v5 = [(CoreCECDeviceProvider *)self serialQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__CoreCECDeviceProvider_dispatchSelector___block_invoke;
    v6[3] = &unk_278EA2AA0;
    v6[4] = self;
    v6[5] = a3;
    dispatch_async(v5, v6);
  }
}

- (void)dispatchSelector:(SEL)a3 withObject:(id)a4
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {
    v7 = [(CoreCECDeviceProvider *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__CoreCECDeviceProvider_dispatchSelector_withObject___block_invoke;
    block[3] = &unk_278EA4220;
    block[5] = a4;
    block[6] = a3;
    block[4] = self;
    dispatch_async(v7, block);
  }
}

- (void)dispatchSelector:(SEL)a3 afterDelay:(double)a4
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {
    v7 = dispatch_time(0, (a4 * 1000000000.0));
    v8 = [(CoreCECDeviceProvider *)self serialQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__CoreCECDeviceProvider_dispatchSelector_afterDelay___block_invoke;
    v9[3] = &unk_278EA2AA0;
    v9[4] = self;
    v9[5] = a3;
    dispatch_after(v7, v8, v9);
  }
}

- (void)dispatchSelector:(SEL)a3 withObject:(id)a4 afterDelay:(double)a5
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {
    v9 = dispatch_time(0, (a5 * 1000000000.0));
    v10 = [(CoreCECDeviceProvider *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CoreCECDeviceProvider_dispatchSelector_withObject_afterDelay___block_invoke;
    block[3] = &unk_278EA4220;
    block[5] = a4;
    block[6] = a3;
    block[4] = self;
    dispatch_after(v9, v10, block);
  }
}

- (void)hibernationChanged:(BOOL)a3
{
  if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider hibernationChanged:];
  }
}

- (id)filterMessage:(id)a3 toDevice:(id)a4
{
  v5 = a3;
  if ([a3 shouldBeIgnored])
  {
    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider filterMessage:toDevice:];
    }

    return 0;
  }

  v7 = [(CoreCECDeviceProvider *)self initiatorAddressErrorDetectedForMessage:v5];
  v8 = [v5 messageType];
  if (v7)
  {
    [(CoreCECDevice *)self sendLogicalAddressErrorAnalyticsForMessage:CECMessageTypeString(v8)];
    return 0;
  }

  if (v8 <= 129)
  {
    if (v8 <= 113)
    {
      switch(v8)
      {
        case 27:

          return [(CoreCECDeviceProvider *)self filterDeckStatusMessage:v5 toDevice:a4];
        case 50:

          return [(CoreCECDeviceProvider *)self filterSetMenuLanguageMessage:v5];
        case 71:

          return [(CoreCECDeviceProvider *)self filterSetOSDNameMessage:v5 toDevice:a4];
        default:
          return v5;
      }
    }

    else if (v8 > 127)
    {
      if (v8 == 128)
      {

        return [(CoreCECDeviceProvider *)self filterRoutingChangeMessage:v5];
      }

      else
      {

        return [(CoreCECDeviceProvider *)self filterRoutingInformationMessage:v5];
      }
    }

    else if (v8 == 114)
    {

      return [(CoreCECDeviceProvider *)self filterSetSystemAudioModeMessage:v5 toDevice:a4];
    }

    else
    {
      if (v8 != 126)
      {
        return v5;
      }

      return [(CoreCECDeviceProvider *)self filterSystemAudioModeStatusMessage:v5 toDevice:a4];
    }
  }

  else if (v8 > 143)
  {
    if (v8 > 157)
    {
      if (v8 == 158)
      {

        return [(CoreCECDeviceProvider *)self filterCECVersionMessage:v5 toDevice:a4];
      }

      else
      {
        if (v8 != 166)
        {
          return v5;
        }

        return [(CoreCECDeviceProvider *)self filterReportFeaturesMessage:v5 toDevice:a4];
      }
    }

    else if (v8 == 144)
    {

      return [(CoreCECDeviceProvider *)self filterReportPowerStatusMessage:v5 toDevice:a4];
    }

    else
    {
      if (v8 != 157)
      {
        return v5;
      }

      return [(CoreCECDeviceProvider *)self filterInactiveSourceMessage:v5 toDevice:a4];
    }
  }

  else if (v8 > 133)
  {
    if (v8 == 134)
    {

      return [(CoreCECDeviceProvider *)self filterSetStreamPathMessage:v5];
    }

    else
    {
      if (v8 != 135)
      {
        return v5;
      }

      return [(CoreCECDeviceProvider *)self filterDeviceVendorIDMessage:v5];
    }
  }

  else if (v8 == 130)
  {

    return [(CoreCECDeviceProvider *)self filterActiveSourceMessage:v5];
  }

  else
  {
    if (v8 != 132)
    {
      return v5;
    }

    return [(CoreCECDeviceProvider *)self filterReportPhysicalAddressMessage:v5];
  }
}

- (void)handleMessage:(id)a3 fromDevice:(id)a4 broadcast:(BOOL)a5
{
  v8 = [a4 logicalAddress];
  if (v8 == [(CoreCECDeviceProvider *)self sendFromAddress])
  {
    [CoreCECDeviceProvider handleMessage:fromDevice:broadcast:];
    return;
  }

  v9 = [a3 messageType];
  if (v9 <= 111)
  {
    if (v9 <= 53)
    {
      if (v9 <= 25)
      {
        if (v9 == -1)
        {
          return;
        }

        if (v9)
        {
          goto LABEL_117;
        }

        [(CoreCECDeviceProvider *)self handleFeatureAbortMessage:a3 fromDevice:a4];
      }

      else
      {
        if (v9 != 26)
        {
          if (v9 == 27 || v9 == 50)
          {
            return;
          }

          goto LABEL_117;
        }

        [(CoreCECDeviceProvider *)self handleGiveDeckStatusMessage:a3 fromDevice:a4];
      }
    }

    else if (v9 > 67)
    {
      switch(v9)
      {
        case 'D':

          [(CoreCECDeviceProvider *)self handleUserControlPressedMessage:a3 fromDevice:a4];
          break;
        case 'E':

          [(CoreCECDeviceProvider *)self handleUserControlReleasedMessage:a3 fromDevice:a4];
          break;
        case 'F':

          [(CoreCECDeviceProvider *)self handleGiveOSDNameMessage:a3 fromDevice:a4];
          break;
        default:
          goto LABEL_117;
      }
    }

    else
    {
      switch(v9)
      {
        case '6':

          [(CoreCECDevice *)self standbyRequestHasBeenReceived:a4];
          break;
        case 'A':

          [(CoreCECDeviceProvider *)self handleDeckControlPlayMessage:a3 fromDevice:a4];
          break;
        case 'B':

          [(CoreCECDeviceProvider *)self handleDeckControlMessage:a3 fromDevice:a4];
          break;
        default:
          goto LABEL_117;
      }
    }
  }

  else
  {
    if (v9 <= 192)
    {
      switch(v9)
      {
        case 112:

          [(CoreCECDeviceProvider *)self handleSystemAudioModeRequestMessage:a3 fromDevice:a4];
          break;
        case 113:

          [(CoreCECDeviceProvider *)self handleGiveAudioStatusMessage:a3 fromDevice:a4];
          break;
        case 114:

          [(CoreCECDeviceProvider *)self handleSetSystemAudioModeMessage:a3 fromDevice:a4];
          break;
        case 115:

          [(CoreCECDeviceProvider *)self handleSetAudioVolumeLevelMessage:a3 fromDevice:a4];
          break;
        case 122:

          [(CoreCECDeviceProvider *)self handleReportAudioStatusMessage:a3 fromDevice:a4];
          break;
        case 125:

          [(CoreCECDeviceProvider *)self handleGiveSystemAudioModeStatusMessage:a3 fromDevice:a4];
          break;
        case 126:
        case 128:
        case 129:
        case 132:
        case 135:
        case 144:
        case 157:
        case 158:
          return;
        case 130:

          [(CoreCECDeviceProvider *)self handleActiveSourceMessage:a3 fromDevice:a4];
          break;
        case 131:

          [(CoreCECDeviceProvider *)self handleGivePhysicalAddressMessage:a3 fromDevice:a4];
          break;
        case 133:

          [(CoreCECDeviceProvider *)self handleRequestActiveSourceMessage:a3 fromDevice:a4];
          break;
        case 134:

          [(CoreCECDeviceProvider *)self handleSetStreamPathMessage:a3];
          break;
        case 140:

          [(CoreCECDeviceProvider *)self handleGiveDeviceVendorIDMessage:a3 fromDevice:a4];
          break;
        case 141:

          [(CoreCECDeviceProvider *)self handleMenuRequest:a3 fromDevice:a4];
          break;
        case 143:

          [(CoreCECDeviceProvider *)self handleGiveDevicePowerStatusMessage:a3 fromDevice:a4];
          break;
        case 145:

          [(CoreCECDeviceProvider *)self handleGetMenuLanguageMessage:a3 fromDevice:a4];
          break;
        case 159:

          [(CoreCECDeviceProvider *)self handleGetCECVersionMessage:a3 fromDevice:a4];
          break;
        case 164:

          [(CoreCECDeviceProvider *)self handleRequestShortAudioDescriptorMessage:a3 fromDevice:a4];
          break;
        case 165:
          if (![(CoreCECDevice *)self isCEC2Device])
          {
            goto LABEL_117;
          }

          [(CoreCECDeviceProvider *)self handleGiveFeaturesMessage:a3 fromDevice:a4];
          break;
        default:
          goto LABEL_117;
      }

      return;
    }

    if (v9 <= 194)
    {
      if (v9 == 193)
      {

        [(CoreCECDeviceProvider *)self handleReportARCInitiatedMessage:a3 fromDevice:a4];
      }

      else
      {

        [(CoreCECDeviceProvider *)self handleReportARCTerminatedMessage:a3 fromDevice:a4];
      }
    }

    else
    {
      switch(v9)
      {
        case 195:

          [(CoreCECDeviceProvider *)self handleRequestARCInitiationMessage:a3 fromDevice:a4];
          break;
        case 196:

          [(CoreCECDeviceProvider *)self handleRequestARCTerminationMessage:a3 fromDevice:a4];
          break;
        case 255:

          [(CoreCECDeviceProvider *)self sendFeatureAbort:4 forMessage:a3];
          return;
        default:
LABEL_117:

          [(CoreCECDeviceProvider *)self didNotHandleMessage:a3 unsupportedOperand:0];
          return;
      }
    }
  }
}

- (void)error:(id)a3 handlingMessage:(id)a4 fromDevice:(id)a5
{
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)didNotHandleMessage:(id)a3 unsupportedOperand:(BOOL)a4
{
  v4 = a4;
  if ([a3 isBroadcast])
  {
    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    if (v4)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider didNotHandleMessage:v7 unsupportedOperand:?];
    }

    [(CoreCECDeviceProvider *)self sendFeatureAbort:v7 forMessage:a3];
  }
}

- (BOOL)handlingRequiredForSystemAudioModeMessage:(id)a3
{
  v5 = [(CoreCECDevice *)self systemAudioControlEnabled];
  if (!v5)
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handlingRequiredForSystemAudioModeMessage:?];
    }

    [(CoreCECDeviceProvider *)self sendFeatureAbort:1 forMessage:a3];
  }

  return v5;
}

- (BOOL)handlingRequiredForAudioReturnChannelMessage:(id)a3
{
  if ([(CoreCECDevice *)self featureSupportStatus:16]== 2)
  {
    v5 = [(CoreCECDevice *)self audioReturnChannelControlEnabled];
    v6 = 1;
    if (v5)
    {
      return v6;
    }
  }

  else
  {
    v6 = 0;
  }

  [(CoreCECDeviceProvider *)self sendFeatureAbort:v6 forMessage:a3];
  LOBYTE(v6) = 0;
  return v6;
}

- (BOOL)initiatorAddressErrorDetectedForMessage:(id)a3
{
  v4 = [(CoreRCDevice *)self isLocalDevice];
  if (v4)
  {
    if ([a3 loopback])
    {
LABEL_3:
      LOBYTE(v4) = 0;
      return v4;
    }

    v5 = [a3 messageType];
    LOBYTE(v4) = 1;
    if (((v5 - 130) > 0x24 || ((1 << (v5 + 126)) & 0x1018004025) == 0) && v5 != 27)
    {
      if (gLogCategory_CoreRCDevice > 60)
      {
        goto LABEL_3;
      }

      if (gLogCategory_CoreRCDevice != -1 || (v4 = _LogCategory_Initialize()) != 0)
      {
        [CoreCECDeviceProvider initiatorAddressErrorDetectedForMessage:a3];
        goto LABEL_3;
      }
    }
  }

  return v4;
}

- (void)handleFeatureAbortMessage:(id)a3 fromDevice:(id)a4
{
  v9 = 0;
  if ([a3 parseFeatureAbortOpcode:&v9 + 1 reason:&v9])
  {
    v6 = HIBYTE(v9);
    if (HIBYTE(v9) == 114)
    {
      if (![a4 logicalAddress] && -[CoreCECDeviceProvider systemAudioModeState](self, "systemAudioModeState") == 5)
      {
        [(CoreCECDeviceProvider *)self samStarting_handleFeatureAbortReceived];
        return;
      }

      v6 = HIBYTE(v9);
    }

    if (v6 == 192 && (v7 = [a4 logicalAddress], v6 = HIBYTE(v9), !v7))
    {
      [(CoreCECDeviceProvider *)self arcStarting_handleFeatureAbortReceivedWithOpcode:HIBYTE(v9) reason:v9];
    }

    else if (v6 == 197 && (v8 = [a4 logicalAddress], v6 = HIBYTE(v9), !v8))
    {
      [(CoreCECDeviceProvider *)self arcStopping_handleFeatureAbortReceivedWithOpcode:HIBYTE(v9) reason:v9];
    }

    else if (v6 == 115)
    {
      [(CoreCECDeviceProvider *)self probeAbsoluteVolumeControl_handleFeatureAbortReceivedFromDevice:a4 withOpcode:115 reason:v9];
    }

    else
    {
      -[CoreCECDevice featureAbort:](self, "featureAbort:", [MEMORY[0x277CCA9B8] cecFeatureAbortErrorWithOpCode:v6 reason:v9 method:@"NYI"]);
    }
  }

  else
  {
    [CoreCECDeviceProvider handleFeatureAbortMessage:fromDevice:];
  }
}

- (id)filterActiveSourceMessage:(id)a3
{
  v6 = 0;
  if ([a3 parseActiveSourcePhysicalAddress:&v6])
  {
    [(CoreCECDevice *)self setPhysicalAddress:v6];
    [-[CoreRCDevice bus](self "bus")];
    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  else
  {
    [CoreCECDeviceProvider filterActiveSourceMessage:];
  }

  return a3;
}

- (void)handleActiveSourceMessage:(id)a3 fromDevice:(id)a4
{
  if ([(CoreCECDevice *)self deviceType:a3]== 1)
  {
    v5 = [(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress];
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v5)
    {

      [(CoreCECDeviceProvider *)self samStarting_handleActiveSourceReceived];
    }
  }
}

- (void)handleRequestActiveSourceMessage:(id)a3 fromDevice:(id)a4
{
  if ([(CoreCECDevice *)self isActiveSource])
  {
    v7 = 0;
    if (![(CoreCECDeviceProvider *)self sendActiveSourceStatus:1 error:&v7])
    {
      [(CoreCECDeviceProvider *)self error:v7 handlingMessage:a3 fromDevice:a4];
    }
  }
}

- (id)filterInactiveSourceMessage:(id)a3 toDevice:(id)a4
{
  v7 = 0;
  if ([a3 parseInactiveSourcePhysicalAddress:{&v7, a4}])
  {
    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  else
  {
    [CoreCECDeviceProvider filterInactiveSourceMessage:toDevice:];
  }

  return a3;
}

- (id)filterSetStreamPathMessage:(id)a3
{
  v3 = a3;
  if ([a3 initiator])
  {
    [(CoreCECDeviceProvider *)v3 filterSetStreamPathMessage:?];
    return v7;
  }

  v6 = 0;
  if (([v3 parseSetStreamPathPhysicalAddress:&v6] & 1) == 0)
  {
    [CoreCECDeviceProvider filterSetStreamPathMessage:];
    return v7;
  }

  if (v6 == 0xFFFF)
  {
    [(CoreCECDeviceProvider *)v3 filterSetStreamPathMessage:?];
    return v7;
  }

  [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  return v3;
}

- (void)handleSetStreamPathMessage:(id)a3
{
  v4 = [-[CoreCECDeviceProvider busProvider](self busProvider];
  if (v4 == [(CoreCECDevice *)self physicalAddress])
  {

    [(CoreCECDeviceProvider *)self handleDeviceSelected];
  }
}

- (id)filterRoutingChangeMessage:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [(CoreCECDeviceProvider *)self busProvider];
  v8 = 0;
  if (([a3 parseRoutingChangeOriginalAddress:&v8 + 2 newAddress:&v8] & 1) == 0)
  {
    [CoreCECDeviceProvider filterRoutingChangeMessage:];
    goto LABEL_11;
  }

  if (!v4)
  {
    [CoreCECDeviceProvider filterRoutingChangeMessage:];
    goto LABEL_11;
  }

  v5 = [v4 streamPath];
  if (v5 != 0xFFFF && HIWORD(v8) == v5)
  {
    if (v8 != v5)
    {
      [v4 setActiveSource:0];
      goto LABEL_7;
    }

    [(CoreCECDeviceProvider *)v5 filterRoutingChangeMessage:v10, a3, &v9];
LABEL_11:
    a3 = v9;
  }

LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
  return a3;
}

- (id)filterRoutingInformationMessage:(id)a3
{
  v5 = 0;
  if (([a3 parseRoutingInformationPhysicalAddress:&v5] & 1) == 0)
  {
    [CoreCECDeviceProvider filterRoutingInformationMessage:];
  }

  return a3;
}

- (id)filterSetOSDNameMessage:(id)a3 toDevice:(id)a4
{
  v6 = 0;
  if (([a3 parseSetOSDName:{&v6, a4}] & 1) == 0)
  {
    [CoreCECDeviceProvider filterSetOSDNameMessage:toDevice:];
  }

  return a3;
}

- (void)handleGiveOSDNameMessage:(id)a3 fromDevice:(id)a4
{
  v7 = [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  v9 = 0;
  if (v7)
  {
    if (!-[CoreCECDeviceProvider setOSDName:to:error:](self, "setOSDName:to:error:", v7, v8 & 0xFFFFFFFFFFFFFFLL, [a4 logicalAddress], &v9))
    {
      [(CoreCECDeviceProvider *)self error:v9 handlingMessage:a3 fromDevice:a4];
    }
  }

  else
  {

    [(CoreCECDeviceProvider *)self sendFeatureAbort:1 forMessage:a3];
  }
}

- (id)filterDeviceVendorIDMessage:(id)a3
{
  v6 = 0;
  if ([a3 parseDeviceVendorID:&v6])
  {
    [(CoreCECDevice *)self setVendorID:v6];
    [-[CoreRCDevice bus](self "bus")];
  }

  else
  {
    [CoreCECDeviceProvider filterDeviceVendorIDMessage:];
  }

  return a3;
}

- (void)handleGiveDeviceVendorIDMessage:(id)a3 fromDevice:(id)a4
{
  v7 = 0;
  if ([(CoreCECDevice *)self vendorID]== -1)
  {

    [(CoreCECDeviceProvider *)self didNotHandleMessage:a3 unsupportedOperand:0];
  }

  else if (![(CoreCECDeviceProvider *)self deviceVendorID:[(CoreCECDevice *)self vendorID] error:&v7])
  {
    [(CoreCECDeviceProvider *)self error:v7 handlingMessage:a3 fromDevice:a4];
  }
}

- (id)filterCECVersionMessage:(id)a3 toDevice:(id)a4
{
  v7 = 0;
  if ([a3 parseCECVersion:{&v7, a4}])
  {
    [(CoreCECDevice *)self setCecVersion:v7];
    [-[CoreRCDevice bus](self "bus")];
  }

  else
  {
    [CoreCECDeviceProvider filterCECVersionMessage:toDevice:];
  }

  return a3;
}

- (void)handleGetCECVersionMessage:(id)a3 fromDevice:(id)a4
{
  v7 = 0;
  if (!-[CoreCECDeviceProvider cecVersion:to:error:](self, "cecVersion:to:error:", -[CoreCECDevice cecVersion](self, "cecVersion"), [a4 logicalAddress], &v7))
  {
    [(CoreCECDeviceProvider *)self error:v7 handlingMessage:a3 fromDevice:a4];
  }
}

- (id)filterReportPhysicalAddressMessage:(id)a3
{
  v7 = 0;
  v6 = 0;
  if ([a3 parseReportPhysicalAddress:&v7 deviceType:&v6])
  {
    [(CoreCECDevice *)self setPhysicalAddress:v7];
    [(CoreCECDevice *)self setDeviceType:v6];
    [-[CoreRCDevice bus](self "bus")];
  }

  else
  {
    [CoreCECDeviceProvider filterReportPhysicalAddressMessage:];
  }

  return a3;
}

- (void)handleGivePhysicalAddressMessage:(id)a3 fromDevice:(id)a4
{
  v7 = 0;
  if (![(CoreCECDeviceProvider *)self reportPhysicalAddress:&v7])
  {
    [(CoreCECDeviceProvider *)self error:v7 handlingMessage:a3 fromDevice:a4];
  }
}

- (void)handleGetMenuLanguageMessage:(id)a3 fromDevice:(id)a4
{
  if ([(CoreCECDevice *)self deviceType]== 7 && (![(CoreCECDevice *)self logicalAddress]|| [(CoreCECDevice *)self logicalAddress]== 14))
  {
    v7 = 0;
    if (!-[CoreCECDeviceProvider setMenuLanguage:error:](self, "setMenuLanguage:error:", [-[CoreCECDeviceProvider busProvider](self "busProvider")] & 0xFFFFFF, &v7))
    {
      [(CoreCECDeviceProvider *)self error:v7 handlingMessage:a3 fromDevice:a4];
    }
  }

  else
  {

    [(CoreCECDeviceProvider *)self didNotHandleMessage:a3 unsupportedOperand:0];
  }
}

- (void)handleGiveFeaturesMessage:(id)a3 fromDevice:(id)a4
{
  v7 = 0;
  if (![(CoreCECDeviceProvider *)self reportFeatures:&v7])
  {
    [(CoreCECDeviceProvider *)self error:v7 handlingMessage:a3 fromDevice:a4];
  }
}

- (id)filterReportPowerStatusMessage:(id)a3 toDevice:(id)a4
{
  v7 = 0;
  if ([a3 parseReportPowerStatus:{&v7, a4}])
  {
    [(CoreCECDevice *)self setPowerStatus:v7];
    [-[CoreRCDevice bus](self "bus")];
  }

  else
  {
    [CoreCECDeviceProvider filterReportPowerStatusMessage:toDevice:];
  }

  return a3;
}

- (void)handleGiveDevicePowerStatusMessage:(id)a3 fromDevice:(id)a4
{
  v9 = 0;
  v8 = 0;
  if (CECPowerStatusForCoreCECPowerStatus(&v8, [(CoreCECDevice *)self powerStatus]))
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (!-[CoreCECDeviceProvider reportPowerStatus:to:error:](self, "reportPowerStatus:to:error:", v7, [a4 logicalAddress], &v9))
  {
    [(CoreCECDeviceProvider *)self error:v9 handlingMessage:a3 fromDevice:a4];
  }
}

- (void)handleDeckControlPlayMessage:(id)a3 fromDevice:(id)a4
{
  v7 = 0;
  if ([a3 parsePlayMode:&v7])
  {
    [(CoreCECDevice *)self deckControlPlayHasBeenReceived:v7 fromDevice:a4];
  }

  else
  {
    [(CoreCECDeviceProvider *)self didNotHandleMessage:a3 unsupportedOperand:1];
  }
}

- (void)handleDeckControlMessage:(id)a3 fromDevice:(id)a4
{
  v7 = 0;
  if ([a3 parseDeckControlMode:&v7])
  {
    [(CoreCECDevice *)self deckControlCommandHasBeenReceived:v7 fromDevice:a4];
  }

  else
  {
    [(CoreCECDeviceProvider *)self didNotHandleMessage:a3 unsupportedOperand:1];
  }
}

- (id)filterDeckStatusMessage:(id)a3 toDevice:(id)a4
{
  v8 = 0;
  if ([a3 parseDeckStatusInfo:&v8])
  {
    [(CoreCECDevice *)self setDeckStatus:v8];
    [-[CoreRCDevice bus](self "bus")];
    [a4 deckControlStatusHasBeenUpdated:v8 fromDevice:self];
  }

  else
  {
    [CoreCECDeviceProvider filterDeckStatusMessage:toDevice:];
  }

  return a3;
}

- (void)handleGiveDeckStatusMessage:(id)a3 fromDevice:(id)a4
{
  v13 = 0;
  if (([a3 parseGiveDeckStatusRequest:&v13] & 1) == 0)
  {
    v8 = self;
    v9 = a3;
    v10 = 1;
LABEL_27:
    [(CoreCECDeviceProvider *)v8 didNotHandleMessage:v9 unsupportedOperand:v10, v11, v12];
    return;
  }

  v7 = [(CoreCECDevice *)self deviceType];
  if (v7 != 4 && v7 != 2)
  {
    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      v11 = self;
      v12 = a4;
      LogPrintF();
    }

    v8 = self;
    v9 = a3;
    v10 = 0;
    goto LABEL_27;
  }

  switch(v13)
  {
    case 1:
      if (![(CoreCECDevice *)self deckStatus])
      {
LABEL_34:
        [(CoreCECDeviceProvider *)self sendFeatureAbort:1 forMessage:a3];
        return;
      }

      if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleGiveDeckStatusMessage:fromDevice:];
      }

      self->_deckStatusRequestMask |= 1 << [a4 logicalAddress];
LABEL_21:
      [(CoreCECDeviceProvider *)self sendDeckStatusToDevice:a4];
      return;
    case 3:
      if (![(CoreCECDevice *)self deckStatus])
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    case 2:
      if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleGiveDeckStatusMessage:fromDevice:];
      }

      self->_deckStatusRequestMask &= ~(1 << [a4 logicalAddress]);
      break;
    default:
      if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      break;
  }
}

- (void)handleMenuRequest:(id)a3 fromDevice:(id)a4
{
  v8 = 0;
  v7 = 0;
  if ([a3 parseMenuRequest:&v7])
  {
    if (!-[CoreCECDeviceProvider menuStatus:to:error:](self, "menuStatus:to:error:", 0, [a3 initiator], &v8))
    {
      [(CoreCECDeviceProvider *)self error:v8 handlingMessage:a3 fromDevice:a4];
    }
  }

  else
  {
    [(CoreCECDeviceProvider *)self didNotHandleMessage:a3 unsupportedOperand:1];
  }
}

- (void)handleUserControlPressedMessage:(id)a3 fromDevice:(id)a4
{
  v9 = 0;
  if ([a3 parseUserControlPressed:&v9])
  {
    p_userControlFollowerState = &self->_userControlFollowerState;
    if (self->_userControlFollowerState.isValid && CECUserControlEquals(*&self->_userControlFollowerState.control, v9) && [(CoreRCDevice *)p_userControlFollowerState->sender isEqual:a4])
    {
      [(CoreCECDeviceProvider *)self userControlScheduleFollowerSafetyTimeout];
      if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleUserControlPressedMessage:fromDevice:];
      }
    }

    else
    {
      v8 = 0;
      if (self->_userControlFollowerState.isValid)
      {
        [(CoreCECDeviceProvider *)self userControlFollowerSynthesizeRelease];
      }

      if ([(CoreCECDeviceProvider *)self handleUserControl:v9 pressed:1 fromDevice:a4 abortReason:&v8])
      {
        self->_userControlFollowerState.control = v9;
        p_userControlFollowerState->sender = a4;
        self->_userControlFollowerState.isValid = 1;
        [(CoreCECDeviceProvider *)self userControlScheduleFollowerSafetyTimeout];
      }

      else
      {
        [(CoreCECDeviceProvider *)self sendFeatureAbort:v8 forMessage:a3];
      }
    }
  }

  else
  {
    [(CoreCECDeviceProvider *)self didNotHandleMessage:a3 unsupportedOperand:1];
  }
}

- (void)handleUserControlReleasedMessage:(id)a3 fromDevice:(id)a4
{
  p_userControlFollowerState = &self->_userControlFollowerState;
  if (self->_userControlFollowerState.isValid)
  {
    if ([(CoreRCDevice *)p_userControlFollowerState->sender isEqual:a4])
    {
      [(CoreCECDeviceProvider *)self userControlCancelFollowerSafetyTimeout];
      [(CoreCECDeviceProvider *)self handleUserControl:*&p_userControlFollowerState->control pressed:0 fromDevice:a4 abortReason:0];
      p_userControlFollowerState->isValid = 0;

      p_userControlFollowerState->sender = 0;
    }

    else
    {
      [CoreCECDeviceProvider handleUserControlReleasedMessage:? fromDevice:?];
    }
  }

  else
  {
    [CoreCECDeviceProvider handleUserControlReleasedMessage:fromDevice:];
  }
}

- (void)handleReportAudioStatusMessage:(id)a3 fromDevice:(id)a4
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  if ([a3 parseReportAudioStatus:&v7 muteStatus:&v6])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleReportAudioStatusMessage:&v6 fromDevice:?];
    }

    if (([a4 setAudioVolumeStatus:v7 error:&v8] & 1) == 0 && gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleReportAudioStatusMessage:? fromDevice:?];
    }

    if (([a4 setAudioMuteStatus:v6 error:&v8] & 1) == 0 && gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleReportAudioStatusMessage:? fromDevice:?];
    }

    [(CoreCECDevice *)self audioStatusReceived:v7 muteStatus:v6];
  }

  else
  {
    [CoreCECDeviceProvider handleReportAudioStatusMessage:? fromDevice:?];
  }
}

- (void)handleGiveAudioStatusMessage:(id)a3 fromDevice:(id)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v8 = a3;
    v9 = self;
    LogPrintF();
  }

  if (-[CoreCECDeviceProvider handlingRequiredForSystemAudioModeMessage:](self, "handlingRequiredForSystemAudioModeMessage:", a3, v8, v9) && ([a3 isBroadcast] & 1) == 0)
  {
    v7 = [a4 logicalAddress];

    [(CoreCECDeviceProvider *)self reportAudioStatusTo:v7 error:0];
  }
}

- (void)handleGiveSystemAudioModeStatusMessage:(id)a3 fromDevice:(id)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v8 = a3;
    v9 = self;
    LogPrintF();
  }

  if (-[CoreCECDeviceProvider handlingRequiredForSystemAudioModeMessage:](self, "handlingRequiredForSystemAudioModeMessage:", a3, v8, v9) && ([a3 isBroadcast] & 1) == 0)
  {
    v7 = +[CECMessage systemAudioModeStatus:from:to:](CECMessage, "systemAudioModeStatus:from:to:", [-[CoreCECDeviceProvider busProvider](self "busProvider")], -[CoreCECDeviceProvider sendFromAddress](self, "sendFromAddress"), objc_msgSend(a4, "logicalAddress"));

    [(CoreCECDeviceProvider *)self sendMessage:v7 error:0];
  }
}

- (id)filterSetSystemAudioModeMessage:(id)a3 toDevice:(id)a4
{
  if ([a3 initiator] != 5 && gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider filterSetSystemAudioModeMessage:toDevice:];
  }

  if ([a3 isBroadcast])
  {
    v7 = 0;
    if ([a3 parseSystemAudioModeStatus:&v7])
    {
      [-[CoreCECDeviceProvider busProvider](self "busProvider")];
    }

    else
    {
      [CoreCECDeviceProvider filterSetSystemAudioModeMessage:toDevice:];
    }
  }

  return a3;
}

- (void)handleRequestShortAudioDescriptorMessage:(id)a3 fromDevice:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v25 = 0;
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:];
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForSystemAudioModeMessage:a3])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:a3 fromDevice:v24];
    }

    v7 = 0;
    if (a3)
    {
      for (i = 2; ; ++i)
      {
        [a3 frame];
        if (i >= (v23 & 0x1Fu))
        {
          break;
        }

        [a3 frame];
        v9 = v20[i];
        if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:];
        }

        v10 = [(CoreCECDevice *)self audioFormats];
        v11 = -[NSDictionary objectForKey:](v10, "objectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9]);
        if (v11)
        {
          v12 = v11;
          if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
          {
            [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:];
          }

          v13 = [v12 bytes];
          if (v13)
          {
            for (j = 0; j != 3; ++j)
            {
              if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
              {
                v18 = j;
                v19 = *(v13 + j);
                LogPrintF();
              }
            }
          }

          v15 = *v13;
          v16 = &v25 + v7;
          v16[2] = *(v13 + 2);
          *v16 = v15;
          v7 += 3;
        }
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    if (v7)
    {
      -[CoreCECDeviceProvider sendMessage:error:](self, "sendMessage:error:", +[CECMessage reportShortAudioDescriptor:length:from:to:](CECMessage, "reportShortAudioDescriptor:length:from:to:", &v25, v7, -[CoreCECDevice logicalAddress](self, "logicalAddress"), [a4 logicalAddress]), 0);
    }

    else
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:];
      }

      [(CoreCECDeviceProvider *)self sendFeatureAbort:3 forMessage:a3, v18, v19];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleSetSystemAudioModeMessage:(id)a3 fromDevice:(id)a4
{
  if (([a3 isBroadcast] & 1) == 0)
  {
    if ([(CoreCECDevice *)self deviceType]== 7)
    {
      if ([a3 initiator] != 5 && gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleSetSystemAudioModeMessage:fromDevice:];
      }
    }

    else
    {

      [(CoreCECDeviceProvider *)self didNotHandleMessage:a3 unsupportedOperand:0];
    }
  }
}

- (void)handleSystemAudioModeRequestMessage:(id)a3 fromDevice:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  if (-[CoreCECDeviceProvider handlingRequiredForSystemAudioModeMessage:](self, "handlingRequiredForSystemAudioModeMessage:") && ([a3 isBroadcast] & 1) == 0 && -[CoreCECDevice deviceType](self, "deviceType") == 1)
  {
    if (!a3 || ([a3 frame], (v11 & 0x1F) != 2) && (objc_msgSend(a3, "frame"), (v10 & 0x1F) != 4))
    {
      if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleSystemAudioModeRequestMessage:fromDevice:];
        if (!a3)
        {
          goto LABEL_20;
        }
      }

      else if (!a3)
      {
        goto LABEL_20;
      }
    }

    [a3 frame];
    if ((v9 & 0x1C) != 0)
    {
      [a3 frame];
      [a3 frame];
      if ([a4 deviceType] == 7)
      {
        [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByTV:1];
      }

      else
      {
        [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByOtherDevice:1];
      }

      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleSystemAudioModeRequestMessage:fromDevice:];
      }

      v7 = 1;
LABEL_24:
      [(CoreCECDevice *)self receivedRequestSystemAudioModeStatusChangeTo:v7 fromDevice:a4];
      goto LABEL_25;
    }

LABEL_20:
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleSystemAudioModeRequestMessage:fromDevice:];
    }

    v7 = 0;
    goto LABEL_24;
  }

LABEL_25:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleSetAudioVolumeLevelMessage:(id)a3 fromDevice:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [a3 frame];
    v6 = BYTE2(v10);
  }

  else
  {
    v6 = 0;
    v10 = 0;
    v11 = 0;
    LODWORD(v12) = 0;
  }

  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v8 = v6;
    v9 = self;
    LogPrintF();
  }

  if (v6 > 0x64)
  {
    if (v6 == 127)
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleSetAudioVolumeLevelMessage:fromDevice:];
      }
    }

    else
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleSetAudioVolumeLevelMessage:fromDevice:];
      }

      -[CoreCECDeviceProvider featureAbort:reason:to:error:](self, "featureAbort:reason:to:error:", 115, 3, [a4 logicalAddress], 0);
    }
  }

  else
  {
    [(CoreCECDeviceProvider *)self receivedSetAudioVolumeLevel:v6 fromDevice:a4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)filterSystemAudioModeStatusMessage:(id)a3 toDevice:(id)a4
{
  if ([a3 initiator] != 5 && gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider filterSystemAudioModeStatusMessage:toDevice:];
  }

  v7 = 0;
  if ([a3 parseSystemAudioModeStatus:&v7])
  {
    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  else
  {
    [CoreCECDeviceProvider filterSystemAudioModeStatusMessage:toDevice:];
  }

  return a3;
}

- (void)handleRequestARCInitiationMessage:(id)a3 fromDevice:(id)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = a3;
    v8 = self;
    LogPrintF();
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForAudioReturnChannelMessage:a3, v7, v8])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleRequestARCInitiationMessage:fromDevice:];
    }

    [(CoreCECDevice *)self receivedRequestAudioReturnChannelStatusChangeTo:1 fromDevice:a4];
  }
}

- (void)handleReportARCInitiatedMessage:(id)a3 fromDevice:(id)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v6 = a3;
    v7 = self;
    LogPrintF();
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForAudioReturnChannelMessage:a3, v6, v7])
  {

    [(CoreCECDeviceProvider *)self arcStarting_handleReportARCInitiatedReceived];
  }
}

- (void)handleRequestARCTerminationMessage:(id)a3 fromDevice:(id)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = a3;
    v8 = self;
    LogPrintF();
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForAudioReturnChannelMessage:a3, v7, v8])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleRequestARCTerminationMessage:fromDevice:];
    }

    [(CoreCECDevice *)self receivedRequestAudioReturnChannelStatusChangeTo:0 fromDevice:a4];
  }
}

- (void)handleReportARCTerminatedMessage:(id)a3 fromDevice:(id)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v6 = a3;
    v7 = self;
    LogPrintF();
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForAudioReturnChannelMessage:a3, v6, v7])
  {

    [(CoreCECDeviceProvider *)self arcStopping_handleReportARCTerminatedReceived];
  }
}

- (BOOL)activeSource:(id *)a3
{
  v5 = [CECMessage activeSourceFrom:[(CoreCECDeviceProvider *)self sendFromAddress] physicalAddress:[(CoreCECDevice *)self physicalAddress]];

  return [(CoreCECDeviceProvider *)self sendMessage:v5 error:a3];
}

- (BOOL)requestActiveSource:(id *)a3
{
  v5 = [CECMessage requestActiveSourceFrom:[(CoreCECDeviceProvider *)self sendFromAddress]];

  return [(CoreCECDeviceProvider *)self sendMessage:v5 error:a3];
}

- (BOOL)reportPhysicalAddress:(id *)a3
{
  v7 = 0;
  if (CECDeviceTypeForCoreCECDeviceType(&v7, [(CoreCECDevice *)self deviceType]))
  {
    v5 = [(CoreCECDevice *)self physicalAddress];
    return [(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"reportPhysicalAddress:deviceType:from:" reportPhysicalAddress:v5 deviceType:v7 from:[(CoreCECDeviceProvider *)self sendFromAddress]], a3];
  }

  else
  {
    [(CoreCECDeviceProvider *)a3 reportPhysicalAddress:?];
    return v8;
  }
}

- (BOOL)setMenuLanguage:(CECLanguage)a3 error:(id *)a4
{
  v6 = [CECMessage setMenuLanguage:*a3.characters & 0xFFFFFF from:[(CoreCECDeviceProvider *)self sendFromAddress]];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:a4];
}

- (BOOL)reportFeatures:(id *)a3
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (CECAllDeviceTypesMaskForCoreCECDeviceTypesMask(&v12, [(CoreCECDevice *)self allDeviceTypes]))
  {
    if (CECDeviceFeaturesMaskForCoreCECDeviceFeaturesMask(&v11, [(CoreCECDevice *)self deviceFeatures], [(CoreCECDevice *)self deviceType]))
    {
      if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [(CoreCECDeviceProvider *)self reportFeatures:?];
      }

      if (CECRCProfileForCoreCECRCProfile(&v10, [(CoreCECDevice *)self rcProfile]))
      {
        v5 = [(CoreCECDevice *)self cecVersion];
        v6 = v12;
        v7 = v11;
        v8 = [(CoreCECDeviceProvider *)self sendFromAddress];
        return [(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"reportFeaturesWith:deviceTypes:rcProfile:deviceFeatures:from:" reportFeaturesWith:v5 deviceTypes:v6 rcProfile:v10 deviceFeatures:v7 from:v8], a3];
      }

      else
      {
        [(CoreCECDeviceProvider *)a3 reportPhysicalAddress:?];
        return v15;
      }
    }

    else
    {
      [(CoreCECDeviceProvider *)a3 reportPhysicalAddress:?];
      return v14;
    }
  }

  else
  {
    [(CoreCECDeviceProvider *)a3 reportPhysicalAddress:?];
    return v13;
  }
}

- (BOOL)reportShortAudioDescriptorTo:(unsigned __int8)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider reportShortAudioDescriptorTo:error:];
  }

  return 0;
}

- (BOOL)requestShortAudioDescriptor:(unsigned __int8)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestShortAudioDescriptor:error:];
  }

  return 0;
}

- (BOOL)setSystemAudioMode:(unint64_t)a3 to:(unsigned __int8)a4 error:(id *)a5
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider setSystemAudioMode:to:error:];
  }

  return 0;
}

- (BOOL)systemAudioModeStatus:(unsigned __int8)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider systemAudioModeStatus:error:];
  }

  return 0;
}

- (void)didRemoveFromBus:(id)a3
{
  v4.receiver = self;
  v4.super_class = CoreCECDeviceProvider;
  [(CoreRCDevice *)&v4 didRemoveFromBus:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 updateAllowHibernation];
  }
}

- (BOOL)deckControlSetDeckStatus:(unint64_t)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = objc_opt_class();
    v12 = self;
    v13 = CoreCECDeckInfoString(a3);
    v11 = v7;
    LogPrintF();
  }

  v14.receiver = self;
  v14.super_class = CoreCECDeviceProvider;
  v8 = [(CoreCECDevice *)&v14 deckControlSetDeckStatus:a3 error:a4, v11, v12, v13];
  if (v8)
  {
    [-[CoreRCDevice bus](self "bus")];
    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    for (i = 0; i != 15; ++i)
    {
      if ((self->_deckStatusRequestMask >> i))
      {
        -[CoreCECDeviceProvider sendDeckStatusToDevice:](self, "sendDeckStatusToDevice:", [-[CoreRCDevice bus](self "bus")]);
      }
    }
  }

  return v8;
}

- (BOOL)sendHIDEvent:(id)a3 target:(id)a4 error:(id *)a5
{
  v19 = 0;
  v20 = a4;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v14 = a3;
    v15 = a4;
    v12 = objc_opt_class();
    v13 = self;
    LogPrintF();
  }

  if ([a3 isRepeat] || a4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v18 = 0, v17 = 0, v16 = 0, (objc_msgSend(a3, "getCECUserControl:pressed:", &v17, &v16) & 1) == 0))
  {
    v19 = OUTLINED_FUNCTION_1_6(MEMORY[0x277CCA9B8], v9, *MEMORY[0x277CCA590]);
    goto LABEL_18;
  }

  if (![(CoreCECDeviceProvider *)self getRemoteControlDestination:&v20 logicalAddress:&v18 forTargetDevice:a4 command:v17 error:&v19])
  {
    goto LABEL_18;
  }

  if (v16 == 1)
  {
    [(CoreCECDeviceProvider *)self userControlCancelInitiatorTrackAudioStatusTimeout];
    [(CoreCECDeviceProvider *)self userControlScheduleInitiatorRepetitionTimeout];
    if (![(CoreCECDeviceProvider *)self userControlPressed:v17 to:v18 error:&v19])
    {
      [(CoreCECDeviceProvider *)self userControlCancelInitiatorRepetitionTimeout];
      goto LABEL_18;
    }

    self->_userControlInitiatorState.control = v17;
    self->_userControlInitiatorState.destination = v18;
    self->_userControlInitiatorState.isValid = 1;
  }

  else
  {
    if (!self->_userControlInitiatorState.isValid)
    {
      goto LABEL_18;
    }

    if (!CECUserControlEquals(*&self->_userControlInitiatorState.control, v17))
    {
      goto LABEL_18;
    }

    self->_userControlInitiatorState.isValid = 0;
    [(CoreCECDeviceProvider *)self userControlCancelInitiatorRepetitionTimeout];
    if (![(CoreCECDeviceProvider *)self userControlReleasedTo:self->_userControlInitiatorState.destination error:&v19])
    {
      goto LABEL_18;
    }
  }

  if ([(CoreCECDeviceProvider *)self trackAudioStatusEnabled])
  {
    [(CoreCECDeviceProvider *)self userControlScheduleInitiatorTrackAudioStatusTimeout];
  }

LABEL_18:
  v10 = v19;
  if (a5)
  {
    *a5 = v19;
  }

  return v10 == 0;
}

- (BOOL)resignActiveSource:(id *)a3
{
  OUTLINED_FUNCTION_18();
  v9 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = objc_opt_class();
    v8 = v4;
    LogPrintF();
  }

  if ([v4 sendActiveSourceStatus:0 error:{&v9, v7, v8}])
  {
    [objc_msgSend(v4 "busProvider")];
  }

  v5 = v9;
  if (v3)
  {
    *v3 = v9;
  }

  return v5 == 0;
}

- (BOOL)setAudioVolumeStatus:(unint64_t)a3 error:(id *)a4
{
  v28 = 0;
  OUTLINED_FUNCTION_16();
  if (v9 ^ v10 | v8 && (v7 != -1 || _LogCategory_Initialize()))
  {
    v24 = a3;
    v26 = self;
    LogPrintF();
  }

  if ([(CoreCECDevice *)self deviceType:v24]!= 1)
  {
    if (![(CoreCECDevice *)self systemAudioControlEnabled])
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA590];
      v21 = -6709;
      goto LABEL_37;
    }

    if ([-[CoreCECDeviceProvider busProvider](self "busProvider")] == 2)
    {
      v12 = 5;
    }

    else
    {
      v12 = 0;
    }

    v13 = [-[CoreRCDevice bus](self "bus")];
    if (!v13)
    {
      if (gLogCategory_CoreRCDevice <= 90)
      {
        if (gLogCategory_CoreRCDevice == -1)
        {
          v11 = _LogCategory_Initialize();
          if (!v11)
          {
            goto LABEL_38;
          }
        }

        goto LABEL_48;
      }

LABEL_49:
      LOBYTE(v11) = 0;
      goto LABEL_38;
    }

    v14 = v13;
    v15 = [v13 featureSupportStatus:20];
    if (v15)
    {
      if (v15 == 2)
      {
        OUTLINED_FUNCTION_16();
        if (v9 ^ v10 | v8 && (v16 != -1 || _LogCategory_Initialize()))
        {
          v25 = a3;
          LogPrintF();
        }

        if ([-[CoreRCDevice bus](self "bus")])
        {
          [v14 setAudioVolumeStatus:a3 error:0];
          goto LABEL_32;
        }

        if (gLogCategory_CoreRCDevice <= 90)
        {
          if (gLogCategory_CoreRCDevice == -1)
          {
            v11 = _LogCategory_Initialize();
            if (!v11)
            {
              goto LABEL_38;
            }
          }

LABEL_48:
          LogPrintF();
          goto LABEL_49;
        }

        goto LABEL_49;
      }

      OUTLINED_FUNCTION_16();
      if (!(v9 ^ v10 | v8) || v18 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_36;
      }
    }

    else
    {
      OUTLINED_FUNCTION_16();
      if (!(v9 ^ v10 | v8) || v17 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_36;
      }
    }

    LogPrintF();
LABEL_36:
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v21 = -6735;
LABEL_37:
    v22 = [v19 errorWithDomain:v20 code:v21 userInfo:0];
    LOBYTE(v11) = 0;
    v28 = v22;
    goto LABEL_38;
  }

  if ([(CoreCECDevice *)self audioVolumeStatus]== a3)
  {
LABEL_32:
    LOBYTE(v11) = 1;
    goto LABEL_38;
  }

  v27.receiver = self;
  v27.super_class = CoreCECDeviceProvider;
  v11 = [(CoreCECDevice *)&v27 setAudioVolumeStatus:a3 error:&v28];
  if (v11)
  {
    [(CoreCECDeviceProvider *)self audioStatusChanged];
    [-[CoreRCDevice bus](self "bus")];
    goto LABEL_32;
  }

LABEL_38:
  if (a4 && v28)
  {
    *a4 = v28;
  }

  return v11;
}

- (BOOL)setSupportedAudioFormats:(id)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    v10 = self;
    LogPrintF();
  }

  v11.receiver = self;
  v11.super_class = CoreCECDeviceProvider;
  v7 = [(CoreCECDevice *)&v11 setSupportedAudioFormats:a3 error:a4, v9, v10];
  if (v7)
  {
    [-[CoreRCDevice bus](self "bus")];
  }

  return v7;
}

- (id)filterSetMenuLanguageMessage:(id)a3
{
  OUTLINED_FUNCTION_18();
  if ([v5 initiator])
  {
    return 0;
  }

  v8 = 0;
  v7 = 0;
  if ([v3 parseSetMenuLanguage:&v7])
  {
    [objc_msgSend(v4 "busProvider")];
  }

  else if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v3;
}

- (id)filterReportFeaturesMessage:(id)a3 toDevice:(id)a4
{
  OUTLINED_FUNCTION_18();
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v13 = 0;
  v14 = 0;
  if ([v4 parseReportFeatures:&v18 + 1 deviceTypes:&v18 rcProfile:&v16 features:&v15])
  {
    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      v6 = CECVersionString(HIBYTE(v18));
      v11 = HIBYTE(v16);
      v12 = v15;
      v9 = v18;
      v10 = v16;
      v8 = v6;
      LogPrintF();
    }

    [v5 setCecVersion:{HIBYTE(v18), v8, v9, v10, v11, v12}];
    if (CoreCECDeviceFeaturesMaskForCECDeviceFeaturesMask(&v14, v15))
    {
      [v5 setDeviceFeatures:v14];
      [v5 setKnownDeviceFeatures:{objc_msgSend(v5, "defaultKnownDeviceFeaturesMaskForCECVersion:", HIBYTE(v18))}];
      if (CoreCECDeviceTypesMaskForCECAllDeviceTypesMask(&v17, v18))
      {
        [v5 setAllDeviceTypes:v17];
        if (CoreCECRCProfileForCECRCProfile(&v13, &v16))
        {
          [v5 setRcProfile:v13];
          [objc_msgSend(v5 "bus")];
        }
      }
    }
  }

  else if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v4;
}

- (void)sendDeckStatusToDevice:(id)a3
{
  v9 = 0;
  v5 = [(CoreCECDevice *)self deckStatus];
  if (a3 && v5)
  {
    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      v6 = a3;
      LogPrintF();
    }

    if (!-[CoreCECDeviceProvider deckStatusWithInfo:to:error:](self, "deckStatusWithInfo:to:error:", -[CoreCECDevice deckStatus](self, "deckStatus", v6), [a3 logicalAddress], &v9))
    {
      if (gLogCategory_CoreRCDevice <= 90)
      {
        if (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize())
        {
          v7 = a3;
          v8 = v9;
          LogPrintF();
        }

        if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          v7 = a3;
          LogPrintF();
        }
      }

      self->_deckStatusRequestMask &= ~(1 << [a3 logicalAddress]);
    }
  }
}

- (uint64_t)willRemoveFromBus:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)serialQueue
{
  OUTLINED_FUNCTION_1_4();
  v2 = [MEMORY[0x277CCA890] currentHandler];

  return [v2 handleFailureInMethod:v1 object:v0 file:@"CoreCECDeviceProvider.m" lineNumber:337 description:@"busProvider queue must not be nil!"];
}

- (void)didAddToBus:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 90)
  {
    OUTLINED_FUNCTION_1_4();
    if (v1 != -1 || _LogCategory_Initialize())
    {
      v2 = *v0;
      LogPrintF();
    }
  }
}

- (uint64_t)deckControlCommandWithMode:target:error:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECDeckControlModeString(v0);
  return LogPrintF();
}

- (uint64_t)deckControlCommandWithMode:(uint64_t *)a1 target:(const char *)a2 error:.cold.3(uint64_t *a1, const char *a2)
{
  result = OUTLINED_FUNCTION_15(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

- (uint64_t)deckControlPlayWithMode:target:error:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECPlayModeString(v0);
  return LogPrintF();
}

- (uint64_t)deckControlRefreshStatus:requestType:error:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  v0 = OUTLINED_FUNCTION_3_1();
  CoreCECStatusRequestTypeString(v0);
  return LogPrintF();
}

- (uint64_t)performStandbyWithTargetDevice:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)setSystemAudioControlEnabled:error:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_5_2();
  return LogPrintF();
}

- (uint64_t)systemAudioModeRequest:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  CoreCECSystemAudioModeStatusString(v0);
  return LogPrintF();
}

- (uint64_t)systemAudioModeRequest:(uint64_t *)a1 error:(const char *)a2 .cold.2(uint64_t *a1, const char *a2)
{
  result = OUTLINED_FUNCTION_14(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

- (uint64_t)requestSystemAudioModeStatusChangeTo:error:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  CoreCECActivationStatusString(v0);
  return LogPrintF();
}

- (uint64_t)requestSystemAudioModeStatusChangeTo:(uint64_t *)a1 error:.cold.3(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:1 userInfo:0];
  *a1 = result;
  return result;
}

- (uint64_t)requestSystemAudioModeStatusChangeTo:error:.cold.4()
{
  OUTLINED_FUNCTION_1_3();
  v1 = OUTLINED_FUNCTION_3_1();
  CoreCECActivationStatusString(v1);
  v3 = *v0;
  return LogPrintF();
}

- (uint64_t)setAudioReturnChannelControlEnabled:error:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_5_2();
  return LogPrintF();
}

- (uint64_t)requestAudioReturnChannelStatusChangeTo:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  CoreCECActivationStatusString(a1);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)requestAudioReturnChannelStatusChangeTo:(uint64_t *)a1 error:(const char *)a2 .cold.2(uint64_t *a1, const char *a2)
{
  result = OUTLINED_FUNCTION_14(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  v5 = result;
  if (gLogCategory_CoreRCDevice <= 40)
  {
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      CoreCECActivationStatusString(a2);
      [OUTLINED_FUNCTION_3_1() localizedDescription];
      objc_opt_class();
      result = LogPrintF();
    }
  }

  if (a1)
  {
    *a1 = v5;
  }

  return result;
}

- (uint64_t)requestAudioReturnChannelStatusChangeTo:(uint64_t)a1 error:.cold.3(uint64_t a1)
{
  CoreCECActivationStatusString(a1);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)setTrackAudioStatusEnabled:pressTimeout:pollInterval:error:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_5_2();
  return LogPrintF();
}

- (uint64_t)getRemoteControlDestination:(void *)a1 logicalAddress:forTargetDevice:command:error:.cold.1(void *a1)
{
  [a1 systemAudioControlEnabled];
  CoreCECSystemAudioModeStatusString([objc_msgSend(a1 "busProvider")]);
  return LogPrintF();
}

- (void)getRemoteControlDestination:logicalAddress:forTargetDevice:command:error:.cold.5()
{
  if (gLogCategory_CoreRCDevice <= 90)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

uint64_t __76__CoreCECDeviceProvider_userControlScheduleInitiatorTrackAudioStatusTimeout__block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 236);
  return LogPrintF();
}

- (uint64_t)userControlFollowerSafetyTimeoutExpired
{
  objc_opt_class();
  CECUserControlString(*(a1 + 184));
  v2 = *(a1 + 176);
  objc_opt_class();
  v4 = *(a1 + 176);
  return LogPrintF();
}

- (uint64_t)userControlFollowerSynthesizeRelease
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  CECUserControlString(v0[1]);
  v1 = *v0;
  objc_opt_class();
  v3 = *v0;
  return LogPrintF();
}

- (uint64_t)deviceRequestSystemAudioModeStatusChangeTo:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  CoreCECActivationStatusString(a1);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)deviceRequestSystemAudioModeStatusChangeTo:(uint64_t)a1 error:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  CoreCECActivationStatusString(a1);
  [objc_msgSend(a2 "busProvider")];
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)dsamStartingWithPhysicalAddress:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (gLogCategory_CoreRCDevice <= 90)
  {
    v3 = v2;
    if (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize())
    {
      v5 = v3;
      v6 = *v1;
      LogPrintF();
    }
  }

  [v0 samResetStateToOff];
  return [OUTLINED_FUNCTION_2_8() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)dsamStopping
{
  OUTLINED_FUNCTION_8();
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
    LogPrintF();
  }

  [v0 setSystemAudioModeState:7];
  return [OUTLINED_FUNCTION_10() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)audioSystemRequestSystemAudioModeStatusChangeTo:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  CoreCECActivationStatusString(a1);
  [objc_msgSend(a2 "busProvider")];
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)samStarting_broadcast_Req_Act_Src
{
  OUTLINED_FUNCTION_8();
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
    LogPrintF();
  }

  [v0 samResetStateToOff];
  return [OUTLINED_FUNCTION_2_8() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)samStarting_send_SSAM_ON_to_TV
{
  OUTLINED_FUNCTION_8();
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
    LogPrintF();
  }

  [v0 samResetStateToOff];
  return [OUTLINED_FUNCTION_2_8() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)samStarting_broadcast_SSAM_ON
{
  if (a1 <= 90 && (a1 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [a2 samResetStateToOff];
  return [OUTLINED_FUNCTION_2_8() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)samStopping
{
  if (a1 <= 60 && (a1 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [a2 setSystemAudioModeState:7];
  return [OUTLINED_FUNCTION_10() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)arcStarting
{
  OUTLINED_FUNCTION_1_4();
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
    LogPrintF();
  }

  return [OUTLINED_FUNCTION_2_8() arcInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)arcStopping
{
  OUTLINED_FUNCTION_1_4();
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11();
    LogPrintF();
  }

  return [OUTLINED_FUNCTION_10() arcInformDelegateTransitionTo:? failedWithError:?];
}

- (void)handleMessage:fromDevice:broadcast:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (uint64_t)initiatorAddressErrorDetectedForMessage:(void *)a1 .cold.1(void *a1)
{
  CECMessageTypeString([a1 messageType]);
  [OUTLINED_FUNCTION_2_4() logicalAddress];
  return LogPrintF();
}

- (void)handleFeatureAbortMessage:fromDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)filterActiveSourceMessage:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)filterInactiveSourceMessage:toDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (uint64_t)filterSetStreamPathMessage:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

- (void)filterSetStreamPathMessage:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *v0 = v1;
}

- (uint64_t)filterSetStreamPathMessage:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

- (void)filterRoutingChangeMessage:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *v0 = v1;
}

- (uint64_t)filterRoutingChangeMessage:(uint64_t)a3 .cold.2(uint64_t result, uint64_t *a2, uint64_t a3, void *a4)
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    v6 = result;
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      *a2 = CECPhysicalAddressStringWithAddress(v6);
      result = LogPrintF();
    }
  }

  *a4 = 0;
  return result;
}

- (void)filterRoutingChangeMessage:.cold.3()
{
  OUTLINED_FUNCTION_1_4();
  if (gLogCategory_CoreRCDevice <= 70 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *v0 = v1;
}

- (void)filterRoutingInformationMessage:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)filterSetOSDNameMessage:toDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)filterDeviceVendorIDMessage:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)filterCECVersionMessage:toDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)filterReportPhysicalAddressMessage:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)filterReportPowerStatusMessage:toDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (void)filterDeckStatusMessage:toDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (uint64_t)handleUserControlPressedMessage:fromDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  CECUserControlString(*v0);
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  return LogPrintF();
}

- (void)handleUserControlReleasedMessage:fromDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (uint64_t)handleUserControlReleasedMessage:(uint64_t)result fromDevice:.cold.2(uint64_t result)
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    v1 = result;
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *v1;
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)handleUserControl:(uint64_t)a3 pressed:(uint64_t)a4 fromDevice:(_BYTE *)a5 abortReason:.cold.2(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = result;
  if (gLogCategory_CoreRCDevice <= 10)
  {
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      CECUserControlString(a4);
      CECAbortReasonString(a2);
      result = LogPrintF();
    }
  }

  if (v8)
  {
    *v8 = a2;
  }

  *a5 = 0;
  return result;
}

- (uint64_t)handleReportAudioStatusMessage:(uint64_t)result fromDevice:.cold.1(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)handleReportAudioStatusMessage:(uint64_t *)a1 fromDevice:(unsigned __int8 *)a2 .cold.2(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  return LogPrintF();
}

- (void)filterSetSystemAudioModeMessage:toDevice:.cold.2()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (uint64_t)handleRequestShortAudioDescriptorMessage:fromDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  [v0 audioFormats];
  return LogPrintF();
}

- (uint64_t)handleRequestShortAudioDescriptorMessage:(void *)a1 fromDevice:(uint64_t)a2 .cold.2(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 frame];
    v3 = *(a2 + 16) & 0x1F;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return LogPrintF();
}

- (uint64_t)handleRequestShortAudioDescriptorMessage:fromDevice:.cold.3()
{
  OUTLINED_FUNCTION_18();
  [v2 frame];
  v4 = *(v1 + v0);
  return LogPrintF();
}

- (void)filterSystemAudioModeStatusMessage:toDevice:.cold.2()
{
  if (gLogCategory_CoreRCDevice <= 60)
  {
    OUTLINED_FUNCTION_3_2();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

- (uint64_t)sendMessage:(uint64_t *)a1 withRetryCount:error:.cold.2(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] cecTopologyChangeError];
  *a1 = result;
  return result;
}

- (uint64_t)reportPhysicalAddress:(uint64_t)result .cold.1(uint64_t result, const char *a2)
{
  if (result)
  {
    v3 = result;
    result = OUTLINED_FUNCTION_1_6(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
    *v3 = result;
  }

  *a2 = 0;
  return result;
}

- (uint64_t)reportFeatures:(void *)a1 .cold.3(void *a1, unsigned __int8 *a2)
{
  [a1 deviceFeatures];
  v4 = *a2;
  return LogPrintF();
}

@end