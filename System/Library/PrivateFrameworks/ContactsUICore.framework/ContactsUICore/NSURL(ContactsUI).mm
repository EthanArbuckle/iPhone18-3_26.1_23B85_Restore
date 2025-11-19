@interface NSURL(ContactsUI)
+ (id)_cnui_dialRequestURLWithHandle:()ContactsUI contact:faceTime:video:ttyType:channelIdentifier:preferDefaultApp:;
+ (id)_cnui_expanseURLFutureWithHandle:()ContactsUI;
+ (id)_cnui_expanseURLWithHandle:()ContactsUI;
+ (id)_cnui_faceTimeAudioURLFutureWithHandle:()ContactsUI contact:;
+ (id)_cnui_faceTimeVideoURLFutureWithHandle:()ContactsUI contact:;
+ (id)_cnui_mailURLFutureWithHandle:()ContactsUI contact:;
+ (id)_cnui_mailURLWithHandle:()ContactsUI contact:;
+ (id)_cnui_messagesURLFutureWithHandle:()ContactsUI contact:;
+ (id)_cnui_messagesURLWithHandle:()ContactsUI contact:;
+ (id)_cnui_messagingURLFutureWithHandle:()ContactsUI contact:;
+ (id)_cnui_messagingURLWithHandle:()ContactsUI contact:;
+ (id)_cnui_skypeTextURLFutureWithHandle:()ContactsUI;
+ (id)_cnui_skypeTextURLWithHandle:()ContactsUI;
+ (id)_cnui_skypeVideoURLFutureWithHandle:()ContactsUI;
+ (id)_cnui_skypeVideoURLWithHandle:()ContactsUI;
+ (id)_cnui_skypeVoiceURLFutureWithHandle:()ContactsUI;
+ (id)_cnui_skypeVoiceURLWithHandle:()ContactsUI;
+ (id)_cnui_telephonyURLFutureWithHandle:()ContactsUI contact:channelIdentifier:preferDefaultApp:;
+ (id)_cnui_telephonyURLFutureWithHandle:()ContactsUI contact:preferDefaultApp:;
+ (id)_cnui_ttyRelayURLFutureWithHandle:()ContactsUI contact:;
+ (id)_cnui_ttyRelayURLFutureWithHandle:()ContactsUI contact:channelIdentifier:;
+ (id)_cnui_ttyURLFutureWithHandle:()ContactsUI contact:;
+ (id)_cnui_ttyURLFutureWithHandle:()ContactsUI contact:channelIdentifier:;
+ (id)_cnui_walletPayURLFutureWithHandle:()ContactsUI;
+ (id)_cnui_walletPayURLWithHandle:()ContactsUI;
+ (id)log;
@end

@implementation NSURL(ContactsUI)

+ (id)log
{
  if (log_cn_once_token_3 != -1)
  {
    +[NSURL(ContactsUI) log];
  }

  v1 = log_cn_once_object_3;

  return v1;
}

+ (id)_cnui_telephonyURLFutureWithHandle:()ContactsUI contact:preferDefaultApp:
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E6996720];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__NSURL_ContactsUI___cnui_telephonyURLFutureWithHandle_contact_preferDefaultApp___block_invoke;
  v15[3] = &unk_1E76E8708;
  v17 = v9;
  v18 = a1;
  v16 = v8;
  v19 = a5;
  v11 = v9;
  v12 = v8;
  v13 = [v10 lazyFutureWithBlock:v15];

  return v13;
}

+ (id)_cnui_faceTimeAudioURLFutureWithHandle:()ContactsUI contact:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6996720];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__NSURL_ContactsUI___cnui_faceTimeAudioURLFutureWithHandle_contact___block_invoke;
  v13[3] = &unk_1E76E8730;
  v15 = v7;
  v16 = a1;
  v14 = v6;
  v9 = v7;
  v10 = v6;
  v11 = [v8 lazyFutureWithBlock:v13];

  return v11;
}

