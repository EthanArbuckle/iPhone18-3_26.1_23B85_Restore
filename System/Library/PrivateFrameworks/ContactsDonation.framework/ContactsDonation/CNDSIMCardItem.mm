@interface CNDSIMCardItem
- (BOOL)isEqual:(id)a3;
- (CNDSIMCardItem)initWithCoder:(id)a3;
- (CNDSIMCardItem)initWithIdentifier:(id)a3 value:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNDSIMCardItem

- (CNDSIMCardItem)initWithIdentifier:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_1 != -1)
  {
    [CNDSIMCardItem initWithIdentifier:value:];
  }

  v8 = CNGuardOSLog_cn_once_object_0_1;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_1, OS_LOG_TYPE_FAULT))
  {
    [CNDSIMCardItem initWithIdentifier:v8 value:?];
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

  if (CNGuardOSLog_cn_once_token_0_1 != -1)
  {
    [CNDSIMCardItem initWithIdentifier:value:];
  }

  v9 = CNGuardOSLog_cn_once_object_0_1;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_1, OS_LOG_TYPE_FAULT))
  {
    [CNDSIMCardItem initWithIdentifier:v9 value:?];
  }

LABEL_10:
  v17.receiver = self;
  v17.super_class = CNDSIMCardItem;
  v10 = [(CNDSIMCardItem *)&v17 init];
  if (v10)
  {
    v11 = [v6 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v7 copy];
    value = v10->_value;
    v10->_value = v13;

    v15 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [(CNDSIMCardItem *)self identifier];
  v5 = [v3 appendName:@"identifier" object:v4];

  v6 = [(CNDSIMCardItem *)self value];
  v7 = [v3 appendName:@"value" object:v6];

  v8 = [v3 build];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CFBE18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __26__CNDSIMCardItem_isEqual___block_invoke;
  v15[3] = &unk_2785698D8;
  v15[4] = self;
  v16 = v4;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __26__CNDSIMCardItem_isEqual___block_invoke_2;
  v12 = &unk_2785698D8;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = MEMORY[0x22AA69CD0](&v9);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, v9, v10, v11, v12, v13}];

  return self;
}

uint64_t __26__CNDSIMCardItem_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CFBE18];
  v3 = [*(a1 + 32) identifier];
  v4 = [*(a1 + 40) identifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __26__CNDSIMCardItem_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CFBE18];
  v3 = [*(a1 + 32) value];
  v4 = [*(a1 + 40) value];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x277CFBE38];
  v6[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __22__CNDSIMCardItem_hash__block_invoke;
  v7[3] = &unk_278569900;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __22__CNDSIMCardItem_hash__block_invoke_2;
  v6[3] = &unk_278569900;
  v3 = MEMORY[0x22AA69CD0](v6, a2);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __22__CNDSIMCardItem_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) identifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __22__CNDSIMCardItem_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) value];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (CNDSIMCardItem)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNDSIMCardItem;
  v5 = [(CNDSIMCardItem *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_value"];
    v10 = [v9 copy];
    value = v5->_value;
    v5->_value = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"_identifier"];
  [v5 encodeObject:self->_value forKey:@"_value"];
}

@end