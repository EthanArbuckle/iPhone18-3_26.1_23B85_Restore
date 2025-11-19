@interface PKPassAutomaticSelectionCriterion
+ (id)criterionForExpressMode:(id)a3;
+ (id)expressModeForCriterion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPassAutomaticSelectionCriterion)initWithCoder:(id)a3;
- (PKPassAutomaticSelectionCriterion)initWithDictionary:(id)a3;
- (id)asDictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAutomaticSelectionCriterion

- (unint64_t)hash
{
  v3 = [(NSString *)self->_type hash];
  v4 = [(NSSet *)self->_primaryTCIs hash]- v3 + 32 * v3;
  v5 = [(NSSet *)self->_TCIs hash]- v4 + 32 * v4;
  v6 = [(NSData *)self->_mask hash]- v5 + 32 * v5;
  v7 = [(NSSet *)self->_readerIDs hash]- v6 + 32 * v6;
  v8 = [(NSSet *)self->_associatedReaderIDs hash];
  v9 = self->_supportsInSessionExpress - (v8 - v7 + 32 * v7) + 32 * (v8 - v7 + 32 * v7);
  return self->_supportsExpress - v9 + 32 * v9 + 0xD2FD88B5F11;
}

+ (id)criterionForExpressMode:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    v6 = 0;
    goto LABEL_13;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"supportsExpress"];
  if (([v3 isEqualToString:@"transit.felica.suica"] & 1) == 0)
  {
    if ([v3 hasPrefix:@"access.hid."])
    {
      v5 = [v3 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(@"access.hid.", "length"), @"ecp.1.access."}];
      if (v5)
      {
        goto LABEL_10;
      }
    }

    else if ([v3 isEqualToString:@"type_a.generic"])
    {
      v5 = @"generic.type_a";
      goto LABEL_10;
    }

    v6 = 0;
    goto LABEL_12;
  }

  v5 = @"suica";
LABEL_10:
  [v4 setObject:v5 forKeyedSubscript:@"type"];
  v6 = [[PKPassAutomaticSelectionCriterion alloc] initWithDictionary:v4];

LABEL_12:
LABEL_13:

  return v6;
}

+ (id)expressModeForCriterion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 technologyType];
    switch(v5)
    {
      case 3:
        v6 = &PKPaymentExpressModeTypeAGeneric;
        goto LABEL_9;
      case 2:
        v7 = [v4 type];
        if ([v7 hasPrefix:@"ecp.1.access."])
        {
          v8 = [v7 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(@"ecp.1.access.", "length"), @"access.hid."}];

          goto LABEL_12;
        }

        break;
      case 1:
        v6 = &PKPaymentExpressModeSuica;
