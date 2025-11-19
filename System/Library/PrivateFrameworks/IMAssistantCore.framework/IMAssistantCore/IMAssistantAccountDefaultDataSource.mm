@interface IMAssistantAccountDefaultDataSource
+ (id)sharedInstance;
- (BOOL)hasMessagingAccount;
- (id)countryCode;
- (id)imHandleWithID:(id)a3;
@end

@implementation IMAssistantAccountDefaultDataSource

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547BAF70;
  block[3] = &unk_279786A78;
  block[4] = a1;
  if (qword_28118F648 != -1)
  {
    dispatch_once(&qword_28118F648, block);
  }

  v2 = qword_28118F638;

  return v2;
}

- (BOOL)hasMessagingAccount
{
  v2 = [MEMORY[0x277D18D28] sharedInstance];
  v3 = [v2 __im_assistant_bestMessagingAccount];
  v4 = v3 != 0;

  return v4;
}

- (id)imHandleWithID:(id)a3
{
  v3 = MEMORY[0x277D18D28];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 __im_assistant_bestMessagingAccount];

  v7 = [v6 imHandleWithID:v4];

  return v7;
}

- (id)countryCode
{
  v2 = [MEMORY[0x277D18D28] sharedInstance];
  v3 = [v2 __im_assistant_bestMessagingAccount];

  v4 = [v3 countryCode];

  return v4;
}

@end