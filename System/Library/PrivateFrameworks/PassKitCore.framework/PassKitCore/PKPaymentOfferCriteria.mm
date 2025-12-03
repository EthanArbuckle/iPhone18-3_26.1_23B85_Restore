@interface PKPaymentOfferCriteria
+ (id)paymentOfferCritieraWithDictionary:(id)dictionary;
- (BOOL)eligibleWithConfiguration:(id)configuration ineligibleReason:(unint64_t *)reason;
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferCriteria)initWithCoder:(id)coder;
- (PKPaymentOfferCriteria)initWithDictionary:(id)dictionary;
- (id)associatedPassUniqueID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)instoreCapabilitiesString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferCriteria

- (PKPaymentOfferCriteria)initWithDictionary:(id)dictionary
{
  v43 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v41.receiver = self;
  v41.super_class = PKPaymentOfferCriteria;
  v5 = [(PKPaymentOfferCriteria *)&v41 init];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = [dictionaryCopy PKStringForKey:@"identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [dictionaryCopy PKStringForKey:@"type"];
  v5->_type = PKPaymentOfferCriteriaTypeFromString(v8);

  v9 = [dictionaryCopy PKStringForKey:@"eligibility"];
  v10 = v9;
  if (v9 == @"eligible")
  {
    goto LABEL_5;
  }

  if (!v9)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v11 = [(__CFString *)v9 isEqualToString:@"eligible"];

  if ((v11 & 1) == 0)
  {
    v13 = v10;
    if (v13 == @"notEligible" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"notEligible"], v14, v15))
    {
      v12 = 2;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_5:
  v12 = 1;
LABEL_10:

  v5->_eligibility = v12;
  v16 = [dictionaryCopy PKStringForKey:@"passSerialNumber"];
  passSerialNumber = v5->_passSerialNumber;
  v5->_passSerialNumber = v16;

  v18 = [dictionaryCopy PKStringForKey:@"passTypeIdentifier"];
  passTypeIdentifier = v5->_passTypeIdentifier;
  v5->_passTypeIdentifier = v18;

  v20 = [dictionaryCopy PKStringForKey:@"fpanIdentifier"];
  fpanIdentifier = v5->_fpanIdentifier;
  v5->_fpanIdentifier = v20;

  v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"instoreCapabilities"];
  if ([v23 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      do
      {
        v28 = 0;
        do
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = PKPaymentOfferInstoreCapabilityFromString(*(*(&v37 + 1) + 8 * v28));
          if (v29)
          {
            v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v29, v37}];
            [v22 addObject:v30];
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v26);
    }
  }

  else if ([dictionaryCopy PKBoolForKey:@"supportsInstore"])
  {
    [v22 addObject:&unk_1F23B4B68];
    [v22 addObject:&unk_1F23B4B80];
  }

  v31 = [v22 count];
  if (v31)
  {
    v31 = [v22 copy];
  }

  instoreCapabilities = v5->_instoreCapabilities;
  v5->_instoreCapabilities = v31;

  v33 = [dictionaryCopy PKDictionaryForKey:@"dynamicContent"];
  if (v33)
  {
    v34 = [[PKPaymentOfferDynamicContent alloc] initWithDictionary:v33];
    dynamicContent = v5->_dynamicContent;
    v5->_dynamicContent = v34;
  }

LABEL_28:
  return v5;
}

