@interface PKAnalyticsReporter
+ (id)_authMethodFromResult:(id)result;
+ (id)_eventTypeFromError:(id)error;
+ (id)_isDTOSupported;
+ (id)_isDTOUserEnabled;
+ (id)_stringFromBool:(BOOL)bool;
+ (id)analyticsErrorTextForError:(int64_t)error;
+ (id)archivedSessionTokenForSubject:(id)subject;
+ (id)bucketValueForGroupSize:(unint64_t)size;
+ (id)bucketValueForIneligibleCount:(unint64_t)count;
+ (id)pageTagForAppleCashSenderError:(id)error;
+ (id)reporterForSubject:(id)subject;
+ (id)subjectDictionary;
+ (id)subjectSessionStateDateDictionary;
+ (id)subjectToReportDashboardAnalyticsForAccount:(id)account;
+ (id)subjectToReportDashboardAnalyticsForFeature:(unint64_t)feature;
+ (id)subjectToReportDashboardAnalyticsForPass:(id)pass;
+ (id)virtualCardReferralSource:(unint64_t)source;
+ (int)clientTypeForSubject:(id)subject;
+ (void)_attachFeatureTypeToEvent:(id)event forSubject:(id)subject;
+ (void)_isDTOPasscodeFallbackAllowed:(id)allowed;
+ (void)beginSubjectReporting:(id)reporting;
+ (void)beginSubjectReporting:(id)reporting withArchivedParent:(id)parent;
+ (void)endSubjectReporting:(id)reporting;
+ (void)reportAccountRewardsEventIfNecessary:(id)necessary;
+ (void)reportAppleCashEvent:(id)event withMessagesContext:(id)context;
+ (void)reportAppleCashSenderErrorPage:(id)page;
+ (void)reportAppleCashSenderErrorPage:(id)page buttonTag:(id)tag;
+ (void)reportCampaignIdentifier:(id)identifier eventType:(int64_t)type referralSource:(int64_t)source deepLinkType:(int64_t)linkType productType:(int64_t)productType;
+ (void)reportDTOAuthEndedWithResult:(id)result error:(id)error forSubject:(id)subject;
+ (void)reportDTOAuthEvent:(id)event forSubject:(id)subject;
+ (void)reportDashboardEventIfNecessary:(id)necessary forPass:(id)pass;
+ (void)sendSingularEvent:(id)event;
+ (void)subject:(id)subject category:(int64_t)category sendEvent:(id)event;
+ (void)subjects:(id)subjects category:(int64_t)category sendEvent:(id)event;
- (PKAnalyticsReporter)initWithArchivedParent:(id)parent subject:(id)subject;
- (PKAnalyticsReporter)initWithParent:(id)parent subject:(id)subject;
- (PKAnalyticsReporter)initWithParentToken:(id)token subject:(id)subject;
- (double)clampSessionDurationFromMilliseconds:(int64_t)milliseconds;
- (id)archivedSessionToken;
- (void)sendEvent:(id)event withCategory:(int64_t)category;
@end

@implementation PKAnalyticsReporter

+ (id)subjectDictionary
{
  v2 = subjectDictionary_subjectDictionary;
  if (!subjectDictionary_subjectDictionary)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = subjectDictionary_subjectDictionary;
    subjectDictionary_subjectDictionary = v3;

    v2 = subjectDictionary_subjectDictionary;
  }

  return v2;
}

+ (id)subjectSessionStateDateDictionary
{
  v2 = subjectSessionStateDateDictionary_dateDictionary;
  if (!subjectSessionStateDateDictionary_dateDictionary)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = subjectSessionStateDateDictionary_dateDictionary;
    subjectSessionStateDateDictionary_dateDictionary = v3;

    v2 = subjectSessionStateDateDictionary_dateDictionary;
  }

  return v2;
}

+ (id)virtualCardReferralSource:(unint64_t)source
{
  if (source - 1 > 2)
  {
    return @"pushNotification";
  }

  else
  {
    return off_1E79C4238[source - 1];
  }
}