+ (id)_cnui_faceTimeVideoURLFutureWithHandle:()ContactsUI contact:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6996720];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__NSURL_ContactsUI___cnui_faceTimeVideoURLFutureWithHandle_contact___block_invoke;
  v13[3] = &unk_1E76E8730;
  v15 = v7;
  v16 = a1;
  v14 = v6;
  v9 = v7;
  v10 = v6;
  v11 = [v8 lazyFutureWithBlock:v13];

  return v11;
}

+ (id)_cnui_ttyURLFutureWithHandle:()ContactsUI contact:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6996720];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__NSURL_ContactsUI___cnui_ttyURLFutureWithHandle_contact___block_invoke;
  v13[3] = &unk_1E76E8730;
  v15 = v7;
  v16 = a1;
  v14 = v6;
  v9 = v7;
  v10 = v6;
  v11 = [v8 lazyFutureWithBlock:v13];

  return v11;
}

+ (id)_cnui_ttyRelayURLFutureWithHandle:()ContactsUI contact:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6996720];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__NSURL_ContactsUI___cnui_ttyRelayURLFutureWithHandle_contact___block_invoke;
  v13[3] = &unk_1E76E8730;
  v15 = v7;
  v16 = a1;
  v14 = v6;
  v9 = v7;
  v10 = v6;
  v11 = [v8 lazyFutureWithBlock:v13];

  return v11;
}

+ (id)_cnui_telephonyURLFutureWithHandle:()ContactsUI contact:channelIdentifier:preferDefaultApp:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x1E6996720];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __99__NSURL_ContactsUI___cnui_telephonyURLFutureWithHandle_contact_channelIdentifier_preferDefaultApp___block_invoke;
  v19[3] = &unk_1E76E8758;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = a1;
  v24 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = [v13 lazyFutureWithBlock:v19];

  return v17;
}

+ (id)_cnui_ttyURLFutureWithHandle:()ContactsUI contact:channelIdentifier:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E6996720];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__NSURL_ContactsUI___cnui_ttyURLFutureWithHandle_contact_channelIdentifier___block_invoke;
  v17[3] = &unk_1E76E8780;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = a1;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = [v11 lazyFutureWithBlock:v17];

  return v15;
}

+ (id)_cnui_ttyRelayURLFutureWithHandle:()ContactsUI contact:channelIdentifier:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E6996720];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__NSURL_ContactsUI___cnui_ttyRelayURLFutureWithHandle_contact_channelIdentifier___block_invoke;
  v17[3] = &unk_1E76E8780;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = a1;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = [v11 lazyFutureWithBlock:v17];

  return v15;
}

+ (id)_cnui_skypeTextURLFutureWithHandle:()ContactsUI
{
  v4 = a3;
  v5 = MEMORY[0x1E6996720];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__NSURL_ContactsUI___cnui_skypeTextURLFutureWithHandle___block_invoke;
  v9[3] = &unk_1E76E87A8;
  v10 = v4;
  v11 = a1;
  v6 = v4;
  v7 = [v5 lazyFutureWithBlock:v9];

  return v7;
}

+ (id)_cnui_skypeVoiceURLFutureWithHandle:()ContactsUI
{
  v4 = a3;
  v5 = MEMORY[0x1E6996720];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__NSURL_ContactsUI___cnui_skypeVoiceURLFutureWithHandle___block_invoke;
  v9[3] = &unk_1E76E87A8;
  v10 = v4;
  v11 = a1;
  v6 = v4;
  v7 = [v5 lazyFutureWithBlock:v9];

  return v7;
}

+ (id)_cnui_skypeVideoURLFutureWithHandle:()ContactsUI
{
  v4 = a3;
  v5 = MEMORY[0x1E6996720];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__NSURL_ContactsUI___cnui_skypeVideoURLFutureWithHandle___block_invoke;
  v9[3] = &unk_1E76E87A8;
  v10 = v4;
  v11 = a1;
  v6 = v4;
  v7 = [v5 lazyFutureWithBlock:v9];

  return v7;
}