+ (id)paymentOfferCritieraWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy PKStringForKey:@"identifier"];
  if (v4 && (([dictionaryCopy PKStringForKey:@"type"], v5 = objc_claimAutoreleasedReturnValue(), v6 = PKPaymentOfferCriteriaTypeFromString(v5), v5, v6 == 1) || v6 == 2) && (v7 = objc_opt_class()) != 0)
  {
    v8 = [[v7 alloc] initWithDictionary:dictionaryCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)associatedPassUniqueID
{
  passSerialNumber = self->_passSerialNumber;
  if (passSerialNumber)
  {
    passTypeIdentifier = self->_passTypeIdentifier;
    if (passTypeIdentifier)
    {
      passTypeIdentifier = PKGeneratePassUniqueID(passTypeIdentifier, passSerialNumber);
      v2 = vars8;
    }
  }

  else
  {
    passTypeIdentifier = 0;
  }

  return passTypeIdentifier;
}

- (BOOL)eligibleWithConfiguration:(id)configuration ineligibleReason:(unint64_t *)reason
{
  eligibility = self->_eligibility;
  if (reason)
  {
    *reason = 2 * (eligibility != 1);
  }

  return eligibility == 1;
}

- (id)instoreCapabilitiesString
{
  v2 = [(NSSet *)self->_instoreCapabilities pk_setByApplyingBlock:&__block_literal_global_29];
  allObjects = [v2 allObjects];
  v4 = [allObjects componentsJoinedByString:{@", "}];

  return v4;
}

__CFString *__51__PKPaymentOfferCriteria_instoreCapabilitiesString__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  v3 = @"unknown";
  if (v2 == 1)
  {
    v3 = @"prePurchase";
  }

  if (v2 == 2)
  {
    v4 = @"postPurchase";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  type = self->_type;
  v5 = @"installments";
  if (type != 1)
  {
    v5 = @"unknown";
  }

  if (type == 2)
  {
    v6 = @"rewards";
  }

  else
  {
    v6 = v5;
  }

  [v3 setObject:v6 forKeyedSubscript:@"type"];
  eligibility = self->_eligibility;
  v8 = @"eligible";
  if (eligibility != 1)
  {
    v8 = @"unknown";
  }

  if (eligibility == 2)
  {
    v9 = @"notEligible";
  }

  else
  {
    v9 = v8;
  }

  [v3 setObject:v9 forKeyedSubscript:@"eligibility"];
  [v3 setObject:self->_passSerialNumber forKeyedSubscript:@"passSerialNumber"];
  [v3 setObject:self->_passTypeIdentifier forKeyedSubscript:@"passTypeIdentifier"];
  [v3 setObject:self->_fpanIdentifier forKeyedSubscript:@"fpanIdentifier"];
  allObjects = [(NSSet *)self->_instoreCapabilities allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"instoreCapabilities"];

  dictionaryRepresentation = [(PKPaymentOfferDynamicContent *)self->_dynamicContent dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"dynamicContent"];

  v12 = [v3 copy];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        identifier = v6->_identifier;
        v8 = self->_identifier;
        v9 = identifier;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_36;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_37;
          }
        }

        if (self->_type != v6->_type || self->_eligibility != v6->_eligibility)
        {
          goto LABEL_37;
        }

        instoreCapabilities = self->_instoreCapabilities;
        v14 = v6->_instoreCapabilities;
        if (instoreCapabilities && v14)
        {
          if (([(NSSet *)instoreCapabilities isEqual:?]& 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else if (instoreCapabilities != v14)
        {
          goto LABEL_37;
        }

        passSerialNumber = v6->_passSerialNumber;
        v8 = self->_passSerialNumber;
        v16 = passSerialNumber;
        v10 = v16;
        if (v8 == v16)
        {
        }

        else
        {
          if (!v8 || !v16)
          {
            goto LABEL_36;
          }

          v17 = [(NSString *)v8 isEqualToString:v16];

          if (!v17)
          {
            goto LABEL_37;
          }
        }

        passTypeIdentifier = v6->_passTypeIdentifier;
        v8 = self->_passTypeIdentifier;
        v19 = passTypeIdentifier;
        v10 = v19;
        if (v8 == v19)
        {
        }

        else
        {
          if (!v8 || !v19)
          {
            goto LABEL_36;
          }

          v20 = [(NSString *)v8 isEqualToString:v19];

          if (!v20)
          {
            goto LABEL_37;
          }
        }

        fpanIdentifier = v6->_fpanIdentifier;
        v8 = self->_fpanIdentifier;
        v22 = fpanIdentifier;
        v10 = v22;
        if (v8 == v22)
        {

LABEL_41:
          dynamicContent = self->_dynamicContent;
          v26 = v6->_dynamicContent;
          if (dynamicContent && v26)
          {
            v12 = [(PKPaymentOfferDynamicContent *)dynamicContent isEqual:?];
          }

          else
          {
            v12 = dynamicContent == v26;
          }

          goto LABEL_38;
        }

        if (v8 && v22)
        {
          v23 = [(NSString *)v8 isEqualToString:v22];

          if (v23)
          {
            goto LABEL_41;
          }

LABEL_37:
          v12 = 0;
LABEL_38:

          goto LABEL_39;
        }

LABEL_36:

        goto LABEL_37;
      }
    }

    v12 = 0;
  }

