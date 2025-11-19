@interface IDSPhoneNumberValidationStateMachine
- (BOOL)_deviceCanRegisterPresently;
- (BOOL)_isAwaitingUserSelectionDuringSetup;
- (BOOL)_isPhoneNumberIdentificationSupported;
- (BOOL)_isUserSubscriptionSelectionStillPending;
- (BOOL)_userHasDisabledSMSRegistration;
- (BOOL)_validSIMStateForRegistration;
- (IDSPhoneNumberValidationStateMachine)initWithCTPNR:(id)a3 preflightStackStore:(id)a4 HTTPDelivery:(id)a5 pushHandler:(id)a6 lockdownManager:(id)a7 systemMonitor:(id)a8 arbiter:(id)a9 systemAccountAdapter:(id)a10 dailyMetricData:(id)a11 serviceType:(int64_t)a12;
- (IDSPhoneNumberValidationStateMachine)initWithCTPNR:(id)a3 preflightStackStore:(id)a4 serviceType:(int64_t)a5;
- (IDSPreflightStack)currentPreflightStack;
- (NSString)description;
- (id)_filterUnsupportedMechanisms:(id)a3;
- (id)_getHighestPriorityMechanism;
- (id)identifyPhoneNumberForRequestor:(id)a3 queue:(id)a4;
- (int64_t)_errorCodeForRegistrationError:(int64_t)a3;
- (int64_t)_registrationControlStatus;
- (void)PNRRequestSentWithRequestData:(id)a3;
- (void)PNRResponseReceivedWithResponseData:(id)a3;
- (void)_SIMSetupDidComplete;
- (void)_cancelScheduledHeartbeat;
- (void)_cancelScheduledSMSTimeout;
- (void)_clearSMSDeliveryTimeout;
- (void)_deviceIDChangedNotification:(id)a3;
- (void)_failPromisesWithError:(int64_t)a3;
- (void)_fulfillPromisesWithPhoneNumber:(id)a3 token:(id)a4;
- (void)_issueAsyncCoreTelephonyPhoneNumberValidationRequestWithPushToken:(id)a3 mechanism:(id)a4;
- (void)_keychainMigrationComplete:(id)a3;
- (void)_lastSendSMSTimerFiredOnMain;
- (void)_lockdownStateChanged:(id)a3;
- (void)_notifyFailureWithError:(int64_t)a3;
- (void)_notifySuccess:(id)a3;
- (void)_performHighestPriorityPreflightVerification;
- (void)_popHighestPriorityPreflightVerification;
- (void)_registerForDeviceCenterNotifications;
- (void)_registerForLockdownNotifications;
- (void)_requestUserConsentForPhoneNumberValidationWithCompletion:(id)a3;
- (void)_scheduleHeartbeat:(double)a3;
- (void)_scheduleSMSTimeout:(double)a3;
- (void)_sendPreflightVerificationIfNeeded;
- (void)_sendPreflightVerificationWithIMSI:(id)a3 PLMN:(id)a4;
- (void)_sendSMSVerificationWithMechanism:(id)a3;
- (void)_setSMSDeliveryTimeout:(double)a3;
- (void)_smsDeliveryClear;
- (void)_tryToSendSMSIdentification;
- (void)addListener:(id)a3;
- (void)addPhoneNumberValidationRequestor:(id)a3;
- (void)dealloc;
- (void)handleIncomingSMSForResponse:(id)a3;
- (void)handleRegistrationSMSDeliveryFailedWithShouldBypassRetry:(BOOL)a3;
- (void)handleRegistrationSMSSuccessfullyDeliveredWithTelephonyTimeout:(id)a3;
- (void)heartbeat;
- (void)invalidate;
- (void)removePhoneNumberValidationRequestor:(id)a3;
- (void)resetSMSCounter;
- (void)setCurrentPreflightStack:(id)a3;
- (void)systemDidFinishMigration;
- (void)systemDidStopBackup;
- (void)systemRestoreStateDidChange;
- (void)timedOutWaitingForSMS;
@end

@implementation IDSPhoneNumberValidationStateMachine

