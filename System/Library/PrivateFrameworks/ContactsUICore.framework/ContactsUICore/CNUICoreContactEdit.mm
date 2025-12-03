@interface CNUICoreContactEdit
- (BOOL)isEqual:(id)equal;
- (BOOL)modifiesContact:(id)contact;
- (BOOL)originalAndModifiedDiffer;
- (CNUICoreContactEdit)initWithOriginalContact:(id)contact modifiedContact:(id)modifiedContact;
- (id)description;
- (id)editBySettingModifiedContact:(id)contact;
- (unint64_t)hash;
@end

@implementation CNUICoreContactEdit

- (CNUICoreContactEdit)initWithOriginalContact:(id)contact modifiedContact:(id)modifiedContact
{
  contactCopy = contact;
  modifiedContactCopy = modifiedContact;
  if (contactCopy)
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
    if (modifiedContactCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (modifiedContactCopy)
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
    v11 = [contactCopy copy];
    original = v10->_original;
    v10->_original = v11;

    v13 = [modifiedContactCopy copy];
    modified = v10->_modified;
    v10->_modified = v13;

    v15 = v10;
  }

  return v10;
}

- (id)editBySettingModifiedContact:(id)contact
{
  contactCopy = contact;
  v5 = objc_alloc(objc_opt_class());
  original = [(CNUICoreContactEdit *)self original];
  v7 = [v5 initWithOriginalContact:original modifiedContact:contactCopy];

  return v7;
}

- (BOOL)originalAndModifiedDiffer
{
  original = [(CNUICoreContactEdit *)self original];
  modified = [(CNUICoreContactEdit *)self modified];
  v5 = [original isEqual:modified];

  return v5 ^ 1;
}

- (BOOL)modifiesContact:(id)contact
{
  contactCopy = contact;
  original = [(CNUICoreContactEdit *)self original];
  identifier = [original identifier];
  identifier2 = [contactCopy identifier];

  LOBYTE(contactCopy) = [identifier isEqualToString:identifier2];
  return contactCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v5 = -[CNUICoreContactEdit original](self, "original"), v6 = -[CNUICoreContactEdit original](equalCopy, "original"), v5 | v6) && ![v5 isEqual:v6] || (v7 = -[CNUICoreContactEdit modified](self, "modified"), v8 = -[CNUICoreContactEdit modified](equalCopy, "modified"), v7 | v8) && !objc_msgSend(v7, "isEqual:", v8))
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  original = [(CNUICoreContactEdit *)self original];
  v5 = [v3 objectHash:original];

  v6 = MEMORY[0x1E6996730];
  modified = [(CNUICoreContactEdit *)self modified];
  v8 = [v6 objectHash:modified] - v5 + 32 * v5;

  return v8 + 16337;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  original = [(CNUICoreContactEdit *)self original];
  v5 = [v3 appendObject:original withName:@"original"];

  modified = [(CNUICoreContactEdit *)self modified];
  v7 = [v3 appendObject:modified withName:@"modified"];

  build = [v3 build];

  return build;
}

@end