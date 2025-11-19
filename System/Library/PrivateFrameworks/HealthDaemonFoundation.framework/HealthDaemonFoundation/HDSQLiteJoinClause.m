@interface HDSQLiteJoinClause
+ (id)innerJoinClauseFromTable:(id)a3 toTargetEntity:(Class)a4 as:(id)a5 localReference:(id)a6 targetKey:(id)a7;
+ (id)leftJoinClauseFromTable:(id)a3 toTargetEntity:(Class)a4 as:(id)a5 localReference:(id)a6 targetKey:(id)a7;
+ (id)leftJoinClauseFromTable:(id)a3 toTargetEntity:(Class)a4 as:(id)a5 localReference:(id)a6 targetKey:(id)a7 additionalPredicate:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)joinAsName;
- (id)SQLJoinClause;
- (id)_initWithJoinType:(void *)a3 fromTable:(void *)a4 toTargetEntity:(void *)a5 as:(void *)a6 localReference:(void *)a7 targetKey:(void *)a8 additionalPredicate:;
- (id)copyWithJoinType:(int64_t)a3;
- (unint64_t)hash;
@end

@implementation HDSQLiteJoinClause

- (unint64_t)hash
{
  v3 = NSStringFromClass(self->_targetEntityClass);
  v4 = [v3 hash];
  v5 = [(NSString *)self->_localTable hash];
  v6 = v5 ^ [(NSString *)self->_joinAsName hash]^ v4;
  v7 = [(NSString *)self->_localReferenceProperty hash];
  v8 = v7 ^ [(NSString *)self->_targetKeyProperty hash]^ self->_joinType;

  return v6 ^ v8;
}

- (NSString)joinAsName
{
  joinAsName = self->_joinAsName;
  if (joinAsName)
  {
    v3 = joinAsName;
  }

  else
  {
    v3 = [(objc_class *)self->_targetEntityClass disambiguatedDatabaseTable];
  }

  return v3;
}

- (id)SQLJoinClause
{
  v3 = [(objc_class *)self->_targetEntityClass disambiguatedDatabaseTable];
  v4 = [(NSString *)self->_localReferenceProperty isEqualToString:self->_targetKeyProperty];
  v5 = MEMORY[0x277CCACA8];
  if (v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"USING(%@)", self->_localReferenceProperty];
  }

  else
  {
    localTable = self->_localTable;
    localReferenceProperty = self->_localReferenceProperty;
    v9 = [(HDSQLiteJoinClause *)self joinAsName];
    v10 = [v5 stringWithFormat:@"%@.%@=%@.%@", localTable, localReferenceProperty, v9, self->_targetKeyProperty];

    additionalPredicate = self->_additionalPredicate;
    if (additionalPredicate)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"ON (%@ AND %@)", v10, additionalPredicate];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"ON %@", v10, v17];
    }
    v6 = ;
  }

  joinType = self->_joinType;
  v13 = @"LEFT";
  if (joinType != 1)
  {
    v13 = 0;
  }

  if (joinType)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"INNER";
  }

  if (self->_joinAsName)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ JOIN %@ AS %@ %@", v14, v3, self->_joinAsName, v6];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ JOIN %@ %@", v14, v3, v6, v18];
  }
  v15 = ;

  return v15;
}

+ (id)innerJoinClauseFromTable:(id)a3 toTargetEntity:(Class)a4 as:(id)a5 localReference:(id)a6 targetKey:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [[HDSQLiteJoinClause alloc] _initWithJoinType:v14 fromTable:a4 toTargetEntity:v13 as:v12 localReference:v11 targetKey:0 additionalPredicate:?];

  return v15;
}