- (void)heartbeat
{
  v3 = +[IMRGLog sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Heartbeat", v15, 2u);
  }

  [(IDSPhoneNumberValidationStateMachine *)self _cancelScheduledHeartbeat];
  if (_IMWillLog())
  {
    status = self->_status;
    v5 = +[IMRGLog sms];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (status > 1)
    {
      if (status == 2)
      {
        if (v6)
        {
          LOWORD(v15[0]) = 0;
          v7 = "    State: Waiting for Phone Number Validation request identity delivery";
          goto LABEL_19;
        }

        goto LABEL_21;
      }

      if (status == 3)
      {
        if (v6)
        {
          LOWORD(v15[0]) = 0;
          v7 = "    State: Waiting for Phone Number Validation request identity response";
          goto LABEL_19;
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      if (!status)
      {
        if (v6)
        {
          LOWORD(v15[0]) = 0;
          v7 = "    State: Idle";
          goto LABEL_19;
        }

        goto LABEL_21;
      }

      if (status == 1)
      {
        if (v6)
        {
          LOWORD(v15[0]) = 0;
          v7 = "    State: Waiting to begin Phone Number Validation request identity verification";
LABEL_19:
          v9 = v5;
          v10 = 2;
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    if (v6)
    {
      v8 = self->_status;
      v15[0] = 67109120;
      v15[1] = v8;
      v7 = "    State: Unknown: %d";
      v9 = v5;
      v10 = 8;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v7, v15, v10);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

LABEL_22:
  v11 = self->_status;
  if (v11 == 3)
  {
    v12 = +[IMRGLog sms];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      v13 = "     ==> Waiting for identity response, waiting...";
      goto LABEL_41;
    }

LABEL_42:

    return;
  }

  if (!v11)
  {
    v12 = +[IMRGLog sms];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      v13 = "     ==> We're idle, ending this heartbeat madness now";
LABEL_41:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v15, 2u);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if (![(IDSPhoneNumberValidationStateMachine *)self _deviceCanRegisterPresently])
  {
    v12 = +[IMRGLog sms];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      v13 = "     ==> Device can't register now, waiting...";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if (![(IDSPhoneNumberValidationStateMachine *)self _validSIMStateForRegistration])
  {
    v12 = +[IMRGLog sms];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      v13 = "     ==> SIM is not ready to register, waiting...";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if (![(IDSPhoneNumberValidationStateMachine *)self _isPhoneNumberIdentificationSupported])
  {
    v12 = +[IMRGLog sms];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      v13 = "     ==> Registration is not supported, skipping heartbeat";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if (self->_status == 1)
  {
    v14 = +[IMRGLog sms];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "     ==> Waiting to begin SMS, starting now", v15, 2u);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _tryToSendSMSIdentification];
  }
}

- (void)_cancelScheduledHeartbeat
{
  v3 = [(IDSPhoneNumberValidationStateMachine *)self inFlightHeartbeatBlock];

  if (v3)
  {
    v4 = [(IDSPhoneNumberValidationStateMachine *)self inFlightHeartbeatBlock];
    dispatch_block_cancel(v4);

    [(IDSPhoneNumberValidationStateMachine *)self setInFlightHeartbeatBlock:0];
  }
}

- (BOOL)_deviceCanRegisterPresently
{
  v3 = [(IDSPhoneNumberValidationStateMachine *)self lockdownManager];
  v4 = [v3 isActivated];

  if (v4)
  {
    if ([(IDSPhoneNumberValidationStateMachine *)self _validSIMStateForRegistration]&& !IDSDebuggingShouldFakeBadSIM())
    {
      return 1;
    }

    v5 = +[IMRGLog sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SIM is not ready to proceed with registration", &v8, 2u);
    }
  }

  else
  {
    v5 = +[IMRGLog sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(IDSPhoneNumberValidationStateMachine *)self lockdownManager];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device is currently locked down, we're not able to proceed (State: %@)", &v8, 0xCu);
    }
  }

  return 0;
}

- (BOOL)_validSIMStateForRegistration
{
  v3 = +[IDSRegistrationController systemSupportsPhoneNumberRegistration];
  if (v3)
  {
    if (([(IDSCTPNR *)self->_CTPNR isSIMReady]& 1) != 0)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = +[IMRGLog registration];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " SIM State says cannot register, registration State", v6, 2u);
      }

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)_isPhoneNumberIdentificationSupported
{
  v2 = [(IDSCTPNR *)self->_CTPNR isPNRSupported];
  if ((v2 & 1) == 0)
  {
    v3 = +[IMRGLog sms];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registration is not supported on this device", v5, 2u);
    }
  }

  return v2;
}

- (void)_tryToSendSMSIdentification
{
  v3 = +[IMRGLog sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    status = self->_status;
    *buf = 67109120;
    v37 = status;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_tryToSendSMSIdentification   state: %d", buf, 8u);
  }

  if (!self->_status)
  {
    self->_status = 1;
    v5 = +[IMRGLog sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "7. Setting SMS status to: IDSSMSIdentificationStatusWaitingToBeginSMSIdentityVerification", buf, 2u);
    }
  }

  if (![(IDSPhoneNumberValidationStateMachine *)self _isPhoneNumberIdentificationSupported])
  {
    return;
  }

  v6 = +[IMRGLog sms];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Checking if user has disabled SMS Registration", buf, 2u);
  }

  if ([(IDSPhoneNumberValidationStateMachine *)self _userHasDisabledSMSRegistration])
  {
    v7 = +[IMRGLog sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Phone Number Validation has been disabled by the user", buf, 2u);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _notifyFailureWithError:35];
    return;
  }

  if ([(IDSPhoneNumberValidationStateMachine *)self _isAwaitingUserSelectionDuringSetup])
  {
    v8 = +[IMRGLog sms];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Required user selection has not yet been set and system setup is in progress -- deferring SMS identification", buf, 2u);
    }

    v9 = 20.0;
LABEL_18:
    [(IDSPhoneNumberValidationStateMachine *)self _scheduleHeartbeat:v9];
    return;
  }

  if (self->_status != 1)
  {
    v23 = +[IMRGLog sms];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v24 = "     ==> We're not in the right state to being Phone Number Validation request identification, waiting...";
LABEL_51:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    goto LABEL_52;
  }

  if (![(IDSPhoneNumberValidationStateMachine *)self _deviceCanRegisterPresently])
  {
    v23 = +[IMRGLog sms];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v24 = "     ==> Device can't register now, waiting...";
    goto LABEL_51;
  }

  if (![(IDSPhoneNumberValidationStateMachine *)self _validSIMStateForRegistration])
  {
    v23 = +[IMRGLog sms];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v24 = "     ==> SIM is not ready to register, waiting...";
    goto LABEL_51;
  }

  if (self->_hasAcceptedSMSRequest || ([(IDSCTPNR *)self->_CTPNR userOptInRequired]& 1) == 0 && !IDSDebuggingShouldFakeSMSCharge())
  {
    if ([(IDSPhoneNumberValidationStateMachine *)self _canDeliverSMSNow])
    {
      v10 = [(IDSPhoneNumberValidationStateMachine *)self arbiter];
      v11 = [v10 isValidationModeLegacy];

      if (v11)
      {
        v12 = [(IDSPhoneNumberValidationStateMachine *)self arbiter];
        v13 = [v12 maxAllowableNumberOfSuccessfullySentVerifications];

        if (self->_numberOfSuccessfulSends >= v13)
        {
          v34 = +[IMRGLog warning];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            sub_1009295EC();
          }

          [(IDSPhoneNumberValidationStateMachine *)self _notifyFailureWithError:3];
          [(IDSPhoneNumberValidationStateMachine *)self resetSMSCounter];
          return;
        }

        v14 = +[IMRGLog sms];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          numberOfSuccessfulSends = self->_numberOfSuccessfulSends;
          *buf = 67109376;
          v37 = numberOfSuccessfulSends;
          v38 = 1024;
          v39 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Haven't sent max number of SMS yet { sends: %d, maxSMSSends: %d }", buf, 0xEu);
        }
      }

      if (!self->_phoneNumberValidationStartDate)
      {
        v16 = objc_alloc_init(NSDate);
        phoneNumberValidationStartDate = self->_phoneNumberValidationStartDate;
        self->_phoneNumberValidationStartDate = v16;
      }

      self->_status = 2;
      v18 = +[IMRGLog sms];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "8. Setting SMS status to: IDSSMSIdentificationStatusWaitingSMSIdentityVerificationDelivery", buf, 2u);
      }

      v19 = [NSString stringWithFormat:@"Trying to send phone number validation request { preflights: %d, sends: %d, attemptsWithoutSend: %d }", self->_numberOfPreflights, self->_numberOfSuccessfulSends, self->_numberOfAttemptsWithoutSuccessfulSend];
      sub_100450174(0, @"Registration attempt", v19, 0);

      v20 = [(IDSPhoneNumberValidationStateMachine *)self arbiter];
      v21 = [v20 isValidationModeLegacy];

      if (v21)
      {
        v22 = +[IMRGLog sms];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Preflight disabled; sending legacy phone number verification", buf, 2u);
        }

        [(IDSPhoneNumberValidationStateMachine *)self _sendSMSVerificationWithMechanism:0];
      }

      else
      {
        v27 = [(IDSPhoneNumberValidationStateMachine *)self arbiter];
        v28 = [v27 isValidationModeShortCircuitingPreflight];

        v29 = +[IMRGLog sms];
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (v28)
        {
          if (v30)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Preflight short-circuiting; sending phone number verification with overrides", buf, 2u);
          }

          v31 = [(IDSPhoneNumberValidationStateMachine *)self arbiter];
          v32 = [v31 preflightShortCircuitMechanismOverride];
          [(IDSPhoneNumberValidationStateMachine *)self _sendSMSVerificationWithMechanism:v32];
        }

        else
        {
          if (v30)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Beginning preflight", buf, 2u);
          }

          [(IDSPhoneNumberValidationStateMachine *)self _sendPreflightVerificationIfNeeded];
        }
      }

      return;
    }

    v23 = +[IMRGLog sms];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "     ==> Can't send Phone Number Validation requests right now, need to wait for timeout, waiting...";
      goto LABEL_51;
    }

LABEL_52:

    [(IDSPhoneNumberValidationStateMachine *)self _cancelScheduledHeartbeat];
    return;
  }

  if (+[IDSRegistrationController isBuddyBlockingRegistration])
  {
    v25 = +[IMRGLog sms];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Need to request user permission for SMS, but system setup is in progress -- deferring SMS identification", buf, 2u);
    }

    v9 = 60.0;
    goto LABEL_18;
  }

  if (self->_isSMSWarningUp)
  {
    v26 = +[IMRGLog sms];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Phone Number Validation Request Notification request is up", buf, 2u);
    }
  }

  else
  {
    self->_isSMSWarningUp = 1;
    v33 = +[IMRGLog sms];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Should notify about Phone Number Validation requests for this carrier", buf, 2u);
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10056E310;
    v35[3] = &unk_100BD8A20;
    v35[4] = self;
    [(IDSPhoneNumberValidationStateMachine *)self _requestUserConsentForPhoneNumberValidationWithCompletion:v35];
  }
}

- (BOOL)_isAwaitingUserSelectionDuringSetup
{
  v3 = +[IDSRegistrationController isBuddyShowing];
  if (v3)
  {
    v4 = +[FTDeviceSupport sharedInstance];
    v5 = [v4 isGreenTea];

    v6 = [(IDSPhoneNumberValidationStateMachine *)self _isUserSubscriptionSelectionStillPending];
    v7 = [(IDSPhoneNumberValidationStateMachine *)self _registrationControlStatus]- 3;
    if (v7 < 0xFFFFFFFFFFFFFFFELL)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    if ((v8 & 1) != 0 || v6)
    {
      v9 = +[IMRGLog sms];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"NO";
        if (v5)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        if (v7 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        v14 = 138412802;
        v15 = v11;
        v16 = 2112;
        v17 = v12;
        if (v6)
        {
          v10 = @"YES";
        }

        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Currently awaiting selection { doesDeviceNeedExplicitPhoneAuthConsent: %@, isRegistrationControlStateSet: %@, needToWaitForSubscriptionSelection: %@ }", &v14, 0x20u);
      }

      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)_userHasDisabledSMSRegistration
{
  v3 = +[FTDeviceSupport sharedInstance];
  if ([v3 faceTimeBlocked] && objc_msgSend(v3, "callingBlocked") && objc_msgSend(v3, "iMessageBlocked"))
  {
    v4 = [v3 multiwayBlocked];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(IDSSystemAccountAdapter *)self->_systemAccountAdapter iCloudSystemAccountWithError:0];

  v6 = +[IMRGLog sms];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v4 || v5)
  {
    if (v7)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registration Control Checking On the state of Phone Number registration disablement", v12, 2u);
    }

    v9 = +[FTDeviceSupport sharedInstance];
    v10 = [v9 isGreenTea];

    if (v10)
    {
      v8 = [(IDSPhoneNumberValidationStateMachine *)self _registrationControlStatus]== 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "A configuration profile disables SMS for iMessage and FaceTime -- denying", buf, 2u);
    }

    v8 = 1;
  }

  return v8;
}