+ (id)subjectToReportDashboardAnalyticsForPass:(id)pass
{
  passCopy = pass;
  if ([passCopy passType] != 1)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v4 = passCopy;
  associatedAccountServiceAccountIdentifier = [v4 associatedAccountServiceAccountIdentifier];

  if (!associatedAccountServiceAccountIdentifier)
  {
    if ([v4 isPeerPaymentPass])
    {
      v6 = PKAnalyticsSubjectAppleCash;
      goto LABEL_13;
    }

    if (([v4 isIdentityPass] & 1) != 0 || (objc_msgSend(v4, "hasMerchantTokens") & 1) != 0 || !objc_msgSend(v4, "associatedAccountFeatureIdentifier") || objc_msgSend(v4, "supportsVirtualCardNumber"))
    {
      v6 = PKAnalyticsSubjectPassManagement;
      goto LABEL_13;
    }

LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ([v4 associatedAccountFeatureIdentifier] != 2)
  {
    goto LABEL_14;
  }

  v6 = PKAnalyticsSubjectAppleCardEngagement;
LABEL_13:
  v7 = *v6;
LABEL_15:

LABEL_16:

  return v7;
}

+ (id)subjectToReportDashboardAnalyticsForAccount:(id)account
{
  feature = [account feature];

  return [self subjectToReportDashboardAnalyticsForFeature:feature];
}

+ (id)subjectToReportDashboardAnalyticsForFeature:(unint64_t)feature
{
  if (feature == 2)
  {
    v4 = @"appleCardEngagement";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)reportDashboardEventIfNecessary:(id)necessary forPass:(id)pass
{
  necessaryCopy = necessary;
  if (necessaryCopy && pass)
  {
    v9 = necessaryCopy;
    v7 = [self subjectToReportDashboardAnalyticsForPass:pass];
    if (v7)
    {
      v8 = [v9 copy];
      [PKAnalyticsReporter subject:v7 sendEvent:v8];
    }

    necessaryCopy = v9;
  }
}

+ (void)reportAccountRewardsEventIfNecessary:(id)necessary
{
  if (necessary)
  {
    v3 = [necessary copy];
    [PKAnalyticsReporter subject:@"appleCardEngagement" sendEvent:v3];
  }
}

+ (id)pageTagForAppleCashSenderError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:@"PKDisplayableError"];

  if (v5)
  {
    userInfo = [errorCopy userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

    errorCopy = v7;
  }

  domain2 = [errorCopy domain];
  v9 = [domain2 isEqualToString:@"PKPeerPaymentWebServiceErrorDomain"];

  if (v9)
  {
    code = [errorCopy code];
    v11 = code - 113;
    if ((code - 40305) > 0x28)
    {
      goto LABEL_12;
    }

    if (((1 << v11) & 3) != 0)
    {
      v12 = @"exceededCumulativeLimit";
      goto LABEL_10;
    }

    if (((1 << v11) & 0x8000000040) != 0)
    {
      v12 = @"issuerDeclined";
      goto LABEL_10;
    }

    if (((1 << v11) & 0x10000100000) != 0)
    {
      v12 = @"restrictedFamilyOnly";
    }

    else
    {
LABEL_12:
      if (code == 40301)
      {
        v12 = @"insufficientFunds";
      }

      else
      {
        v12 = @"unexpectedCashError";
      }
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_10:

  return v12;
}

+ (void)reportAppleCashSenderErrorPage:(id)page
{
  v6[4] = *MEMORY[0x1E69E9840];
  pageCopy = page;
  if ([pageCopy length])
  {
    v5[0] = @"pageTag";
    v5[1] = @"p2pSide";
    v6[0] = pageCopy;
    v6[1] = @"sender";
    v5[2] = @"featureType";
    v5[3] = @"eventType";
    v6[2] = @"cash";
    v6[3] = @"error";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
    [PKAnalyticsReporter subject:@"p2p" sendEvent:v4];
  }
}

+ (void)reportAppleCashSenderErrorPage:(id)page buttonTag:(id)tag
{
  v9[5] = *MEMORY[0x1E69E9840];
  pageCopy = page;
  tagCopy = tag;
  if ([pageCopy length] && objc_msgSend(tagCopy, "length"))
  {
    v8[0] = @"pageTag";
    v8[1] = @"p2pSide";
    v9[0] = pageCopy;
    v9[1] = @"sender";
    v8[2] = @"featureType";
    v8[3] = @"eventType";
    v9[2] = @"cash";
    v9[3] = @"buttonTap";
    v8[4] = @"buttonTag";
    v9[4] = tagCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
    [PKAnalyticsReporter subject:@"p2p" sendEvent:v7];
  }
}

+ (void)reportAppleCashEvent:(id)event withMessagesContext:(id)context
{
  v5 = MEMORY[0x1E695DF90];
  contextCopy = context;
  v8 = [v5 dictionaryWithDictionary:event];
  [v8 setObject:contextCopy forKeyedSubscript:@"messagesContext"];

  v7 = [v8 copy];
  [PKAnalyticsReporter subject:@"p2p" sendEvent:v7];
}

+ (id)bucketValueForGroupSize:(unint64_t)size
{
  if (size - 21 >= 0xC)
  {
    v3 = 0;
  }

  else
  {
    v3 = @"21 - 32";
  }

  if (size - 13 >= 8)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"13 - 20";
  }

  if (size - 9 >= 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"9 - 12";
  }

  if (size - 7 >= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"7 - 8";
  }

  if (size - 5 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"5 - 6";
  }

  if (size - 3 >= 2)
  {
    return v7;
  }

  else
  {
    return @"3 - 4";
  }
}

+ (id)bucketValueForIneligibleCount:(unint64_t)count
{
  if (count - 13 >= 0x14)
  {
    v3 = 0;
  }

  else
  {
    v3 = @"13+";
  }

  if (count - 5 >= 8)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"5 - 12";
  }

  if (count - 1 >= 4)
  {
    return v4;
  }

  else
  {
    return @"1 - 4";
  }
}

+ (void)reportDTOAuthEvent:(id)event forSubject:(id)subject
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF90];
  subjectCopy = subject;
  eventCopy = event;
  v9 = [v6 alloc];
  v12[0] = @"eventType";
  v12[1] = @"pageTag";
  v13[0] = eventCopy;
  v13[1] = @"authentication";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11 = [v9 initWithDictionary:v10];

  [self _attachFeatureTypeToEvent:v11 forSubject:subjectCopy];
  [PKAnalyticsReporter subject:subjectCopy sendEvent:v11];
}

