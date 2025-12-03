@interface CoreCECDeviceProvider
- (BOOL)activeARCAudioSystem;
- (BOOL)activeSource:(id *)source;
- (BOOL)audioSystemRequestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error;
- (BOOL)deckControlCommandWithMode:(unint64_t)mode target:(id)target error:(id *)error;
- (BOOL)deckControlPlayWithMode:(unint64_t)mode target:(id)target error:(id *)error;
- (BOOL)deckControlRefreshStatus:(id)status requestType:(unint64_t)type error:(id *)error;
- (BOOL)deckControlSetDeckStatus:(unint64_t)status error:(id *)error;
- (BOOL)deviceRequestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error;
- (BOOL)getRemoteControlDestination:(id *)destination logicalAddress:(unsigned __int8 *)address forTargetDevice:(id)device command:(unsigned __int8)command error:(id *)error;
- (BOOL)handlingRequiredForAudioReturnChannelMessage:(id)message;
- (BOOL)handlingRequiredForSystemAudioModeMessage:(id)message;
- (BOOL)initiatorAddressErrorDetectedForMessage:(id)message;
- (BOOL)performStandbyWithTargetDevice:(id)device error:(id *)error;
- (BOOL)refreshProperties:(id)properties ofDevice:(id)device error:(id *)error;
- (BOOL)reportFeatures:(id *)features;
- (BOOL)reportPhysicalAddress:(id *)address;
- (BOOL)reportShortAudioDescriptorTo:(unsigned __int8)to error:(id *)error;
- (BOOL)requestActiveSource:(id *)source;
- (BOOL)requestAudioReturnChannelStatusChangeTo:(unint64_t)to error:(id *)error;
- (BOOL)requestAudioStatus:(id *)status;
- (BOOL)requestShortAudioDescriptor:(unsigned __int8)descriptor error:(id *)error;
- (BOOL)requestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error;
- (BOOL)resignActiveSource:(id *)source;
- (BOOL)sendHIDEvent:(id)event target:(id)target error:(id *)error;
- (BOOL)setAudioVolumeStatus:(unint64_t)status error:(id *)error;
- (BOOL)setExtendedProperty:(id)property forKey:(id)key error:(id *)error;
- (BOOL)setMenuLanguage:(CECLanguage)language error:(id *)error;
- (BOOL)setSupportedAudioFormats:(id)formats error:(id *)error;
- (BOOL)setSystemAudioMode:(unint64_t)mode to:(unsigned __int8)to error:(id *)error;
- (BOOL)systemAudioModeRequest:(unint64_t)request error:(id *)error;
- (BOOL)systemAudioModeStatus:(unsigned __int8)status error:(id *)error;
- (CoreCECDeviceProvider)initWithCoder:(id)coder;
- (CoreCECDeviceProvider)initWithDevice:(id)device;
- (OS_dispatch_queue)serialQueue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)extendedPropertyForKey:(id)key error:(id *)error;
- (id)filterActiveSourceMessage:(id)message;
- (id)filterCECVersionMessage:(id)message toDevice:(id)device;
- (id)filterDeckStatusMessage:(id)message toDevice:(id)device;
- (id)filterDeviceVendorIDMessage:(id)message;
- (id)filterInactiveSourceMessage:(id)message toDevice:(id)device;
- (id)filterMessage:(id)message toDevice:(id)device;
- (id)filterReportFeaturesMessage:(id)message toDevice:(id)device;
- (id)filterReportPhysicalAddressMessage:(id)message;
- (id)filterReportPowerStatusMessage:(id)message toDevice:(id)device;
- (id)filterRoutingChangeMessage:(id)message;
- (id)filterRoutingInformationMessage:(id)message;
- (id)filterSetMenuLanguageMessage:(id)message;
- (id)filterSetOSDNameMessage:(id)message toDevice:(id)device;
- (id)filterSetStreamPathMessage:(id)message;
- (id)filterSetSystemAudioModeMessage:(id)message toDevice:(id)device;
- (id)filterSystemAudioModeStatusMessage:(id)message toDevice:(id)device;
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
- (void)arcInformDelegateOfSuccessTransitioningTo:(unint64_t)to;
- (void)arcInformDelegateTransitionTo:(unint64_t)to failedWithError:(id)error;
- (void)arcStarting;
- (void)arcStarting_handleReportARCInitiatedReceived;
- (void)arcStopping;
- (void)arcStopping_handleReportARCTerminatedReceived;
- (void)audioStatusChanged;
- (void)audioStatusHandleUserControl:(CECUserControl)control pressed:(BOOL)pressed;
- (void)audioStatusHandleUserControlReleased;
- (void)broadcastPresence;
- (void)dealloc;
- (void)didAddToBus:(id)bus;
- (void)didChangePowerStatus:(unint64_t)status;
- (void)didNotHandleMessage:(id)message unsupportedOperand:(BOOL)operand;
- (void)didRemoveFromBus:(id)bus;
- (void)dispatchAsyncLowPriority:(id)priority;
- (void)dispatchSelector:(SEL)selector;
- (void)dispatchSelector:(SEL)selector afterDelay:(double)delay;
- (void)dispatchSelector:(SEL)selector withObject:(id)object;
- (void)dispatchSelector:(SEL)selector withObject:(id)object afterDelay:(double)delay;
- (void)dsamStarting:(id)starting;
- (void)dsamStarting_handleBroadcastSSAMOnResponseReceived;
- (void)dsamStarting_handleBroadcastSSAMOnResponseTimeout;
- (void)dsamStopping;
- (void)dsamStopping_handleBroadcastSSAMOffResponseReceived;
- (void)dsamStopping_handleBroadcastSSAMOffResponseTimeout;
- (void)error:(id)error handlingMessage:(id)message fromDevice:(id)device;
- (void)handleActiveSourceMessage:(id)message fromDevice:(id)device;
- (void)handleDeckControlMessage:(id)message fromDevice:(id)device;
- (void)handleDeckControlPlayMessage:(id)message fromDevice:(id)device;
- (void)handleFeatureAbortMessage:(id)message fromDevice:(id)device;
- (void)handleGetCECVersionMessage:(id)message fromDevice:(id)device;
- (void)handleGetMenuLanguageMessage:(id)message fromDevice:(id)device;
- (void)handleGiveAudioStatusMessage:(id)message fromDevice:(id)device;
- (void)handleGiveDeckStatusMessage:(id)message fromDevice:(id)device;
- (void)handleGiveDevicePowerStatusMessage:(id)message fromDevice:(id)device;
- (void)handleGiveDeviceVendorIDMessage:(id)message fromDevice:(id)device;
- (void)handleGiveFeaturesMessage:(id)message fromDevice:(id)device;
- (void)handleGiveOSDNameMessage:(id)message fromDevice:(id)device;
- (void)handleGivePhysicalAddressMessage:(id)message fromDevice:(id)device;
- (void)handleGiveSystemAudioModeStatusMessage:(id)message fromDevice:(id)device;
- (void)handleMenuRequest:(id)request fromDevice:(id)device;
- (void)handleMessage:(id)message fromDevice:(id)device broadcast:(BOOL)broadcast;
- (void)handleReportARCInitiatedMessage:(id)message fromDevice:(id)device;
- (void)handleReportARCTerminatedMessage:(id)message fromDevice:(id)device;
- (void)handleReportAudioStatusMessage:(id)message fromDevice:(id)device;
- (void)handleRequestARCInitiationMessage:(id)message fromDevice:(id)device;
- (void)handleRequestARCTerminationMessage:(id)message fromDevice:(id)device;
- (void)handleRequestActiveSourceMessage:(id)message fromDevice:(id)device;
- (void)handleRequestShortAudioDescriptorMessage:(id)message fromDevice:(id)device;
- (void)handleSetAudioVolumeLevelMessage:(id)message fromDevice:(id)device;
- (void)handleSetStreamPathMessage:(id)message;
- (void)handleSetSystemAudioModeMessage:(id)message fromDevice:(id)device;
- (void)handleSystemAudioModeRequestMessage:(id)message fromDevice:(id)device;
- (void)handleUserControlPressedMessage:(id)message fromDevice:(id)device;
- (void)handleUserControlReleasedMessage:(id)message fromDevice:(id)device;
- (void)hibernationChanged:(BOOL)changed;
- (void)probeAbsoluteVolumeControl_handleFeatureAbortReceivedFromDevice:(id)device withOpcode:(unsigned __int8)opcode reason:(unsigned __int8)reason;
- (void)refreshActiveSource;
- (void)refreshSystemAudioModeStatus;
- (void)resetAudioStatusState;
- (void)samInformDelegateOfSuccessTransitioningTo:(unint64_t)to;
- (void)samInformDelegateTransitionTo:(unint64_t)to failedWithError:(id)error;
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
- (void)sendDeckStatusToDevice:(id)device;
- (void)userControlFollowerSafetyTimeoutExpired;
- (void)userControlFollowerSynthesizeRelease;
- (void)userControlInitiatorRepetitionTimeoutExpired;
- (void)userControlInitiatorTrackAudioStatusTimeoutExpired;
- (void)userControlScheduleFollowerSafetyTimeout;
- (void)userControlScheduleInitiatorRepetitionTimeout;
- (void)userControlScheduleInitiatorTrackAudioStatusTimeout;
- (void)willRemoveFromBus:(id)bus;
@end

