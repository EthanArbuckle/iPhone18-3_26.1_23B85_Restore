@interface IMDOffGridAvailabilityVerificationManager
+ (id)sharedInstance;
- (IMDOffGridAvailabilityVerificationManager)init;
- (id)cachedAvailabilityTokensForHandleID:(id)d;
- (void)populateCacheForHandleID:(id)d;
- (void)verifyOffGridSubscriptionMatchesSubscriptionValidationToken:(id)token encryptionValidationToken:(id)validationToken receivedByHandleID:(id)d fromHandleID:(id)iD messageDate:(id)date;
@end

@implementation IMDOffGridAvailabilityVerificationManager

+ (id)sharedInstance
{
  if (qword_2814210B0 != -1)
  {
    sub_22B7D2C28();
  }

  v3 = qword_281420F30;

  return v3;
}

- (IMDOffGridAvailabilityVerificationManager)init
{
  v11.receiver = self;
  v11.super_class = IMDOffGridAvailabilityVerificationManager;
  v2 = [(IMDOffGridAvailabilityVerificationManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create("com.apple.Messages.IMDOffGridAvailabilityVerificationManager", v3);
    privateWorkQueue = v2->_privateWorkQueue;
    v2->_privateWorkQueue = v4;

    v6 = [objc_alloc(MEMORY[0x231897B40](@"SKStatusSubscriptionService" @"StatusKit"))];
    offGridAvailabilitySubscriptionService = v2->_offGridAvailabilitySubscriptionService;
    v2->_offGridAvailabilitySubscriptionService = v6;

    [(SKStatusSubscriptionService *)v2->_offGridAvailabilitySubscriptionService addDelegate:v2 queue:v2->_privateWorkQueue];
    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    subscriptionValidationTokenByHandleIDCache = v2->_subscriptionValidationTokenByHandleIDCache;
    v2->_subscriptionValidationTokenByHandleIDCache = v8;
  }

  return v2;
}

- (void)populateCacheForHandleID:(id)d
{
  dCopy = d;
  v5 = [objc_alloc(MEMORY[0x231897B40](@"SKHandle" @"StatusKit"))];
  offGridAvailabilitySubscriptionService = self->_offGridAvailabilitySubscriptionService;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B57C968;
  v8[3] = &unk_278703B18;
  v9 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  [(SKStatusSubscriptionService *)offGridAvailabilitySubscriptionService subscriptionValidationTokensForHandle:v5 completion:v8];
}

- (id)cachedAvailabilityTokensForHandleID:(id)d
{
  dCopy = d;
  v5 = [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache objectForKey:dCopy];
  if (!v5)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D2CC8(dCopy, v6);
    }

    [(IMDOffGridAvailabilityVerificationManager *)self populateCacheForHandleID:dCopy];
  }

  return v5;
}

- (void)verifyOffGridSubscriptionMatchesSubscriptionValidationToken:(id)token encryptionValidationToken:(id)validationToken receivedByHandleID:(id)d fromHandleID:(id)iD messageDate:(id)date
{
  dCopy = d;
  iDCopy = iD;
  validationTokenCopy = validationToken;
  tokenCopy = token;
  v15 = [objc_alloc(MEMORY[0x231897B40](@"SKHandle" @"StatusKit"))];
  v16 = [objc_alloc(MEMORY[0x231897B40](@"SKSubscriptionValidationTokens" @"StatusKit"))];

  offGridAvailabilitySubscriptionService = self->_offGridAvailabilitySubscriptionService;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22B57CC44;
  v20[3] = &unk_278704EA0;
  v21 = iDCopy;
  v22 = dCopy;
  v18 = dCopy;
  v19 = iDCopy;
  [(SKStatusSubscriptionService *)offGridAvailabilitySubscriptionService validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:v16 fromSender:v15 completion:v20];
}

@end