- (NSString)description
{
  v3 = objc_opt_class();
  status = self->_status;
  if (status > 3)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = *(&off_100BE0758 + status);
  }

  return [NSString stringWithFormat:@"<%@: %p state: %@, lastSendDate: %@, numberOfPreflights: %u, numberOfAttemptsWithoutSuccessfulSend: %u, numberOfSuccessfulSends: %u>", v3, self, v5, self->_smsSendDate, self->_numberOfPreflights, self->_numberOfAttemptsWithoutSuccessfulSend, self->_numberOfSuccessfulSends];
}

- (void)_scheduleHeartbeat:(double)a3
{
  [(IDSPhoneNumberValidationStateMachine *)self _cancelScheduledHeartbeat];
  if (a3 > 0.0 && self->_status)
  {
    v5 = +[IMRGLog sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scheduling heartbeat in %f seconds", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100569FB0;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    v6 = dispatch_block_create(0, block);
    [(IDSPhoneNumberValidationStateMachine *)self setInFlightHeartbeatBlock:v6];
    v7 = dispatch_time(0, (a3 * 1000000000.0));
    v8 = im_primary_queue();
    dispatch_after(v7, v8, v6);
  }
}

- (void)_scheduleSMSTimeout:(double)a3
{
  [(IDSPhoneNumberValidationStateMachine *)self _cancelScheduledSMSTimeout];
  objc_initWeak(&location, self);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10056A0DC;
  v11 = &unk_100BD9D38;
  objc_copyWeak(&v12, &location);
  v5 = dispatch_block_create(0, &v8);
  [(IDSPhoneNumberValidationStateMachine *)self setInFlightSMSTimeoutBlock:v5, v8, v9, v10, v11];
  v6 = dispatch_time(0, (a3 * 1000000000.0));
  v7 = im_primary_queue();
  dispatch_after(v6, v7, v5);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_cancelScheduledSMSTimeout
{
  v3 = [(IDSPhoneNumberValidationStateMachine *)self inFlightSMSTimeoutBlock];

  if (v3)
  {
    v4 = [(IDSPhoneNumberValidationStateMachine *)self inFlightSMSTimeoutBlock];
    dispatch_block_cancel(v4);

    [(IDSPhoneNumberValidationStateMachine *)self setInFlightSMSTimeoutBlock:0];
  }
}

- (IDSPhoneNumberValidationStateMachine)initWithCTPNR:(id)a3 preflightStackStore:(id)a4 HTTPDelivery:(id)a5 pushHandler:(id)a6 lockdownManager:(id)a7 systemMonitor:(id)a8 arbiter:(id)a9 systemAccountAdapter:(id)a10 dailyMetricData:(id)a11 serviceType:(int64_t)a12
{
  v18 = a3;
  v48 = a4;
  v47 = a5;
  v46 = a6;
  v45 = a7;
  v44 = a8;
  v43 = a9;
  v42 = a10;
  v19 = a11;
  v49 = v18;
  if (!v18)
  {
    v20 = +[IMRGLog sms];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_10092943C();
    }
  }

  v50.receiver = self;
  v50.super_class = IDSPhoneNumberValidationStateMachine;
  v21 = [(IDSPhoneNumberValidationStateMachine *)&v50 init];
  v22 = v21;
  if (v21)
  {
    v40 = v19;
    objc_storeStrong(&v21->_systemMonitor, a8);
    [(IMSystemMonitor *)v22->_systemMonitor addListener:v22];
    objc_storeStrong(&v22->_pushHandler, a6);
    objc_storeStrong(&v22->_CTPNR, a3);
    [v49 setPNRDelegate:v22];
    v22->_serviceType = a12;
    objc_storeStrong(&v22->_httpMessageDelivery, a5);
    objc_storeStrong(&v22->_lockdownManager, a7);
    objc_storeStrong(&v22->_arbiter, a9);
    objc_storeStrong(&v22->_systemAccountAdapter, a10);
    objc_storeStrong(&v22->_preflighStackStore, a4);
    v22->_reason = 0;
    v23 = objc_alloc_init(NSMutableArray);
    requestors = v22->_requestors;
    v22->_requestors = v23;

    v25 = objc_alloc_init(NSMutableArray);
    promises = v22->_promises;
    v22->_promises = v25;

    v22->_numberOfSuccessfulSends = [(IDSPhoneNumberValidationStateMachine *)v22 loadNumberOfSuccessfulValidationSends];
    v22->_numberOfPreflights = [(IDSPhoneNumberValidationStateMachine *)v22 loadNumberOfPreflightAttempts];
    v27 = +[IMRGLog sms];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      numberOfSuccessfulSends = v22->_numberOfSuccessfulSends;
      *buf = 67109120;
      LODWORD(v52) = numberOfSuccessfulSends;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Phone Number Validation registration agent has sent %d SMSs", buf, 8u);
    }

    v29 = +[IMRGLog sms];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(IDSPhoneNumberValidationStateMachine *)v22 lockdownManager];
      *buf = 138412290;
      v52 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Lockdown state: %@", buf, 0xCu);
    }

    v22->_status = 0;
    v31 = +[IMRGLog sms];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "1. Setting SMS status to: IDSSMSIdentificationStatusIdle", buf, 2u);
    }

    sessionID = v22->_sessionID;
    v22->_sessionID = 0;

    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v22 selector:"_keychainMigrationComplete:" name:@"__kIDSRegistrationKeyManagerKeychainMigrationComplete" object:0];

    [(IDSPhoneNumberValidationStateMachine *)v22 _registerForDeviceCenterNotifications];
    [(IDSPhoneNumberValidationStateMachine *)v22 _registerForLockdownNotifications];
    if (qword_100CBF000 != -1)
    {
      sub_1009294BC();
    }

    v19 = v40;
    if (qword_100CBF008)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v22, sub_10056A65C, qword_100CBF008, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    else
    {
      v35 = +[FTDeviceSupport sharedInstance];
      v36 = [v35 deviceType];

      v37 = v36 == 2;
      v19 = v40;
      if (v37)
      {
        v38 = +[IMRGLog sms];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          sub_1009294E4();
        }
      }
    }

    IDSSetPhoneNumberChangeNotificationEnabled();
    IDSFetchPhoneNumber();
    objc_storeStrong(&v22->_dailyMetricData, a11);
  }

  return v22;
}

- (IDSPhoneNumberValidationStateMachine)initWithCTPNR:(id)a3 preflightStackStore:(id)a4 serviceType:(int64_t)a5
{
  v6 = a4;
  v7 = a3;
  v25 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
  v24 = +[IMLockdownManager sharedInstance];
  v23 = +[IMSystemMonitor sharedInstance];
  v8 = objc_alloc_init(+[FTMessageDelivery HTTPMessageDeliveryClass]);
  [v8 setLogToRegistration:1];
  v9 = +[IDSRegistrationRequestTracker sharedInstance];
  [v8 addRequestObserver:v9];

  v10 = objc_alloc_init(IDSPhoneNumberValidationModeArbiter);
  v11 = [IDSSystemAccountAdapter alloc];
  v12 = im_primary_queue();
  v18 = [(IDSSystemAccountAdapter *)v11 initWithQueue:v12];

  v13 = [IDSPersistentMap alloc];
  v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.identityservices.dailyPNRData.%lu", [v7 slotID]);
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v14 = [NSArray arrayWithObjects:v26 count:2];
  v15 = [NSSet setWithArray:v14];
  v16 = [(IDSPersistentMap *)v13 initWithIdentifier:v19 versionNumber:0 decodableClasses:v15 migrationBlock:0];
  v22 = [(IDSPhoneNumberValidationStateMachine *)self initWithCTPNR:v7 preflightStackStore:v6 HTTPDelivery:v8 pushHandler:v25 lockdownManager:v24 systemMonitor:v23 arbiter:v10 systemAccountAdapter:v18 dailyMetricData:v16 serviceType:a5];

  return v22;
}