@implementation CoreCECDeviceProvider

- (CoreCECDeviceProvider)initWithDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = CoreCECDeviceProvider;
  v4 = [(CoreCECDevice *)&v7 initWithDevice:?];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sendFromAddress = [device sendFromAddress];
    }

    else
    {
      sendFromAddress = 15;
    }

    v4->_sendFromAddress = sendFromAddress;
    v4->_isValid = 1;
  }

  return v4;
}

- (CoreCECDeviceProvider)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CoreCECDeviceProvider;
  result = [(CoreCECDevice *)&v4 initWithCoder:coder];
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

- (void)willRemoveFromBus:(id)bus
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
  [(CoreRCDevice *)&v6 willRemoveFromBus:bus];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CoreCECDeviceProvider;
  return [(CoreRCDevice *)&v4 copyWithZone:zone];
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

- (BOOL)setExtendedProperty:(id)property forKey:(id)key error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

- (id)extendedPropertyForKey:(id)key error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

- (void)didAddToBus:(id)bus
{
  v5.receiver = self;
  v5.super_class = CoreCECDeviceProvider;
  v6 = 0;
  [(CoreRCDevice *)&v5 didAddToBus:?];
  if ([(CoreRCDevice *)self isLocalDevice])
  {
    if (([bus setAllowHibernation:0 error:&v6] & 1) == 0)
    {
      [CoreCECDeviceProvider didAddToBus:];
    }
  }
}

- (BOOL)deckControlCommandWithMode:(unint64_t)mode target:(id)target error:(id *)error
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

  logicalAddress = [target logicalAddress];
  if (logicalAddress == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v11 target:? error:?];
LABEL_12:
    v12 = v15;
    if (!error)
    {
      return v12 == 0;
    }

    goto LABEL_7;
  }

  [(CoreCECDeviceProvider *)self deckControlWithMode:mode to:logicalAddress error:&v14];
  v12 = v14;
  if (error)
  {
LABEL_7:
    *error = v12;
  }

  return v12 == 0;
}

- (BOOL)deckControlPlayWithMode:(unint64_t)mode target:(id)target error:(id *)error
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

  logicalAddress = [target logicalAddress];
  if (logicalAddress == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v11 target:? error:?];
LABEL_12:
    v12 = v15;
    if (!error)
    {
      return v12 == 0;
    }

    goto LABEL_7;
  }

  [(CoreCECDeviceProvider *)self playWithMode:mode to:logicalAddress error:&v14];
  v12 = v14;
  if (error)
  {
LABEL_7:
    *error = v12;
  }

  return v12 == 0;
}

- (BOOL)deckControlRefreshStatus:(id)status requestType:(unint64_t)type error:(id *)error
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

  logicalAddress = [status logicalAddress];
  if (logicalAddress == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v11 target:? error:?];
    goto LABEL_14;
  }

  v12 = logicalAddress;
  if (!CECStatusRequestForCoreCECStatusRequest(&v16, type))
  {
    [CoreIRDeviceProvider setOSDName:v13 error:?];
LABEL_14:
    v14 = v18;
    if (!error)
    {
      return v14 == 0;
    }

    goto LABEL_8;
  }

  [(CoreCECDeviceProvider *)self giveDeckStatusWithRequest:v16 to:v12 error:&v17];
  v14 = v17;
  if (error)
  {
LABEL_8:
    *error = v14;
  }

  return v14 == 0;
}

- (BOOL)performStandbyWithTargetDevice:(id)device error:(id *)error
{
  v12 = 0;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider performStandbyWithTargetDevice:error:];
    if (device)
    {
      goto LABEL_5;
    }

LABEL_9:
    logicalAddress = 15;
    goto LABEL_10;
  }

  if (!device)
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
    if (!error)
    {
      return v10 == 0;
    }

    goto LABEL_11;
  }

  logicalAddress = [device logicalAddress];
  if (logicalAddress == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v8 target:? error:?];
    goto LABEL_14;
  }

LABEL_10:
  [(CoreCECDeviceProvider *)self standbyTo:logicalAddress error:&v12];
  v10 = v12;
  if (error)
  {
LABEL_11:
    *error = v10;
  }

  return v10 == 0;
}

- (BOOL)refreshProperties:(id)properties ofDevice:(id)device error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    propertiesCopy = properties;
    deviceCopy = device;
    v14 = objc_opt_class();
    selfCopy = self;
    LogPrintF();
  }

  if (properties || device && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [CoreIRDeviceProvider setOSDName:a2 error:?];
LABEL_17:
    v12 = v27;
    if (!error)
    {
      return v12 == 0;
    }

    goto LABEL_12;
  }

  logicalAddress = [device logicalAddress];
  if (logicalAddress == 15)
  {
    [CoreCECDeviceProvider deckControlCommandWithMode:v10 target:? error:?];
    goto LABEL_17;
  }

  v11 = logicalAddress;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__CoreCECDeviceProvider_refreshProperties_ofDevice_error___block_invoke;
  v25[3] = &unk_278EA42E8;
  v25[4] = self;
  v26 = logicalAddress;
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
  if ([device logicalAddress] == 5)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__CoreCECDeviceProvider_refreshProperties_ofDevice_error___block_invoke_5;
    v18[3] = &unk_278EA3400;
    v18[4] = self;
    [(CoreCECDeviceProvider *)self dispatchAsyncLowPriority:v18];
  }

  v12 = 0;
  if (error)
  {
LABEL_12:
    *error = v12;
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
  vendorID = [(CoreCECDevice *)self vendorID];

  [(CoreCECDeviceProvider *)self deviceVendorID:vendorID error:0];
}

- (void)dispatchAsyncLowPriority:(id)priority
{
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, priority);
  dispatch_async([(CoreCECDeviceProvider *)self serialQueue], v4);

  _Block_release(v4);
}

- (void)probeAbsoluteVolumeControl_handleFeatureAbortReceivedFromDevice:(id)device withOpcode:(unsigned __int8)opcode reason:(unsigned __int8)reason
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider probeAbsoluteVolumeControl_handleFeatureAbortReceivedFromDevice:reason withOpcode:? reason:?];
  }

  [device setFeature:20 supportStatus:1];
}

- (BOOL)systemAudioModeRequest:(unint64_t)request error:(id *)error
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

  if (request - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [CoreIRDeviceProvider setOSDName:v7 error:?];
LABEL_17:
    result = 0;
    if (!error)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ([-[CoreCECDeviceProvider busProvider](self "busProvider")] == request)
  {
    return 1;
  }

  result = [(CoreCECDeviceProvider *)self deviceRequestSystemAudioModeStatusChangeTo:request == 2 error:&v9];
  if (error)
  {
LABEL_10:
    if (!result)
    {
      result = 0;
      *error = v9;
    }
  }

  return result;
}

- (BOOL)requestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error
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
    if (![(CoreCECDeviceProvider *)self deviceRequestSystemAudioModeStatusChangeTo:to error:&v9])
    {
      goto LABEL_14;
    }

    return 1;
  }

  if ([(CoreCECDeviceProvider *)self audioSystemRequestSystemAudioModeStatusChangeTo:to error:&v9])
  {
    return 1;
  }

LABEL_14:
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestSystemAudioModeStatusChangeTo:error:];
  }

  result = 0;
  if (error)
  {
    *error = v9;
  }

  return result;
}

- (BOOL)requestAudioReturnChannelStatusChangeTo:(unint64_t)to error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestAudioReturnChannelStatusChangeTo:to error:?];
  }

  audioReturnChannelControlEnabled = [(CoreCECDevice *)self audioReturnChannelControlEnabled];
  if (audioReturnChannelControlEnabled)
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider requestAudioReturnChannelStatusChangeTo:to error:?];
    }

    if (to == 1)
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
    [CoreCECDeviceProvider requestAudioReturnChannelStatusChangeTo:error error:to];
  }

  return audioReturnChannelControlEnabled;
}