- (id)copyWithJoinType:(int64_t)a3
{
  if (self->_joinType == a3)
  {

    return self;
  }

  else
  {
    v6[1] = v3;
    v6[2] = v4;
    [(HDSQLiteJoinClause *)&self->super.isa copyWithJoinType:a3, v6];
    return v6[0];
  }
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    targetEntityClass = self->_targetEntityClass;
    if (targetEntityClass == [v7 targetEntityClass])
    {
      localTable = self->_localTable;
      v12 = [v7 localTable];
      if (!-[NSString isEqualToString:](localTable, "isEqualToString:", v12) || (joinType = self->_joinType, joinType != [v7 joinType]))
      {
        v9 = 0;
LABEL_19:

        goto LABEL_4;
      }

      v14 = [(HDSQLiteJoinClause *)self joinAsName];
      v15 = [v7 joinAsName];
      if (v14 == v15)
      {
        goto LABEL_12;
      }

      v16 = [v7 joinAsName];
      if (!v16)
      {
        v9 = 0;
        goto LABEL_18;
      }

      v3 = v16;
      v4 = [(HDSQLiteJoinClause *)self joinAsName];
      v5 = [v7 joinAsName];
      if ([v4 isEqualToString:v5])
      {
LABEL_12:
        localReferenceProperty = self->_localReferenceProperty;
        v18 = [v7 localReferenceProperty];
        if ([(NSString *)localReferenceProperty isEqualToString:v18])
        {
          targetKeyProperty = self->_targetKeyProperty;
          v20 = [v7 targetKeyProperty];
          v9 = [(NSString *)targetKeyProperty isEqualToString:v20];
        }

        else
        {

          v9 = 0;
        }

        if (v14 == v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_18:
      goto LABEL_19;
    }
  }

  v9 = 0;
LABEL_4:

  return v9;
}

- (id)_initWithJoinType:(void *)a3 fromTable:(void *)a4 toTargetEntity:(void *)a5 as:(void *)a6 localReference:(void *)a7 targetKey:(void *)a8 additionalPredicate:
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (v15)
  {
    if (a4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    OUTLINED_FUNCTION_0_2();
    [v31 handleFailureInMethod:@"localTable != nil" object:? file:? lineNumber:? description:?];

    if (a4)
    {
LABEL_4:
      if (v17)
      {
        goto LABEL_5;
      }

LABEL_11:
      v38 = [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_0_2();
      [v33 handleFailureInMethod:@"localReferenceProperty != nil" object:? file:? lineNumber:? description:?];

      if (v18)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  v37 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v32 handleFailureInMethod:@"targetEntityClass != nil" object:? file:? lineNumber:? description:?];

  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v18)
  {
    goto LABEL_6;
  }

LABEL_12:
  v34 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v35 handleFailureInMethod:@"targetKeyProperty != nil" object:? file:? lineNumber:? description:?];

LABEL_6:
  v39.receiver = a1;
  v39.super_class = HDSQLiteJoinClause;
  a1 = objc_msgSendSuper2(&v39, sel_init);
  if (a1)
  {
    v20 = [v15 copy];
    v21 = a1[2];
    a1[2] = v20;

    objc_storeStrong(a1 + 3, a4);
    v22 = [v16 copy];
    v23 = a1[1];
    a1[1] = v22;

    v24 = [v17 copy];
    v25 = a1[4];
    a1[4] = v24;

    v26 = [v18 copy];
    v27 = a1[5];
    a1[5] = v26;

    v28 = [v19 copy];
    v29 = a1[7];
    a1[7] = v28;

    a1[6] = a2;
  }

LABEL_8:

  return a1;
}

+ (id)leftJoinClauseFromTable:(id)a3 toTargetEntity:(Class)a4 as:(id)a5 localReference:(id)a6 targetKey:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [[HDSQLiteJoinClause alloc] _initWithJoinType:v14 fromTable:a4 toTargetEntity:v13 as:v12 localReference:v11 targetKey:0 additionalPredicate:?];

  return v15;
}

+ (id)leftJoinClauseFromTable:(id)a3 toTargetEntity:(Class)a4 as:(id)a5 localReference:(id)a6 targetKey:(id)a7 additionalPredicate:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a3;
  v18 = [[HDSQLiteJoinClause alloc] _initWithJoinType:v17 fromTable:a4 toTargetEntity:v16 as:v15 localReference:v14 targetKey:v13 additionalPredicate:?];

  return v18;
}

- (id)copyWithJoinType:(id *)a3 .cold.1(void **a1, void *a2, id **a3)
{
  result = [[HDSQLiteJoinClause alloc] _initWithJoinType:a2 fromTable:a1[2] toTargetEntity:a1[3] as:a1[1] localReference:a1[4] targetKey:a1[5] additionalPredicate:a1[7]];
  *a3 = result;
  return result;
}

@end