+ (void)reportDTOAuthEndedWithResult:(id)result error:(id)error forSubject:(id)subject
{
  resultCopy = result;
  errorCopy = error;
  subjectCopy = subject;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__PKAnalyticsReporter_LocalAuthentication__reportDTOAuthEndedWithResult_error_forSubject___block_invoke;
  v14[3] = &unk_1E79DBFE0;
  v15 = errorCopy;
  v16 = resultCopy;
  v17 = subjectCopy;
  selfCopy = self;
  v11 = subjectCopy;
  v12 = resultCopy;
  v13 = errorCopy;
  [self _isDTOPasscodeFallbackAllowed:v14];
}

void __90__PKAnalyticsReporter_LocalAuthentication__reportDTOAuthEndedWithResult_error_forSubject___block_invoke(uint64_t a1, void *a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v12[0] = @"authentication";
  v11[0] = @"pageTag";
  v11[1] = @"isDTOEnabled";
  v5 = [*(a1 + 56) _isDTOUserEnabled];
  v12[1] = v5;
  v11[2] = @"isDTOSupported";
  v6 = [*(a1 + 56) _isDTOSupported];
  v11[3] = @"isDTOPasscodeFallbackAllowed";
  v12[2] = v6;
  v12[3] = v3;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v8 = [v4 initWithDictionary:v7];

  if (*(a1 + 32))
  {
    v9 = [*(a1 + 56) _eventTypeFromError:?];
    if (![v9 length])
    {

      goto LABEL_7;
    }

    v10 = @"eventType";
  }

  else
  {
    [v8 setObject:@"authenticationSuccess" forKey:@"eventType"];
    v9 = [*(a1 + 56) _authMethodFromResult:*(a1 + 40)];
    v10 = @"localAuthenticationEventType";
  }

  [v8 setObject:v9 forKey:v10];

  [*(a1 + 56) _attachFeatureTypeToEvent:v8 forSubject:*(a1 + 48)];
  [PKAnalyticsReporter subject:*(a1 + 48) sendEvent:v8];
LABEL_7:
}

+ (void)_isDTOPasscodeFallbackAllowed:(id)allowed
{
  v11[2] = *MEMORY[0x1E69E9840];
  allowedCopy = allowed;
  if (allowedCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v10[0] = &unk_1F23B5360;
    v10[1] = &unk_1F23B5378;
    v11[0] = MEMORY[0x1E695E118];
    v11[1] = MEMORY[0x1E695E118];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__PKAnalyticsReporter_LocalAuthentication___isDTOPasscodeFallbackAllowed___block_invoke;
    v7[3] = &unk_1E79DC008;
    v8 = allowedCopy;
    selfCopy = self;
    [v5 evaluatePolicy:1025 options:v6 reply:v7];
  }
}

void __74__PKAnalyticsReporter_LocalAuthentication___isDTOPasscodeFallbackAllowed___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _stringFromBool:a3 == 0];
  (*(v3 + 16))(v3, v4);
}

+ (id)_isDTOSupported
{
  mEMORY[0x1E696EE70] = [MEMORY[0x1E696EE70] sharedInstance];
  isFeatureSupported = [mEMORY[0x1E696EE70] isFeatureSupported];

  return [self _stringFromBool:isFeatureSupported];
}

+ (id)_isDTOUserEnabled
{
  mEMORY[0x1E696EE70] = [MEMORY[0x1E696EE70] sharedInstance];
  isFeatureEnabled = [mEMORY[0x1E696EE70] isFeatureEnabled];

  return [self _stringFromBool:isFeatureEnabled];
}