- (void)invalidate
{
  [(IMSystemMonitor *)self->_systemMonitor removeListener:self];
  v3 = +[IMRGLog sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Phone Number Validation agent dealloc", v6, 2u);
  }

  [(IDSPhoneNumberValidationStateMachine *)self _clearSMSDeliveryTimeout];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:0 object:0];
}

- (void)dealloc
{
  [(IDSPhoneNumberValidationStateMachine *)self invalidate];
  v3.receiver = self;
  v3.super_class = IDSPhoneNumberValidationStateMachine;
  [(IDSPhoneNumberValidationStateMachine *)&v3 dealloc];
}

- (void)_registerForDeviceCenterNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_deviceIDChangedNotification:" name:FaceTimeDeviceRegistrationStateChangedNotification object:0];
}

- (IDSPreflightStack)currentPreflightStack
{
  v3 = [(IDSPhoneNumberValidationStateMachine *)self preflighStackStore];
  v4 = [(IDSCTPNR *)self->_CTPNR uniqueIdentifier];
  v5 = [v3 preflightStackForIdentifier:v4];

  return v5;
}

- (void)setCurrentPreflightStack:(id)a3
{
  v4 = a3;
  v6 = [(IDSPhoneNumberValidationStateMachine *)self preflighStackStore];
  v5 = [(IDSCTPNR *)self->_CTPNR uniqueIdentifier];
  [v6 setPreflightStack:v4 forIdentifier:v5];
}

- (int64_t)_registrationControlStatus
{
  v2 = +[IDSDRegistrationControl sharedInstance];
  v3 = [v2 registrationStateForRegistrationType:0 error:0];

  return v3;
}

- (BOOL)_isUserSubscriptionSelectionStillPending
{
  v3 = +[IDSCTAdapter sharedInstance];
  v4 = [v3 dualSIMCapabilityEnabled];

  v5 = +[FTUserConfiguration sharedInstance];
  v6 = [v5 selectedPhoneNumberRegistrationSubscriptionLabels];
  v7 = [v6 count];

  if (v4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 && !self->_didReceiveSIMSetupCompleteNotification;
  v10 = +[IMRGLog sms];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v4)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    didReceiveSIMSetupCompleteNotification = self->_didReceiveSIMSetupCompleteNotification;
    if (v7)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v16 = 138412802;
    v17 = v12;
    v18 = 2112;
    v19 = v14;
    if (didReceiveSIMSetupCompleteNotification)
    {
      v11 = @"YES";
    }

    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Determined whether user subscription selection is still pending { isDualSIM: %@, hasSelectedPhoneNumber: %@, didReceiveSIMSetupCompleteNotification: %@ }", &v16, 0x20u);
  }

  return v9;
}

- (void)_notifyFailureWithError:(int64_t)a3
{
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v53 = _os_activity_create(&_mh_execute_header, "SMS registration center notify failure", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v53, &state);
  v5 = [(IDSPhoneNumberValidationStateMachine *)self _getHighestPriorityMechanism];
  v6 = [(IDSPhoneNumberValidationStateMachine *)self _errorCodeForRegistrationError:a3];
  v7 = [[IDSRegistrationEventTracingSMSValidationEvent alloc] initWithMechanismType:{objc_msgSend(v5, "type")}];
  v8 = +[IDSRegistrationEventTracing sharedInstance];
  v9 = [(IDSCTPNR *)self->_CTPNR uniqueIdentifier];
  v10 = [NSError errorWithDomain:@"IDSPhoneNumberValidationErrorDomain" code:v6 userInfo:0];
  [v8 endEvent:v7 identifier:v9 error:v10];

  v42 = v6;
  if (v6 == -3000 && v5 && [v5 type] == 1)
  {
    v11 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v40 = v5;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v13)
    {
      v14 = *v49;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v49 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v48 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v16 validator:self handleABCEvent:203];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v13);
    }

    v5 = v40;
    v6 = -3000;
  }

  v17 = +[IDSPACStateTracker sharedInstance];
  [v17 notePNRError:v6];

  [(NSMutableArray *)self->_requestors removeAllObjects];
  self->_status = 0;
  self->_hasAcceptedSMSRequest = 0;
  v18 = +[IMRGLog sms];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "2. Setting SMS status to: IDSSMSIdentificationStatusIdle", buf, 2u);
  }

  [(IDSPhoneNumberValidationStateMachine *)self _cancelScheduledHeartbeat];
  [(IDSPhoneNumberValidationStateMachine *)self _failPromisesWithError:a3];
  v19 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v41 = v7;
  v20 = v5;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v22)
  {
    v23 = *v44;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v43 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v25 validator:self failedIdentificationWithRegistrationError:a3];
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v22);
  }

  v26 = +[NSDate date];
  [v26 timeIntervalSinceDate:self->_phoneNumberValidationStartDate];
  v28 = v27;

  sub_1000236A8(a3);
  v29 = [NSNumber numberWithDouble:v28];
  v30 = [NSNumber numberWithUnsignedInt:self->_numberOfSuccessfulSends];
  FTAWDLogRegistrationPhoneNumberValidationFinished();

  v31 = [IDSRegistrationPhoneNumberValidationFinishedMetric alloc];
  v32 = sub_1000236A8(a3);
  v33 = [NSNumber numberWithDouble:v28];
  v34 = [NSNumber numberWithUnsignedInt:self->_numberOfSuccessfulSends];
  v35 = [v31 initWithGuid:0 registrationError:v32 validationDuration:v33 numberOfSMSSent:v34];

  v36 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v36 logMetric:v35];

  phoneNumberValidationStartDate = self->_phoneNumberValidationStartDate;
  self->_phoneNumberValidationStartDate = 0;

  [(IDSPersistentMap *)self->_dailyMetricData setObject:&__kCFBooleanFalse forKey:IDSPNRRegStatusMetricPNRdKey];
  dailyMetricData = self->_dailyMetricData;
  v39 = [NSNumber numberWithInteger:v42];
  [(IDSPersistentMap *)dailyMetricData setObject:v39 forKey:IDSPNRRegStatusMetricPNRErrorCodeKey];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_notifySuccess:(id)a3
{
  v4 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v50 = _os_activity_create(&_mh_execute_header, "SMS registration center notify success", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v50, &state);
  v5 = [[IDSRegistrationEventTracingSMSValidationEvent alloc] initWithMechanismType:0];
  v6 = +[IDSRegistrationEventTracing sharedInstance];
  v7 = [(IDSCTPNR *)self->_CTPNR uniqueIdentifier];
  [v6 endEvent:v5 identifier:v7 error:0];
  v37 = v5;

  v39 = [v4 phoneNumber];
  v8 = [v4 phoneBookNumber];
  v9 = [v4 signature];
  v10 = [v9 _FTStringFromBaseData];

  v11 = [v4 mechanismUsed];
  v38 = v4;
  if ([(NSMutableArray *)self->_requestors count])
  {
    [(NSMutableArray *)self->_requestors removeAllObjects];
    self->_status = 0;
    self->_hasAcceptedSMSRequest = 0;
    v12 = +[IMRGLog sms];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "3. Setting SMS status to: IDSSMSIdentificationStatusIdle", buf, 2u);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _cancelScheduledHeartbeat];
    [(IDSPhoneNumberValidationStateMachine *)self _fulfillPromisesWithPhoneNumber:v39 token:v10];
    v13 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v15)
    {
      v16 = *v41;
      do
      {
        v17 = 0;
        do
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v40 + 1) + 8 * v17);
          if (objc_opt_respondsToSelector())
          {
            [v18 validator:self identifiedPhoneNumber:v39 token:v10 phoneBookNumber:v8 mechanismUsed:v11];
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v15);
    }

    v19 = v38;
    v20 = +[NSDate date];
    [v20 timeIntervalSinceDate:self->_phoneNumberValidationStartDate];
    v22 = v21;

    sub_1000236A8(-1);
    v23 = [NSNumber numberWithDouble:v22];
    v24 = [NSNumber numberWithUnsignedInt:self->_numberOfSuccessfulSends];
    FTAWDLogRegistrationPhoneNumberValidationFinished();

    v25 = [IDSRegistrationPhoneNumberValidationFinishedMetric alloc];
    v26 = sub_1000236A8(-1);
    v27 = [NSNumber numberWithDouble:v22];
    v28 = [NSNumber numberWithUnsignedInt:self->_numberOfSuccessfulSends];
    v29 = [v25 initWithGuid:0 registrationError:v26 validationDuration:v27 numberOfSMSSent:v28];

    v30 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v30 logMetric:v29];

    phoneNumberValidationStartDate = self->_phoneNumberValidationStartDate;
    self->_phoneNumberValidationStartDate = 0;

    [(IDSPersistentMap *)self->_dailyMetricData setObject:&__kCFBooleanTrue forKey:IDSPNRRegStatusMetricPNRdKey];
  }

  else
  {
    v32 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v29 = v32;
    v33 = [v29 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v33)
    {
      v34 = *v46;
      do
      {
        v35 = 0;
        do
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(v29);
          }

          v36 = *(*(&v45 + 1) + 8 * v35);
          if (objc_opt_respondsToSelector())
          {
            [v36 validator:self identifiedPhoneNumber:v39 token:v10 phoneBookNumber:v8 mechanismUsed:v11];
          }

          v35 = v35 + 1;
        }

        while (v33 != v35);
        v33 = [v29 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v33);
    }

    v19 = v38;
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_fulfillPromisesWithPhoneNumber:(id)a3 token:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[IDSPhoneNumberIdentification alloc] initWithPhoneNumber:v6 phoneToken:v7];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_promises;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) fulfillWithValue:{v8, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_promises removeAllObjects];
}

