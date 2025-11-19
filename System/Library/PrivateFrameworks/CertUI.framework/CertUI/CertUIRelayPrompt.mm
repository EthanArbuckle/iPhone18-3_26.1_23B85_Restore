@interface CertUIRelayPrompt
- (BOOL)_launchSheetApp;
- (BOOL)allowCertificateTrust;
- (BOOL)showCertificateDetails;
- (BOOL)showContinue;
- (CertUIRelayPrompt)initWithMessageInfo:(id)a3 localizedOriginatingAppName:(id)a4 replyContext:(id)a5;
- (id)_copyCancelOnlyUserNotificationInfo;
- (id)_copyUserNotificationInfo;
- (id)_localizedUntrustedCertAcceptNotAllowedMessage;
- (id)_localizedUntrustedCertAlertMessage;
- (id)_localizedUntrustedCertAlertTitle;
- (void)_invokeCompletionWithReply:(id)a3;
- (void)_receivedCancelOnlyResponseForNotification:(__CFUserNotification *)a3 responseFlags:(unint64_t)a4;
- (void)_receivedResponseForNotification:(__CFUserNotification *)a3 responseFlags:(unint64_t)a4;
- (void)_showAlert;
- (void)_showDetails;
- (void)dealloc;
- (void)showPromptWithCompletion:(id)a3;
@end

@implementation CertUIRelayPrompt

- (CertUIRelayPrompt)initWithMessageInfo:(id)a3 localizedOriginatingAppName:(id)a4 replyContext:(id)a5
{
  v10.receiver = self;
  v10.super_class = CertUIRelayPrompt;
  v8 = [(CertUIRelayPrompt *)&v10 init];
  if (v8)
  {
    v8->_messageInfo = [a3 copy];
    v8->_localizedOriginatingAppName = a4;
    v8->_replyContext = a5;
  }

  return v8;
}

- (void)dealloc
{
  completion = self->_completion;
  if (completion)
  {
    _Block_release(completion);
  }

  v4.receiver = self;
  v4.super_class = CertUIRelayPrompt;
  [(CertUIRelayPrompt *)&v4 dealloc];
}

- (void)_invokeCompletionWithReply:(id)a3
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, a3);
    _Block_release(self->_completion);
    self->_completion = 0;
  }
}

- (BOOL)_launchSheetApp
{
  v2 = SBSLaunchApplicationWithIdentifier();
  if (v2)
  {
    v3 = _CertUILogObjects[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed launching app %d", v5, 8u);
    }
  }

  return v2 == 0;
}

- (void)_showDetails
{
  if ([(CertUIRelayPrompt *)self _launchSheetApp])
  {
    v3 = +[CertUIRelayPrompt _actualCenter];
    v4 = kCertUIPresentTrustInfoMessage;
    messageInfo = self->_messageInfo;

    [v3 sendMessageAndReceiveReplyName:v4 userInfo:? toTarget:? selector:? context:?];
  }

  else
  {

    [(CertUIRelayPrompt *)self _invokeCompletionWithReply:0];
  }
}

- (void)_receivedResponseForNotification:(__CFUserNotification *)a3 responseFlags:(unint64_t)a4
{
  if ((a4 & 3) <= 1)
  {
    if ((a4 & 3) != 0)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

LABEL_10:
    v6 = [(CertUIRelayPrompt *)self _replyDictionaryWithCertUIResponse:v5];

    [(CertUIRelayPrompt *)self _invokeCompletionWithReply:v6];
    return;
  }

  if ((a4 & 3) != 2)
  {
    v5 = 0;
    goto LABEL_10;
  }

  [(CertUIRelayPrompt *)self _showDetails];
}

- (void)_receivedCancelOnlyResponseForNotification:(__CFUserNotification *)a3 responseFlags:(unint64_t)a4
{
  v5 = [(CertUIRelayPrompt *)self _replyDictionaryWithCertUIResponse:0, a4];

  [(CertUIRelayPrompt *)self _invokeCompletionWithReply:v5];
}

- (id)_localizedUntrustedCertAlertTitle
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.CertUI"];

  return [(NSBundle *)v2 localizedStringForKey:@"UNTRUSTED_CERT_TITLE" value:&stru_100008390 table:0];
}

- (id)_localizedUntrustedCertAlertMessage
{
  v3 = [[NSBundle bundleWithIdentifier:?]value:"localizedStringForKey:value:table:" table:@"UNTRUSTED_CERT_MESSAGE", &stru_100008390, 0];
  v4 = [[NSBundle bundleWithIdentifier:?]value:"localizedStringForKey:value:table:" table:@"UNTRUSTED_CERT_MESSAGE_NO_APP_NAME", &stru_100008390, 0];
  if (v3 && [(CertUIRelayPrompt *)self localizedOriginatingAppName])
  {
    return [NSString stringWithFormat:v3, [(CertUIRelayPrompt *)self _hostname], [(CertUIRelayPrompt *)self localizedOriginatingAppName]];
  }

  if (!v4)
  {
    return 0;
  }

  v6 = _CertUILogObjects[1];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Untrusted certificate alert is being shown but no localized app name has been retrieved from the audit token.", buf, 2u);
  }

  return [NSString stringWithFormat:v4, [(CertUIRelayPrompt *)self _hostname], v7];
}