+ (id)_eventTypeFromError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x1E696EE30]];

  if (v5)
  {
    code = [errorCopy code];
    v7 = @"authenticationError";
    if (code != -1)
    {
      v7 = 0;
    }

    if (code == -2)
    {
      v8 = @"authenticationCanceledByUser";
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_authMethodFromResult:(id)result
{
  resultCopy = result;
  v4 = [resultCopy objectForKey:&unk_1F23B5390];

  if (v4)
  {
    v5 = @"authenticationMethodBiometric";
  }

  else
  {
    v6 = [resultCopy objectForKey:&unk_1F23B53A8];

    if (v6)
    {
      v5 = @"authenticationMethodPasscode";
    }

    else
    {
      v5 = @"authenticationMethodOther";
    }
  }

  return v5;
}

+ (id)_stringFromBool:(BOOL)bool
{
  if (bool)
  {
    return @"true";
  }

  else
  {
    return @"false";
  }
}

+ (void)_attachFeatureTypeToEvent:(id)event forSubject:(id)subject
{
  eventCopy = event;
  subjectCopy = subject;
  v6 = subjectCopy;
  if (@"p2p" == subjectCopy)
  {

    goto LABEL_7;
  }

  if (!subjectCopy || !@"p2p")
  {

    goto LABEL_9;
  }

  v7 = [(__CFString *)subjectCopy isEqualToString:@"p2p"];

  if (v7)
  {
LABEL_7:
    [eventCopy setObject:@"cash" forKey:@"featureType"];
  }

LABEL_9:
}

+ (void)reportCampaignIdentifier:(id)identifier eventType:(int64_t)type referralSource:(int64_t)source deepLinkType:(int64_t)linkType productType:(int64_t)productType
{
  if (identifier)
  {
    identifierCopy = identifier;
    v12 = [PKAnalyticsReporter reporterForSubject:@"attribution"];

    if (!v12)
    {
      [PKAnalyticsReporter beginSubjectReporting:@"attribution"];
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v18 setObject:identifierCopy forKey:@"campaignID"];

    v13 = [MEMORY[0x1E695DF00] now];
    v14 = PKDateIgnoringSmallerUnitsWithTimeZone(v13, 16, 0);

    v15 = PKPaymentDateFormatter();
    v16 = [v15 stringFromDate:v14];
    [v18 setObject:v16 forKey:@"eventDate"];

    if (type <= 2)
    {
      [v18 setObject:off_1E79DC160[type] forKey:@"eventType"];
    }

    if ((source - 1) <= 3)
    {
      [v18 setObject:off_1E79DC178[source - 1] forKey:@"referralSource"];
    }

    if ((linkType - 1) <= 2)
    {
      [v18 setObject:off_1E79DC198[linkType - 1] forKey:@"deepLinkType"];
    }

    if ((productType - 1) <= 5)
    {
      [v18 setObject:off_1E79DC1B0[productType - 1] forKey:@"productType"];
    }

    v17 = +[PKCampaignAttributionSessionManager sessionID];
    [v18 setObject:v17 forKey:@"campaignSessionID"];

    [PKAnalyticsReporter subject:@"attribution" sendEvent:v18];
  }
}

+ (id)reporterForSubject:(id)subject
{
  subjectCopy = subject;
  os_unfair_lock_lock(&lockCollections);
  v4 = +[PKAnalyticsReporter subjectDictionary];
  v5 = [v4 objectForKey:subjectCopy];

  os_unfair_lock_unlock(&lockCollections);

  return v5;
}

+ (void)beginSubjectReporting:(id)reporting
{
  v18[1] = *MEMORY[0x1E69E9840];
  reportingCopy = reporting;
  v4 = [[PKAnalyticsReporter alloc] initWithSubject:reportingCopy];
  os_unfair_lock_lock(&lockCollections);
  v5 = +[PKAnalyticsReporter subjectDictionary];
  v6 = +[PKAnalyticsReporter subjectSessionStateDateDictionary];
  v7 = [v5 objectForKey:reportingCopy];
  v8 = [v6 objectForKey:reportingCopy];
  if (!v8)
  {
    date = [MEMORY[0x1E695DF00] date];
    [v6 setObject:date forKey:reportingCopy];
  }

  [v5 setObject:v4 forKey:reportingCopy];
  os_unfair_lock_unlock(&lockCollections);
  if (v7)
  {
    v17 = @"eventType";
    v18[0] = @"reporterCollision";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v7 sendEvent:v10];
  }

  v11 = reportingCopy;
  v12 = v11;
  if (v11 == @"appleCardEngagement" || v11 && (v13 = [(__CFString *)v11 isEqualToString:@"appleCardEngagement"], v12, v13))
  {
    v15[0] = @"eventType";
    v15[1] = @"dnuIsEnabled";
    v16[0] = @"reportDNUState";
    v16[1] = @"false";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [PKAnalyticsReporter subject:v12 sendEvent:v14];
  }
}

+ (void)beginSubjectReporting:(id)reporting withArchivedParent:(id)parent
{
  v19 = *MEMORY[0x1E69E9840];
  reportingCopy = reporting;
  parentCopy = parent;
  v7 = [[PKAnalyticsReporter alloc] initWithArchivedParent:parentCopy subject:reportingCopy];

  os_unfair_lock_lock(&lockCollections);
  v8 = +[PKAnalyticsReporter subjectDictionary];
  v9 = [v8 objectForKey:reportingCopy];
  [v8 setObject:v7 forKey:reportingCopy];
  v10 = +[PKAnalyticsReporter subjectSessionStateDateDictionary];
  v11 = [v10 objectForKey:reportingCopy];
  if (!v11)
  {
    date = [MEMORY[0x1E695DF00] date];
    [v10 setObject:date forKey:reportingCopy];
  }

  os_unfair_lock_unlock(&lockCollections);
  if (v9)
  {
    v13 = PKLogFacilityTypeGetObject(0x16uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = reportingCopy;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Conflicting reporter found for subject: %@", buf, 0xCu);
    }

    v15 = @"eventType";
    v16 = @"reporterCollision";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v9 sendEvent:v14];
  }
}

