@interface IMDMessageTranslator
+ (BOOL)shouldTranslateMessageItems:(id)a3;
+ (BOOL)shouldTranslateMessagesForChat:(id)a3;
+ (void)translateMessageItems:(NSArray *)a3 forChat:(IMDChat *)a4 incoming:(BOOL)a5 completion:(id)a6;
- (IMDMessageTranslator)init;
@end

@implementation IMDMessageTranslator

+ (BOOL)shouldTranslateMessagesForChat:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 sharedFeatureFlags];
  v7 = [v6 isAutomaticIncomingTranslationEnabled];

  if (v7 && [v5 isAutomaticallyTranslating])
  {
    v8 = [v5 translationLanguageIdentifier];

    if (!v8)
    {
      return 0;
    }

    v9 = 1;
    v5 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)shouldTranslateMessageItems:(id)a3
{
  sub_22B4D01A0(0, &qword_28141F288, 0x277D1AA70);
  v3 = sub_22B7DB918();
  v4 = sub_22B7C1794(v3);

  return v4 & 1;
}

+ (void)translateMessageItems:(NSArray *)a3 forChat:(IMDChat *)a4 incoming:(BOOL)a5 completion:(id)a6
{
  v11 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = v15;
  *(v16 + 48) = a1;
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
  v20 = a3;
  v21 = a4;
  sub_22B7C0EFC(0, 0, v14, &unk_22B7F8D10, v19);
}

- (IMDMessageTranslator)init
{
  v3.receiver = self;
  v3.super_class = IMDMessageTranslator;
  return [(IMDMessageTranslator *)&v3 init];
}

@end