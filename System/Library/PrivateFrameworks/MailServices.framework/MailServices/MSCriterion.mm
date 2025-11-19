@interface MSCriterion
- (MSCriterion)initWithCoder:(id)a3;
- (MSCriterion)initWithCriteria:(id)a3 allRequired:(BOOL)a4;
- (MSCriterion)initWithType:(id)a3 qualifier:(id)a4 expression:(id)a5;
- (id)_initWithType:(id)a3 qualifier:(id)a4 criteria:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSCriterion

- (id)_initWithType:(id)a3 qualifier:(id)a4 criteria:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = MSCriterion;
  v12 = [(MSCriterion *)&v28 init];
  p_isa = &v12->super.isa;
  v14 = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_type, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    if ([v14[1] isEqual:@"_MSCriterionTypeComplex"])
    {
      v15 = p_isa[3];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = MEMORY[0x1E695DF30];
        v17 = p_isa[3];
        v18 = objc_opt_class();
        v19 = @"Expected array for complex type, but received %@";
LABEL_8:
        [v16 raise:@"InvalidCriterionType" format:{v19, v18}];
      }
    }

    else
    {
      if (![p_isa[1] isEqual:@"MSCriterionTypeReceivedDate"])
      {
        if ([p_isa[1] isEqual:@"MSCriterionTypeReadStatus"])
        {
          v22 = p_isa[3];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (([p_isa[3] isEqualToString:@"MSCriterionExpressionRead"] & 1) != 0 || (objc_msgSend(p_isa[3], "isEqualToString:", @"MSCriterionExpressionUnread")))
          {
            goto LABEL_19;
          }

          v23 = @"Expected either MSCriterionExpressionRead or MSCriterionExpressionUnread for read status criteria type.";
        }

        else
        {
          if (([p_isa[1] isEqual:@"MSCriterionTypeMessageReference"] & 1) == 0 && !objc_msgSend(p_isa[1], "isEqual:", @"MSCriterionTypeConversationReference"))
          {
            v26 = p_isa[3];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_19;
            }

            v16 = MEMORY[0x1E695DF30];
            v27 = p_isa[3];
            v18 = objc_opt_class();
            v19 = @"Expected string for criteria, but received %@";
            goto LABEL_8;
          }

          v24 = p_isa[3];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_19;
          }

          v23 = @"Expected a valid reference for reference criterion type";
        }

        [MEMORY[0x1E695DF30] raise:@"InvalidCriterionType" format:v23];
        goto LABEL_19;
      }

      v20 = p_isa[3];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = MEMORY[0x1E695DF30];
        v21 = p_isa[3];
        v18 = objc_opt_class();
        v19 = @"Expected date for date criteria type, but received %@";
        goto LABEL_8;
      }
    }
  }

LABEL_19:

  return v14;
}

- (MSCriterion)initWithType:(id)a3 qualifier:(id)a4 expression:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 copy];

  v12 = [(MSCriterion *)self _initWithType:v8 qualifier:v9 criteria:v11];
  return v12;
}

- (MSCriterion)initWithCriteria:(id)a3 allRequired:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 copy];

  if (v4)
  {
    v8 = @"_MSCriterionQualifierAllRequired";
  }

  else
  {
    v8 = @"_MSCriterionQualifierNotAllRequired";
  }

  v9 = [(MSCriterion *)self _initWithType:@"_MSCriterionTypeComplex" qualifier:v8 criteria:v7];

  return v9;
}

- (MSCriterion)initWithCoder:(id)a3
{
  v22[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 allowsKeyedCoding] && objc_msgSend(v4, "containsValueForKey:", @"_MSCodingKeyVersion") && objc_msgSend(v4, "decodeInt32ForKey:", @"_MSCodingKeyVersion") == 1)
  {
    v5 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v22[3] = objc_opt_class();
    v22[4] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];
    v7 = [v5 setWithArray:v6];

    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"_MSCodingKeyCriteria"];
    if (!v8)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"MSCriterion requires the criterion criteria not be nil."];
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_MSCodingKeyType"];
    if (!v9)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"MSCriterion requires the criterion type be a NSString."];
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_MSCodingKeyQualifier"];
    if (!v10)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"MSCriterion requires the criterion qualifier be a NSString."];
    }

    v11 = 0;
    v21[2] = xmmword_1E855EED8;
    v21[3] = *&off_1E855EEE8;
    v21[4] = xmmword_1E855EEF8;
    v20[0] = @"MSCriterionQualifierContains";
    v20[1] = @"MSCriterionQualifierDoesNotContain";
    v20[2] = @"MSCriterionQualifierGreaterThan";
    v20[3] = @"MSCriterionQualifierLessThan";
    v20[4] = @"_MSCriterionQualifierAllRequired";
    v20[5] = @"_MSCriterionQualifierNotAllRequired";
    v21[0] = xmmword_1E855EEB8;
    v21[1] = *&off_1E855EEC8;
    while (1)
    {
      v12 = *(v21 + v11);
      if ([v12 isEqualToString:v9])
      {
        break;
      }

      v11 += 8;
      if (v11 == 80)
      {
        v12 = 0;
        break;
      }
    }

    v13 = 0;
    while (1)
    {
      v14 = v20[v13];
      if ([v14 isEqualToString:v10])
      {
        break;
      }

      if (++v13 == 6)
      {
        v14 = 0;
        goto LABEL_23;
      }
    }

    if (v12 && v14)
    {
      v15 = [(MSCriterion *)self _initWithType:v12 qualifier:v14 criteria:v8];
      goto LABEL_24;
    }

LABEL_23:

    v15 = 0;
LABEL_24:
    for (i = 5; i != -1; --i)
    {
    }

    for (j = 72; j != -8; j -= 8)
    {
    }
  }

  else
  {

    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"A Keyed archiver is required for encoding MSCriterion."];
  }

  [v4 encodeInt32:1 forKey:@"_MSCodingKeyVersion"];
  [v4 encodeObject:self->_type forKey:@"_MSCodingKeyType"];
  [v4 encodeObject:self->_qualifier forKey:@"_MSCodingKeyQualifier"];
  [v4 encodeObject:self->_criteria forKey:@"_MSCodingKeyCriteria"];
}

@end