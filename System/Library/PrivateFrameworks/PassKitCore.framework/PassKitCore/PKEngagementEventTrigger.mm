@interface PKEngagementEventTrigger
+ (BOOL)fireEngagementEventNamed:(id)named;
+ (id)eventWithType:(id)type eventDetails:(id)details;
+ (id)metrics;
+ (void)_fireEventType:(id)type eventDetails:(id)details;
+ (void)fireAppleAccountCardTopUpEventWithSubtype:(int64_t)subtype;
@end

@implementation PKEngagementEventTrigger

+ (BOOL)fireEngagementEventNamed:(id)named
{
  v94 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  v5 = PKLogFacilityTypeGetObject(0x11uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v92 = 138543362;
    v93 = namedCopy;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "will fire %{public}@ engagement event via command line", &v92, 0xCu);
  }

  v6 = namedCopy;
  v7 = v6;
  if (v6 == @"wallet:passAdded")
  {
    goto LABEL_6;
  }

  if (!v6)
  {
LABEL_89:
    v9 = 0;
    goto LABEL_90;
  }

  v8 = [(__CFString *)v6 isEqualToString:@"wallet:passAdded"];

  if (!v8)
  {
    v10 = v7;
    if (v10 == @"wallet:passRemoved" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"wallet:passRemoved"], v11, v12))
    {
      [self firePassRemovedEvent];
      goto LABEL_7;
    }

    v13 = v11;
    if (v13 == @"wallet:expressPassInfoChanged" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"wallet:expressPassInfoChanged"], v14, v15))
    {
      [self fireExpressPassInfoChangedEvent];
      goto LABEL_7;
    }

    v16 = v14;
    if (v16 == @"wallet:locationChanged" || (v17 = v16, v18 = [(__CFString *)v16 isEqualToString:@"wallet:locationChanged"], v17, v18))
    {
      [self fireLocationChangedEvent];
      goto LABEL_7;
    }

    v19 = v17;
    if (v19 == @"wallet:accountAdded" || (v20 = v19, v21 = [(__CFString *)v19 isEqualToString:@"wallet:accountAdded"], v20, v21))
    {
      [self fireAccountAddedEvent];
      goto LABEL_7;
    }

    v22 = v20;
    if (v22 == @"wallet:accountUpdated" || (v23 = v22, v24 = [(__CFString *)v22 isEqualToString:@"wallet:accountUpdated"], v23, v24))
    {
      [self fireAccountUpdatedEvent];
      goto LABEL_7;
    }

    v25 = v23;
    if (v25 == @"wallet:accountRemoved" || (v26 = v25, v27 = [(__CFString *)v25 isEqualToString:@"wallet:accountRemoved"], v26, v27))
    {
      [self fireAccountRemovedEvent];
      goto LABEL_7;
    }

    v28 = v26;
    if (v28 == @"wallet:peerPaymentAccountUpdated" || (v29 = v28, v30 = [(__CFString *)v28 isEqualToString:@"wallet:peerPaymentAccountUpdated"], v29, v30))
    {
      [self firePeerPaymentAccountUpdatedEvent];
      goto LABEL_7;
    }

    v31 = v29;
    if (v31 == @"wallet:featureApplicationAdded" || (v32 = v31, v33 = [(__CFString *)v31 isEqualToString:@"wallet:featureApplicationAdded"], v32, v33))
    {
      [self fireFeatureApplicationAddedEvent];
      goto LABEL_7;
    }

    v34 = v32;
    if (v34 == @"wallet:featureApplicationRemoved" || (v35 = v34, v36 = [(__CFString *)v34 isEqualToString:@"wallet:featureApplicationRemoved"], v35, v36))
    {
      [self fireFeatureApplicationRemovedEvent];
      goto LABEL_7;
    }

    v37 = v35;
    if (v37 == @"wallet:featureApplicationUpdated" || (v38 = v37, v39 = [(__CFString *)v37 isEqualToString:@"wallet:featureApplicationUpdated"], v38, v39))
    {
      [self fireFeatureApplicationUpdatedEvent];
      goto LABEL_7;
    }

    v40 = v38;
    if (v40 == @"wallet:DCINotificationForMarketAdded" || (v41 = v40, v42 = [(__CFString *)v40 isEqualToString:@"wallet:DCINotificationForMarketAdded"], v41, v42))
    {
      [self fireDCINotificationForMarketAddedEvent];
      goto LABEL_7;
    }

    v43 = v41;
    if (v43 == @"wallet:openLoopUpgradeNotificationForMarketAdded" || (v44 = v43, v45 = [(__CFString *)v43 isEqualToString:@"wallet:openLoopUpgradeNotificationForMarketAdded"], v44, v45))
    {
      [self fireOpenLoopUpgradeNotificationForMarketAddedEvent];
      goto LABEL_7;
    }

    v46 = v44;
    if (v46 == @"wallet:renotifyNotificationForMaketAdded" || (v47 = v46, v48 = [(__CFString *)v46 isEqualToString:@"wallet:renotifyNotificationForMaketAdded"], v47, v48))
    {
      [self fireRenotifyNotificationForMarketAddedEvent];
      goto LABEL_7;
    }

    v49 = v47;
    if (v49 == @"wallet:transactionsUpdated" || (v50 = v49, v51 = [(__CFString *)v49 isEqualToString:@"wallet:transactionsUpdated"], v50, v51))
    {
      [self fireTransactionsUpdatedEvent];
      goto LABEL_7;
    }

    v52 = v50;
    if (v52 == @"wallet:familyCircleChanged" || (v53 = v52, v54 = [(__CFString *)v52 isEqualToString:@"wallet:familyCircleChanged"], v53, v54))
    {
      [self fireFamilyCircleChangedEvent];
      goto LABEL_7;
    }

    v55 = v53;
    if (v55 == @"wallet:currentLocaleChanged" || (v56 = v55, v57 = [(__CFString *)v55 isEqualToString:@"wallet:currentLocaleChanged"], v56, v57))
    {
      [self fireCurrentLocaleChangedEvent];
      goto LABEL_7;
    }

    v58 = v56;
    if (v58 == @"wallet:applePayContextChanged" || (v59 = v58, v60 = [(__CFString *)v58 isEqualToString:@"wallet:applePayContextChanged"], v59, v60))
    {
      [self fireApplePayContextChangedEvent];
      goto LABEL_7;
    }

    v61 = v59;
    if (v61 == @"wallet:dayChanged" || (v62 = v61, v63 = [(__CFString *)v61 isEqualToString:@"wallet:dayChanged"], v62, v63))
    {
      [self fireDayChangedEvent];
      goto LABEL_7;
    }

    v64 = v62;
    if (v64 == @"wallet:scheduledPaymentsChanged" || (v65 = v64, v66 = [(__CFString *)v64 isEqualToString:@"wallet:scheduledPaymentsChanged"], v65, v66))
    {
      [self fireScheduledPaymentsChangedEvent];
      goto LABEL_7;
    }

    v67 = v65;
    if (v67 == @"wallet:defaultCreditAccountCreditLimitIncreased" || (v68 = v67, v69 = [(__CFString *)v67 isEqualToString:@"wallet:defaultCreditAccountCreditLimitIncreased"], v68, v69))
    {
      [self fireDefaultCreditAccountCreditLimitIncreasedEvent];
      goto LABEL_7;
    }

    v70 = v68;
    if (v70 == @"wallet:defaultCreditAccountBalancePaidInFull" || (v71 = v70, v72 = [(__CFString *)v70 isEqualToString:@"wallet:defaultCreditAccountBalancePaidInFull"], v71, v72))
    {
      [self fireDefaultCreditAccountBalancePaidInFullEvent];
      goto LABEL_7;
    }

    v73 = v71;
    if (v73 == @"wallet:defaultCreditAccountBonusDailyCashReceived" || (v74 = v73, v75 = [(__CFString *)v73 isEqualToString:@"wallet:defaultCreditAccountBonusDailyCashReceived"], v74, v75))
    {
      [self fireDefaultCreditAccountReceivedBonusDailyCashEvent];
      goto LABEL_7;
    }

    v76 = v74;
    if (v76 == @"wallet:defaultCreditAccountPurchaseMissedApplePayMerchantRewards" || (v77 = v76, v78 = [(__CFString *)v76 isEqualToString:@"wallet:defaultCreditAccountPurchaseMissedApplePayMerchantRewards"], v77, v78))
    {
      [self fireDefaultCreditAccountPurchaseMissedApplePayMerchantRewardsEvent];
      goto LABEL_7;
    }

    v79 = v77;
    if (v79 == @"wallet:appleAccountInStoreTopUp" || (v80 = v79, v81 = [(__CFString *)v79 isEqualToString:@"wallet:appleAccountInStoreTopUp"], v80, v81))
    {
      [self fireAppleAccountInStoreTopUpEvent];
      goto LABEL_7;
    }

    v82 = v80;
    if (v82 == @"wallet:appleAccountCardTopUp" || (v83 = v82, v84 = [(__CFString *)v82 isEqualToString:@"wallet:appleAccountCardTopUp"], v83, v84))
    {
      [self fireAppleAccountCardTopUpEventWithSubtype:5];
      goto LABEL_7;
    }

    v85 = v83;
    if (v85 == @"wallet:issuerMessagingFlagsChanged" || (v86 = v85, v87 = [(__CFString *)v85 isEqualToString:@"wallet:issuerMessagingFlagsChanged"], v86, v87))
    {
      [self fireIssuerMessagingFlagsChangedEvent];
      goto LABEL_7;
    }

    v88 = v86;
    if (v88 == @"wallet:defaultCreditAccountPropensityRankUpdated" || (v89 = v88, v90 = [(__CFString *)v88 isEqualToString:@"wallet:defaultCreditAccountPropensityRankUpdated"], v89, v90))
    {
      [self fireDefaultCreditAccountPropensityRankUpdatedEvent];
      goto LABEL_7;
    }

    goto LABEL_89;
  }

