@interface IMAssistantAccountDefaultDataSource
+ (id)sharedInstance;
- (BOOL)hasMessagingAccount;
- (id)countryCode;
- (id)imHandleWithID:(id)d;
@end

@implementation IMAssistantAccountDefaultDataSource

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547BAF70;
  block[3] = &unk_279786A78;
  block[4] = self;
  if (qword_28118F648 != -1)
  {
    dispatch_once(&qword_28118F648, block);
  }

  v2 = qword_28118F638;

  return v2;
}

- (BOOL)hasMessagingAccount
{
  mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
  __im_assistant_bestMessagingAccount = [mEMORY[0x277D18D28] __im_assistant_bestMessagingAccount];
  v4 = __im_assistant_bestMessagingAccount != 0;

  return v4;
}

- (id)imHandleWithID:(id)d
{
  v3 = MEMORY[0x277D18D28];
  dCopy = d;
  sharedInstance = [v3 sharedInstance];
  __im_assistant_bestMessagingAccount = [sharedInstance __im_assistant_bestMessagingAccount];

  v7 = [__im_assistant_bestMessagingAccount imHandleWithID:dCopy];

  return v7;
}

- (id)countryCode
{
  mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
  __im_assistant_bestMessagingAccount = [mEMORY[0x277D18D28] __im_assistant_bestMessagingAccount];

  countryCode = [__im_assistant_bestMessagingAccount countryCode];

  return countryCode;
}

@end