+ (void)endSubjectReporting:(id)reporting
{
  v14 = *MEMORY[0x1E69E9840];
  reportingCopy = reporting;
  os_unfair_lock_lock(&lockCollections);
  v4 = +[PKAnalyticsReporter subjectDictionary];
  v5 = [v4 objectForKey:reportingCopy];

  v6 = PKLogFacilityTypeGetObject(0x16uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _reportingSessionID = [v5 _reportingSessionID];
    v10 = 138412546;
    v11 = reportingCopy;
    v12 = 2112;
    v13 = _reportingSessionID;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Terminating RTC reporting for subject: %@ session ID: %@", &v10, 0x16u);
  }

  v8 = +[PKAnalyticsReporter subjectDictionary];
  [v8 removeObjectForKey:reportingCopy];

  v9 = +[PKAnalyticsReporter subjectSessionStateDateDictionary];
  [v9 removeObjectForKey:reportingCopy];

  os_unfair_lock_unlock(&lockCollections);
}

+ (void)subject:(id)subject category:(int64_t)category sendEvent:(id)event
{
  eventCopy = event;
  v9 = [self reporterForSubject:subject];
  [v9 sendEvent:eventCopy withCategory:category];
}

+ (void)subjects:(id)subjects category:(int64_t)category sendEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  subjectsCopy = subjects;
  eventCopy = event;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [subjectsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(subjectsCopy);
        }

        v14 = [self reporterForSubject:*(*(&v15 + 1) + 8 * v13)];
        [v14 sendEvent:eventCopy withCategory:category];

        ++v13;
      }

      while (v11 != v13);
      v11 = [subjectsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

+ (int)clientTypeForSubject:(id)subject
{
  v3 = _MergedGlobals_252;
  subjectCopy = subject;
  if (v3 != -1)
  {
    dispatch_once(&_MergedGlobals_252, &__block_literal_global_169);
  }

  v5 = [qword_1ED6D1F68 containsObject:subjectCopy];

  if (v5)
  {
    return 31;
  }

  else
  {
    return 55;
  }
}

void __44__PKAnalyticsReporter_clientTypeForSubject___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"wallet", @"fieldDetect", @"contactless", @"inApp", @"inAppProvisioning", @"appleCardEngagement", @"secureUIService", @"bridge", @"discoveryCard", @"appleCardOnboarding", @"fhOnboarding", @"appleCashOnboarding", @"shareInitiation", @"shareRedemption", @"passManagement", @"identityInApp", @"walletProvisioning", @"orderManagement", @"walletGeolocation", @"walletSettings", @"expressPresentment", @"general", @"tapToPay", @"identity", 0}];
  v1 = qword_1ED6D1F68;
  qword_1ED6D1F68 = v0;
}

+ (void)sendSingularEvent:(id)event
{
  v25[5] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AAE8];
  eventCopy = event;
  mainBundle = [v4 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = bundleIdentifier;
  v9 = &stru_1F227FD28;
  if (bundleIdentifier)
  {
    v9 = bundleIdentifier;
  }

  v10 = v9;

  v24[0] = *MEMORY[0x1E69C6AB0];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(self, "clientTypeForSubject:", @"general"}];
  v12 = *MEMORY[0x1E69C6AB8];
  v25[0] = v11;
  v25[1] = &unk_1F23B6E90;
  v13 = *MEMORY[0x1E69C6AA8];
  v24[1] = v12;
  v24[2] = v13;
  v14 = *MEMORY[0x1E69C6AD8];
  v25[2] = v10;
  v25[3] = &unk_1F23B53D8;
  v15 = *MEMORY[0x1E69C6AA0];
  v24[3] = v14;
  v24[4] = v15;
  v25[4] = MEMORY[0x1E695E118];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];

  v17 = *MEMORY[0x1E69C6AE8];
  v22[0] = *MEMORY[0x1E69C6AE0];
  v22[1] = v17;
  v23[0] = @"wallet";
  v23[1] = @"general";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v19 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPassKitErrorDomain" code:0 userInfo:0];
  v21 = v19;
  [MEMORY[0x1E69C6A80] sendOneMessageWithSessionInfo:v16 userInfo:v18 category:1 type:100 payload:eventCopy error:&v21];

  v20 = v21;
}