- (void)didChangePowerStatus:(unint64_t)status
{
  if (status == 2)
  {
    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  else if (status == 1 && [(CoreCECDevice *)self systemAudioControlEnabled])
  {
    [(CoreCECDeviceProvider *)self refreshSystemAudioModeStatus];
  }

  [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  if ([(CoreCECDevice *)self isCEC2Device])
  {
    v7 = 0;
    v6 = 0;
    CECPowerStatusForCoreCECPowerStatus(&v6, status);
    if (![(CoreCECDeviceProvider *)self reportPowerStatus:v6 to:15 error:&v7]&& gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider didChangePowerStatus:?];
    }
  }

  v5.receiver = self;
  v5.super_class = CoreCECDeviceProvider;
  [(CoreCECDevice *)&v5 didChangePowerStatus:status];
}

- (BOOL)requestAudioStatus:(id *)status
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

  else if (status)
  {
    *status = v8;
  }

  return v5;
}

- (BOOL)getRemoteControlDestination:(id *)destination logicalAddress:(unsigned __int8 *)address forTargetDevice:(id)device command:(unsigned __int8)command error:(id *)error
{
  if (device)
  {
    deviceCopy = device;
    goto LABEL_3;
  }

  if ((command - 65) <= 0x25 && ((1 << (command - 65)) & 0x3000400007) != 0)
  {
    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider getRemoteControlDestination:? logicalAddress:? forTargetDevice:? command:? error:?];
    }

    if ([(CoreCECDevice *)self systemAudioControlEnabled])
    {
      deviceCopy = 0;
      if ([-[CoreCECDeviceProvider busProvider](self "busProvider")] == 2)
      {
        logicalAddress = 5;
      }

      else
      {
        logicalAddress = 0;
      }

      if (!destination)
      {
LABEL_5:
        v12 = 0;
        if (address)
        {
          *address = logicalAddress;
        }

        if (error)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }

LABEL_4:
      *destination = deviceCopy;
      goto LABEL_5;
    }
  }

  else if ([(CoreCECDevice *)self isActiveSource])
  {
    if ([(CoreCECDevice *)self logicalAddress])
    {
      deviceCopy = 0;
      logicalAddress = 0;
      if (!destination)
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
      deviceCopy = v16;
LABEL_3:
      logicalAddress = [deviceCopy logicalAddress];
      if (!destination)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  [CoreCECDeviceProvider systemAudioModeRequest:v15 error:?];
  v12 = v17;
  if (error)
  {
LABEL_8:
    *error = v12;
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
  serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__CoreCECDeviceProvider_userControlScheduleInitiatorRepetitionTimeout__block_invoke;
  v6[3] = &unk_278EA4310;
  v7 = v3;
  v6[4] = self;
  dispatch_after(v4, serialQueue, v6);
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
  serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CoreCECDeviceProvider_userControlScheduleInitiatorTrackAudioStatusTimeout__block_invoke;
  block[3] = &unk_278EA4310;
  v11 = v3;
  block[4] = self;
  dispatch_after(v6, serialQueue, block);
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
  serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__CoreCECDeviceProvider_userControlScheduleFollowerSafetyTimeout__block_invoke;
  v6[3] = &unk_278EA4310;
  v7 = v3;
  v6[4] = self;
  dispatch_after(v4, serialQueue, v6);
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

- (void)audioStatusHandleUserControl:(CECUserControl)control pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  if ([(CoreCECDeviceProvider *)self activeARCAudioSystem])
  {
    if (pressedCopy)
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

- (BOOL)deviceRequestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error
{
  v6 = gLogCategory_CoreRCDevice;
  if (gLogCategory_CoreRCDevice <= 10)
  {
    if (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize())
    {
      [CoreCECDeviceProvider deviceRequestSystemAudioModeStatusChangeTo:to error:?];
    }

    v6 = gLogCategory_CoreRCDevice;
  }

  if (v6 <= 40 && (v6 != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider deviceRequestSystemAudioModeStatusChangeTo:to error:self];
  }

  if (to == 1)
  {
    -[CoreCECDeviceProvider dispatchSelector:withObject:](self, "dispatchSelector:withObject:", sel_dsamStarting_, [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[CoreCECDevice physicalAddress](self, "physicalAddress")}]);
  }

  else
  {
    [(CoreCECDeviceProvider *)self dispatchSelector:sel_dsamStopping];
  }

  return 1;
}

- (void)dsamStarting:(id)starting
{
  unsignedIntegerValue = [starting unsignedIntegerValue];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider dsamStarting:];
  }

  [(CoreCECDeviceProvider *)self dsamStartingWithPhysicalAddress:unsignedIntegerValue];
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
      cecTimeoutError = [MEMORY[0x277CCA9B8] cecTimeoutError];

      [(CoreCECDeviceProvider *)self samInformDelegateTransitionTo:1 failedWithError:cecTimeoutError];
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
      cecTimeoutError = [MEMORY[0x277CCA9B8] cecTimeoutError];

      [(CoreCECDeviceProvider *)self samInformDelegateTransitionTo:0 failedWithError:cecTimeoutError];
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

- (BOOL)audioSystemRequestSystemAudioModeStatusChangeTo:(unint64_t)to error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider audioSystemRequestSystemAudioModeStatusChangeTo:to error:self];
  }

  v6 = &selRef_samStarting;
  if (to != 1)
  {
    v6 = &selRef_samStopping;
  }

  [(CoreCECDeviceProvider *)self dispatchSelector:*v6];
  return 1;
}

- (void)samStarting
{
  systemAudioModeRequestedByTV = [(CoreCECDeviceProvider *)self systemAudioModeRequestedByTV];
  systemAudioModeRequestedByOtherDevice = [(CoreCECDeviceProvider *)self systemAudioModeRequestedByOtherDevice];
  [(CoreCECDeviceProvider *)self setSystemAudioModeState:1];
  [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByTV:0];
  [(CoreCECDeviceProvider *)self setSystemAudioModeRequestedByOtherDevice:0];
  if (systemAudioModeRequestedByTV)
  {

    [(CoreCECDeviceProvider *)self samStarting_broadcast_SSAM_ON];
  }

  else if (systemAudioModeRequestedByOtherDevice || [-[CoreCECDeviceProvider busProvider](self "busProvider")])
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

- (void)samInformDelegateOfSuccessTransitioningTo:(unint64_t)to
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {

    [(CoreCECDevice *)self requestSystemAudioModeStatusChangeTo:to didFinishWithResult:1 error:0];
  }
}

- (void)samInformDelegateTransitionTo:(unint64_t)to failedWithError:(id)error
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {

    [(CoreCECDevice *)self requestSystemAudioModeStatusChangeTo:to didFinishWithResult:0 error:error];
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

- (void)arcInformDelegateOfSuccessTransitioningTo:(unint64_t)to
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {

    [(CoreCECDevice *)self requestAudioReturnChannelStatusChangeTo:to didFinishWithResult:1 error:0];
  }
}

- (void)arcInformDelegateTransitionTo:(unint64_t)to failedWithError:(id)error
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {

    [(CoreCECDevice *)self requestAudioReturnChannelStatusChangeTo:to didFinishWithResult:0 error:error];
  }
}

- (void)dispatchSelector:(SEL)selector
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {
    serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__CoreCECDeviceProvider_dispatchSelector___block_invoke;
    v6[3] = &unk_278EA2AA0;
    v6[4] = self;
    v6[5] = selector;
    dispatch_async(serialQueue, v6);
  }
}

- (void)dispatchSelector:(SEL)selector withObject:(id)object
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {
    serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__CoreCECDeviceProvider_dispatchSelector_withObject___block_invoke;
    block[3] = &unk_278EA4220;
    block[5] = object;
    block[6] = selector;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }
}

- (void)dispatchSelector:(SEL)selector afterDelay:(double)delay
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {
    v7 = dispatch_time(0, (delay * 1000000000.0));
    serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__CoreCECDeviceProvider_dispatchSelector_afterDelay___block_invoke;
    v9[3] = &unk_278EA2AA0;
    v9[4] = self;
    v9[5] = selector;
    dispatch_after(v7, serialQueue, v9);
  }
}

