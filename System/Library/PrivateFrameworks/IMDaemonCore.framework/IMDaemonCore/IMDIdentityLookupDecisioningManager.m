@interface IMDIdentityLookupDecisioningManager
+ (id)sharedManager;
- (BOOL)filterMessage:(id)a3 fromSender:(id)a4 receiverISOCountryCode:(id)a5 extensionID:(id)a6 withCompletion:(id)a7;
- (BOOL)requestFilterCapabilitiesForExtensionID:(id)a3 withCompletion:(id)a4;
@end

@implementation IMDIdentityLookupDecisioningManager

+ (id)sharedManager
{
  if (qword_281420F10 != -1)
  {
    sub_22B7D6CD0();
  }

  v3 = qword_281420EF8;

  return v3;
}

- (BOOL)requestFilterCapabilitiesForExtensionID:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v7 = qword_27D8CFF48;
  v26 = qword_27D8CFF48;
  if (!qword_27D8CFF48)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = sub_22B627C88;
    v20 = &unk_278703200;
    v21 = &v23;
    sub_22B627C88(&v17);
    v7 = v24[3];
  }

  v8 = v7;
  _Block_object_dispose(&v23, 8);
  v9 = [v7 alloc];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 initWithExtensionIdentifier:v5];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_22B4D7770;
    v21 = sub_22B4D791C;
    v22 = objc_alloc_init(sub_22B627778());
    v12 = *(v18 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B627858;
    v14[3] = &unk_278706878;
    v15 = v6;
    v16 = &v17;
    [v12 performCapabilitiesQueryRequest:v11 completion:v14];

    _Block_object_dispose(&v17, 8);
  }

  return v10 != 0;
}

- (BOOL)filterMessage:(id)a3 fromSender:(id)a4 receiverISOCountryCode:(id)a5 extensionID:(id)a6 withCompletion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = sub_22B627B00();
  if (v16)
  {
    v17 = [objc_alloc(sub_22B627B00()) initWithExtensionIdentifier:v14];
    v18 = [v11 string];
    [v17 setMessageBody:v18];

    [v17 setSender:v12];
    [v17 setReceiverISOCountryCode:v13];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_22B4D7770;
    v28 = sub_22B4D791C;
    v29 = objc_alloc_init(sub_22B627778());
    v19 = v25[5];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_22B627BE0;
    v21[3] = &unk_2787068A0;
    v22 = v15;
    v23 = &v24;
    [v19 performQueryRequest:v17 completion:v21];

    _Block_object_dispose(&v24, 8);
  }

  return v16 != 0;
}

@end