+ (id)archivedSessionTokenForSubject:(id)subject
{
  v3 = [PKAnalyticsReporter reporterForSubject:subject];
  archivedSessionToken = [v3 archivedSessionToken];

  return archivedSessionToken;
}

+ (id)analyticsErrorTextForError:(int64_t)error
{
  if (error <= 60001)
  {
    if (error > 40455)
    {
      if (error == 40456)
      {
        return @"invalidVerificationCode";
      }

      if (error == 40457)
      {
        return @"expiredVerificationCode";
      }
    }

    else
    {
      if (error == 40423)
      {
        return @"verificationRequestLimitReached";
      }

      if (error == 40454)
      {
        return @"verificationAttemptLimitReached";
      }
    }

    return @"invalidUndefinedField";
  }

  else
  {
    result = @"invalidFirstName";
    switch(error)
    {
      case 60039:
        return result;
      case 60040:
        return @"invalidLastName";
      case 60041:
        return @"invalidDateOfBirth";
      case 60042:
        return @"POBoxNotAllowed";
      case 60043:
        return @"invalidStreet1";
      case 60044:
        return @"invalidStreet2";
      case 60045:
        return @"invalidPhoneNumber";
      case 60046:
        return @"invalidIncome";
      case 60047:
        return @"invalidCitizenship";
      case 60048:
        return @"invalidSSNSuffix";
      case 60049:
        return @"invalidSSN";
      case 60050:
        return @"invalidPostalCode";
      case 60051:
      case 60054:
      case 60055:
      case 60057:
      case 60058:
      case 60059:
      case 60060:
      case 60061:
      case 60062:
      case 60063:
      case 60064:
      case 60065:
      case 60066:
      case 60067:
      case 60068:
        return @"invalidUndefinedField";
      case 60052:
        return @"invalidCity";
      case 60053:
        return @"invalidState";
      case 60056:
        return @"invalidRegion";
      case 60069:
        return @"invalidTotalIncome";
      case 60070:
        return @"invalidTotalAssets";
      default:
        if (error == 60002)
        {
          result = @"minimumAgeRequirementsNotMet";
        }

        else
        {
          if (error != 60092)
          {
            return @"invalidUndefinedField";
          }

          result = @"verificationAlreadyCompleted";
        }

        break;
    }
  }

  return result;
}

- (PKAnalyticsReporter)initWithParent:(id)parent subject:(id)subject
{
  if (parent)
  {
    parent = *(parent + 3);
  }

  return [(PKAnalyticsReporter *)self initWithParentToken:parent subject:subject];
}

- (PKAnalyticsReporter)initWithParentToken:(id)token subject:(id)subject
{
  v41 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  subjectCopy = subject;
  v34.receiver = self;
  v34.super_class = PKAnalyticsReporter;
  v8 = [(PKAnalyticsReporter *)&v34 init];
  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject(0x16uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = subjectCopy;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Initiating RTC reporting for subject: %@", buf, 0xCu);
    }

    v8->_lockArchive._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_subject, subject);
    v10 = [MEMORY[0x1E69C6A80] newHierarchyTokenFromParentToken:tokenCopy];
    sessionToken = v8->_sessionToken;
    v8->_sessionToken = v10;

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v14 = bundleIdentifier;
    v15 = &stru_1F227FD28;
    if (bundleIdentifier)
    {
      v15 = bundleIdentifier;
    }

    v16 = v15;

    v37[0] = *MEMORY[0x1E69C6AB0];
    v17 = [MEMORY[0x1E696AD98] numberWithInt:{+[PKAnalyticsReporter clientTypeForSubject:](PKAnalyticsReporter, "clientTypeForSubject:", subjectCopy)}];
    v18 = *MEMORY[0x1E69C6AB8];
    v38[0] = v17;
    v38[1] = &unk_1F23B6E90;
    v19 = *MEMORY[0x1E69C6AA8];
    v37[1] = v18;
    v37[2] = v19;
    v20 = *MEMORY[0x1E69C6AD8];
    v38[2] = v16;
    v38[3] = &unk_1F23B53D8;
    v21 = *MEMORY[0x1E69C6AA0];
    v37[3] = v20;
    v37[4] = v21;
    v38[4] = MEMORY[0x1E695E118];
    v37[5] = *MEMORY[0x1E69C6AC8];
    v38[5] = v8->_sessionToken;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:6];

    v23 = *MEMORY[0x1E69C6AE8];
    v35[0] = *MEMORY[0x1E69C6AE0];
    v35[1] = v23;
    v36[0] = @"wallet";
    v36[1] = subjectCopy;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v25 = objc_alloc(MEMORY[0x1E69C6A80]);
    v26 = [v25 initWithSessionInfo:v22 userInfo:v24 frameworksToCheck:MEMORY[0x1E695E0F0]];
    session = v8->_session;
    v8->_session = v26;

    objc_initWeak(buf, v8->_session);
    v28 = v8->_session;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __51__PKAnalyticsReporter_initWithParentToken_subject___block_invoke;
    v30[3] = &unk_1E79DC690;
    objc_copyWeak(&v33, buf);
    v31 = subjectCopy;
    v32 = v8;
    [(RTCReporting *)v28 startConfigurationWithCompletionHandler:v30];

    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

  return v8;
}

