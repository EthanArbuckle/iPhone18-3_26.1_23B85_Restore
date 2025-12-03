@interface CNUICoreFamilyMemberContactItem
- (BOOL)isEqual:(id)equal;
- (CNUICoreFamilyMemberContactItem)init;
- (CNUICoreFamilyMemberContactItem)initWithCoder:(id)coder;
- (CNUICoreFamilyMemberContactItem)initWithContactIdentifier:(id)identifier formattedName:(id)name imageData:(id)data isUnreachable:(BOOL)unreachable isProposed:(BOOL)proposed contactType:(int64_t)type whitelistStatus:(int64_t)status hasBeenPersisted:(BOOL)self0;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNUICoreFamilyMemberContactItem

- (CNUICoreFamilyMemberContactItem)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyMemberContactItem)initWithContactIdentifier:(id)identifier formattedName:(id)name imageData:(id)data isUnreachable:(BOOL)unreachable isProposed:(BOOL)proposed contactType:(int64_t)type whitelistStatus:(int64_t)status hasBeenPersisted:(BOOL)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  dataCopy = data;
  if (identifierCopy)
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
    if (nameCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (nameCopy)
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
    objc_storeStrong(&v21->_contactIdentifier, identifier);
    objc_storeStrong(&v22->_formattedName, name);
    objc_storeStrong(&v22->_imageData, data);
    v22->_isUnreachable = unreachable;
    v22->_isProposed = proposed;
    v22->_contactType = type;
    v22->_whitelistStatus = status;
    v22->_hasBeenPersisted = persisted;
    v23 = v22;
  }

  return v22;
}

- (CNUICoreFamilyMemberContactItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CNUICoreFamilyMemberContactItem;
  v5 = [(CNUICoreFamilyMemberContactItem *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
    v7 = [v6 copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_formattedName"];
    v10 = [v9 copy];
    formattedName = v5->_formattedName;
    v5->_formattedName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    v13 = [v12 copy];
    imageData = v5->_imageData;
    v5->_imageData = v13;

    v5->_isUnreachable = [coderCopy decodeBoolForKey:@"_isUnreachable"];
    v5->_isProposed = [coderCopy decodeBoolForKey:@"_isProposed"];
    v5->_contactType = [coderCopy decodeIntegerForKey:@"_contactType"];
    v5->_whitelistStatus = [coderCopy decodeIntegerForKey:@"_whitelistStatus"];
    v5->_hasBeenPersisted = [coderCopy decodeBoolForKey:@"_hasBeenPersisted"];
    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contactIdentifier = self->_contactIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:contactIdentifier forKey:@"_contactIdentifier"];
  [coderCopy encodeObject:self->_formattedName forKey:@"_formattedName"];
  [coderCopy encodeObject:self->_imageData forKey:@"_imageData"];
  [coderCopy encodeBool:self->_isUnreachable forKey:@"_isUnreachable"];
  [coderCopy encodeBool:self->_isProposed forKey:@"_isProposed"];
  [coderCopy encodeInteger:self->_contactType forKey:@"_contactType"];
  [coderCopy encodeInteger:self->_whitelistStatus forKey:@"_whitelistStatus"];
  [coderCopy encodeBool:self->_hasBeenPersisted forKey:@"_hasBeenPersisted"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNUICoreFamilyMemberContactItem contactIdentifier](self, "contactIdentifier"), v6 = -[CNUICoreFamilyMemberContactItem contactIdentifier](equalCopy, "contactIdentifier"), !(v5 | v6)) || [v5 isEqual:v6]) && ((v7 = -[CNUICoreFamilyMemberContactItem formattedName](self, "formattedName"), v8 = -[CNUICoreFamilyMemberContactItem formattedName](equalCopy, "formattedName"), !(v7 | v8)) || objc_msgSend(v7, "isEqual:", v8)) && ((v9 = -[CNUICoreFamilyMemberContactItem imageData](self, "imageData"), v10 = -[CNUICoreFamilyMemberContactItem imageData](equalCopy, "imageData"), !(v9 | v10)) || objc_msgSend(v9, "isEqual:", v10)) && (v11 = -[CNUICoreFamilyMemberContactItem isUnreachable](self, "isUnreachable"), v11 == -[CNUICoreFamilyMemberContactItem isUnreachable](equalCopy, "isUnreachable")) && (v12 = -[CNUICoreFamilyMemberContactItem isProposed](self, "isProposed"), v12 == -[CNUICoreFamilyMemberContactItem isProposed](equalCopy, "isProposed")) && (v13 = -[CNUICoreFamilyMemberContactItem contactType](self, "contactType"), v13 == -[CNUICoreFamilyMemberContactItem contactType](equalCopy, "contactType")) && (v14 = -[CNUICoreFamilyMemberContactItem whitelistStatus](self, "whitelistStatus"), v14 == -[CNUICoreFamilyMemberContactItem whitelistStatus](equalCopy, "whitelistStatus")))
    {
      hasBeenPersisted = [(CNUICoreFamilyMemberContactItem *)self hasBeenPersisted];
      v16 = hasBeenPersisted ^ [(CNUICoreFamilyMemberContactItem *)equalCopy hasBeenPersisted]^ 1;
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
  contactIdentifier = [(CNUICoreFamilyMemberContactItem *)self contactIdentifier];
  v5 = [v3 objectHash:contactIdentifier];

  v6 = MEMORY[0x1E6996730];
  formattedName = [(CNUICoreFamilyMemberContactItem *)self formattedName];
  v8 = [v6 objectHash:formattedName] - v5 + 32 * v5;

  v9 = MEMORY[0x1E6996730];
  imageData = [(CNUICoreFamilyMemberContactItem *)self imageData];
  v11 = 31 * ([v9 objectHash:imageData] - v8 + 32 * v8);

  v12 = 31 * (v11 + [(CNUICoreFamilyMemberContactItem *)self isUnreachable]);
  v13 = v12 + [(CNUICoreFamilyMemberContactItem *)self isProposed];
  contactType = [(CNUICoreFamilyMemberContactItem *)self contactType];
  if (contactType >= 0)
  {
    v15 = contactType;
  }

  else
  {
    v15 = -contactType;
  }

  v16 = v15 - v13 + 32 * v13;
  whitelistStatus = [(CNUICoreFamilyMemberContactItem *)self whitelistStatus];
  if (whitelistStatus >= 0)
  {
    v18 = whitelistStatus;
  }

  else
  {
    v18 = -whitelistStatus;
  }

  return 31 * (v18 - v16 + 32 * v16) + [(CNUICoreFamilyMemberContactItem *)self hasBeenPersisted]+ 0xD2FD88B5F11;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  contactIdentifier = [(CNUICoreFamilyMemberContactItem *)self contactIdentifier];
  v5 = [v3 appendName:@"contactIdentifier" object:contactIdentifier];

  formattedName = [(CNUICoreFamilyMemberContactItem *)self formattedName];
  v7 = [v3 appendName:@"formattedName" object:formattedName];

  v8 = [v3 appendName:@"hasBeenPersisted" BOOLValue:{-[CNUICoreFamilyMemberContactItem hasBeenPersisted](self, "hasBeenPersisted")}];
  build = [v3 build];

  return build;
}

@end