+ (id)_cnui_messagesURLFutureWithHandle:()ContactsUI contact:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6996720];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__NSURL_ContactsUI___cnui_messagesURLFutureWithHandle_contact___block_invoke;
  v13[3] = &unk_1E76E8730;
  v15 = v7;
  v16 = a1;
  v14 = v6;
  v9 = v7;
  v10 = v6;
  v11 = [v8 lazyFutureWithBlock:v13];

  return v11;
}

+ (id)_cnui_messagingURLFutureWithHandle:()ContactsUI contact:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6996720];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__NSURL_ContactsUI___cnui_messagingURLFutureWithHandle_contact___block_invoke;
  v13[3] = &unk_1E76E8730;
  v15 = v7;
  v16 = a1;
  v14 = v6;
  v9 = v7;
  v10 = v6;
  v11 = [v8 lazyFutureWithBlock:v13];

  return v11;
}

+ (id)_cnui_mailURLFutureWithHandle:()ContactsUI contact:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6996720];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__NSURL_ContactsUI___cnui_mailURLFutureWithHandle_contact___block_invoke;
  v13[3] = &unk_1E76E8730;
  v15 = v7;
  v16 = a1;
  v14 = v6;
  v9 = v7;
  v10 = v6;
  v11 = [v8 lazyFutureWithBlock:v13];

  return v11;
}

+ (id)_cnui_walletPayURLFutureWithHandle:()ContactsUI
{
  v4 = a3;
  v5 = MEMORY[0x1E6996720];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__NSURL_ContactsUI___cnui_walletPayURLFutureWithHandle___block_invoke;
  v9[3] = &unk_1E76E87A8;
  v10 = v4;
  v11 = a1;
  v6 = v4;
  v7 = [v5 lazyFutureWithBlock:v9];

  return v7;
}

+ (id)_cnui_expanseURLFutureWithHandle:()ContactsUI
{
  v4 = a3;
  v5 = MEMORY[0x1E6996720];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__NSURL_ContactsUI___cnui_expanseURLFutureWithHandle___block_invoke;
  v9[3] = &unk_1E76E87A8;
  v10 = v4;
  v11 = a1;
  v6 = v4;
  v7 = [v5 lazyFutureWithBlock:v9];

  return v7;
}

+ (id)_cnui_dialRequestURLWithHandle:()ContactsUI contact:faceTime:video:ttyType:channelIdentifier:preferDefaultApp:
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v17 = getTUCallProviderManagerClass_softClass;
  v43 = getTUCallProviderManagerClass_softClass;
  if (!getTUCallProviderManagerClass_softClass)
  {
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __getTUCallProviderManagerClass_block_invoke;
    v38 = &unk_1E76E79E0;
    v39 = &v40;
    __getTUCallProviderManagerClass_block_invoke(&v35);
    v17 = v41[3];
  }

  v18 = v17;
  _Block_object_dispose(&v40, 8);
  v19 = objc_alloc_init(v17);
  v20 = v19;
  if (a5)
  {
    [v19 faceTimeProvider];
  }

  else
  {
    [v19 telephonyProvider];
  }
  v21 = ;
  if (v21)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2050000000;
    v22 = getTUDialRequestClass_softClass_1;
    v43 = getTUDialRequestClass_softClass_1;
    if (!getTUDialRequestClass_softClass_1)
    {
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __getTUDialRequestClass_block_invoke_1;
      v38 = &unk_1E76E79E0;
      v39 = &v40;
      __getTUDialRequestClass_block_invoke_1(&v35);
      v22 = v41[3];
    }

    v23 = v22;
    _Block_object_dispose(&v40, 8);
    v24 = [v22 alloc];
    v25 = [v24 cn_initWithProvider:v21];

    v26 = [CNHandle tuHandleForHandle:v14];
    [v25 setHandle:v26];

    if ([v15 hasBeenPersisted])
    {
      v27 = [v15 identifier];
      [v25 setContactIdentifier:v27];
    }

    [v25 setVideo:a6];
    [v25 setTtyType:a7];
    v28 = [v25 provider];
    if ([v28 isTelephonyProvider])
    {
      v29 = (*(*MEMORY[0x1E6996568] + 16))();

      if (v29)
      {
LABEL_15:
        v30 = [v25 provider];
        v31 = [v30 isTelephonyProvider];

        if (v31)
        {
          [v25 setPreferDefaultApp:a9];
        }

        v32 = [v25 URL];
        goto LABEL_21;
      }

      v28 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v16];
      [v25 setLocalSenderIdentityAccountUUID:v28];
    }

    goto LABEL_15;
  }

  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create TUDialRequest, manager = %@, provider = %@", v20, 0];
  v33 = [objc_opt_class() log];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    [NSURL(ContactsUI) _cnui_dialRequestURLWithHandle:v25 contact:v33 faceTime:? video:? ttyType:? channelIdentifier:? preferDefaultApp:?];
  }

  [MEMORY[0x1E6996828] simulateCrashWithMessage:{@"%@", v25}];
  softLinkABLogDisplayInternalAlert(v25);
  v32 = 0;