- (void)dispatchSelector:(SEL)selector withObject:(id)object afterDelay:(double)delay
{
  if ([(CoreCECDeviceProvider *)self isValid])
  {
    v9 = dispatch_time(0, (delay * 1000000000.0));
    serialQueue = [(CoreCECDeviceProvider *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CoreCECDeviceProvider_dispatchSelector_withObject_afterDelay___block_invoke;
    block[3] = &unk_278EA4220;
    block[5] = object;
    block[6] = selector;
    block[4] = self;
    dispatch_after(v9, serialQueue, block);
  }
}

- (void)hibernationChanged:(BOOL)changed
{
  if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider hibernationChanged:];
  }
}

- (id)filterMessage:(id)message toDevice:(id)device
{
  messageCopy = message;
  if ([message shouldBeIgnored])
  {
    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider filterMessage:toDevice:];
    }

    return 0;
  }

  v7 = [(CoreCECDeviceProvider *)self initiatorAddressErrorDetectedForMessage:messageCopy];
  messageType = [messageCopy messageType];
  if (v7)
  {
    [(CoreCECDevice *)self sendLogicalAddressErrorAnalyticsForMessage:CECMessageTypeString(messageType)];
    return 0;
  }

  if (messageType <= 129)
  {
    if (messageType <= 113)
    {
      switch(messageType)
      {
        case 27:

          return [(CoreCECDeviceProvider *)self filterDeckStatusMessage:messageCopy toDevice:device];
        case 50:

          return [(CoreCECDeviceProvider *)self filterSetMenuLanguageMessage:messageCopy];
        case 71:

          return [(CoreCECDeviceProvider *)self filterSetOSDNameMessage:messageCopy toDevice:device];
        default:
          return messageCopy;
      }
    }

    else if (messageType > 127)
    {
      if (messageType == 128)
      {

        return [(CoreCECDeviceProvider *)self filterRoutingChangeMessage:messageCopy];
      }

      else
      {

        return [(CoreCECDeviceProvider *)self filterRoutingInformationMessage:messageCopy];
      }
    }

    else if (messageType == 114)
    {

      return [(CoreCECDeviceProvider *)self filterSetSystemAudioModeMessage:messageCopy toDevice:device];
    }

    else
    {
      if (messageType != 126)
      {
        return messageCopy;
      }

      return [(CoreCECDeviceProvider *)self filterSystemAudioModeStatusMessage:messageCopy toDevice:device];
    }
  }

  else if (messageType > 143)
  {
    if (messageType > 157)
    {
      if (messageType == 158)
      {

        return [(CoreCECDeviceProvider *)self filterCECVersionMessage:messageCopy toDevice:device];
      }

      else
      {
        if (messageType != 166)
        {
          return messageCopy;
        }

        return [(CoreCECDeviceProvider *)self filterReportFeaturesMessage:messageCopy toDevice:device];
      }
    }

    else if (messageType == 144)
    {

      return [(CoreCECDeviceProvider *)self filterReportPowerStatusMessage:messageCopy toDevice:device];
    }

    else
    {
      if (messageType != 157)
      {
        return messageCopy;
      }

      return [(CoreCECDeviceProvider *)self filterInactiveSourceMessage:messageCopy toDevice:device];
    }
  }

  else if (messageType > 133)
  {
    if (messageType == 134)
    {

      return [(CoreCECDeviceProvider *)self filterSetStreamPathMessage:messageCopy];
    }

    else
    {
      if (messageType != 135)
      {
        return messageCopy;
      }

      return [(CoreCECDeviceProvider *)self filterDeviceVendorIDMessage:messageCopy];
    }
  }

  else if (messageType == 130)
  {

    return [(CoreCECDeviceProvider *)self filterActiveSourceMessage:messageCopy];
  }

  else
  {
    if (messageType != 132)
    {
      return messageCopy;
    }

    return [(CoreCECDeviceProvider *)self filterReportPhysicalAddressMessage:messageCopy];
  }
}

- (void)handleMessage:(id)message fromDevice:(id)device broadcast:(BOOL)broadcast
{
  logicalAddress = [device logicalAddress];
  if (logicalAddress == [(CoreCECDeviceProvider *)self sendFromAddress])
  {
    [CoreCECDeviceProvider handleMessage:fromDevice:broadcast:];
    return;
  }

  messageType = [message messageType];
  if (messageType <= 111)
  {
    if (messageType <= 53)
    {
      if (messageType <= 25)
      {
        if (messageType == -1)
        {
          return;
        }

        if (messageType)
        {
          goto LABEL_117;
        }

        [(CoreCECDeviceProvider *)self handleFeatureAbortMessage:message fromDevice:device];
      }

      else
      {
        if (messageType != 26)
        {
          if (messageType == 27 || messageType == 50)
          {
            return;
          }

          goto LABEL_117;
        }

        [(CoreCECDeviceProvider *)self handleGiveDeckStatusMessage:message fromDevice:device];
      }
    }

    else if (messageType > 67)
    {
      switch(messageType)
      {
        case 'D':

          [(CoreCECDeviceProvider *)self handleUserControlPressedMessage:message fromDevice:device];
          break;
        case 'E':

          [(CoreCECDeviceProvider *)self handleUserControlReleasedMessage:message fromDevice:device];
          break;
        case 'F':

          [(CoreCECDeviceProvider *)self handleGiveOSDNameMessage:message fromDevice:device];
          break;
        default:
          goto LABEL_117;
      }
    }

    else
    {
      switch(messageType)
      {
        case '6':

          [(CoreCECDevice *)self standbyRequestHasBeenReceived:device];
          break;
        case 'A':

          [(CoreCECDeviceProvider *)self handleDeckControlPlayMessage:message fromDevice:device];
          break;
        case 'B':

          [(CoreCECDeviceProvider *)self handleDeckControlMessage:message fromDevice:device];
          break;
        default:
          goto LABEL_117;
      }
    }
  }

  else
  {
    if (messageType <= 192)
    {
      switch(messageType)
      {
        case 112:

          [(CoreCECDeviceProvider *)self handleSystemAudioModeRequestMessage:message fromDevice:device];
          break;
        case 113:

          [(CoreCECDeviceProvider *)self handleGiveAudioStatusMessage:message fromDevice:device];
          break;
        case 114:

          [(CoreCECDeviceProvider *)self handleSetSystemAudioModeMessage:message fromDevice:device];
          break;
        case 115:

          [(CoreCECDeviceProvider *)self handleSetAudioVolumeLevelMessage:message fromDevice:device];
          break;
        case 122:

          [(CoreCECDeviceProvider *)self handleReportAudioStatusMessage:message fromDevice:device];
          break;
        case 125:

          [(CoreCECDeviceProvider *)self handleGiveSystemAudioModeStatusMessage:message fromDevice:device];
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

          [(CoreCECDeviceProvider *)self handleActiveSourceMessage:message fromDevice:device];
          break;
        case 131:

          [(CoreCECDeviceProvider *)self handleGivePhysicalAddressMessage:message fromDevice:device];
          break;
        case 133:

          [(CoreCECDeviceProvider *)self handleRequestActiveSourceMessage:message fromDevice:device];
          break;
        case 134:

          [(CoreCECDeviceProvider *)self handleSetStreamPathMessage:message];
          break;
        case 140:

          [(CoreCECDeviceProvider *)self handleGiveDeviceVendorIDMessage:message fromDevice:device];
          break;
        case 141:

          [(CoreCECDeviceProvider *)self handleMenuRequest:message fromDevice:device];
          break;
        case 143:

          [(CoreCECDeviceProvider *)self handleGiveDevicePowerStatusMessage:message fromDevice:device];
          break;
        case 145:

          [(CoreCECDeviceProvider *)self handleGetMenuLanguageMessage:message fromDevice:device];
          break;
        case 159:

          [(CoreCECDeviceProvider *)self handleGetCECVersionMessage:message fromDevice:device];
          break;
        case 164:

          [(CoreCECDeviceProvider *)self handleRequestShortAudioDescriptorMessage:message fromDevice:device];
          break;
        case 165:
          if (![(CoreCECDevice *)self isCEC2Device])
          {
            goto LABEL_117;
          }

          [(CoreCECDeviceProvider *)self handleGiveFeaturesMessage:message fromDevice:device];
          break;
        default:
          goto LABEL_117;
      }

      return;
    }

    if (messageType <= 194)
    {
      if (messageType == 193)
      {

        [(CoreCECDeviceProvider *)self handleReportARCInitiatedMessage:message fromDevice:device];
      }

      else
      {

        [(CoreCECDeviceProvider *)self handleReportARCTerminatedMessage:message fromDevice:device];
      }
    }

    else
    {
      switch(messageType)
      {
        case 195:

          [(CoreCECDeviceProvider *)self handleRequestARCInitiationMessage:message fromDevice:device];
          break;
        case 196:

          [(CoreCECDeviceProvider *)self handleRequestARCTerminationMessage:message fromDevice:device];
          break;
        case 255:

          [(CoreCECDeviceProvider *)self sendFeatureAbort:4 forMessage:message];
          return;
        default:
LABEL_117:

          [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:0];
          return;
      }
    }
  }
}

