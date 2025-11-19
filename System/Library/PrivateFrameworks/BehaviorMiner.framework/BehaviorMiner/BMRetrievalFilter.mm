@interface BMRetrievalFilter
+ (id)filterWithOperand:(int64_t)a3 inclusionOperator:(int64_t)a4 items:(id)a5;
+ (id)filterWithOperand:(int64_t)a3 inclusionOperator:(int64_t)a4 types:(id)a5;
- (id)rulePredicate;
@end

@implementation BMRetrievalFilter

+ (id)filterWithOperand:(int64_t)a3 inclusionOperator:(int64_t)a4 items:(id)a5
{
  v7 = a5;
  v8 = objc_alloc_init(BMRetrievalFilter);
  [(BMRetrievalFilter *)v8 setOperand:a3];
  [(BMRetrievalFilter *)v8 setInclusionOperator:a4];
  [(BMRetrievalFilter *)v8 setItems:v7];

  return v8;
}

+ (id)filterWithOperand:(int64_t)a3 inclusionOperator:(int64_t)a4 types:(id)a5
{
  v7 = a5;
  v8 = objc_alloc_init(BMRetrievalFilter);
  [(BMRetrievalFilter *)v8 setOperand:a3];
  [(BMRetrievalFilter *)v8 setInclusionOperator:a4];
  [(BMRetrievalFilter *)v8 setTypes:v7];

  return v8;
}

- (id)rulePredicate
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(BMRetrievalFilter *)self types];

  if (v3)
  {
    v4 = [(BMRetrievalFilter *)self types];
    v5 = @"typeIdentifier";
    v6 = &selRef_identifier;
  }

  else
  {
    v4 = [(BMRetrievalFilter *)self items];
    v5 = @"uniformIdentifier";
    v6 = &selRef_uniformIdentifier;
  }

  v7 = NSStringFromSelector(*v6);
  v8 = [v4 valueForKey:v7];

  v9 = [(BMRetrievalFilter *)self operand];
  v10 = [(BMRetrievalFilter *)self inclusionOperator];
  v11 = v8;
  if (v9 == 2)
  {
    v12 = @"consequent";
  }

  else
  {
    v12 = @"antecedent";
    if (v9 != 1)
    {
      if (v9)
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
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
          v19 = [v17 predicateWithFormat:@"SUBQUERY(%K, $identifier, TRUEPREDICATE).@count + SUBQUERY(%K, $identifier, TRUEPREDICATE).@count == %@ AND SUBQUERY(%K, $identifier, $identifier IN %@).@count + SUBQUERY(%K, $identifier, $identifier IN %@).@count == %@", v14, v16, v18, v14, v11, v16, v11, v30];

          goto LABEL_33;
        }

        if (v10 == 3)
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
        if (!v10)
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

        if (v10 == 1)
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
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v25 = [v11 count];
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
      [v21 predicateWithFormat:@"%K.@count == %lu AND SUBQUERY(%K, $identifier, $identifier IN %@).@count == %@", v14, v25, v14, v11, v22];
      goto LABEL_28;
    }

    if (v10 != 3)
    {
      goto LABEL_23;
    }

    [MEMORY[0x277CCAC30] predicateWithFormat:@"SUBQUERY(%K, $identifier, $identifier IN %@).@count == 0", v14, v11];
    v24 = LABEL_25:;
    goto LABEL_26;
  }

  if (!v10)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY %K IN %@", v14, v11];
    goto LABEL_25;
  }

  if (v10 == 1)
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