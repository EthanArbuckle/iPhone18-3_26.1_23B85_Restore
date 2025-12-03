@interface CVNLPTextDecodingConfiguration
+ (id)defaultCommitActionBehaviorForLocale:(id)locale;
- (CVNLPTextDecodingConfiguration)initWithCommitActionBehavior:(id)behavior;
@end

@implementation CVNLPTextDecodingConfiguration

- (CVNLPTextDecodingConfiguration)initWithCommitActionBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v9.receiver = self;
  v9.super_class = CVNLPTextDecodingConfiguration;
  v5 = [(CVNLPTextDecodingConfiguration *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1DA741A60](behaviorCopy);
    commitActionBlock = v5->_commitActionBlock;
    v5->_commitActionBlock = v6;
  }

  return v5;
}

+ (id)defaultCommitActionBehaviorForLocale:(id)locale
{
  localeCopy = locale;
  v7 = objc_msgSend_languageCode(localeCopy, v4, v5, v6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"zh", v9);

  if (isEqualToString)
  {
    v11 = &unk_1F554F4E8;
  }

  else
  {
    v12 = objc_opt_class();
    v11 = objc_msgSend_defaultWhitespaceCommitActionBehavior(v12, v13, v14, v15);
  }

  v16 = MEMORY[0x1DA741A60](v11);

  return v16;
}

@end