- (void)_failPromisesWithError:(int64_t)a3
{
  v4 = [[NSError alloc] initWithDomain:@"IDSPhoneNumberValidationErrorDomain" code:-[IDSPhoneNumberValidationStateMachine _errorCodeForRegistrationError:](self userInfo:{"_errorCodeForRegistrationError:", a3), 0}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_promises;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) failWithError:{v4, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_promises removeAllObjects];
}

- (int64_t)_errorCodeForRegistrationError:(int64_t)a3
{
  if ((a3 - 5) < 2)
  {
    return -2000;
  }

  if ((a3 - 3) < 2)
  {
    return -3000;
  }

  if (a3 > 34)
  {
    if (a3 != 35)
    {
      if (a3 == 36)
      {
        return -5000;
      }

      return -1000;
    }

    return -4000;
  }

  if (a3)
  {
    if (a3 != 2)
    {
      return -1000;
    }

    return -4000;
  }

  return -6000;
}

- (void)_lockdownStateChanged:(id)a3
{
  v4 = +[IMRGLog sms];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Lockdown changed", buf, 2u);
  }

  v5 = [(IDSPhoneNumberValidationStateMachine *)self lockdownManager];
  v6 = [v5 isActivated];

  if (v6)
  {
    v7 = +[IMRGLog sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "     ==> We're activated, let's go, waiting...", v8, 2u);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _scheduleHeartbeat:5.0];
  }
}

- (void)_registerForLockdownNotifications
{
  v3 = +[IMRGLog sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering %@ for lockdown changes", &v5, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_lockdownStateChanged:" name:IMLockdownDeviceActivatedChangedNotification object:0];
}

- (void)_deviceIDChangedNotification:(id)a3
{
  v4 = +[IMRGLog sms];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device ID Changed", buf, 2u);
  }

  if ([(IDSPhoneNumberValidationStateMachine *)self _validSIMStateForRegistration])
  {
    v5 = +[IMRGLog sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "     ==> We're in a good SIM State, checking heartbeat, waiting...", v6, 2u);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _scheduleHeartbeat:5.0];
  }
}

- (void)PNRRequestSentWithRequestData:(id)a3
{
  v4 = a3;
  v5 = [v4 success];
  v6 = [v4 timeout];
  v7 = +[IMRGLog sms];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = [v4 token];
    *buf = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CT phone number registration request sent { success: %@, timeout: %@, pushTokenHexEncoding: %@ }", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v10 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10056C1CC;
  block[3] = &unk_100BDE7D0;
  objc_copyWeak(&v14, buf);
  v15 = v5;
  v13 = v6;
  v11 = v6;
  dispatch_async(v10, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)PNRResponseReceivedWithResponseData:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog sms];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CT phone number registration response received { data: %@ }", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = im_primary_queue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10056C428;
  v8[3] = &unk_100BDA6B0;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)systemDidFinishMigration
{
  v3 = IMGetCachedDomainBoolForKey();
  v4 = +[IMRGLog sms];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Checking to see if we restored from backup: %@", &v7, 0xCu);
  }

  if (v3)
  {
    v6 = +[IMRGLog sms];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "     ==> Restored from backup, and we need to re-register here, waiting...", &v7, 2u);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _scheduleHeartbeat:20.0];
  }
}

- (void)systemDidStopBackup
{
  if (!+[IDSRegistrationController isBuddyBlockingRegistration])
  {
    v3 = +[IMRGLog sms];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "     ==> System backup complete, waiting...", v4, 2u);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _scheduleHeartbeat:5.0];
  }
}

- (void)systemRestoreStateDidChange
{
  if (!+[IDSRegistrationController isBuddyBlockingRegistration])
  {
    v3 = +[IMRGLog sms];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "     ==> System restore state changed, waiting...", v4, 2u);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _scheduleHeartbeat:5.0];
  }
}

- (void)_SIMSetupDidComplete
{
  self->_didReceiveSIMSetupCompleteNotification = 1;
  v3 = +[IMRGLog sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "     ==> SIM setup did complete -- kicking heartbeat", v4, 2u);
  }

  [(IDSPhoneNumberValidationStateMachine *)self _scheduleHeartbeat:1.0];
}

- (void)_keychainMigrationComplete:(id)a3
{
  v4 = +[IDSRegistrationKeyManager sharedInstance];
  v5 = [v4 requiresKeychainMigration];

  if ((v5 & 1) == 0)
  {
    v6 = +[IMRGLog sms];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "     ==> Keychain migration complete, waiting...", v7, 2u);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _scheduleHeartbeat:20.0];
  }
}

- (void)_clearSMSDeliveryTimeout
{
  [(IMTimer *)self->_lastSendSMSTimer invalidate];
  lastSendSMSTimer = self->_lastSendSMSTimer;
  self->_lastSendSMSTimer = 0;
}

- (void)_smsDeliveryClear
{
  v3 = +[IMRGLog sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Phone Number Validation Request Delivery clear timer fired", buf, 2u);
  }

  [(IDSPhoneNumberValidationStateMachine *)self _clearSMSDeliveryTimeout];
  if (self->_status)
  {
    if ([(IDSPhoneNumberValidationStateMachine *)self _validSIMStateForRegistration])
    {
      v4 = +[IMRGLog sms];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "     ==> We're in a good SIM State, checking heartbeat, waiting...", v6, 2u);
      }

      [(IDSPhoneNumberValidationStateMachine *)self _scheduleHeartbeat:5.0];
    }
  }

  else
  {
    v5 = +[IMRGLog sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "We're idle, bailing", v7, 2u);
    }
  }
}

- (void)_setSMSDeliveryTimeout:(double)a3
{
  if (!self->_lastSendSMSTimer)
  {
    [(IDSPhoneNumberValidationStateMachine *)self _clearSMSDeliveryTimeout];
    if (qword_100CBF018 != -1)
    {
      sub_100929524();
    }

    if (byte_100CBF010 == 1)
    {
      a3 = IMGetDomainIntForKey();
      v5 = +[IMRGLog warning];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134218498;
        v11 = a3;
        v12 = 2112;
        v13 = @"com.apple.registration";
        v14 = 2112;
        v15 = @"overrideSMSTimeout";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Overriding Phone Number Validation Request timeout for registration with: %f   remove %@: %@    to stop this", &v10, 0x20u);
      }
    }

    v6 = [IMTimer alloc];
    v7 = im_primary_queue();
    v8 = [v6 initWithTimeInterval:@"com.apple.identityservices.sms-delivery-hbi" name:1 shouldWake:self target:"_smsDeliveryClear" selector:0 userInfo:v7 queue:a3];
    lastSendSMSTimer = self->_lastSendSMSTimer;
    self->_lastSendSMSTimer = v8;
  }
}