- (id)_localizedUntrustedCertAcceptNotAllowedMessage
{
  v3 = [[NSBundle bundleWithIdentifier:?]value:"localizedStringForKey:value:table:" table:@"UNTRUSTED_CERT_MESSAGE_NO_ACCEPT", &stru_100008390, 0];
  v4 = [[NSBundle bundleWithIdentifier:?]value:"localizedStringForKey:value:table:" table:@"UNTRUSTED_CERT_MESSAGE_NO_ACCEPT_NO_APP_NAME", &stru_100008390, 0];
  if (v3 && [(CertUIRelayPrompt *)self localizedOriginatingAppName])
  {
    return [NSString stringWithFormat:v3, [(CertUIRelayPrompt *)self _hostname], [(CertUIRelayPrompt *)self localizedOriginatingAppName]];
  }

  if (!v4)
  {
    return 0;
  }

  v6 = _CertUILogObjects[1];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Untrusted certificate alert is being shown but no localized app name has been retrieved from the audit token.", buf, 2u);
  }

  return [NSString stringWithFormat:v4, [(CertUIRelayPrompt *)self _hostname], v7];
}

- (BOOL)allowCertificateTrust
{
  v3 = [(NSDictionary *)self->_messageInfo objectForKey:kCertUITrustAllowCertificateTrustKey];
  if ([(CertUIRelayPrompt *)self isCertificateTrustRestricted])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

- (BOOL)showContinue
{
  v3 = [(CertUIRelayPrompt *)self allowCertificateTrust];
  if (v3)
  {
    v4 = [(NSDictionary *)self->_messageInfo objectForKey:kCertUITrustShowContinueKey];
    if (v4)
    {

      LOBYTE(v3) = [v4 BOOLValue];
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)showCertificateDetails
{
  v2 = [(NSDictionary *)self->_messageInfo objectForKey:kCertUITrustShowCertificateDetailsKey];
  if (!v2)
  {
    return 1;
  }

  return [v2 BOOLValue];
}

- (id)_copyUserNotificationInfo
{
  v3 = [NSMutableDictionary alloc];
  v4 = [v3 initWithObjectsAndKeys:{SBUserNotificationAllowInSetupKey, &__kCFBooleanTrue, SBUserNotificationDismissOnLock, &__kCFBooleanTrue, SBUserNotificationDontDismissOnUnlock, &__kCFBooleanTrue, SBUserNotificationPendWhileKeyBagLockedKey, 0}];
  v5 = [(CertUIRelayPrompt *)self _localizedUntrustedCertAlertTitle];
  if (v5)
  {
    [v4 setObject:v5 forKey:kCFUserNotificationAlertHeaderKey];
  }

  v6 = [[NSBundle bundleWithIdentifier:?]value:"localizedStringForKey:value:table:" table:@"CANCEL", &stru_100008390, 0];
  if (v6)
  {
    [v4 setObject:v6 forKey:kCFUserNotificationDefaultButtonTitleKey];
  }

  v7 = [[NSBundle bundleWithIdentifier:?]value:"localizedStringForKey:value:table:" table:@"CONTINUE", &stru_100008390, 0];
  if ([(CertUIRelayPrompt *)self showContinue]&& v7)
  {
    [v4 setObject:v7 forKey:kCFUserNotificationAlternateButtonTitleKey];
  }

  v8 = [[NSBundle bundleWithIdentifier:?]value:"localizedStringForKey:value:table:" table:@"DETAILS", &stru_100008390, 0];
  if ([(CertUIRelayPrompt *)self showCertificateDetails]&& v8)
  {
    [v4 setObject:v8 forKey:kCFUserNotificationOtherButtonTitleKey];
  }

  if ([(CertUIRelayPrompt *)self allowCertificateTrust])
  {
    v9 = [(CertUIRelayPrompt *)self _localizedUntrustedCertAlertMessage];
  }

  else
  {
    v9 = [(CertUIRelayPrompt *)self _localizedUntrustedCertAcceptNotAllowedMessage];
  }

  if (v9)
  {
    [v4 setObject:v9 forKey:kCFUserNotificationAlertMessageKey];
  }

  return v4;
}

- (id)_copyCancelOnlyUserNotificationInfo
{
  v3 = [NSMutableDictionary alloc];
  v4 = [v3 initWithObjectsAndKeys:{SBUserNotificationAllowInSetupKey, &__kCFBooleanTrue, SBUserNotificationDismissOnLock, &__kCFBooleanTrue, SBUserNotificationDontDismissOnUnlock, &__kCFBooleanTrue, SBUserNotificationPendWhileKeyBagLockedKey, 0}];
  v5 = [(CertUIRelayPrompt *)self _localizedUntrustedCertAlertTitle];
  if (v5)
  {
    [v4 setObject:v5 forKey:kCFUserNotificationAlertHeaderKey];
  }

  v6 = [(CertUIRelayPrompt *)self _localizedUntrustedCertAcceptNotAllowedMessage];
  if (v6)
  {
    [v4 setObject:v6 forKey:kCFUserNotificationAlertMessageKey];
  }

  return v4;
}

- (void)_showAlert
{
  if ([(CertUIRelayPrompt *)self isCertificateTrustRestricted])
  {
    v3 = [(CertUIRelayPrompt *)self _copyCancelOnlyUserNotificationInfo];
    v4 = &selRef__receivedCancelOnlyResponseForNotification_responseFlags_;
  }

  else
  {
    v3 = [(CertUIRelayPrompt *)self _copyUserNotificationInfo];
    v4 = &selRef__receivedResponseForNotification_responseFlags_;
  }

  v5 = v3;
  sub_1000022E0(v3, self, *v4);
}

- (void)showPromptWithCompletion:(id)a3
{
  self->_completion = _Block_copy(a3);

  [(CertUIRelayPrompt *)self _showAlert];
}

@end