LABEL_9:
        v8 = *v6;
        goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (PKPassAutomaticSelectionCriterion)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 PKStringForKey:@"type"];
    v7 = PKPassAutomaticSelectionTechnologyTypeFromType(v6);
    if (v6)
    {
      v8 = v7;
      v9 = [(PKPassAutomaticSelectionCriterion *)self init];
      if (!v9)
      {
LABEL_25:
        self = v9;

        v6 = self;
        goto LABEL_26;
      }

      v10 = [(PKPassAutomaticSelectionCriterion *)v6 copy];
      type = v9->_type;
      v9->_type = v10;

      v9->_technologyType = v8;
      if (v8 == 5)
      {
        v22 = [v5 PKStringForKey:@"openLoopExpressMask"];
        v23 = [v22 pk_decodeHexadecimal];
        mask = v9->_mask;
        v9->_mask = v23;

        v25 = [(NSData *)v9->_mask bytes];
        v26 = [(NSData *)v9->_mask length];
        if (v26)
        {
          if (*v25)
          {
            v21 = 1;
          }

          else
          {
            v31 = 0;
            while (v26 - 1 != v31)
            {
              if (v25[++v31])
              {
                goto LABEL_21;
              }
            }

            v31 = v26;
LABEL_21:
            v21 = v31 < v26;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        if (v8 != 4)
        {
          v21 = 1;
          goto LABEL_23;
        }

        v12 = [v5 PKArrayContaining:objc_opt_class() forKey:@"primaryTCIs"];
        v13 = __56__PKPassAutomaticSelectionCriterion_initWithDictionary___block_invoke(v12, 0);
        primaryTCIs = v9->_primaryTCIs;
        v9->_primaryTCIs = v13;

        v15 = [v5 PKArrayContaining:objc_opt_class() forKey:@"tcis"];
        v16 = __56__PKPassAutomaticSelectionCriterion_initWithDictionary___block_invoke(v15, v9->_primaryTCIs);
        TCIs = v9->_TCIs;
        v9->_TCIs = v16;

        v18 = [v5 PKArrayContaining:objc_opt_class() forKey:@"readerIDs"];
        v19 = __56__PKPassAutomaticSelectionCriterion_initWithDictionary___block_invoke(v18, 0);
        readerIDs = v9->_readerIDs;
        v9->_readerIDs = v19;

        if ([(NSSet *)v9->_primaryTCIs count])
        {
          v21 = 1;
        }

        else
        {
          v21 = [(NSSet *)v9->_TCIs count]!= 0;
        }

        v22 = [v5 PKArrayContaining:objc_opt_class() forKey:@"associatedReaderIDs"];
        v27 = MEMORY[0x1E695DFD8];
        v28 = [v22 pk_arrayBySafelyApplyingBlock:&__block_literal_global_48];
        v29 = [v27 setWithArray:v28];
        associatedReaderIDs = v9->_associatedReaderIDs;
        v9->_associatedReaderIDs = v29;
      }

LABEL_23:
      v9->_supportsInSessionExpress = [v5 PKBoolForKey:@"supportsInSessionExpress"];
      v33 = [v5 objectForKeyedSubscript:@"supportsExpress"];
      v9->_supportsExpress = [v33 BOOLValue];

      if (!v21)
      {

        v9 = 0;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_26:

  return v6;
}

id __56__PKPassAutomaticSelectionCriterion_initWithDictionary___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) pk_decodeHexadecimal];
        if ([v11 length] && (!v4 || (objc_msgSend(v4, "containsObject:", v11) & 1) == 0))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [v5 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

PKASCAssociatedReaderID *__56__PKPassAutomaticSelectionCriterion_initWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKASCAssociatedReaderID alloc] initWithDictionary:v2];

  return v3;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  type = self->_type;
  if (type)
  {
    [v3 setObject:type forKeyedSubscript:@"type"];
  }

  if ([(NSSet *)self->_primaryTCIs count])
  {
    v6 = [(NSSet *)self->_primaryTCIs pk_setByApplyingBlock:&__block_literal_global_52_2];
    v7 = [v6 allObjects];
    [v4 setObject:v7 forKeyedSubscript:@"primaryTCIs"];
  }

  if ([(NSSet *)self->_TCIs count])
  {
    v8 = [(NSSet *)self->_TCIs pk_setByApplyingBlock:&__block_literal_global_54_1];
    v9 = [v8 allObjects];
    [v4 setObject:v9 forKeyedSubscript:@"tcis"];
  }

  if ([(NSSet *)self->_readerIDs count])
  {
    v10 = [(NSSet *)self->_readerIDs pk_setByApplyingBlock:&__block_literal_global_56_0];
    v11 = [v10 allObjects];
    [v4 setObject:v11 forKeyedSubscript:@"readerIDs"];
  }

  if ([(NSSet *)self->_associatedReaderIDs count])
  {
    v12 = [(NSSet *)self->_associatedReaderIDs pk_setByApplyingBlock:&__block_literal_global_59_0];
    v13 = [v12 allObjects];
    [v4 setObject:v13 forKeyedSubscript:@"associatedReaderIDs"];
  }

  mask = self->_mask;
  if (mask)
  {
    v15 = [(NSData *)mask hexEncoding];
    [v4 setObject:v15 forKeyedSubscript:@"openLoopExpressMask"];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsInSessionExpress];
  [v4 setObject:v16 forKeyedSubscript:@"supportsInSessionExpress"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsExpress];
  [v4 setObject:v17 forKeyedSubscript:@"supportsExpress"];

  v18 = [v4 copy];

  return v18;
}