- (void)error:(id)error handlingMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)didNotHandleMessage:(id)message unsupportedOperand:(BOOL)operand
{
  operandCopy = operand;
  if ([message isBroadcast])
  {
    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    if (operandCopy)
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

    [(CoreCECDeviceProvider *)self sendFeatureAbort:v7 forMessage:message];
  }
}

- (BOOL)handlingRequiredForSystemAudioModeMessage:(id)message
{
  systemAudioControlEnabled = [(CoreCECDevice *)self systemAudioControlEnabled];
  if (!systemAudioControlEnabled)
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handlingRequiredForSystemAudioModeMessage:?];
    }

    [(CoreCECDeviceProvider *)self sendFeatureAbort:1 forMessage:message];
  }

  return systemAudioControlEnabled;
}

- (BOOL)handlingRequiredForAudioReturnChannelMessage:(id)message
{
  if ([(CoreCECDevice *)self featureSupportStatus:16]== 2)
  {
    audioReturnChannelControlEnabled = [(CoreCECDevice *)self audioReturnChannelControlEnabled];
    v6 = 1;
    if (audioReturnChannelControlEnabled)
    {
      return v6;
    }
  }

  else
  {
    v6 = 0;
  }

  [(CoreCECDeviceProvider *)self sendFeatureAbort:v6 forMessage:message];
  LOBYTE(v6) = 0;
  return v6;
}

- (BOOL)initiatorAddressErrorDetectedForMessage:(id)message
{
  isLocalDevice = [(CoreRCDevice *)self isLocalDevice];
  if (isLocalDevice)
  {
    if ([message loopback])
    {
LABEL_3:
      LOBYTE(isLocalDevice) = 0;
      return isLocalDevice;
    }

    messageType = [message messageType];
    LOBYTE(isLocalDevice) = 1;
    if (((messageType - 130) > 0x24 || ((1 << (messageType + 126)) & 0x1018004025) == 0) && messageType != 27)
    {
      if (gLogCategory_CoreRCDevice > 60)
      {
        goto LABEL_3;
      }

      if (gLogCategory_CoreRCDevice != -1 || (isLocalDevice = _LogCategory_Initialize()) != 0)
      {
        [CoreCECDeviceProvider initiatorAddressErrorDetectedForMessage:message];
        goto LABEL_3;
      }
    }
  }

  return isLocalDevice;
}