LABEL_21:

  return v32;
}

+ (id)_cnui_skypeTextURLWithHandle:()ContactsUI
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 stringValue];
  v5 = [v3 stringWithFormat:@"skype:%@?chat", v4];

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];

  return v6;
}

+ (id)_cnui_skypeVoiceURLWithHandle:()ContactsUI
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 stringValue];
  v5 = [v3 stringWithFormat:@"skype:%@?call", v4];

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];

  return v6;
}

+ (id)_cnui_skypeVideoURLWithHandle:()ContactsUI
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 stringValue];
  v5 = [v3 stringWithFormat:@"skype:%@?call&video=true", v4];

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];

  return v6;
}

+ (id)_cnui_messagesURLWithHandle:()ContactsUI contact:
{
  v3 = MEMORY[0x1E696AF20];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"sms"];
  v6 = [v4 stringValue];

  [v5 setPath:v6];
  v7 = [v5 URL];

  return v7;
}

+ (id)_cnui_messagingURLWithHandle:()ContactsUI contact:
{
  v3 = MEMORY[0x1E696AF20];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"im"];
  v6 = [v4 stringValue];

  [v5 setPath:v6];
  v7 = [v5 URL];

  return v7;
}

+ (id)_cnui_mailURLWithHandle:()ContactsUI contact:
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 stringValue];
  v5 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v5];
  v7 = [v3 stringWithFormat:@"mailto:%@", v6];

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];

  return v8;
}

+ (id)_cnui_walletPayURLWithHandle:()ContactsUI
{
  v3 = [a3 stringValue];
  v4 = [CNUIPassKitWrapper urlForPeerPaymentWithHandle:v3];

  return v4;
}

+ (id)_cnui_expanseURLWithHandle:()ContactsUI
{
  v3 = a3;
  v4 = [CNHandle tuHandleForHandle:v3];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v5 = getTUConversationMemberClass_softClass;
  v22 = getTUConversationMemberClass_softClass;
  if (!getTUConversationMemberClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getTUConversationMemberClass_block_invoke;
    v17 = &unk_1E76E79E0;
    v18 = &v19;
    __getTUConversationMemberClass_block_invoke(&v14);
    v5 = v20[3];
  }

  v6 = v5;
  _Block_object_dispose(&v19, 8);
  v7 = [[v5 alloc] initWithHandle:v4];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v9 = getTUJoinConversationRequestClass_softClass;
  v22 = getTUJoinConversationRequestClass_softClass;
  if (!getTUJoinConversationRequestClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getTUJoinConversationRequestClass_block_invoke;
    v17 = &unk_1E76E79E0;
    v18 = &v19;
    __getTUJoinConversationRequestClass_block_invoke(&v14);
    v9 = v20[3];
  }

  v10 = v9;
  _Block_object_dispose(&v19, 8);
  v11 = [[v9 alloc] initWithRemoteMembers:v8];
  [v11 setOriginatingUIType:16];
  v12 = [v11 URL];

  return v12;
}

+ (void)_cnui_dialRequestURLWithHandle:()ContactsUI contact:faceTime:video:ttyType:channelIdentifier:preferDefaultApp:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
}

@end