LABEL_6:
  [self firePassAddedEvent];
LABEL_7:
  v9 = 1;
LABEL_90:

  return v9;
}

+ (void)fireAppleAccountCardTopUpEventWithSubtype:(int64_t)subtype
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"type";
  v4 = PKPaymentTransactionTopUpSubtypeToString(subtype);
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self _fireEventType:@"wallet:appleAccountCardTopUp" eventDetails:v5];
}

+ (void)_fireEventType:(id)type eventDetails:(id)details
{
  v15 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  detailsCopy = details;
  v8 = PKLogFacilityTypeGetObject(0x11uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = typeCopy;
    v13 = 2112;
    v14 = detailsCopy;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "firing %@ engagement event with eventDetails %@", &v11, 0x16u);
  }

  metrics = [self metrics];
  v10 = [self eventWithType:typeCopy eventDetails:detailsCopy];
  [metrics enqueueEvent:v10];
}

+ (id)eventWithType:(id)type eventDetails:(id)details
{
  detailsCopy = details;
  v6 = MEMORY[0x1E698CA08];
  typeCopy = type;
  initForEngagement = [[v6 alloc] initForEngagement];
  [initForEngagement setEventType:typeCopy];

  if (detailsCopy)
  {
    [initForEngagement addPropertiesWithDictionary:detailsCopy];
  }

  return initForEngagement;
}

+ (id)metrics
{
  v2 = MEMORY[0x1E698C7D8];
  bagSubProfile = [MEMORY[0x1E698C9E0] bagSubProfile];
  bagSubProfileVersion = [MEMORY[0x1E698C9E0] bagSubProfileVersion];
  v5 = [v2 bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  v6 = [objc_alloc(MEMORY[0x1E698CA00]) initWithContainerID:@"com.apple.passbook" bag:v5];

  return v6;
}

@end