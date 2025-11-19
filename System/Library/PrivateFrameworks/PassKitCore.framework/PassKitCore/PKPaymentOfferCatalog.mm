@interface PKPaymentOfferCatalog
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualIgnoringLastUpdatedDate:(id)a3;
- (BOOL)isOutOfDate;
- (PKPaymentOfferCatalog)initWithCoder:(id)a3;
- (PKPaymentOfferCatalog)initWithDictionary:(id)a3;
- (id)capabilityForPassUniqueID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)criteriaWithIdentifier:(id)a3;
- (id)criteriaWithType:(unint64_t)a3 passUniqueID:(id)a4;
- (id)description;
- (id)dictionaryRepresentation;
- (id)eligibleMerchandisingIdentifiersForPassUniqueIDs:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentOfferCatalog

- (PKPaymentOfferCatalog)initWithDictionary:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PKPaymentOfferCatalog;
  v5 = [(PKPaymentOfferCatalog *)&v37 init];
  if (v5)
  {
    v28 = v4;
    v6 = [v4 PKSetContaining:objc_opt_class() forKey:@"paymentOfferCatalog"];
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        v12 = 0;
        do
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [PKPaymentOfferCriteria paymentOfferCritieraWithDictionary:*(*(&v33 + 1) + 8 * v12)];
          [v7 pk_safelyAddObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v10);
    }

    v14 = [v7 count];
    if (v14)
    {
      v14 = [v7 copy];
    }

    catalog = v5->_catalog;
    v5->_catalog = v14;

    v16 = [v28 PKSetContaining:objc_opt_class() forKey:@"capabilities"];
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        v22 = 0;
        do
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[PKPaymentOfferCapability alloc] initWithDictionary:*(*(&v29 + 1) + 8 * v22)];
          [v17 pk_safelyAddObject:v23];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v20);
    }

    v24 = [v17 count];
    if (v24)
    {
      v24 = [v17 copy];
    }

    v4 = v28;
    capabilities = v5->_capabilities;
    v5->_capabilities = v24;

    [v28 PKDoubleForKey:@"proactiveFetchPeriod"];
    v5->_proactiveFetchPeriod = v26;
  }

  return v5;
}

- (id)criteriaWithType:(unint64_t)a3 passUniqueID:(id)a4
{
  v6 = a4;
  catalog = self->_catalog;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PKPaymentOfferCatalog_criteriaWithType_passUniqueID___block_invoke;
  v11[3] = &unk_1E79CA2B0;
  v12 = v6;
  v13 = a3;
  v8 = v6;
  v9 = [(NSSet *)catalog pk_anyObjectPassingTest:v11];

  return v9;
}

uint64_t __55__PKPaymentOfferCatalog_criteriaWithType_passUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 40))
  {
    v4 = [v3 associatedPassUniqueID];
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0;
      if (v6 && v7)
      {
        v9 = [v6 isEqualToString:v7];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualIgnoringLastUpdatedDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        catalog = self->_catalog;
        v8 = v6->_catalog;
        if (catalog && v8)
        {
          if (([(NSSet *)catalog isEqual:?]& 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else if (catalog != v8)
        {
          goto LABEL_16;
        }

        capabilities = self->_capabilities;
        v11 = v6->_capabilities;
        if (capabilities && v11)
        {
          if (([(NSSet *)capabilities isEqual:?]& 1) != 0)
          {
LABEL_14:
            v9 = self->_proactiveFetchPeriod == v6->_proactiveFetchPeriod;
LABEL_17:

            goto LABEL_18;
          }
        }

        else if (capabilities == v11)
        {
          goto LABEL_14;
        }

LABEL_16:
        v9 = 0;
        goto LABEL_17;
      }
    }

    v9 = 0;
  }

LABEL_18:

  return v9;
}

- (id)eligibleMerchandisingIdentifiersForPassUniqueIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    capabilities = self->_capabilities;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__PKPaymentOfferCatalog_eligibleMerchandisingIdentifiersForPassUniqueIDs___block_invoke;
    v8[3] = &unk_1E79CA2D8;
    v9 = v4;
    v6 = [(NSSet *)capabilities pk_setBySafelyApplyingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __74__PKPaymentOfferCatalog_eligibleMerchandisingIdentifiersForPassUniqueIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 supportsMerchandising] && (objc_msgSend(v3, "associatedPassUniqueID"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4) && (v5 = *(a1 + 32), objc_msgSend(v3, "associatedPassUniqueID"), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = objc_msgSend(v5, "containsObject:", v6), v6, v5))
  {
    v7 = [v3 merchandisingIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __77__PKPaymentOfferCatalog_eligibleMerchandisingIdentifiersThatNeedProvisioning__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 associatedPassUniqueID];

  if (v3 || [v2 type] != 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 merchandisingIdentifier];
  }

  return v4;
}