- (void)_lastSendSMSTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10056CD40;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_sendSMSVerificationWithMechanism:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog sms];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to send SMS verification { mechanism: %@ }", &v20, 0xCu);
  }

  v6 = [[IDSRegistrationEventTracingSMSValidationEvent alloc] initWithMechanismType:{objc_msgSend(v4, "type")}];
  v7 = +[IDSRegistrationEventTracing sharedInstance];
  v8 = [(IDSCTPNR *)self->_CTPNR uniqueIdentifier];
  [v7 beginEvent:v6 identifier:v8];

  if ([(IDSPhoneNumberValidationStateMachine *)self _canDeliverSMSNow])
  {
    v9 = [(IDSPushHandler *)self->_pushHandler pushToken];
    if (v9)
    {
      self->_status = 2;
      v10 = +[IMRGLog sms];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "6. Setting SMS status to: IDSSMSIdentificationStatusWaitingSMSIdentityVerificationDelivery", &v20, 2u);
      }

      [(IDSPhoneNumberValidationStateMachine *)self _issueAsyncCoreTelephonyPhoneNumberValidationRequestWithPushToken:v9 mechanism:v4];
      v11 = [[IDSPNRMetric alloc] initWithPNRReason:-[IDSPhoneNumberValidationStateMachine reason](self mechanism:{"reason"), objc_msgSend(v4, "type")}];
      v12 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v12 logMetric:v11];

      dailyMetricData = self->_dailyMetricData;
      v14 = +[IDSCTPNRValidationMechanism mechanismStringForMechanism:](IDSCTPNRValidationMechanism, "mechanismStringForMechanism:", [v4 type]);
      [(IDSPersistentMap *)dailyMetricData setObject:v14 forKey:IDSPNRRegStatusMetricPNRMechanismKey];

      v15 = self->_dailyMetricData;
      v16 = +[IDSCurrentServerTime sharedInstance];
      [v16 currentServerTimeInterval];
      v17 = [NSNumber numberWithDouble:?];
      [(IDSPersistentMap *)v15 setObject:v17 forKey:IDSPNRRegStatusMetricPNRTimestampKey];
    }

    else
    {
      self->_status = 1;
      v18 = +[IMRGLog sms];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "4. Setting SMS status to: IDSSMSIdentificationStatusWaitingToBeginSMSIdentityVerification", &v20, 2u);
      }

      v19 = +[IMRGLog sms];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "     ==> We have no push token, bailing, waiting...", &v20, 2u);
      }

      [(IDSPhoneNumberValidationStateMachine *)self _scheduleHeartbeat:20.0];
    }
  }

  else
  {
    v9 = +[IMRGLog sms];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Still waiting on timeout to clear for next Phone Number Validation request to be delivered, waiting", &v20, 2u);
    }
  }
}

- (void)_issueAsyncCoreTelephonyPhoneNumberValidationRequestWithPushToken:(id)a3 mechanism:(id)a4
{
  CTPNR = self->_CTPNR;
  numberOfSuccessfulSends = self->_numberOfSuccessfulSends;
  v8 = a4;
  v9 = a3;
  v10 = [(IDSPhoneNumberValidationStateMachine *)self sessionID];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10056D1FC;
  v12[3] = &unk_100BDB8C0;
  v12[4] = self;
  LOBYTE(CTPNR) = [(IDSCTPNR *)CTPNR issuePNRForMechanism:v8 pushToken:v9 attemptCount:numberOfSuccessfulSends sessionToken:v10 completion:v12];

  if ((CTPNR & 1) == 0)
  {
    v11 = +[IMRGLog sms];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_100929538();
    }

    [(IDSPhoneNumberValidationStateMachine *)self handleRegistrationSMSDeliveryFailed];
  }
}

- (void)_sendPreflightVerificationIfNeeded
{
  v3 = [(IDSCTPNR *)self->_CTPNR PNRInfo];
  v4 = [v3 IMSI];
  v5 = [v3 PLMN];
  v6 = [(IDSPhoneNumberValidationStateMachine *)self currentPreflightStack];
  if (v6)
  {
    v7 = v6;
    v8 = [(IDSPhoneNumberValidationStateMachine *)self currentPreflightStack];
    if ([v8 containsMechanisms])
    {
      v9 = [(IDSPhoneNumberValidationStateMachine *)self currentPreflightStack];
      v10 = [v9 matchesIMSI:v4 PLMN:v5];

      if (v10)
      {
        v11 = +[IMRGLog sms];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [(IDSPhoneNumberValidationStateMachine *)self currentPreflightStack];
          v18 = 138412290;
          v19[0] = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "We're currently iterating over Preflight mechanisms -- continuing { currentPreflightStack: %@ }", &v18, 0xCu);
        }

        [(IDSPhoneNumberValidationStateMachine *)self _performHighestPriorityPreflightVerification];
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v13 = [(IDSPhoneNumberValidationStateMachine *)self arbiter];
  v14 = [v13 maxAllowableNumberOfPreflightRequests];

  if (self->_numberOfPreflights >= v14)
  {
    v17 = +[IMRGLog warning];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_100929578();
    }

    [(IDSPhoneNumberValidationStateMachine *)self _notifyFailureWithError:3];
    [(IDSPhoneNumberValidationStateMachine *)self resetSMSCounter];
  }

  else
  {
    v15 = +[IMRGLog sms];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      numberOfPreflights = self->_numberOfPreflights;
      v18 = 67109376;
      LODWORD(v19[0]) = numberOfPreflights;
      WORD2(v19[0]) = 1024;
      *(v19 + 6) = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Haven't completed max number of Preflights yet { preflights: %d, maxPreflights: %d }", &v18, 0xEu);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _sendPreflightVerificationWithIMSI:v4 PLMN:v5];
  }

LABEL_15:
}

- (id)_getHighestPriorityMechanism
{
  v3 = [(IDSPhoneNumberValidationStateMachine *)self currentPreflightStack];
  v4 = [v3 containsMechanisms];

  if (v4)
  {
    v5 = [(IDSPhoneNumberValidationStateMachine *)self currentPreflightStack];
    v6 = [v5 topMechanism];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_popHighestPriorityPreflightVerification
{
  v3 = [(IDSPhoneNumberValidationStateMachine *)self currentPreflightStack];
  v4 = [v3 containsMechanisms];

  if (v4)
  {
    v6 = [(IDSPhoneNumberValidationStateMachine *)self currentPreflightStack];
    v5 = [v6 preflightStackByPoppingMechanism];
    [(IDSPhoneNumberValidationStateMachine *)self setCurrentPreflightStack:v5];
  }
}

- (void)_performHighestPriorityPreflightVerification
{
  v3 = [(IDSPhoneNumberValidationStateMachine *)self _getHighestPriorityMechanism];
  [(IDSPhoneNumberValidationStateMachine *)self _sendSMSVerificationWithMechanism:v3];
}

- (void)_sendPreflightVerificationWithIMSI:(id)a3 PLMN:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog sms];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending Preflight message", buf, 2u);
  }

  v9 = objc_alloc_init(IDSPreflightMessage);
  v10 = +[IDSRegistrationEventTracing sharedInstance];
  v11 = [(IDSPhoneNumberValidationStateMachine *)self CTPNR];
  v12 = [v11 uniqueIdentifier];
  v13 = [(IDSPreflightMessage *)v9 overallEventTracingOperation];
  [v10 trackIDSMessageWithIdentifier:v12 messageType:3 operation:v13];

  v14 = [NSNumber numberWithUnsignedInt:self->_numberOfPreflights];
  [(IDSPreflightMessage *)v9 setPhoneNumberValidationRetryCount:v14];

  v15 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [(IDSPreflightMessage *)v9 setPushToken:v15];

  IDSAssignPushIdentityToMessage();
  v16 = +[FTDeviceSupport sharedInstance];
  v17 = [v16 model];

  v18 = +[FTDeviceSupport sharedInstance];
  v19 = [v18 productOSVersion];

  v20 = +[FTDeviceSupport sharedInstance];
  v21 = [v20 productBuildVersion];

  v22 = +[FTDeviceSupport sharedInstance];
  v23 = [v22 deviceName];

  [(IDSPreflightMessage *)v9 setHardwareVersion:v17];
  [(IDSPreflightMessage *)v9 setOsVersion:v19];
  [(IDSPreflightMessage *)v9 setSoftwareVersion:v21];
  [(IDSPreflightMessage *)v9 setDeviceName:v23];
  [(IDSPreflightMessage *)v9 setTimeout:36000.0];
  v24 = [NSNumber numberWithInteger:[(IDSPhoneNumberValidationStateMachine *)self reason]];
  [(IDSPreflightMessage *)v9 setPnrReason:v24];

  v25 = [(IDSPhoneNumberValidationStateMachine *)self CTPNR];
  v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v25 hardwareType]);
  [(IDSPreflightMessage *)v9 setSimHardwareType:v26];

  v27 = [(IDSPhoneNumberValidationStateMachine *)self arbiter];
  v28 = [v27 validationMode];

  if (v28 == 3)
  {
    v29 = [(IDSPhoneNumberValidationStateMachine *)self arbiter];
    v30 = [v29 preflightTestDataOverride];

    v31 = +[IMRGLog sms];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v30;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Setting test data on preflight message { testData: %@ }", buf, 0xCu);
    }

    [(IDSPreflightMessage *)v9 setTestData:v30];
  }

  v32 = +[IMRGLog sms];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = v6;
    v41 = 2112;
    v42 = v7;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Setting IMSI and PLMN on preflight message { IMSI: %@, PLMN: %@ }", buf, 0x16u);
  }

  if (v6)
  {
    [(IDSPreflightMessage *)v9 setIMSI:v6];
  }

  if (v7)
  {
    [(IDSPreflightMessage *)v9 setPLMN:v7];
  }

  sub_1004C6E84();
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10056DDD4;
  v36[3] = &unk_100BDD200;
  v36[4] = self;
  v37 = v6;
  v38 = v7;
  v33 = v7;
  v34 = v6;
  [(IDSPreflightMessage *)v9 setCompletionBlock:v36];
  v35 = [(IDSPhoneNumberValidationStateMachine *)self httpMessageDelivery];
  [v35 sendMessage:v9];

  ++self->_numberOfPreflights;
  [(IDSPhoneNumberValidationStateMachine *)self persistNumberOfPreflightAttempts:?];
}

