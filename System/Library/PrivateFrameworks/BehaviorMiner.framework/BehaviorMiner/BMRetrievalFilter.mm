@interface BMRetrievalFilter
+ (id)filterWithOperand:(int64_t)operand inclusionOperator:(int64_t)operator items:(id)items;
+ (id)filterWithOperand:(int64_t)operand inclusionOperator:(int64_t)operator types:(id)types;
- (id)rulePredicate;
@end

@implementation BMRetrievalFilter

+ (id)filterWithOperand:(int64_t)operand inclusionOperator:(int64_t)operator items:(id)items
{
  itemsCopy = items;
  v8 = objc_alloc_init(BMRetrievalFilter);
  [(BMRetrievalFilter *)v8 setOperand:operand];
  [(BMRetrievalFilter *)v8 setInclusionOperator:operator];
  [(BMRetrievalFilter *)v8 setItems:itemsCopy];

  return v8;
}

+ (id)filterWithOperand:(int64_t)operand inclusionOperator:(int64_t)operator types:(id)types
{
  typesCopy = types;
  v8 = objc_alloc_init(BMRetrievalFilter);
  [(BMRetrievalFilter *)v8 setOperand:operand];
  [(BMRetrievalFilter *)v8 setInclusionOperator:operator];
  [(BMRetrievalFilter *)v8 setTypes:typesCopy];

  return v8;
}

- (id)rulePredicate
{
  v39 = *MEMORY[0x277D85DE8];
  types = [(BMRetrievalFilter *)self types];

  if (types)
  {
    types2 = [(BMRetrievalFilter *)self types];
    v5 = @"typeIdentifier";
    v6 = &selRef_identifier;
  }

  else
  {
    types2 = [(BMRetrievalFilter *)self items];
    v5 = @"uniformIdentifier";
    v6 = &selRef_uniformIdentifier;
  }

  v7 = NSStringFromSelector(*v6);
  v8 = [types2 valueForKey:v7];

  operand = [(BMRetrievalFilter *)self operand];
  inclusionOperator = [(BMRetrievalFilter *)self inclusionOperator];
  v11 = v8;
  if (operand == 2)
  {
    v12 = @"consequent";
  }

  else
  {
    v12 = @"antecedent";
    if (operand != 1)
    {
      if (operand)
      {
        v19 = 0;
        goto LABEL_36;
      }

      v37 = @"antecedent";
      v38 = v5;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:2];
      v14 = [v13 componentsJoinedByString:@"."];

      v36[0] = @"consequent";
      v36[1] = v5;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
      v16 = [v15 componentsJoinedByString:@"."];

      v17 = MEMORY[0x277CCAC30];
      if (inclusionOperator > 1)
      {
        if (inclusionOperator == 2)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
          v19 = [v17 predicateWithFormat:@"SUBQUERY(%K, $identifier, TRUEPREDICATE).@count + SUBQUERY(%K, $identifier, TRUEPREDICATE).@count == %@ AND SUBQUERY(%K, $identifier, $identifier IN %@).@count + SUBQUERY(%K, $identifier, $identifier IN %@).@count == %@", v14, v16, v18, v14, v11, v16, v11, v30];

          goto LABEL_33;
        }

        if (inclusionOperator == 3)
        {
          v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SUBQUERY(%K, $identifier, $identifier IN %@).@count + SUBQUERY(%K, $identifier, $identifier IN %@).@count == 0", v14, v11, v16, v11];
LABEL_30:
          v19 = v23;
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        if (!inclusionOperator)
        {
          v26 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY %K IN %@", v14, v11];
          v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY %K IN %@", v16, v11];
          v28 = MEMORY[0x277CCA920];
          v35[0] = v26;
          v35[1] = v27;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
          v19 = [v28 orPredicateWithSubpredicates:v29];

          goto LABEL_34;
        }

        if (inclusionOperator == 1)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
          v19 = [v17 predicateWithFormat:@"SUBQUERY(%K, $identifier, $identifier IN %@).@count + SUBQUERY(%K, $identifier, $identifier IN %@).@count == %@", v14, v11, v16, v11, v18];
LABEL_33:

          goto LABEL_34;
        }
      }

      v23 = [MEMORY[0x277CCAC30] predicateWithValue:0];
      goto LABEL_30;
    }
  }

  v37 = v12;
  v38 = v5;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:2];
  v14 = [v20 componentsJoinedByString:@"."];

  v21 = MEMORY[0x277CCAC30];
  if (inclusionOperator > 1)
  {
    if (inclusionOperator == 2)
    {
      v25 = [v11 count];
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
      [v21 predicateWithFormat:@"%K.@count == %lu AND SUBQUERY(%K, $identifier, $identifier IN %@).@count == %@", v14, v25, v14, v11, v22];
      goto LABEL_28;
    }

    if (inclusionOperator != 3)
    {
      goto LABEL_23;
    }

    [MEMORY[0x277CCAC30] predicateWithFormat:@"SUBQUERY(%K, $identifier, $identifier IN %@).@count == 0", v14, v11];
    v24 = LABEL_25:;
    goto LABEL_26;
  }

  if (!inclusionOperator)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY %K IN %@", v14, v11];
    goto LABEL_25;
  }

  if (inclusionOperator == 1)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    [v21 predicateWithFormat:@"SUBQUERY(%K, $identifier, $identifier IN %@).@count == %@", v14, v11, v22, v33, v34];
    v19 = LABEL_28:;

    goto LABEL_35;
  }

LABEL_23:
  v24 = [MEMORY[0x277CCAC30] predicateWithValue:0];
LABEL_26:
  v19 = v24;
LABEL_35:

LABEL_36:
  v31 = *MEMORY[0x277D85DE8];

  return v19;
}

@end