LABEL_39:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_passSerialNumber];
  [v3 safelyAddObject:self->_passTypeIdentifier];
  [v3 safelyAddObject:self->_fpanIdentifier];
  [v3 safelyAddObject:self->_dynamicContent];
  [v3 safelyAddObject:self->_instoreCapabilities];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_eligibility - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  type = self->_type;
  v5 = @"installments";
  if (type != 1)
  {
    v5 = @"unknown";
  }

  if (type == 2)
  {
    v6 = @"rewards";
  }

  else
  {
    v6 = v5;
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  eligibility = self->_eligibility;
  v8 = @"eligible";
  if (eligibility != 1)
  {
    v8 = @"unknown";
  }

  if (eligibility == 2)
  {
    v9 = @"notEligible";
  }

  else
  {
    v9 = v8;
  }

  [v3 appendFormat:@"eligibility: '%@'; ", v9];
  [v3 appendFormat:@"passSerialNumber: '%@'; ", self->_passSerialNumber];
  [v3 appendFormat:@"passTypeIdentifier: '%@'; ", self->_passTypeIdentifier];
  [v3 appendFormat:@"fpanIdentifier: '%@'; ", self->_fpanIdentifier];
  v10 = [(NSSet *)self->_instoreCapabilities pk_setByApplyingBlock:&__block_literal_global_155];
  [v3 appendFormat:@"instoreCapabilities: '%@'; ", v10];

  [v3 appendFormat:@"dynamicContent: '%@'; ", self->_dynamicContent];
  [v3 appendFormat:@">"];

  return v3;
}

__CFString *__37__PKPaymentOfferCriteria_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  v3 = @"unknown";
  if (v2 == 1)
  {
    v3 = @"prePurchase";
  }

  if (v2 == 2)
  {
    v4 = @"postPurchase";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (PKPaymentOfferCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = PKPaymentOfferCriteria;
  v5 = [(PKPaymentOfferCriteria *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_eligibility = [coderCopy decodeIntegerForKey:@"eligibility"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fpanIdentifier"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"instoreCapabilities"];
    instoreCapabilities = v5->_instoreCapabilities;
    v5->_instoreCapabilities = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dynamicContent"];
    dynamicContent = v5->_dynamicContent;
    v5->_dynamicContent = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_eligibility forKey:@"eligibility"];
  [coderCopy encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [coderCopy encodeObject:self->_passTypeIdentifier forKey:@"passTypeIdentifier"];
  [coderCopy encodeObject:self->_fpanIdentifier forKey:@"fpanIdentifier"];
  [coderCopy encodeObject:self->_instoreCapabilities forKey:@"instoreCapabilities"];
  [coderCopy encodeObject:self->_dynamicContent forKey:@"dynamicContent"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v5[3] = self->_type;
  v5[2] = self->_eligibility;
  v8 = [(NSString *)self->_passSerialNumber copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_passTypeIdentifier copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_fpanIdentifier copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSSet *)self->_instoreCapabilities copyWithZone:zone];
  v15 = v5[7];
  v5[7] = v14;

  v16 = [(PKPaymentOfferDynamicContent *)self->_dynamicContent copyWithZone:zone];
  v17 = v5[8];
  v5[8] = v16;

  return v5;
}

@end