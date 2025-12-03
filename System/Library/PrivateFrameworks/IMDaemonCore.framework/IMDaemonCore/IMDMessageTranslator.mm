@interface IMDMessageTranslator
+ (BOOL)shouldTranslateMessageItems:(id)items;
+ (BOOL)shouldTranslateMessagesForChat:(id)chat;
+ (void)translateMessageItems:(NSArray *)items forChat:(IMDChat *)chat incoming:(BOOL)incoming completion:(id)completion;
- (IMDMessageTranslator)init;
@end

@implementation IMDMessageTranslator

+ (BOOL)shouldTranslateMessagesForChat:(id)chat
{
  v4 = objc_opt_self();
  chatCopy = chat;
  sharedFeatureFlags = [v4 sharedFeatureFlags];
  isAutomaticIncomingTranslationEnabled = [sharedFeatureFlags isAutomaticIncomingTranslationEnabled];

  if (isAutomaticIncomingTranslationEnabled && [chatCopy isAutomaticallyTranslating])
  {
    translationLanguageIdentifier = [chatCopy translationLanguageIdentifier];

    if (!translationLanguageIdentifier)
    {
      return 0;
    }

    v9 = 1;
    chatCopy = translationLanguageIdentifier;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)shouldTranslateMessageItems:(id)items
{
  sub_22B4D01A0(0, &qword_28141F288, 0x277D1AA70);
  v3 = sub_22B7DB918();
  v4 = sub_22B7C1794(v3);

  return v4 & 1;
}

+ (void)translateMessageItems:(NSArray *)items forChat:(IMDChat *)chat incoming:(BOOL)incoming completion:(id)completion
{
  v11 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 16) = items;
  *(v16 + 24) = chat;
  *(v16 + 32) = incoming;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = sub_22B7DBA58();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22B7FE258;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22B7F8D08;
  v19[5] = v18;
  itemsCopy = items;
  chatCopy = chat;
  sub_22B7C0EFC(0, 0, v14, &unk_22B7F8D10, v19);
}

- (IMDMessageTranslator)init
{
  v3.receiver = self;
  v3.super_class = IMDMessageTranslator;
  return [(IMDMessageTranslator *)&v3 init];
}

@end