void __51__PKAnalyticsReporter_initWithParentToken_subject___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = PKLogFacilityTypeGetObject(0x16uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [WeakRetained getReportingSessionID];
    v8 = *(*(a1 + 40) + 24);
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "RTC reporting for subject: %@ initiated with session ID: %@ and session token: %@", &v9, 0x20u);
  }

  if (!a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "No RTC backends found, no logs will be sent at this time.", &v9, 2u);
    }
  }
}

- (PKAnalyticsReporter)initWithArchivedParent:(id)parent subject:(id)subject
{
  v22 = *MEMORY[0x1E69E9840];
  subjectCopy = subject;
  v7 = MEMORY[0x1E695DFD8];
  parentCopy = parent;
  v9 = [v7 alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 initWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v19 = 0;
  v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v13 fromData:parentCopy error:&v19];

  v15 = v19;
  if (v15)
  {
    v16 = PKLogFacilityTypeGetObject(0x16uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Failed to unarchive parent token with error %@", buf, 0xCu);
    }
  }

  v17 = [(PKAnalyticsReporter *)self initWithParentToken:v14 subject:subjectCopy];

  return v17;
}

- (id)archivedSessionToken
{
  os_unfair_lock_lock(&self->_lockArchive);
  if (!self->_archivedSessionToken)
  {
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_sessionToken requiringSecureCoding:1 error:0];
    archivedSessionToken = self->_archivedSessionToken;
    self->_archivedSessionToken = v3;
  }

  os_unfair_lock_unlock(&self->_lockArchive);
  v5 = self->_archivedSessionToken;

  return v5;
}

