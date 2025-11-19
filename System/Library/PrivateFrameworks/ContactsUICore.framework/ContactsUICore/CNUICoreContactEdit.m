@interface CNUICoreContactEdit
- (BOOL)isEqual:(id)a3;
- (BOOL)modifiesContact:(id)a3;
- (BOOL)originalAndModifiedDiffer;
- (CNUICoreContactEdit)initWithOriginalContact:(id)a3 modifiedContact:(id)a4;
- (id)description;
- (id)editBySettingModifiedContact:(id)a3;
- (unint64_t)hash;
@end

@implementation CNUICoreContactEdit

- (CNUICoreContactEdit)initWithOriginalContact:(id)a3 modifiedContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_2 != -1)
  {
    [CNUICoreContactEdit initWithOriginalContact:modifiedContact:];
  }

  v8 = CNGuardOSLog_cn_once_object_0_2;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_2, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreContactEdit initWithOriginalContact:v8 modifiedContact:?];
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v7)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_2 != -1)
  {
    [CNUICoreContactEdit initWithOriginalContact:modifiedContact:];
  }

  v9 = CNGuardOSLog_cn_once_object_0_2;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_2, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreContactEdit initWithOriginalContact:v9 modifiedContact:?];
  }

LABEL_10:
  v17.receiver = self;
  v17.super_class = CNUICoreContactEdit;
  v10 = [(CNUICoreContactEdit *)&v17 init];
  if (v10)
  {
    v11 = [v6 copy];
    original = v10->_original;
    v10->_original = v11;

    v13 = [v7 copy];
    modified = v10->_modified;
    v10->_modified = v13;

    v15 = v10;
  }

  return v10;
}

- (id)editBySettingModifiedContact:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(CNUICoreContactEdit *)self original];
  v7 = [v5 initWithOriginalContact:v6 modifiedContact:v4];

  return v7;
}

- (BOOL)originalAndModifiedDiffer
{
  v3 = [(CNUICoreContactEdit *)self original];
  v4 = [(CNUICoreContactEdit *)self modified];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1;
}

- (BOOL)modifiesContact:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreContactEdit *)self original];
  v6 = [v5 identifier];
  v7 = [v4 identifier];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v5 = -[CNUICoreContactEdit original](self, "original"), v6 = -[CNUICoreContactEdit original](v4, "original"), v5 | v6) && ![v5 isEqual:v6] || (v7 = -[CNUICoreContactEdit modified](self, "modified"), v8 = -[CNUICoreContactEdit modified](v4, "modified"), v7 | v8) && !objc_msgSend(v7, "isEqual:", v8))
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v4 = [(CNUICoreContactEdit *)self original];
  v5 = [v3 objectHash:v4];

  v6 = MEMORY[0x1E6996730];
  v7 = [(CNUICoreContactEdit *)self modified];
  v8 = [v6 objectHash:v7] - v5 + 32 * v5;

  return v8 + 16337;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUICoreContactEdit *)self original];
  v5 = [v3 appendObject:v4 withName:@"original"];

  v6 = [(CNUICoreContactEdit *)self modified];
  v7 = [v3 appendObject:v6 withName:@"modified"];

  v8 = [v3 build];

  return v8;
}

@end