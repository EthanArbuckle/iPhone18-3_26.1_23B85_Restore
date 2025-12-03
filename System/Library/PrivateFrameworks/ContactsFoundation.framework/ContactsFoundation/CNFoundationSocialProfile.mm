@interface CNFoundationSocialProfile
+ (id)emptySocialProfile;
- (BOOL)isEqual:(id)equal;
- (CNFoundationSocialProfile)initWithUrlString:(id)string username:(id)username userIdentifier:(id)identifier service:(id)service displayName:(id)name;
- (id)description;
- (unint64_t)hash;
@end

@implementation CNFoundationSocialProfile

- (CNFoundationSocialProfile)initWithUrlString:(id)string username:(id)username userIdentifier:(id)identifier service:(id)service displayName:(id)name
{
  stringCopy = string;
  usernameCopy = username;
  identifierCopy = identifier;
  serviceCopy = service;
  nameCopy = name;
  v30.receiver = self;
  v30.super_class = CNFoundationSocialProfile;
  v17 = [(CNFoundationSocialProfile *)&v30 init];
  if (v17)
  {
    v18 = [stringCopy copy];
    urlString = v17->_urlString;
    v17->_urlString = v18;

    v20 = [usernameCopy copy];
    username = v17->_username;
    v17->_username = v20;

    v22 = [identifierCopy copy];
    userIdentifier = v17->_userIdentifier;
    v17->_userIdentifier = v22;

    v24 = [serviceCopy copy];
    service = v17->_service;
    v17->_service = v24;

    v26 = [nameCopy copy];
    displayName = v17->_displayName;
    v17->_displayName = v26;

    v28 = v17;
  }

  return v17;
}

+ (id)emptySocialProfile
{
  v2 = [[self alloc] initWithUrlString:0 username:0 userIdentifier:0 service:0 displayName:0];

  return v2;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendNamesAndObjects:{@"urlString", self->_urlString, @"username", self->_username, @"userIdentifier", self->_userIdentifier, @"service", self->_service, @"displayName", self->_displayName, 0}];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __37__CNFoundationSocialProfile_isEqual___block_invoke;
  v22[3] = &unk_1E6ED60C8;
  v22[4] = self;
  v23 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__CNFoundationSocialProfile_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E6ED60C8;
  aBlock[4] = self;
  v5 = v23;
  v21 = v5;
  v6 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __37__CNFoundationSocialProfile_isEqual___block_invoke_3;
  v18[3] = &unk_1E6ED60C8;
  v18[4] = self;
  v7 = v5;
  v19 = v7;
  v8 = _Block_copy(v18);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__CNFoundationSocialProfile_isEqual___block_invoke_4;
  v16[3] = &unk_1E6ED60C8;
  v16[4] = self;
  v9 = v7;
  v17 = v9;
  v10 = _Block_copy(v16);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__CNFoundationSocialProfile_isEqual___block_invoke_5;
  v14[3] = &unk_1E6ED60C8;
  v14[4] = self;
  v15 = v9;
  v11 = v9;
  v12 = _Block_copy(v14);
  LOBYTE(self) = [CNEqualsBuilder isObject:self equalToOther:v11 withBlocks:v22, v6, v8, v10, v12, 0];

  return self;
}

- (unint64_t)hash
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__CNFoundationSocialProfile_hash__block_invoke;
  v13[3] = &unk_1E6ED5F00;
  v13[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__CNFoundationSocialProfile_hash__block_invoke_2;
  aBlock[3] = &unk_1E6ED5F00;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__CNFoundationSocialProfile_hash__block_invoke_3;
  v11[3] = &unk_1E6ED5F00;
  v11[4] = self;
  v4 = _Block_copy(v11);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__CNFoundationSocialProfile_hash__block_invoke_4;
  v10[3] = &unk_1E6ED5F00;
  v10[4] = self;
  v5 = _Block_copy(v10);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__CNFoundationSocialProfile_hash__block_invoke_5;
  v9[3] = &unk_1E6ED5F00;
  v9[4] = self;
  v6 = _Block_copy(v9);
  v7 = [CNHashBuilder hashWithBlocks:v13, v3, v4, v5, v6, 0];

  return v7;
}

@end