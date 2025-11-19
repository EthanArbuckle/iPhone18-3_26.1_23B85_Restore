@interface CVNLPTextDecodingConfiguration
+ (id)defaultCommitActionBehaviorForLocale:(id)a3;
- (CVNLPTextDecodingConfiguration)initWithCommitActionBehavior:(id)a3;
@end

@implementation CVNLPTextDecodingConfiguration

- (CVNLPTextDecodingConfiguration)initWithCommitActionBehavior:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CVNLPTextDecodingConfiguration;
  v5 = [(CVNLPTextDecodingConfiguration *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1DA741A60](v4);
    commitActionBlock = v5->_commitActionBlock;
    v5->_commitActionBlock = v6;
  }

  return v5;
}

+ (id)defaultCommitActionBehaviorForLocale:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_languageCode(v3, v4, v5, v6);
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