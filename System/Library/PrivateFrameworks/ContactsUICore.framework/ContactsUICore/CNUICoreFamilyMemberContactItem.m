@interface CNUICoreFamilyMemberContactItem
- (BOOL)isEqual:(id)a3;
- (CNUICoreFamilyMemberContactItem)init;
- (CNUICoreFamilyMemberContactItem)initWithCoder:(id)a3;
- (CNUICoreFamilyMemberContactItem)initWithContactIdentifier:(id)a3 formattedName:(id)a4 imageData:(id)a5 isUnreachable:(BOOL)a6 isProposed:(BOOL)a7 contactType:(int64_t)a8 whitelistStatus:(int64_t)a9 hasBeenPersisted:(BOOL)a10;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNUICoreFamilyMemberContactItem

- (CNUICoreFamilyMemberContactItem)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyMemberContactItem)initWithContactIdentifier:(id)a3 formattedName:(id)a4 imageData:(id)a5 isUnreachable:(BOOL)a6 isProposed:(BOOL)a7 contactType:(int64_t)a8 whitelistStatus:(int64_t)a9 hasBeenPersisted:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  if (v16)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_24 != -1)
  {
    [CNUICoreFamilyMemberContactItem initWithContactIdentifier:formattedName:imageData:isUnreachable:isProposed:contactType:whitelistStatus:hasBeenPersisted:];
  }

  v19 = CNGuardOSLog_cn_once_object_0_24;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_24, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberContactItem initWithContactIdentifier:v19 formattedName:? imageData:? isUnreachable:? isProposed:? contactType:? whitelistStatus:? hasBeenPersisted:?];
    if (v17)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v17)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_24 != -1)
  {
    [CNUICoreFamilyMemberContactItem initWithContactIdentifier:formattedName:imageData:isUnreachable:isProposed:contactType:whitelistStatus:hasBeenPersisted:];
  }

  v20 = CNGuardOSLog_cn_once_object_0_24;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_24, OS_LOG_TYPE_FAULT))
  {
    [CNUICoreFamilyMemberContactItem initWithContactIdentifier:v20 formattedName:? imageData:? isUnreachable:? isProposed:? contactType:? whitelistStatus:? hasBeenPersisted:?];
  }

LABEL_10:
  v26.receiver = self;
  v26.super_class = CNUICoreFamilyMemberContactItem;
  v21 = [(CNUICoreFamilyMemberContactItem *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_contactIdentifier, a3);
    objc_storeStrong(&v22->_formattedName, a4);
    objc_storeStrong(&v22->_imageData, a5);
    v22->_isUnreachable = a6;
    v22->_isProposed = a7;
    v22->_contactType = a8;
    v22->_whitelistStatus = a9;
    v22->_hasBeenPersisted = a10;
    v23 = v22;
  }

  return v22;
}