- (void)sendEvent:(id)event withCategory:(int64_t)category
{
  v91[3] = *MEMORY[0x1E69E9840];
  v6 = [event mutableCopy];
  v7 = self->_subject;
  if (v7 == @"appleCardEngagement"
    || (v8 = v7) != 0 && (v9 = [(__CFString *)v7 isEqualToString:@"appleCardEngagement"], v8, (v9 & 1) != 0)
    || (v10 = self->_subject, v10 == @"appleCardOnboarding")
    || (v11 = v10) != 0 && (v12 = [(__CFString *)v10 isEqualToString:@"appleCardOnboarding"], v11, (v12 & 1) != 0)
    || (v13 = self->_subject, v13 == @"fhOnboarding")
    || (v14 = v13) != 0 && (v15 = [(__CFString *)v13 isEqualToString:@"fhOnboarding"], v14, (v15 & 1) != 0)
    || (v16 = self->_subject, v16 == @"shareInitiation")
    || (v17 = v16) != 0 && (v18 = [(__CFString *)v16 isEqualToString:@"shareInitiation"], v17, (v18 & 1) != 0)
    || (v19 = self->_subject, v19 == @"shareRedemption")
    || (v20 = v19) != 0 && (v21 = [(__CFString *)v19 isEqualToString:@"shareRedemption"], v20, (v21 & 1) != 0)
    || (v22 = self->_subject, v22 == @"orderManagement")
    || (v23 = v22) != 0 && (v24 = [(__CFString *)v22 isEqualToString:@"orderManagement"], v23, (v24 & 1) != 0)
    || (v25 = self->_subject, v25 == @"passManagement")
    || (v26 = v25) != 0 && (v27 = [(__CFString *)v25 isEqualToString:@"passManagement"], v26, (v27 & 1) != 0)
    || (v28 = self->_subject, v28 == @"identityInApp")
    || (v29 = v28) != 0 && (v30 = [(__CFString *)v28 isEqualToString:@"identityInApp"], v29, (v30 & 1) != 0)
    || (v31 = self->_subject, v31 == @"accessProvisioning")
    || (v32 = v31) != 0 && (v33 = [(__CFString *)v31 isEqualToString:@"accessProvisioning"], v32, (v33 & 1) != 0)
    || (v34 = self->_subject, v34 == @"expressPresentment")
    || (v35 = v34) != 0 && (v36 = [(__CFString *)v34 isEqualToString:@"expressPresentment"], v35, (v36 & 1) != 0)
    || (v37 = self->_subject, v37 == @"inApp")
    || (v38 = v37) != 0 && (v39 = [(__CFString *)v37 isEqualToString:@"inApp"], v38, (v39 & 1) != 0)
    || (v40 = self->_subject, v40 == @"vasPasses")
    || (v41 = v40) != 0 && (v42 = [(__CFString *)v40 isEqualToString:@"vasPasses"], v41, (v42 & 1) != 0)
    || (v43 = self->_subject, v43 == @"walletProvisioning")
    || (v44 = v43) != 0 && (v45 = [(__CFString *)v43 isEqualToString:@"walletProvisioning"], v44, (v45 & 1) != 0)
    || (v46 = self->_subject, v46 == @"marketingProvisioning")
    || (v47 = v46) != 0 && (v48 = [(__CFString *)v46 isEqualToString:@"marketingProvisioning"], v47, (v48 & 1) != 0)
    || (v49 = self->_subject, v49 == @"p2p")
    || (v50 = v49) != 0 && (v51 = [(__CFString *)v49 isEqualToString:@"p2p"], v50, (v51 & 1) != 0)
    || (v52 = self->_subject, v52 == @"contactless")
    || (v53 = v52) != 0 && (v54 = [(__CFString *)v52 isEqualToString:@"contactless"], v53, (v54 & 1) != 0)
    || (v55 = self->_subject, v55 == @"financeKitSetup")
    || (v56 = v55) != 0 && (v57 = [(__CFString *)v55 isEqualToString:@"financeKitSetup"], v56, (v57 & 1) != 0)
    || (v58 = self->_subject, v58 == @"financeKitTransactionPicker"))
  {
LABEL_55:
    date = [MEMORY[0x1E695DF00] date];
    v62 = PKDateIgnoringSmallerUnitsWithTimeZone(date, 16, 0);

    v63 = MEMORY[0x1E696AD98];
    [v62 timeIntervalSince1970];
    v64 = [v63 numberWithDouble:?];
    [v6 setObject:v64 forKey:@"roundedClientTS"];

    v60 = 1;
    goto LABEL_56;
  }

  v59 = v58;
  if (v58)
  {
    v60 = [(__CFString *)v58 isEqualToString:@"financeKitTransactionPicker"];

    if (!v60)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v60 = 0;
LABEL_56:
  v65 = PKCurrentRegion();
  if (v65)
  {
    [v6 setObject:v65 forKey:@"Locale"];
  }

  if (v60)
  {
    os_unfair_lock_lock(&lockCollections);
    v66 = +[PKAnalyticsReporter subjectSessionStateDateDictionary];
    v67 = [v66 objectForKey:self->_subject];
    if (v67)
    {
      os_unfair_lock_unlock(&lockCollections);
      date2 = [MEMORY[0x1E695DF00] date];
      [date2 timeIntervalSinceDate:v67];
      v70 = llround(v69);
      v71 = (v69 * 1000.0);
    }

    else
    {
      v72 = PKLogFacilityTypeGetObject(0x16uLL);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        subject = self->_subject;
        *buf = 138412290;
        v87 = subject;
        _os_log_impl(&dword_1AD337000, v72, OS_LOG_TYPE_DEFAULT, "Error: There is no analytics start date for subject: %@", buf, 0xCu);
      }

      os_unfair_lock_unlock(&lockCollections);
      v71 = 0;
      v70 = 0;
    }

    v74 = self->_subject;
    if (v74 == @"p2p" || (v75 = v74) != 0 && (v76 = [(__CFString *)v74 isEqualToString:@"p2p"], v75, v76))
    {
      [(PKAnalyticsReporter *)self clampSessionDurationFromMilliseconds:v71];
      v78 = [objc_alloc(MEMORY[0x1E696AB90]) initWithDouble:v77];
    }

    else
    {
      v78 = [MEMORY[0x1E696AD98] numberWithInteger:v70];
    }

    [v6 setObject:v78 forKey:@"sessionDuration"];
  }

  v79 = [v6 copy];
  v90[0] = *MEMORY[0x1E69C6A88];
  v80 = [MEMORY[0x1E696AD98] numberWithInteger:category];
  v81 = *MEMORY[0x1E69C6A98];
  v91[0] = v80;
  v91[1] = &unk_1F23B53F0;
  v82 = *MEMORY[0x1E69C6A90];
  v90[1] = v81;
  v90[2] = v82;
  v91[2] = v79;
  v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:3];

  [(RTCReporting *)self->_session sendMessageWithDictionary:v83 error:0];
  v84 = PKLogFacilityTypeGetObject(0x16uLL);
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    v85 = self->_subject;
    *buf = 138412546;
    v87 = v85;
    v88 = 2112;
    v89 = v79;
    _os_log_impl(&dword_1AD337000, v84, OS_LOG_TYPE_DEFAULT, "subject: %@ event: %@", buf, 0x16u);
  }
}

- (double)clampSessionDurationFromMilliseconds:(int64_t)milliseconds
{
  if (milliseconds <= 120000)
  {
    return round(milliseconds / 500.0) * 0.5;
  }

  else
  {
    return 120.0;
  }
}

@end