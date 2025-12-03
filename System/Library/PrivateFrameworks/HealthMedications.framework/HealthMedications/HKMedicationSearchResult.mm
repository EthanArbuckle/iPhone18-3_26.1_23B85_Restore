@interface HKMedicationSearchResult
- (BOOL)isEqual:(id)equal;
- (HKConcept)tradeNameProduct;
- (HKMedicationSearchResult)initWithCoder:(id)coder;
- (HKMedicationSearchResult)initWithSeedHgId:(id)id specificProduct:(id)product traversedRelationships:(id)relationships traversedDepth:(int64_t)depth;
- (NSArray)clinicalProducts;
- (NSArray)ingredientProducts;
- (NSArray)routedDoseFormProducts;
- (id)_lock_clinicalProducts;
- (id)_lock_ingredientProducts;
- (id)_lock_routedDoseFormProducts;
- (id)_lock_tradeNameProduct;
- (int64_t)debug_traversedNodeCount;
- (unint64_t)hash;
- (void)_lock_walkGraph;
- (void)_lock_walkGraphIfNecessary;
- (void)_visit:(id)_visit ofRoot:(id)root withMaxDepth:(int64_t)depth handler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationSearchResult

- (HKMedicationSearchResult)initWithSeedHgId:(id)id specificProduct:(id)product traversedRelationships:(id)relationships traversedDepth:(int64_t)depth
{
  idCopy = id;
  productCopy = product;
  relationshipsCopy = relationships;
  v21.receiver = self;
  v21.super_class = HKMedicationSearchResult;
  v13 = [(HKMedicationSearchResult *)&v21 init];
  if (v13)
  {
    v14 = [idCopy copy];
    seedHgId = v13->_seedHgId;
    v13->_seedHgId = v14;

    v16 = [productCopy copy];
    specificProduct = v13->_specificProduct;
    v13->_specificProduct = v16;

    v18 = [relationshipsCopy copy];
    traversedRelationships = v13->_traversedRelationships;
    v13->_traversedRelationships = v18;

    v13->_traversedDepth = depth;
    v13->_lock._os_unfair_lock_opaque = 0;
    v13->_lock_hasWalkedGraph = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_seedHgId hash];
  v4 = [(HKConcept *)self->_specificProduct hash]^ v3;
  return v4 ^ [(HKIntegerSet *)self->_traversedRelationships hash]^ self->_traversedDepth;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      seedHgId = self->_seedHgId;
      v7 = v5->_seedHgId;
      v12 = (seedHgId == v7 || v7 && [(NSNumber *)seedHgId isEqual:?]) && ((specificProduct = self->_specificProduct, v9 = v5->_specificProduct, specificProduct == v9) || v9 && [(HKConcept *)specificProduct isEqual:?]) && ((traversedRelationships = self->_traversedRelationships, v11 = v5->_traversedRelationships, traversedRelationships == v11) || v11 && [(HKIntegerSet *)traversedRelationships isEqual:?]) && self->_traversedDepth == v5->_traversedDepth;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  seedHgId = self->_seedHgId;
  coderCopy = coder;
  [coderCopy encodeObject:seedHgId forKey:@"SeedHgId"];
  [coderCopy encodeObject:self->_specificProduct forKey:@"SpecificProduct"];
  [coderCopy encodeObject:self->_traversedRelationships forKey:@"TraversedRelationships"];
  [coderCopy encodeInteger:self->_traversedDepth forKey:@"TraversedDepth"];
}

- (HKMedicationSearchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKMedicationSearchResult;
  v5 = [(HKMedicationSearchResult *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SeedHgId"];
    seedHgId = v5->_seedHgId;
    v5->_seedHgId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SpecificProduct"];
    specificProduct = v5->_specificProduct;
    v5->_specificProduct = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TraversedRelationships"];
    traversedRelationships = v5->_traversedRelationships;
    v5->_traversedRelationships = v10;

    v5->_traversedDepth = [coderCopy decodeIntegerForKey:@"TraversedDepth"];
  }

  return v5;
}

- (HKConcept)tradeNameProduct
{
  os_unfair_lock_lock(&self->_lock);
  _lock_tradeNameProduct = [(HKMedicationSearchResult *)self _lock_tradeNameProduct];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_tradeNameProduct;
}

- (NSArray)routedDoseFormProducts
{
  os_unfair_lock_lock(&self->_lock);
  _lock_routedDoseFormProducts = [(HKMedicationSearchResult *)self _lock_routedDoseFormProducts];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_routedDoseFormProducts;
}

- (NSArray)ingredientProducts
{
  os_unfair_lock_lock(&self->_lock);
  _lock_ingredientProducts = [(HKMedicationSearchResult *)self _lock_ingredientProducts];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_ingredientProducts;
}

- (NSArray)clinicalProducts
{
  os_unfair_lock_lock(&self->_lock);
  _lock_clinicalProducts = [(HKMedicationSearchResult *)self _lock_clinicalProducts];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_clinicalProducts;
}

- (int64_t)debug_traversedNodeCount
{
  os_unfair_lock_lock(&self->_lock);
  _lock_debug_traversedNodeCount = [(HKMedicationSearchResult *)self _lock_debug_traversedNodeCount];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_debug_traversedNodeCount;
}

- (void)_visit:(id)_visit ofRoot:(id)root withMaxDepth:(int64_t)depth handler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  _visitCopy = _visit;
  rootCopy = root;
  handlerCopy = handler;
  v12 = 0x277CBE000uLL;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v13 addObject:rootCopy];
  v14 = 0;
  v15 = 0;
  v26 = depth & ~(depth >> 63);
  while (1)
  {
    v16 = v13;
    if (![v13 count])
    {
      break;
    }

    v27 = v14;

    v13 = objc_alloc_init(*(v12 + 2840));
    while ([v16 count])
    {
      firstObject = [v16 firstObject];
      [v16 removeObjectAtIndex:0];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = firstObject;
      relationships = [firstObject relationships];
      v19 = [relationships countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(relationships);
            }

            v23 = *(*(&v29 + 1) + 8 * i);
            if ([_visitCopy containsInteger:{objc_msgSend(v23, "type")}])
            {
              destination = [v23 destination];
              if (!handlerCopy[2](handlerCopy, destination))
              {

                goto LABEL_19;
              }

              [v13 addObject:destination];
            }
          }

          v20 = [relationships countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }
    }

    v14 = v27 + 1;
    v15 = v16;
    v12 = 0x277CBE000;
    if (v27 == v26)
    {
      goto LABEL_19;
    }
  }

  v16 = v15;
LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_lock_tradeNameProduct
{
  [(HKMedicationSearchResult *)self _lock_walkGraphIfNecessary];
  lock_tradeNameProduct = self->_lock_tradeNameProduct;

  return lock_tradeNameProduct;
}

- (id)_lock_routedDoseFormProducts
{
  [(HKMedicationSearchResult *)self _lock_walkGraphIfNecessary];
  lock_routedDoseFormProducts = self->_lock_routedDoseFormProducts;

  return lock_routedDoseFormProducts;
}

- (id)_lock_ingredientProducts
{
  [(HKMedicationSearchResult *)self _lock_walkGraphIfNecessary];
  lock_ingredientProducts = self->_lock_ingredientProducts;

  return lock_ingredientProducts;
}

- (id)_lock_clinicalProducts
{
  [(HKMedicationSearchResult *)self _lock_walkGraphIfNecessary];
  lock_clinicalProducts = self->_lock_clinicalProducts;

  return lock_clinicalProducts;
}

- (void)_lock_walkGraphIfNecessary
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_hasWalkedGraph)
  {
    [(HKMedicationSearchResult *)self _lock_walkGraph];
    self->_lock_hasWalkedGraph = 1;
  }
}

- (void)_lock_walkGraph
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  identifier = [(HKConcept *)self->_specificProduct identifier];
  rawIdentifier = [identifier rawIdentifier];

  if (rawIdentifier == 842)
  {
    [v3 addObject:self->_specificProduct];
  }

  specificProduct = self->_specificProduct;
  traversedRelationships = self->_traversedRelationships;
  traversedDepth = self->_traversedDepth;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __54__HKMedicationSearchResult_Traversal___lock_walkGraph__block_invoke;
  v23 = &unk_2796CAD80;
  selfCopy = self;
  v25 = v4;
  v26 = v5;
  v27 = v3;
  v11 = v3;
  v12 = v5;
  v13 = v4;
  [(HKMedicationSearchResult *)self _visit:traversedRelationships ofRoot:specificProduct withMaxDepth:traversedDepth handler:&v20];
  v14 = [v13 copy];
  lock_routedDoseFormProducts = self->_lock_routedDoseFormProducts;
  self->_lock_routedDoseFormProducts = v14;

  v16 = [v12 copy];
  lock_ingredientProducts = self->_lock_ingredientProducts;
  self->_lock_ingredientProducts = v16;

  v18 = [v11 copy];
  lock_clinicalProducts = self->_lock_clinicalProducts;
  self->_lock_clinicalProducts = v18;
}

uint64_t __54__HKMedicationSearchResult_Traversal___lock_walkGraph__block_invoke(void *a1, void *a2)
{
  v4 = a2;
  ++*(a1[4] + 48);
  if ([v4 meds_isTradeNameProduct])
  {
    v5 = a1[4];
    v7 = *(v5 + 16);
    v6 = (v5 + 16);
    if (!v7)
    {
      objc_storeStrong(v6, a2);
      goto LABEL_11;
    }
  }

  if ([v4 meds_isRoutedDoseFormProduct])
  {
    v8 = a1[5];
LABEL_9:
    [v8 addObject:v4];
    goto LABEL_11;
  }

  if ([v4 meds_isIngredientProduct])
  {
    v8 = a1[6];
    goto LABEL_9;
  }

  if ([v4 meds_isClinicalProduct])
  {
    v8 = a1[7];
    goto LABEL_9;
  }

LABEL_11:

  return 1;
}

@end