- (id)_filterUnsupportedMechanisms:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog sms];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithInteger:[(IDSPhoneNumberValidationStateMachine *)self serviceType]];
    *buf = 138412546;
    v24 = v6;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Filtering out unsupported mechanisms per our service type. { serviceType: %@, preflightMechanisms: %@ }", buf, 0x16u);
  }

  v7 = objc_alloc_init(NSMutableArray);
  v8 = [(IDSPhoneNumberValidationStateMachine *)self serviceType];
  if (v8 == 2)
  {
    v10 = +[IMRGLog sms];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Encrypted RCS service type does not support SMS based PNR.", buf, 2u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          if ([v16 type] != 1)
          {
            [v7 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  else if (v8 == 1)
  {
    v9 = +[IMRGLog sms];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDS service type supports all mechanisms.", buf, 2u);
    }

    [v7 addObjectsFromArray:v4];
  }

  return v7;
}

- (void)_requestUserConsentForPhoneNumberValidationWithCompletion:(id)a3
{
  requestors = self->_requestors;
  v5 = a3;
  if ([(NSMutableArray *)requestors count])
  {
    v7 = [(NSMutableArray *)self->_requestors firstObject];
    [v7 requestUserConsentToValidatePhoneNumberForCTPNR:self->_CTPNR completion:v5];
  }

  else
  {
    v6 = +[IMRGLog sms];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No requestors are present for delegation of SMS permission", buf, 2u);
    }

    (*(v5 + 2))(v5, 0);
  }
}

- (void)handleRegistrationSMSDeliveryFailedWithShouldBypassRetry:(BOOL)a3
{
  v3 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v26 = _os_activity_create(&_mh_execute_header, "SMS registration handle SMS delivery failed", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v26, &state);
  [(IDSPhoneNumberValidationStateMachine *)self _cancelScheduledSMSTimeout];
  v5 = +[IMRGLog sms];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    numberOfAttemptsWithoutSuccessfulSend = self->_numberOfAttemptsWithoutSuccessfulSend;
    numberOfPreflights = self->_numberOfPreflights;
    numberOfSuccessfulSends = self->_numberOfSuccessfulSends;
    *buf = 67109632;
    v28 = numberOfPreflights;
    v29 = 1024;
    v30 = numberOfSuccessfulSends;
    v31 = 1024;
    LODWORD(v32) = numberOfAttemptsWithoutSuccessfulSend;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registration request failed delivery { preflights: %d, sends: %d, attemptsWithoutSend: %d }", buf, 0x14u);
  }

  if ([(NSMutableArray *)self->_requestors count])
  {
    v9 = [(IDSPhoneNumberValidationStateMachine *)self arbiter];
    v10 = [v9 maxAllowableNumberOfValidationAttemptsWhileNoneHaveSentSuccessfully];

    if (self->_numberOfAttemptsWithoutSuccessfulSend < v10 && !v3)
    {
      v11 = +[IMRGLog sms];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_numberOfAttemptsWithoutSuccessfulSend;
        *buf = 67109376;
        v28 = v12;
        v29 = 1024;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Retrying this validation { attemptsWithoutSuccessfulSend: %d, maxRetries: %d }", buf, 0xEu);
      }

      v13 = [NSString stringWithFormat:@"Failed sending registration Phone Number Validation request #%d, trying again", self->_numberOfSuccessfulSends];
      sub_100450174(0, @"Failed Sending Phone Number Validation", v13, 1073);

      ++self->_numberOfAttemptsWithoutSuccessfulSend;
      self->_status = 1;
      v14 = +[IMRGLog sms];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "9. Setting SMS status to: IDSSMSIdentificationStatusWaitingToBeginSMSIdentityVerification", buf, 2u);
      }

      v15 = 1;
      goto LABEL_25;
    }

    v17 = +[IMRGLog sms];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_numberOfAttemptsWithoutSuccessfulSend;
      v19 = @"NO";
      *buf = 67109634;
      if (v3)
      {
        v19 = @"YES";
      }

      v28 = v18;
      v29 = 1024;
      v30 = v10;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not retrying this validation { attemptsWithoutSuccessfulSend: %d, maxRetries: %d, shouldBypassRetry: %@ }", buf, 0x18u);
    }

    self->_numberOfAttemptsWithoutSuccessfulSend = 0;
    v20 = [(IDSPhoneNumberValidationStateMachine *)self arbiter];
    v21 = [v20 isValidationModeLegacy];

    if ((v21 & 1) == 0)
    {
      [(IDSPhoneNumberValidationStateMachine *)self _popHighestPriorityPreflightVerification];
      self->_status = 1;
      v15 = 2;
LABEL_25:
      self->_reason = v15;
      [(IDSPhoneNumberValidationStateMachine *)self _scheduleHeartbeat:20.0];
      goto LABEL_26;
    }

    v22 = +[IMRGLog sms];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Max retries consumed -- failing phone number validation", buf, 2u);
    }

    self->_status = 0;
    v23 = +[IMRGLog sms];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "10. Setting SMS status to: IDSSMSIdentificationStatusIdle", buf, 2u);
    }

    v24 = [NSString stringWithFormat:@"Failed sending registration Phone Number Validation request #%d, giving up", self->_numberOfSuccessfulSends];
    sub_100450174(0, @"Failed Phone Number Validation", v24, 1073);

    [(IDSPhoneNumberValidationStateMachine *)self _notifyFailureWithError:4];
  }

  else
  {
    v16 = +[IMRGLog sms];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No requestors -- we must have been cancelled", buf, 2u);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _notifyFailureWithError:0];
  }