- (void)handleFeatureAbortMessage:(id)message fromDevice:(id)device
{
  v9 = 0;
  if ([message parseFeatureAbortOpcode:&v9 + 1 reason:&v9])
  {
    v6 = HIBYTE(v9);
    if (HIBYTE(v9) == 114)
    {
      if (![device logicalAddress] && -[CoreCECDeviceProvider systemAudioModeState](self, "systemAudioModeState") == 5)
      {
        [(CoreCECDeviceProvider *)self samStarting_handleFeatureAbortReceived];
        return;
      }

      v6 = HIBYTE(v9);
    }

    if (v6 == 192 && (v7 = [device logicalAddress], v6 = HIBYTE(v9), !v7))
    {
      [(CoreCECDeviceProvider *)self arcStarting_handleFeatureAbortReceivedWithOpcode:HIBYTE(v9) reason:v9];
    }

    else if (v6 == 197 && (v8 = [device logicalAddress], v6 = HIBYTE(v9), !v8))
    {
      [(CoreCECDeviceProvider *)self arcStopping_handleFeatureAbortReceivedWithOpcode:HIBYTE(v9) reason:v9];
    }

    else if (v6 == 115)
    {
      [(CoreCECDeviceProvider *)self probeAbsoluteVolumeControl_handleFeatureAbortReceivedFromDevice:device withOpcode:115 reason:v9];
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

- (id)filterActiveSourceMessage:(id)message
{
  v6 = 0;
  if ([message parseActiveSourcePhysicalAddress:&v6])
  {
    [(CoreCECDevice *)self setPhysicalAddress:v6];
    [-[CoreRCDevice bus](self "bus")];
    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  else
  {
    [CoreCECDeviceProvider filterActiveSourceMessage:];
  }

  return message;
}

- (void)handleActiveSourceMessage:(id)message fromDevice:(id)device
{
  if ([(CoreCECDevice *)self deviceType:message]== 1)
  {
    systemAudioModeTransitionInProgress = [(CoreCECDeviceProvider *)self systemAudioModeTransitionInProgress];
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (systemAudioModeTransitionInProgress)
    {

      [(CoreCECDeviceProvider *)self samStarting_handleActiveSourceReceived];
    }
  }
}

- (void)handleRequestActiveSourceMessage:(id)message fromDevice:(id)device
{
  if ([(CoreCECDevice *)self isActiveSource])
  {
    v7 = 0;
    if (![(CoreCECDeviceProvider *)self sendActiveSourceStatus:1 error:&v7])
    {
      [(CoreCECDeviceProvider *)self error:v7 handlingMessage:message fromDevice:device];
    }
  }
}

- (id)filterInactiveSourceMessage:(id)message toDevice:(id)device
{
  v7 = 0;
  if ([message parseInactiveSourcePhysicalAddress:{&v7, device}])
  {
    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  else
  {
    [CoreCECDeviceProvider filterInactiveSourceMessage:toDevice:];
  }

  return message;
}

- (id)filterSetStreamPathMessage:(id)message
{
  messageCopy = message;
  if ([message initiator])
  {
    [(CoreCECDeviceProvider *)messageCopy filterSetStreamPathMessage:?];
    return v7;
  }

  v6 = 0;
  if (([messageCopy parseSetStreamPathPhysicalAddress:&v6] & 1) == 0)
  {
    [CoreCECDeviceProvider filterSetStreamPathMessage:];
    return v7;
  }

  if (v6 == 0xFFFF)
  {
    [(CoreCECDeviceProvider *)messageCopy filterSetStreamPathMessage:?];
    return v7;
  }

  [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  return messageCopy;
}

- (void)handleSetStreamPathMessage:(id)message
{
  busProvider = [-[CoreCECDeviceProvider busProvider](self busProvider];
  if (busProvider == [(CoreCECDevice *)self physicalAddress])
  {

    [(CoreCECDeviceProvider *)self handleDeviceSelected];
  }
}

- (id)filterRoutingChangeMessage:(id)message
{
  v10[1] = *MEMORY[0x277D85DE8];
  busProvider = [(CoreCECDeviceProvider *)self busProvider];
  v8 = 0;
  if (([message parseRoutingChangeOriginalAddress:&v8 + 2 newAddress:&v8] & 1) == 0)
  {
    [CoreCECDeviceProvider filterRoutingChangeMessage:];
    goto LABEL_11;
  }

  if (!busProvider)
  {
    [CoreCECDeviceProvider filterRoutingChangeMessage:];
    goto LABEL_11;
  }

  streamPath = [busProvider streamPath];
  if (streamPath != 0xFFFF && HIWORD(v8) == streamPath)
  {
    if (v8 != streamPath)
    {
      [busProvider setActiveSource:0];
      goto LABEL_7;
    }

    [(CoreCECDeviceProvider *)streamPath filterRoutingChangeMessage:v10, message, &v9];
LABEL_11:
    message = v9;
  }

LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
  return message;
}

- (id)filterRoutingInformationMessage:(id)message
{
  v5 = 0;
  if (([message parseRoutingInformationPhysicalAddress:&v5] & 1) == 0)
  {
    [CoreCECDeviceProvider filterRoutingInformationMessage:];
  }

  return message;
}

- (id)filterSetOSDNameMessage:(id)message toDevice:(id)device
{
  v6 = 0;
  if (([message parseSetOSDName:{&v6, device}] & 1) == 0)
  {
    [CoreCECDeviceProvider filterSetOSDNameMessage:toDevice:];
  }

  return message;
}

- (void)handleGiveOSDNameMessage:(id)message fromDevice:(id)device
{
  v7 = [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  v9 = 0;
  if (v7)
  {
    if (!-[CoreCECDeviceProvider setOSDName:to:error:](self, "setOSDName:to:error:", v7, v8 & 0xFFFFFFFFFFFFFFLL, [device logicalAddress], &v9))
    {
      [(CoreCECDeviceProvider *)self error:v9 handlingMessage:message fromDevice:device];
    }
  }

  else
  {

    [(CoreCECDeviceProvider *)self sendFeatureAbort:1 forMessage:message];
  }
}

- (id)filterDeviceVendorIDMessage:(id)message
{
  v6 = 0;
  if ([message parseDeviceVendorID:&v6])
  {
    [(CoreCECDevice *)self setVendorID:v6];
    [-[CoreRCDevice bus](self "bus")];
  }

  else
  {
    [CoreCECDeviceProvider filterDeviceVendorIDMessage:];
  }

  return message;
}

- (void)handleGiveDeviceVendorIDMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  if ([(CoreCECDevice *)self vendorID]== -1)
  {

    [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:0];
  }

  else if (![(CoreCECDeviceProvider *)self deviceVendorID:[(CoreCECDevice *)self vendorID] error:&v7])
  {
    [(CoreCECDeviceProvider *)self error:v7 handlingMessage:message fromDevice:device];
  }
}

- (id)filterCECVersionMessage:(id)message toDevice:(id)device
{
  v7 = 0;
  if ([message parseCECVersion:{&v7, device}])
  {
    [(CoreCECDevice *)self setCecVersion:v7];
    [-[CoreRCDevice bus](self "bus")];
  }

  else
  {
    [CoreCECDeviceProvider filterCECVersionMessage:toDevice:];
  }

  return message;
}

- (void)handleGetCECVersionMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  if (!-[CoreCECDeviceProvider cecVersion:to:error:](self, "cecVersion:to:error:", -[CoreCECDevice cecVersion](self, "cecVersion"), [device logicalAddress], &v7))
  {
    [(CoreCECDeviceProvider *)self error:v7 handlingMessage:message fromDevice:device];
  }
}

- (id)filterReportPhysicalAddressMessage:(id)message
{
  v7 = 0;
  v6 = 0;
  if ([message parseReportPhysicalAddress:&v7 deviceType:&v6])
  {
    [(CoreCECDevice *)self setPhysicalAddress:v7];
    [(CoreCECDevice *)self setDeviceType:v6];
    [-[CoreRCDevice bus](self "bus")];
  }

  else
  {
    [CoreCECDeviceProvider filterReportPhysicalAddressMessage:];
  }

  return message;
}

- (void)handleGivePhysicalAddressMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  if (![(CoreCECDeviceProvider *)self reportPhysicalAddress:&v7])
  {
    [(CoreCECDeviceProvider *)self error:v7 handlingMessage:message fromDevice:device];
  }
}

- (void)handleGetMenuLanguageMessage:(id)message fromDevice:(id)device
{
  if ([(CoreCECDevice *)self deviceType]== 7 && (![(CoreCECDevice *)self logicalAddress]|| [(CoreCECDevice *)self logicalAddress]== 14))
  {
    v7 = 0;
    if (!-[CoreCECDeviceProvider setMenuLanguage:error:](self, "setMenuLanguage:error:", [-[CoreCECDeviceProvider busProvider](self "busProvider")] & 0xFFFFFF, &v7))
    {
      [(CoreCECDeviceProvider *)self error:v7 handlingMessage:message fromDevice:device];
    }
  }

  else
  {

    [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:0];
  }
}

- (void)handleGiveFeaturesMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  if (![(CoreCECDeviceProvider *)self reportFeatures:&v7])
  {
    [(CoreCECDeviceProvider *)self error:v7 handlingMessage:message fromDevice:device];
  }
}

- (id)filterReportPowerStatusMessage:(id)message toDevice:(id)device
{
  v7 = 0;
  if ([message parseReportPowerStatus:{&v7, device}])
  {
    [(CoreCECDevice *)self setPowerStatus:v7];
    [-[CoreRCDevice bus](self "bus")];
  }

  else
  {
    [CoreCECDeviceProvider filterReportPowerStatusMessage:toDevice:];
  }

  return message;
}

- (void)handleGiveDevicePowerStatusMessage:(id)message fromDevice:(id)device
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

  if (!-[CoreCECDeviceProvider reportPowerStatus:to:error:](self, "reportPowerStatus:to:error:", v7, [device logicalAddress], &v9))
  {
    [(CoreCECDeviceProvider *)self error:v9 handlingMessage:message fromDevice:device];
  }
}

- (void)handleDeckControlPlayMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  if ([message parsePlayMode:&v7])
  {
    [(CoreCECDevice *)self deckControlPlayHasBeenReceived:v7 fromDevice:device];
  }

  else
  {
    [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:1];
  }
}

- (void)handleDeckControlMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  if ([message parseDeckControlMode:&v7])
  {
    [(CoreCECDevice *)self deckControlCommandHasBeenReceived:v7 fromDevice:device];
  }

  else
  {
    [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:1];
  }
}

- (id)filterDeckStatusMessage:(id)message toDevice:(id)device
{
  v8 = 0;
  if ([message parseDeckStatusInfo:&v8])
  {
    [(CoreCECDevice *)self setDeckStatus:v8];
    [-[CoreRCDevice bus](self "bus")];
    [device deckControlStatusHasBeenUpdated:v8 fromDevice:self];
  }

  else
  {
    [CoreCECDeviceProvider filterDeckStatusMessage:toDevice:];
  }

  return message;
}

- (void)handleGiveDeckStatusMessage:(id)message fromDevice:(id)device
{
  v13 = 0;
  if (([message parseGiveDeckStatusRequest:&v13] & 1) == 0)
  {
    selfCopy3 = self;
    messageCopy2 = message;
    v10 = 1;
LABEL_27:
    [(CoreCECDeviceProvider *)selfCopy3 didNotHandleMessage:messageCopy2 unsupportedOperand:v10, selfCopy2, deviceCopy];
    return;
  }

  deviceType = [(CoreCECDevice *)self deviceType];
  if (deviceType != 4 && deviceType != 2)
  {
    if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      selfCopy2 = self;
      deviceCopy = device;
      LogPrintF();
    }

    selfCopy3 = self;
    messageCopy2 = message;
    v10 = 0;
    goto LABEL_27;
  }

  switch(v13)
  {
    case 1:
      if (![(CoreCECDevice *)self deckStatus])
      {
LABEL_34:
        [(CoreCECDeviceProvider *)self sendFeatureAbort:1 forMessage:message];
        return;
      }

      if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleGiveDeckStatusMessage:fromDevice:];
      }

      self->_deckStatusRequestMask |= 1 << [device logicalAddress];
LABEL_21:
      [(CoreCECDeviceProvider *)self sendDeckStatusToDevice:device];
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

      self->_deckStatusRequestMask &= ~(1 << [device logicalAddress]);
      break;
    default:
      if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      break;
  }
}

- (void)handleMenuRequest:(id)request fromDevice:(id)device
{
  v8 = 0;
  v7 = 0;
  if ([request parseMenuRequest:&v7])
  {
    if (!-[CoreCECDeviceProvider menuStatus:to:error:](self, "menuStatus:to:error:", 0, [request initiator], &v8))
    {
      [(CoreCECDeviceProvider *)self error:v8 handlingMessage:request fromDevice:device];
    }
  }

  else
  {
    [(CoreCECDeviceProvider *)self didNotHandleMessage:request unsupportedOperand:1];
  }
}

- (void)handleUserControlPressedMessage:(id)message fromDevice:(id)device
{
  v9 = 0;
  if ([message parseUserControlPressed:&v9])
  {
    p_userControlFollowerState = &self->_userControlFollowerState;
    if (self->_userControlFollowerState.isValid && CECUserControlEquals(*&self->_userControlFollowerState.control, v9) && [(CoreRCDevice *)p_userControlFollowerState->sender isEqual:device])
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

      if ([(CoreCECDeviceProvider *)self handleUserControl:v9 pressed:1 fromDevice:device abortReason:&v8])
      {
        self->_userControlFollowerState.control = v9;
        p_userControlFollowerState->sender = device;
        self->_userControlFollowerState.isValid = 1;
        [(CoreCECDeviceProvider *)self userControlScheduleFollowerSafetyTimeout];
      }

      else
      {
        [(CoreCECDeviceProvider *)self sendFeatureAbort:v8 forMessage:message];
      }
    }
  }

  else
  {
    [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:1];
  }
}

