@interface PKPassShareActivationOptions
+ (id)optionsFromRemoteOptions:(id)a3 localOptions:(id)a4;
- (BOOL)containsOptionOfType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPassShareActivationOptions:(id)a3;
- (NSString)activationCode;
- (NSString)localizationKeyPostfixForInitiation;
- (PKPassShareActivationOption)primaryOption;
- (PKPassShareActivationOptions)initWithCarKeyIdentifiers:(id)a3;
- (PKPassShareActivationOptions)initWithCoder:(id)a3;
- (PKPassShareActivationOptions)initWithDefaultIdentifierForType:(unint64_t)a3;
- (PKPassShareActivationOptions)initWithOptions:(id)a3;
- (PKPassShareActivationOptions)optionsWithoutValues;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)optionOfType:(unint64_t)a3;
- (id)optionOfTypes:(id)a3;
- (id)optionsExcludingIdentifier:(id)a3 type:(unint64_t)a4;
- (id)optionsOfType:(unint64_t)a3;
- (id)optionsOfTypes:(id)a3;
- (unint64_t)hash;
@end

@implementation PKPassShareActivationOptions

- (PKPassShareActivationOptions)initWithOptions:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v10.receiver = self;
    v10.super_class = PKPassShareActivationOptions;
    v6 = [(PKPassShareActivationOptions *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_options, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PKPassShareActivationOptions)initWithCarKeyIdentifiers:(id)a3
{
  if (a3)
  {
    v4 = [a3 pk_arrayBySafelyApplyingBlock:&__block_literal_global_38];
    self = [(PKPassShareActivationOptions *)self initWithOptions:v4];

    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

PKPassShareActivationOption *__58__PKPassShareActivationOptions_initWithCarKeyIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPassShareActivationOption alloc] initWithCarKeyIdentifier:v2];

  return v3;
}

- (PKPassShareActivationOptions)initWithDefaultIdentifierForType:(unint64_t)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [[PKPassShareActivationOption alloc] initWithDefaultIdentifierForType:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(PKPassShareActivationOptions *)self initWithOptions:v5];

  return v6;
}

+ (id)optionsFromRemoteOptions:(id)a3 localOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!(v5 | v6))
  {
    v8 = 0;
    goto LABEL_13;
  }

  if (v5 && !v6)
  {
    v6 = v5;
LABEL_8:
    v8 = [v6 copy];
    goto LABEL_13;
  }

  if (!v5 && v6)
  {
    goto LABEL_8;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = [v7 identifiers];
  v11 = [v10 containsObject:@"sharingPasswordActivation"];

  v12 = [v5 identifiers];
  v13 = [v12 containsObject:@"sharingPasswordActivation"];

  v14 = [v5 options];
  [v9 addObjectsFromArray:v14];

  if (v11 && (v13 & 1) == 0)
  {
    v15 = [v7 optionsExcludingIdentifier:@"sharingPasswordActivation" type:2];
    [v9 addObjectsFromArray:v15];
  }

  v16 = [PKPassShareActivationOptions alloc];
  v17 = [v9 allObjects];
  v8 = [(PKPassShareActivationOptions *)v16 initWithOptions:v17];

LABEL_13:

  return v8;
}

- (NSString)activationCode
{
  v2 = [(NSArray *)self->_options pk_firstObjectPassingTest:&__block_literal_global_187];
  v3 = [v2 value];

  return v3;
}

BOOL __46__PKPassShareActivationOptions_activationCode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  if (v3 > 4 || ((1 << v3) & 0x16) == 0)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v2 value];
    v6 = v5 != 0;
  }

  return v6;
}

- (PKPassShareActivationOption)primaryOption
{
  v3 = [(PKPassShareActivationOptions *)self optionOfTypes:&unk_1F23B3C50];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NSArray *)self->_options firstObject];
  }

  v6 = v5;

  return v6;
}

- (id)optionsExcludingIdentifier:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  options = self->_options;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__PKPassShareActivationOptions_optionsExcludingIdentifier_type___block_invoke;
  v14[3] = &unk_1E79CC168;
  v15 = v6;
  v16 = a4;
  v8 = v6;
  v9 = [(NSArray *)options pk_objectsPassingTest:v14];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = v11;

  return v11;
}

BOOL __64__PKPassShareActivationOptions_optionsExcludingIdentifier_type___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v6 || !v7)
    {

LABEL_9:
      v10 = [v3 type] != *(a1 + 40);
      goto LABEL_10;
    }

    v9 = [v6 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

BOOL __57__PKPassShareActivationOptions_containsVehicleEnteredPin__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 identifier];
  v4 = v3;
  v5 = v3 && [v3 isEqual:@"sharingPasswordActivation"] && objc_msgSend(v2, "type") == 2;

  return v5;
}