- (CNUICoreFamilyMemberContactItem)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CNUICoreFamilyMemberContactItem;
  v5 = [(CNUICoreFamilyMemberContactItem *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
    v7 = [v6 copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_formattedName"];
    v10 = [v9 copy];
    formattedName = v5->_formattedName;
    v5->_formattedName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    v13 = [v12 copy];
    imageData = v5->_imageData;
    v5->_imageData = v13;

    v5->_isUnreachable = [v4 decodeBoolForKey:@"_isUnreachable"];
    v5->_isProposed = [v4 decodeBoolForKey:@"_isProposed"];
    v5->_contactType = [v4 decodeIntegerForKey:@"_contactType"];
    v5->_whitelistStatus = [v4 decodeIntegerForKey:@"_whitelistStatus"];
    v5->_hasBeenPersisted = [v4 decodeBoolForKey:@"_hasBeenPersisted"];
    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contactIdentifier = self->_contactIdentifier;
  v5 = a3;
  [v5 encodeObject:contactIdentifier forKey:@"_contactIdentifier"];
  [v5 encodeObject:self->_formattedName forKey:@"_formattedName"];
  [v5 encodeObject:self->_imageData forKey:@"_imageData"];
  [v5 encodeBool:self->_isUnreachable forKey:@"_isUnreachable"];
  [v5 encodeBool:self->_isProposed forKey:@"_isProposed"];
  [v5 encodeInteger:self->_contactType forKey:@"_contactType"];
  [v5 encodeInteger:self->_whitelistStatus forKey:@"_whitelistStatus"];
  [v5 encodeBool:self->_hasBeenPersisted forKey:@"_hasBeenPersisted"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNUICoreFamilyMemberContactItem contactIdentifier](self, "contactIdentifier"), v6 = -[CNUICoreFamilyMemberContactItem contactIdentifier](v4, "contactIdentifier"), !(v5 | v6)) || [v5 isEqual:v6]) && ((v7 = -[CNUICoreFamilyMemberContactItem formattedName](self, "formattedName"), v8 = -[CNUICoreFamilyMemberContactItem formattedName](v4, "formattedName"), !(v7 | v8)) || objc_msgSend(v7, "isEqual:", v8)) && ((v9 = -[CNUICoreFamilyMemberContactItem imageData](self, "imageData"), v10 = -[CNUICoreFamilyMemberContactItem imageData](v4, "imageData"), !(v9 | v10)) || objc_msgSend(v9, "isEqual:", v10)) && (v11 = -[CNUICoreFamilyMemberContactItem isUnreachable](self, "isUnreachable"), v11 == -[CNUICoreFamilyMemberContactItem isUnreachable](v4, "isUnreachable")) && (v12 = -[CNUICoreFamilyMemberContactItem isProposed](self, "isProposed"), v12 == -[CNUICoreFamilyMemberContactItem isProposed](v4, "isProposed")) && (v13 = -[CNUICoreFamilyMemberContactItem contactType](self, "contactType"), v13 == -[CNUICoreFamilyMemberContactItem contactType](v4, "contactType")) && (v14 = -[CNUICoreFamilyMemberContactItem whitelistStatus](self, "whitelistStatus"), v14 == -[CNUICoreFamilyMemberContactItem whitelistStatus](v4, "whitelistStatus")))
    {
      v15 = [(CNUICoreFamilyMemberContactItem *)self hasBeenPersisted];
      v16 = v15 ^ [(CNUICoreFamilyMemberContactItem *)v4 hasBeenPersisted]^ 1;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v4 = [(CNUICoreFamilyMemberContactItem *)self contactIdentifier];
  v5 = [v3 objectHash:v4];

  v6 = MEMORY[0x1E6996730];
  v7 = [(CNUICoreFamilyMemberContactItem *)self formattedName];
  v8 = [v6 objectHash:v7] - v5 + 32 * v5;

  v9 = MEMORY[0x1E6996730];
  v10 = [(CNUICoreFamilyMemberContactItem *)self imageData];
  v11 = 31 * ([v9 objectHash:v10] - v8 + 32 * v8);

  v12 = 31 * (v11 + [(CNUICoreFamilyMemberContactItem *)self isUnreachable]);
  v13 = v12 + [(CNUICoreFamilyMemberContactItem *)self isProposed];
  v14 = [(CNUICoreFamilyMemberContactItem *)self contactType];
  if (v14 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -v14;
  }

  v16 = v15 - v13 + 32 * v13;
  v17 = [(CNUICoreFamilyMemberContactItem *)self whitelistStatus];
  if (v17 >= 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = -v17;
  }

  return 31 * (v18 - v16 + 32 * v16) + [(CNUICoreFamilyMemberContactItem *)self hasBeenPersisted]+ 0xD2FD88B5F11;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUICoreFamilyMemberContactItem *)self contactIdentifier];
  v5 = [v3 appendName:@"contactIdentifier" object:v4];

  v6 = [(CNUICoreFamilyMemberContactItem *)self formattedName];
  v7 = [v3 appendName:@"formattedName" object:v6];

  v8 = [v3 appendName:@"hasBeenPersisted" BOOLValue:{-[CNUICoreFamilyMemberContactItem hasBeenPersisted](self, "hasBeenPersisted")}];
  v9 = [v3 build];

  return v9;
}

@end