LABEL_26:
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)handleRegistrationSMSSuccessfullyDeliveredWithTelephonyTimeout:(id)a3
{
  v4 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v18 = _os_activity_create(&_mh_execute_header, "SMS registration center handle SMS successfully delivered", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v18, &state);
  [(IDSPhoneNumberValidationStateMachine *)self _cancelScheduledSMSTimeout];
  v5 = +[IMRGLog sms];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registration request successfully delivered", buf, 2u);
  }

  if ([(NSMutableArray *)self->_requestors count])
  {
    ++self->_numberOfSuccessfulSends;
    [(IDSPhoneNumberValidationStateMachine *)self persistNumberOfSuccessfulValidationSends:?];
    self->_numberOfAttemptsWithoutSuccessfulSend = 0;
    [(IDSPhoneNumberValidationStateMachine *)self _popHighestPriorityPreflightVerification];
    v6 = [NSString stringWithFormat:@"Succeeded sending registration Phone Number Validation request #%d", self->_numberOfSuccessfulSends];
    sub_100450174(0, @"Phone Number Validation Sending", v6, 1004);

    self->_status = 3;
    v7 = +[IMRGLog sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "11. Setting SMS status to: IDSSMSIdentificationStatusWaitingSMSIdentityVerificationResponse", buf, 2u);
    }

    [v4 doubleValue];
    if (v8 <= 5.0)
    {
      v11 = 1800.0;
    }

    else
    {
      v9 = +[IMRGLog sms];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = *&v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Using telephony-provided timeout { telephonyTimeout: %@ }", buf, 0xCu);
      }

      [v4 doubleValue];
      v11 = v10;
    }

    v13 = [(IDSPhoneNumberValidationStateMachine *)self arbiter];
    [v13 minimumIntervalBetweenValidationAttempts];
    v15 = v14;

    if (v11 <= v15)
    {
      v11 = v15;
    }

    v16 = +[IMRGLog sms];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v20 = v11;
      v21 = 2048;
      v22 = v15;
      v23 = 2048;
      v24 = 0x409C200000000000;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting timeout for Phone Number Validation Request { timeoutInSeconds: %f, minimumReasonableTimeout: %f, defaultTimeout: %f, telephonyTimeout: %@ }", buf, 0x2Au);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _scheduleSMSTimeout:v11];
  }

  else
  {
    v12 = +[IMRGLog sms];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No requestors -- we must have been cancelled", buf, 2u);
    }

    [(IDSPhoneNumberValidationStateMachine *)self _notifyFailureWithError:0];
    [(IDSPhoneNumberValidationStateMachine *)self resetSMSCounter];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)handleIncomingSMSForResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 phoneNumber];
  v6 = [v4 signature];
  v7 = [v4 mechanismUsed];
  v32 = _os_activity_create(&_mh_execute_header, "SMS registration center handle incoming SMS", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v32, &state);
  [(IDSPhoneNumberValidationStateMachine *)self _cancelScheduledSMSTimeout];
  v8 = +[IMRGLog sms];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received registration request response SMS", buf, 2u);
  }

  v9 = +[IMRGLog sms];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138412546;
    v34 = v5;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Phone number: %@     Class: %@", buf, 0x16u);
  }

  v12 = +[IMRGLog sms];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412546;
    v34 = v6;
    v35 = 2112;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Signature: %@        Class: %@", buf, 0x16u);
  }

  v15 = +[IMRGLog sms];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [IDSCTPNRValidationMechanism mechanismStringForMechanism:v7];
    *buf = 138412290;
    v34 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Mechanism used: %@", buf, 0xCu);
  }

  sub_100450174(0, @"Registration SMS", @"Received registration SMS", 1007);
  v17 = +[NSDate date];
  [v17 timeIntervalSinceDate:self->_smsSendDate];
  v19 = v18;

  v20 = [NSNumber numberWithDouble:v19];
  FTAWDLogRegistrationPhoneNumberReceivedSMS();

  v21 = [IDSRegistrationPhoneNumberReceivedSMSMetric alloc];
  v22 = [NSNumber numberWithDouble:v19];
  v23 = [v21 initWithGuid:0 smsRoundTripDuration:v22];

  v24 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v24 logMetric:v23];

  smsSendDate = self->_smsSendDate;
  self->_smsSendDate = 0;

  if ([(IDSPhoneNumberValidationStateMachine *)self status]== 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_status = 0;
        v26 = +[IMRGLog sms];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "12. Setting SMS status to: IDSSMSIdentificationStatusIdle", buf, 2u);
        }

        v28 = v4;
        im_dispatch_after_primary_queue();
      }

      else
      {
        v29 = v6;
        im_dispatch_after_primary_queue();
      }
    }

    else
    {
      v30 = v5;
      im_dispatch_after_primary_queue();
    }
  }

  else
  {
    v27 = +[IMRGLog sms];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Discarding registration request response, because we are not in the correct state to accept it", buf, 2u);
    }
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)resetSMSCounter
{
  if (self->_numberOfSuccessfulSends)
  {
    v3 = +[IMRGLog sms];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      numberOfSuccessfulSends = self->_numberOfSuccessfulSends;
      v7 = 67109120;
      v8 = numberOfSuccessfulSends;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting Phone Number Validation Attempt counter from %d to 0", &v7, 8u);
    }

    self->_numberOfSuccessfulSends = 0;
  }

  if (self->_numberOfPreflights)
  {
    v5 = +[IMRGLog sms];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      numberOfPreflights = self->_numberOfPreflights;
      v7 = 67109120;
      v8 = numberOfPreflights;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting Phone Number Preflight attempts to 0 { _numberOfPreflights : %d }", &v7, 8u);
    }

    self->_numberOfPreflights = 0;
  }

  [(IDSPhoneNumberValidationStateMachine *)self setCurrentPreflightStack:0];
  [(IDSPhoneNumberValidationStateMachine *)self persistNumberOfSuccessfulValidationSends:0];
  [(IDSPhoneNumberValidationStateMachine *)self persistNumberOfPreflightAttempts:0];
}

- (void)timedOutWaitingForSMS
{
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v20 = _os_activity_create(&_mh_execute_header, "SMS registration center timed out waiting for SMS", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v20, &state);
  v3 = +[IMRGLog sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timed out waiting for Phone Number Validation response", buf, 2u);
  }

  v4 = +[IMRGLog sms];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending another", buf, 2u);
  }

  v5 = [(IDSPhoneNumberValidationStateMachine *)self _getHighestPriorityMechanism];
  v6 = v5;
  if (v5 && [v5 type] == 1)
  {
    v7 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 validator:self handleABCEvent:204];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v13 = [NSString stringWithFormat:@"Timed out waiting for Phone Number Validation request #%d", self->_numberOfSuccessfulSends];
  sub_100450174(0, @"Phone Number Validation Timeout", v13, 1073);

  [(IDSPhoneNumberValidationStateMachine *)self handleRegistrationSMSDeliveryFailed];
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)addListener:(id)a3
{
  v7 = a3;
  if (([(NSMutableArray *)self->_handlers containsObjectIdenticalTo:?]& 1) == 0)
  {
    handlers = self->_handlers;
    if (!handlers)
    {
      v5 = +[NSMutableArray nonRetainingArray];
      v6 = self->_handlers;
      self->_handlers = v5;

      handlers = self->_handlers;
    }

    [(NSMutableArray *)handlers addObject:v7];
  }
}

- (void)addPhoneNumberValidationRequestor:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog sms];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    requestors = self->_requestors;
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = requestors;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding phone number valiation requestor { requestor: %@, requestors: %@ }", &v7, 0x16u);
  }

  if (v4 && ([(NSMutableArray *)self->_requestors containsObject:v4]& 1) == 0)
  {
    [(NSMutableArray *)self->_requestors addObject:v4];
  }

  if ([(NSMutableArray *)self->_requestors count])
  {
    [(IDSPhoneNumberValidationStateMachine *)self _tryToSendSMSIdentification];
  }
}

- (id)identifyPhoneNumberForRequestor:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CUTPromiseSeal alloc] initWithQueue:v6];

  [(NSMutableArray *)self->_promises addObject:v8];
  [(IDSPhoneNumberValidationStateMachine *)self addPhoneNumberValidationRequestor:v7];

  v9 = [v8 promise];

  return v9;
}

- (void)removePhoneNumberValidationRequestor:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog sms];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    requestors = self->_requestors;
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = requestors;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing phone number valiation requestor { requestor: %@, requestors: %@ }", &v8, 0x16u);
  }

  if (v4 && [(NSMutableArray *)self->_requestors containsObject:v4])
  {
    [(NSMutableArray *)self->_requestors removeObject:v4];
  }

  if (![(NSMutableArray *)self->_requestors count])
  {
    self->_status = 0;
    v7 = +[IMRGLog sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "13. Setting SMS status to: IDSSMSIdentificationStatusIdle", &v8, 2u);
    }
  }
}

@end