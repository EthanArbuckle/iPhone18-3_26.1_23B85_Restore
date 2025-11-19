@interface CADCompoundFilter
- (BOOL)validate;
- (CADCompoundFilter)initWithCoder:(id)a3;
- (CADCompoundFilter)initWithFilters:(id)a3 operation:(int64_t)a4;
- (id)extendWhereClause:(id)a3 usingOperation:(int64_t)a4 withValues:(id)a5 andTypes:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADCompoundFilter

- (CADCompoundFilter)initWithFilters:(id)a3 operation:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CADCompoundFilter;
  v7 = [(CADCompoundFilter *)&v11 init];
  if (v7)
  {
    if (![v6 count])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"filters must contain at least one value"];
    }

    v8 = [v6 copy];
    filters = v7->_filters;
    v7->_filters = v8;

    v7->_operation = a4;
  }

  return v7;
}

- (BOOL)validate
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_filters count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_filters;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (![*(*(&v11 + 1) + 8 * i) validate])
          {
            v8 = 0;
            goto LABEL_12;
          }
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)extendWhereClause:(id)a3 usingOperation:(int64_t)a4 withValues:(id)a5 andTypes:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (![(NSArray *)self->_filters count])
  {
    [CADCompoundFilter extendWhereClause:a2 usingOperation:self withValues:? andTypes:?];
  }

  v14 = _CADPropertySearchPredicateExtendWhereClause(v11, a4, @"(");

  v15 = self->_operation != 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = self->_filters;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    v20 = 2;
    do
    {
      v21 = 0;
      v22 = v14;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v14 = [*(*(&v26 + 1) + 8 * v21) extendWhereClause:v22 usingOperation:v20 withValues:v12 andTypes:{v13, v26}];

        ++v21;
        v20 = v15;
        v22 = v14;
      }

      while (v18 != v21);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v20 = v15;
    }

    while (v18);
  }

  v23 = _CADPropertySearchPredicateExtendWhereClause(v14, 2, @""));

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (CADCompoundFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CADCompoundFilter;
  v5 = [(CADFilter *)&v11 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = _CADPropertySearchPredicateGetAllowedFilterTypes();
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"filters"];
  filters = v5->_filters;
  v5->_filters = v7;

  v5->_operation = [v4 decodeIntegerForKey:@"operation"];
  if (![(CADCompoundFilter *)v5 validate])
  {
    v9 = 0;
  }

  else
  {
LABEL_3:
    v9 = v5;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CADCompoundFilter;
  v4 = a3;
  [(CADFilter *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_filters forKey:{@"filters", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_operation forKey:@"operation"];
}

- (void)extendWhereClause:(uint64_t)a1 usingOperation:(uint64_t)a2 withValues:andTypes:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CADCompoundFilter.m" lineNumber:46 description:@"No filters"];
}

@end