BOOL __46__PKPassShareActivationOptions_containsKeyFob__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 identifier];
  v4 = v3;
  v5 = v3 && [v3 isEqual:@"keyFobActivation"] && objc_msgSend(v2, "type") == 3;

  return v5;
}

- (BOOL)containsOptionOfType:(unint64_t)a3
{
  options = self->_options;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PKPassShareActivationOptions_containsOptionOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e37_B16__0__PKPassShareActivationOption_8l;
  v5[4] = a3;
  return [(NSArray *)options pk_containsObjectPassingTest:v5];
}

- (id)optionOfType:(unint64_t)a3
{
  options = self->_options;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PKPassShareActivationOptions_optionOfType___block_invoke;
  v6[3] = &__block_descriptor_40_e37_B16__0__PKPassShareActivationOption_8l;
  v6[4] = a3;
  v4 = [(NSArray *)options pk_firstObjectPassingTest:v6];

  return v4;
}

- (id)optionOfTypes:(id)a3
{
  v4 = a3;
  options = self->_options;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__PKPassShareActivationOptions_optionOfTypes___block_invoke;
  v9[3] = &unk_1E79CC1B0;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)options pk_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __46__PKPassShareActivationOptions_optionOfTypes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "type")}];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)optionsOfTypes:(id)a3
{
  v4 = a3;
  options = self->_options;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__PKPassShareActivationOptions_optionsOfTypes___block_invoke;
  v11[3] = &unk_1E79CC1D8;
  v12 = v4;
  v6 = v4;
  v7 = [(NSArray *)options pk_objectsPassingTest:v11];
  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

uint64_t __47__PKPassShareActivationOptions_optionsOfTypes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "type")}];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)optionsOfType:(unint64_t)a3
{
  options = self->_options;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PKPassShareActivationOptions_optionsOfType___block_invoke;
  v8[3] = &__block_descriptor_40_e44_B32__0__PKPassShareActivationOption_8Q16_B24l;
  v8[4] = a3;
  v4 = [(NSArray *)options pk_objectsPassingTest:v8];
  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (PKPassShareActivationOptions)optionsWithoutValues
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(PKPassShareActivationOptions *)self copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2[1];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 value];
        v10 = v9;
        if (v9)
        {
          [v8 setValueLength:{objc_msgSend(v9, "length")}];
        }

        [v8 setValue:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

- (NSString)localizationKeyPostfixForInitiation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPassShareActivationOptions_localizationKeyPostfixForInitiation__block_invoke;
  aBlock[3] = &unk_1E79CC1B0;
  v4 = v3;
  v24 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [(PKPassShareActivationOptions *)self optionOfType:1];
  v7 = v5[2](v5, v6);

  if ((v7 & 1) == 0)
  {
    v8 = [(PKPassShareActivationOptions *)self optionOfType:4];
    if ((v5[2](v5, v8) & 1) == 0)
    {
      v9 = [(PKPassShareActivationOptions *)self optionOfType:2];
      v5[2](v5, v9);
    }

    v10 = [(PKPassShareActivationOptions *)self optionsOfType:3];
    v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_204];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v5[2](v5, *(*(&v19 + 1) + 8 * i));
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v14);
    }
  }

  v17 = [v4 copy];

  return v17;
}

BOOL __67__PKPassShareActivationOptions_localizationKeyPostfixForInitiation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if ([*(a1 + 32) length])
    {
      [*(a1 + 32) appendString:@"_"];
    }

    v4 = *(a1 + 32);
    v5 = [v3 localizationKeyPostfixForInitiation];
    [v4 appendString:v5];
  }

  return v3 != 0;
}

uint64_t __67__PKPassShareActivationOptions_localizationKeyPostfixForInitiation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (PKPassShareActivationOptions)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"options"];

  v9 = [(PKPassShareActivationOptions *)self initWithOptions:v8];
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ ", v5];;

  [v6 appendFormat:@"options: '%@'; ", self->_options];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_options)
  {
    [v3 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassShareActivationOptions *)self isEqualToPassShareActivationOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassShareActivationOptions:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  options = self->_options;
  v4 = *(a3 + 1);
  if (options)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return options == v4;
  }

  else
  {
    return [(NSArray *)options isEqual:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(NSArray *)self->_options pk_arrayByApplyingBlock:&__block_literal_global_216];
  v4 = [[PKPassShareActivationOptions alloc] initWithOptions:v3];

  return v4;
}

id __45__PKPassShareActivationOptions_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

@end