- (void)handleUserControlReleasedMessage:(id)message fromDevice:(id)device
{
  p_userControlFollowerState = &self->_userControlFollowerState;
  if (self->_userControlFollowerState.isValid)
  {
    if ([(CoreRCDevice *)p_userControlFollowerState->sender isEqual:device])
    {
      [(CoreCECDeviceProvider *)self userControlCancelFollowerSafetyTimeout];
      [(CoreCECDeviceProvider *)self handleUserControl:*&p_userControlFollowerState->control pressed:0 fromDevice:device abortReason:0];
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

- (void)handleReportAudioStatusMessage:(id)message fromDevice:(id)device
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  if ([message parseReportAudioStatus:&v7 muteStatus:&v6])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleReportAudioStatusMessage:&v6 fromDevice:?];
    }

    if (([device setAudioVolumeStatus:v7 error:&v8] & 1) == 0 && gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleReportAudioStatusMessage:? fromDevice:?];
    }

    if (([device setAudioMuteStatus:v6 error:&v8] & 1) == 0 && gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
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

- (void)handleGiveAudioStatusMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    messageCopy = message;
    selfCopy = self;
    LogPrintF();
  }

  if (-[CoreCECDeviceProvider handlingRequiredForSystemAudioModeMessage:](self, "handlingRequiredForSystemAudioModeMessage:", message, messageCopy, selfCopy) && ([message isBroadcast] & 1) == 0)
  {
    logicalAddress = [device logicalAddress];

    [(CoreCECDeviceProvider *)self reportAudioStatusTo:logicalAddress error:0];
  }
}

- (void)handleGiveSystemAudioModeStatusMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    messageCopy = message;
    selfCopy = self;
    LogPrintF();
  }

  if (-[CoreCECDeviceProvider handlingRequiredForSystemAudioModeMessage:](self, "handlingRequiredForSystemAudioModeMessage:", message, messageCopy, selfCopy) && ([message isBroadcast] & 1) == 0)
  {
    v7 = +[CECMessage systemAudioModeStatus:from:to:](CECMessage, "systemAudioModeStatus:from:to:", [-[CoreCECDeviceProvider busProvider](self "busProvider")], -[CoreCECDeviceProvider sendFromAddress](self, "sendFromAddress"), objc_msgSend(device, "logicalAddress"));

    [(CoreCECDeviceProvider *)self sendMessage:v7 error:0];
  }
}

- (id)filterSetSystemAudioModeMessage:(id)message toDevice:(id)device
{
  if ([message initiator] != 5 && gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider filterSetSystemAudioModeMessage:toDevice:];
  }

  if ([message isBroadcast])
  {
    v7 = 0;
    if ([message parseSystemAudioModeStatus:&v7])
    {
      [-[CoreCECDeviceProvider busProvider](self "busProvider")];
    }

    else
    {
      [CoreCECDeviceProvider filterSetSystemAudioModeMessage:toDevice:];
    }
  }

  return message;
}

- (void)handleRequestShortAudioDescriptorMessage:(id)message fromDevice:(id)device
{
  v27 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v25 = 0;
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:];
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForSystemAudioModeMessage:message])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:message fromDevice:v24];
    }

    v7 = 0;
    if (message)
    {
      for (i = 2; ; ++i)
      {
        [message frame];
        if (i >= (v23 & 0x1Fu))
        {
          break;
        }

        [message frame];
        v9 = v20[i];
        if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:];
        }

        audioFormats = [(CoreCECDevice *)self audioFormats];
        v11 = -[NSDictionary objectForKey:](audioFormats, "objectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9]);
        if (v11)
        {
          v12 = v11;
          if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
          {
            [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:];
          }

          bytes = [v12 bytes];
          if (bytes)
          {
            for (j = 0; j != 3; ++j)
            {
              if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
              {
                v18 = j;
                v19 = *(bytes + j);
                LogPrintF();
              }
            }
          }

          v15 = *bytes;
          v16 = &v25 + v7;
          v16[2] = *(bytes + 2);
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
      -[CoreCECDeviceProvider sendMessage:error:](self, "sendMessage:error:", +[CECMessage reportShortAudioDescriptor:length:from:to:](CECMessage, "reportShortAudioDescriptor:length:from:to:", &v25, v7, -[CoreCECDevice logicalAddress](self, "logicalAddress"), [device logicalAddress]), 0);
    }

    else
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleRequestShortAudioDescriptorMessage:fromDevice:];
      }

      [(CoreCECDeviceProvider *)self sendFeatureAbort:3 forMessage:message, v18, v19];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleSetSystemAudioModeMessage:(id)message fromDevice:(id)device
{
  if (([message isBroadcast] & 1) == 0)
  {
    if ([(CoreCECDevice *)self deviceType]== 7)
    {
      if ([message initiator] != 5 && gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleSetSystemAudioModeMessage:fromDevice:];
      }
    }

    else
    {

      [(CoreCECDeviceProvider *)self didNotHandleMessage:message unsupportedOperand:0];
    }
  }
}

- (void)handleSystemAudioModeRequestMessage:(id)message fromDevice:(id)device
{
  v12 = *MEMORY[0x277D85DE8];
  if (-[CoreCECDeviceProvider handlingRequiredForSystemAudioModeMessage:](self, "handlingRequiredForSystemAudioModeMessage:") && ([message isBroadcast] & 1) == 0 && -[CoreCECDevice deviceType](self, "deviceType") == 1)
  {
    if (!message || ([message frame], (v11 & 0x1F) != 2) && (objc_msgSend(message, "frame"), (v10 & 0x1F) != 4))
    {
      if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [CoreCECDeviceProvider handleSystemAudioModeRequestMessage:fromDevice:];
        if (!message)
        {
          goto LABEL_20;
        }
      }

      else if (!message)
      {
        goto LABEL_20;
      }
    }

    [message frame];
    if ((v9 & 0x1C) != 0)
    {
      [message frame];
      [message frame];
      if ([device deviceType] == 7)
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
      [(CoreCECDevice *)self receivedRequestSystemAudioModeStatusChangeTo:v7 fromDevice:device];
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

- (void)handleSetAudioVolumeLevelMessage:(id)message fromDevice:(id)device
{
  v13 = *MEMORY[0x277D85DE8];
  if (message)
  {
    [message frame];
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
    selfCopy = self;
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

      -[CoreCECDeviceProvider featureAbort:reason:to:error:](self, "featureAbort:reason:to:error:", 115, 3, [device logicalAddress], 0);
    }
  }

  else
  {
    [(CoreCECDeviceProvider *)self receivedSetAudioVolumeLevel:v6 fromDevice:device];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)filterSystemAudioModeStatusMessage:(id)message toDevice:(id)device
{
  if ([message initiator] != 5 && gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider filterSystemAudioModeStatusMessage:toDevice:];
  }

  v7 = 0;
  if ([message parseSystemAudioModeStatus:&v7])
  {
    [-[CoreCECDeviceProvider busProvider](self "busProvider")];
  }

  else
  {
    [CoreCECDeviceProvider filterSystemAudioModeStatusMessage:toDevice:];
  }

  return message;
}

- (void)handleRequestARCInitiationMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    messageCopy = message;
    selfCopy = self;
    LogPrintF();
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForAudioReturnChannelMessage:message, messageCopy, selfCopy])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleRequestARCInitiationMessage:fromDevice:];
    }

    [(CoreCECDevice *)self receivedRequestAudioReturnChannelStatusChangeTo:1 fromDevice:device];
  }
}

- (void)handleReportARCInitiatedMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    messageCopy = message;
    selfCopy = self;
    LogPrintF();
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForAudioReturnChannelMessage:message, messageCopy, selfCopy])
  {

    [(CoreCECDeviceProvider *)self arcStarting_handleReportARCInitiatedReceived];
  }
}

- (void)handleRequestARCTerminationMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    messageCopy = message;
    selfCopy = self;
    LogPrintF();
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForAudioReturnChannelMessage:message, messageCopy, selfCopy])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreCECDeviceProvider handleRequestARCTerminationMessage:fromDevice:];
    }

    [(CoreCECDevice *)self receivedRequestAudioReturnChannelStatusChangeTo:0 fromDevice:device];
  }
}