- (id)criteriaWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    catalog = self->_catalog;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__PKPaymentOfferCatalog_criteriaWithIdentifier___block_invoke;
    v9[3] = &unk_1E79CA320;
    v10 = v4;
    v7 = [(NSSet *)catalog pk_anyObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __48__PKPaymentOfferCatalog_criteriaWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (id)capabilityForPassUniqueID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    capabilities = self->_capabilities;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__PKPaymentOfferCatalog_capabilityForPassUniqueID___block_invoke;
    v9[3] = &unk_1E79CA348;
    v10 = v4;
    v7 = [(NSSet *)capabilities pk_anyObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __51__PKPaymentOfferCatalog_capabilityForPassUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 associatedPassUniqueID];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSSet *)self->_catalog allObjects];
  v5 = [v4 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_37];
  [v3 setObject:v5 forKeyedSubscript:@"catalog"];

  v6 = [(NSSet *)self->_capabilities allObjects];
  v7 = [v6 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_39];
  [v3 setObject:v7 forKeyedSubscript:@"capabilities"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_proactiveFetchPeriod];
  [v3 setObject:v8 forKeyedSubscript:@"proactiveFetchPeriod"];

  v9 = [v3 copy];

  return v9;
}

- (BOOL)isOutOfDate
{
  if (!self->_lastUpdated)
  {
    return 0;
  }

  if (self->_proactiveFetchPeriod <= 0.0)
  {
    proactiveFetchPeriod = 86400.0;
  }

  else
  {
    proactiveFetchPeriod = self->_proactiveFetchPeriod;
  }

  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:self->_lastUpdated];
  v6 = v5 >= proactiveFetchPeriod;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        if ([(PKPaymentOfferCatalog *)self isEqualIgnoringLastUpdatedDate:v6])
        {
          lastUpdated = self->_lastUpdated;
          v8 = v6->_lastUpdated;
          if (lastUpdated && v8)
          {
            if (([(NSDate *)lastUpdated isEqual:?]& 1) != 0)
            {
LABEL_8:
              v9 = self->_proactiveFetchPeriod == v6->_proactiveFetchPeriod;
LABEL_13:

              goto LABEL_14;
            }
          }

          else if (lastUpdated == v8)
          {
            goto LABEL_8;
          }
        }

        v9 = 0;
        goto LABEL_13;
      }
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_catalog];
  [v3 safelyAddObject:self->_capabilities];
  [v3 safelyAddObject:self->_lastUpdated];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_proactiveFetchPeriod - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"catalog: '%@'; ", self->_catalog];
  if (self->_capabilities)
  {
    [v3 appendFormat:@"capabilities: '%@'; ", self->_capabilities];
  }

  [v3 appendFormat:@"lastUpdated: '%@'; ", self->_lastUpdated];
  if (self->_proactiveFetchPeriod != 0.0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v3 appendFormat:@"proactiveFetchPeriod: '%@'; ", v4];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferCatalog)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPaymentOfferCatalog;
  v5 = [(PKPaymentOfferCatalog *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"catalog"];
    catalog = v5->_catalog;
    v5->_catalog = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"capabilities"];
    capabilities = v5->_capabilities;
    v5->_capabilities = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v17;

    [v4 decodeDoubleForKey:@"proactiveFetchPeriod"];
    v5->_proactiveFetchPeriod = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  catalog = self->_catalog;
  v5 = a3;
  [v5 encodeObject:catalog forKey:@"catalog"];
  [v5 encodeObject:self->_capabilities forKey:@"capabilities"];
  [v5 encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [v5 encodeDouble:@"proactiveFetchPeriod" forKey:self->_proactiveFetchPeriod];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSSet *)self->_catalog copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSSet *)self->_capabilities copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSDate *)self->_lastUpdated copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  *(v5 + 32) = self->_proactiveFetchPeriod;
  return v5;
}

@end