@interface CNAutocompleteResultValue
+ (id)normalizedAddressForValue:(id)a3;
+ (id)resultValueWithAddress:(id)a3 addressType:(int64_t)a4 label:(id)a5;
+ (id)stringForHashingValue:(id)a3;
- (BOOL)addressExactlyMatchesSearchTerm:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)addressTypeDescription;
- (id)description;
- (id)stringForHashing;
- (id)stringForSorting;
- (unint64_t)hash;
@end

@implementation CNAutocompleteResultValue

+ (id)resultValueWithAddress:(id)a3 addressType:(int64_t)a4 label:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(a1);
  [v10 setAddress:v9];

  [v10 setAddressType:a4];
  [v10 setLabel:v8];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_addressType == *(a3 + 2))
    {
      address = self->_address;
      if (!(address | *(a3 + 1)) || (v6 = [(NSString *)address isEqual:?]) != 0)
      {
        identifier = self->_identifier;
        if (!(identifier | *(a3 + 4)) || (v6 = [(NSString *)identifier isEqual:?]) != 0)
        {
          label = self->_label;
          if (!(label | *(a3 + 5)) || (v6 = [(NSString *)label isEqual:?]) != 0)
          {
            instantMessageAddressService = self->_instantMessageAddressService;
            if (!(instantMessageAddressService | *(a3 + 3)) || (v6 = [(NSString *)instantMessageAddressService isEqual:?]) != 0)
            {
              LOBYTE(v6) = 1;
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CFBE38];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __33__CNAutocompleteResultValue_hash__block_invoke;
  v14[3] = &unk_2781C4ED8;
  v14[4] = self;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__CNAutocompleteResultValue_hash__block_invoke_2;
  aBlock[3] = &unk_2781C4ED8;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __33__CNAutocompleteResultValue_hash__block_invoke_3;
  v12[3] = &unk_2781C4ED8;
  v12[4] = self;
  v5 = _Block_copy(v12);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__CNAutocompleteResultValue_hash__block_invoke_4;
  v11[3] = &unk_2781C4ED8;
  v11[4] = self;
  v6 = _Block_copy(v11);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__CNAutocompleteResultValue_hash__block_invoke_5;
  v10[3] = &unk_2781C4ED8;
  v10[4] = self;
  v7 = _Block_copy(v10);
  v8 = [v3 hashWithBlocks:{v14, v4, v5, v6, v7, 0}];

  return v8;
}

uint64_t __33__CNAutocompleteResultValue_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) address];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __33__CNAutocompleteResultValue_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) identifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __33__CNAutocompleteResultValue_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) label];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __33__CNAutocompleteResultValue_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) instantMessageAddressService];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __33__CNAutocompleteResultValue_hash__block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) addressType];

  return [v1 integerHash:v2];
}

- (id)stringForHashing
{
  v3 = [(CNAutocompleteResultValue *)self stringForHashingMemo];

  if (!v3)
  {
    v4 = [objc_opt_class() stringForHashingValue:self];
    v5 = (*(*MEMORY[0x277CFBD40] + 16))();
    [(CNAutocompleteResultValue *)self setStringForHashingMemo:v5];
  }

  v6 = *MEMORY[0x277CFBD48];
  v7 = [(CNAutocompleteResultValue *)self stringForHashingMemo];
  v8 = (*(v6 + 16))(v6, v7);

  return v8;
}

+ (id)stringForHashingValue:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CFBD30];
  v6 = [v4 address];
  LOBYTE(v5) = (*(v5 + 16))(v5, v6);

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v8 = [a1 normalizedAddressForValue:v4];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@+%lu", v8, objc_msgSend(v4, "addressType")];
  }

  return v7;
}

+ (id)normalizedAddressForValue:(id)a3
{
  v3 = a3;
  v4 = [v3 addressType];
  v5 = &CNAutocompleteResultAddressStringForHashingPhoneNumberTransform;
  if (v4 != 2)
  {
    v5 = &CNAutocompleteResultAddressStringForHashingEmailTransform;
  }

  v6 = *v5;
  v7 = [v3 address];

  v8 = (*(v6 + 16))(v6, v7);

  return v8;
}

- (id)stringForSorting
{
  if ([(CNAutocompleteResultValue *)self addressType]== 3)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [(CNAutocompleteResultValue *)self address];
    v5 = [(CNAutocompleteResultValue *)self instantMessageAddressService];
    v6 = [v3 stringWithFormat:@"%@ <%@>", v4, v5];
  }

  else
  {
    v6 = [(CNAutocompleteResultValue *)self address];
  }

  return v6;
}

- (BOOL)addressExactlyMatchesSearchTerm:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteResultValue *)self address];

  if (v5)
  {
    v6 = [(CNAutocompleteResultValue *)self address];
    v7 = [v6 _cn_caseInsensitiveIsEqual:v4];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = v4;
      if (([v9 _cn_containsSubstring:@"@"] & 1) == 0)
      {
        v10 = [v9 stringByAppendingString:@"@"];

        v9 = v10;
      }

      v11 = [(CNAutocompleteResultValue *)self address];
      v12 = [v11 rangeOfString:v9 options:137];

      v8 = v12 != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [(CNAutocompleteResultValue *)self address];
  v5 = [v3 appendName:@"address" object:v4];

  v6 = [(CNAutocompleteResultValue *)self identifier];
  v7 = [v3 appendName:@"id" object:v6];

  v8 = [(CNAutocompleteResultValue *)self label];
  v9 = [v3 appendName:@"label" object:v8];

  v10 = [(CNAutocompleteResultValue *)self addressTypeDescription];
  v11 = [v3 appendName:@"addressType" object:v10];

  v12 = [(CNAutocompleteResultValue *)self instantMessageAddressService];
  v13 = [v3 appendName:@"instantMessageAddressService" object:v12];

  v14 = [v3 build];

  return v14;
}

- (id)addressTypeDescription
{
  v2 = [(CNAutocompleteResultValue *)self addressType];
  if ((v2 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2781C4EF8[v2 - 1];
  }
}

@end