- (void)handleReportARCTerminatedMessage:(id)message fromDevice:(id)device
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    messageCopy = message;
    selfCopy = self;
    LogPrintF();
  }

  if ([(CoreCECDeviceProvider *)self handlingRequiredForAudioReturnChannelMessage:message, messageCopy, selfCopy])
  {

    [(CoreCECDeviceProvider *)self arcStopping_handleReportARCTerminatedReceived];
  }
}

- (BOOL)activeSource:(id *)source
{
  v5 = [CECMessage activeSourceFrom:[(CoreCECDeviceProvider *)self sendFromAddress] physicalAddress:[(CoreCECDevice *)self physicalAddress]];

  return [(CoreCECDeviceProvider *)self sendMessage:v5 error:source];
}

- (BOOL)requestActiveSource:(id *)source
{
  v5 = [CECMessage requestActiveSourceFrom:[(CoreCECDeviceProvider *)self sendFromAddress]];

  return [(CoreCECDeviceProvider *)self sendMessage:v5 error:source];
}

- (BOOL)reportPhysicalAddress:(id *)address
{
  v7 = 0;
  if (CECDeviceTypeForCoreCECDeviceType(&v7, [(CoreCECDevice *)self deviceType]))
  {
    physicalAddress = [(CoreCECDevice *)self physicalAddress];
    return [(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"reportPhysicalAddress:deviceType:from:" reportPhysicalAddress:physicalAddress deviceType:v7 from:[(CoreCECDeviceProvider *)self sendFromAddress]], address];
  }

  else
  {
    [(CoreCECDeviceProvider *)address reportPhysicalAddress:?];
    return v8;
  }
}

- (BOOL)setMenuLanguage:(CECLanguage)language error:(id *)error
{
  v6 = [CECMessage setMenuLanguage:*language.characters & 0xFFFFFF from:[(CoreCECDeviceProvider *)self sendFromAddress]];

  return [(CoreCECDeviceProvider *)self sendMessage:v6 error:error];
}

- (BOOL)reportFeatures:(id *)features
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
        cecVersion = [(CoreCECDevice *)self cecVersion];
        v6 = v12;
        v7 = v11;
        sendFromAddress = [(CoreCECDeviceProvider *)self sendFromAddress];
        return [(CoreCECDeviceProvider *)self sendMessage:[CECMessage error:"reportFeaturesWith:deviceTypes:rcProfile:deviceFeatures:from:" reportFeaturesWith:cecVersion deviceTypes:v6 rcProfile:v10 deviceFeatures:v7 from:sendFromAddress], features];
      }

      else
      {
        [(CoreCECDeviceProvider *)features reportPhysicalAddress:?];
        return v15;
      }
    }

    else
    {
      [(CoreCECDeviceProvider *)features reportPhysicalAddress:?];
      return v14;
    }
  }

  else
  {
    [(CoreCECDeviceProvider *)features reportPhysicalAddress:?];
    return v13;
  }
}

- (BOOL)reportShortAudioDescriptorTo:(unsigned __int8)to error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider reportShortAudioDescriptorTo:error:];
  }

  return 0;
}

- (BOOL)requestShortAudioDescriptor:(unsigned __int8)descriptor error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider requestShortAudioDescriptor:error:];
  }

  return 0;
}

- (BOOL)setSystemAudioMode:(unint64_t)mode to:(unsigned __int8)to error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider setSystemAudioMode:to:error:];
  }

  return 0;
}

- (BOOL)systemAudioModeStatus:(unsigned __int8)status error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreCECDeviceProvider systemAudioModeStatus:error:];
  }

  return 0;
}

- (void)didRemoveFromBus:(id)bus
{
  v4.receiver = self;
  v4.super_class = CoreCECDeviceProvider;
  [(CoreRCDevice *)&v4 didRemoveFromBus:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [bus updateAllowHibernation];
  }
}

- (BOOL)deckControlSetDeckStatus:(unint64_t)status error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = objc_opt_class();
    selfCopy = self;
    v13 = CoreCECDeckInfoString(status);
    v11 = v7;
    LogPrintF();
  }

  v14.receiver = self;
  v14.super_class = CoreCECDeviceProvider;
  v8 = [(CoreCECDevice *)&v14 deckControlSetDeckStatus:status error:error, v11, selfCopy, v13];
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

- (BOOL)sendHIDEvent:(id)event target:(id)target error:(id *)error
{
  v19 = 0;
  targetCopy = target;
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    eventCopy = event;
    targetCopy2 = target;
    v12 = objc_opt_class();
    selfCopy = self;
    LogPrintF();
  }

  if ([event isRepeat] || target && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v18 = 0, v17 = 0, v16 = 0, (objc_msgSend(event, "getCECUserControl:pressed:", &v17, &v16) & 1) == 0))
  {
    v19 = OUTLINED_FUNCTION_1_6(MEMORY[0x277CCA9B8], v9, *MEMORY[0x277CCA590]);
    goto LABEL_18;
  }

  if (![(CoreCECDeviceProvider *)self getRemoteControlDestination:&targetCopy logicalAddress:&v18 forTargetDevice:target command:v17 error:&v19])
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
  if (error)
  {
    *error = v19;
  }

  return v10 == 0;
}

- (BOOL)resignActiveSource:(id *)source
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

- (BOOL)setAudioVolumeStatus:(unint64_t)status error:(id *)error
{
  v28 = 0;
  OUTLINED_FUNCTION_16();
  if (v9 ^ v10 | v8 && (v7 != -1 || _LogCategory_Initialize()))
  {
    statusCopy = status;
    selfCopy = self;
    LogPrintF();
  }

  if ([(CoreCECDevice *)self deviceType:statusCopy]!= 1)
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
          statusCopy2 = status;
          LogPrintF();
        }

        if ([-[CoreRCDevice bus](self "bus")])
        {
          [v14 setAudioVolumeStatus:status error:0];
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

  if ([(CoreCECDevice *)self audioVolumeStatus]== status)
  {
LABEL_32:
    LOBYTE(v11) = 1;
    goto LABEL_38;
  }

  v27.receiver = self;
  v27.super_class = CoreCECDeviceProvider;
  v11 = [(CoreCECDevice *)&v27 setAudioVolumeStatus:status error:&v28];
  if (v11)
  {
    [(CoreCECDeviceProvider *)self audioStatusChanged];
    [-[CoreRCDevice bus](self "bus")];
    goto LABEL_32;
  }

LABEL_38:
  if (error && v28)
  {
    *error = v28;
  }

  return v11;
}

- (BOOL)setSupportedAudioFormats:(id)formats error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v9 = objc_opt_class();
    selfCopy = self;
    LogPrintF();
  }

  v11.receiver = self;
  v11.super_class = CoreCECDeviceProvider;
  selfCopy = [(CoreCECDevice *)&v11 setSupportedAudioFormats:formats error:error, v9, selfCopy];
  if (selfCopy)
  {
    [-[CoreRCDevice bus](self "bus")];
  }

  return selfCopy;
}

- (id)filterSetMenuLanguageMessage:(id)message
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

- (id)filterReportFeaturesMessage:(id)message toDevice:(id)device
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

- (void)sendDeckStatusToDevice:(id)device
{
  v9 = 0;
  deckStatus = [(CoreCECDevice *)self deckStatus];
  if (device && deckStatus)
  {
    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      deviceCopy = device;
      LogPrintF();
    }

    if (!-[CoreCECDeviceProvider deckStatusWithInfo:to:error:](self, "deckStatusWithInfo:to:error:", -[CoreCECDevice deckStatus](self, "deckStatus", deviceCopy), [device logicalAddress], &v9))
    {
      if (gLogCategory_CoreRCDevice <= 90)
      {
        if (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize())
        {
          deviceCopy3 = device;
          v8 = v9;
          LogPrintF();
        }

        if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          deviceCopy3 = device;
          LogPrintF();
        }
      }

      self->_deckStatusRequestMask &= ~(1 << [device logicalAddress]);
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];

  return [currentHandler handleFailureInMethod:v1 object:v0 file:@"CoreCECDeviceProvider.m" lineNumber:337 description:@"busProvider queue must not be nil!"];
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
  CECUserControlString(*(self + 184));
  v2 = *(self + 176);
  objc_opt_class();
  v4 = *(self + 176);
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
  if (self <= 90 && (self != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [a2 samResetStateToOff];
  return [OUTLINED_FUNCTION_2_8() samInformDelegateTransitionTo:? failedWithError:?];
}

- (uint64_t)samStopping
{
  if (self <= 60 && (self != -1 || _LogCategory_Initialize()))
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