- (PKPassAutomaticSelectionCriterion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPassAutomaticSelectionCriterion *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v5->_technologyType = PKPassAutomaticSelectionTechnologyTypeFromType(v5->_type);
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"primaryTCIs"];
    primaryTCIs = v5->_primaryTCIs;
    v5->_primaryTCIs = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"tcis"];
    TCIs = v5->_TCIs;
    v5->_TCIs = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mask"];
    mask = v5->_mask;
    v5->_mask = v18;

    v5->_supportsExpress = [v4 decodeBoolForKey:@"supportsExpress"];
    v5->_supportsInSessionExpress = [v4 decodeBoolForKey:@"supportsInSessionExpress"];
    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"readerIDs"];
    readerIDs = v5->_readerIDs;
    v5->_readerIDs = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"associatedReaderIDs"];
    associatedReaderIDs = v5->_associatedReaderIDs;
    v5->_associatedReaderIDs = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeObject:type forKey:@"type"];
  [v5 encodeObject:self->_primaryTCIs forKey:@"primaryTCIs"];
  [v5 encodeObject:self->_TCIs forKey:@"tcis"];
  [v5 encodeObject:self->_mask forKey:@"mask"];
  [v5 encodeBool:self->_supportsExpress forKey:@"supportsExpress"];
  [v5 encodeBool:self->_supportsInSessionExpress forKey:@"supportsInSessionExpress"];
  [v5 encodeObject:self->_readerIDs forKey:@"readerIDs"];
  [v5 encodeObject:self->_associatedReaderIDs forKey:@"associatedReaderIDs"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (!v6)
    {
      goto LABEL_48;
    }

    type = v6->_type;
    v9 = self->_type;
    if (type)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (type != v9)
      {
        goto LABEL_48;
      }
    }

    else if (([(NSString *)type isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }

    primaryTCIs = v7->_primaryTCIs;
    v13 = self->_primaryTCIs;
    if (primaryTCIs)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (primaryTCIs != v13)
      {
        goto LABEL_48;
      }
    }

    else if (([(NSSet *)primaryTCIs isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }

    TCIs = v7->_TCIs;
    v16 = self->_TCIs;
    if (TCIs)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (TCIs != v16)
      {
        goto LABEL_48;
      }
    }

    else if (([(NSSet *)TCIs isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }

    mask = v7->_mask;
    v19 = self->_mask;
    if (mask)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      if (mask != v19)
      {
        goto LABEL_48;
      }
    }

    else if (([(NSData *)mask isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }

    if (v7->_supportsInSessionExpress == self->_supportsInSessionExpress && v7->_supportsExpress == self->_supportsExpress)
    {
      readerIDs = v7->_readerIDs;
      v22 = self->_readerIDs;
      if (readerIDs && v22)
      {
        if (([(NSSet *)readerIDs isEqual:?]& 1) != 0)
        {
LABEL_44:
          associatedReaderIDs = v7->_associatedReaderIDs;
          v24 = self->_associatedReaderIDs;
          if (associatedReaderIDs && v24)
          {
            v11 = [(NSSet *)associatedReaderIDs isEqual:?];
          }

          else
          {
            v11 = associatedReaderIDs == v24;
          }

          goto LABEL_49;
        }
      }

      else if (readerIDs == v22)
      {
        goto LABEL_44;
      }
    }

LABEL_48:
    v11 = 0;
LABEL_49:

    goto LABEL_50;
  }

  v11 = 1;
LABEL_50:

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p Type %@; Supports Express %ld; ", objc_opt_class(), self, self->_type, self->_supportsExpress];;
  if ([(NSSet *)self->_primaryTCIs count])
  {
    [v3 appendFormat:@"Primary TCIs %@; ", self->_primaryTCIs];
  }

  if ([(NSSet *)self->_TCIs count])
  {
    [v3 appendFormat:@"TCIs %@; ", self->_TCIs];
  }

  if ([(NSData *)self->_mask length])
  {
    [v3 appendFormat:@"Mask %@; ", self->_mask];
  }

  [v3 appendFormat:@"Supports In Session Express %ld; ", self->_supportsInSessionExpress];
  if ([(NSSet *)self->_readerIDs count])
  {
    [v3 appendFormat:@"ReaderIds %@; ", self->_readerIDs];
  }

  if ([(NSSet *)self->_associatedReaderIDs count])
  {
    [v3 appendFormat:@"AssociatedReaderIDs %@; ", self->_associatedReaderIDs];
  }

  [v3 appendString:@" >"];

  return v3;
}

@end