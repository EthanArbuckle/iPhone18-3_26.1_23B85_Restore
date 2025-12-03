@interface HDSQLiteJoinClause
+ (id)innerJoinClauseFromTable:(id)table toTargetEntity:(Class)entity as:(id)as localReference:(id)reference targetKey:(id)key;
+ (id)leftJoinClauseFromTable:(id)table toTargetEntity:(Class)entity as:(id)as localReference:(id)reference targetKey:(id)key;
+ (id)leftJoinClauseFromTable:(id)table toTargetEntity:(Class)entity as:(id)as localReference:(id)reference targetKey:(id)key additionalPredicate:(id)predicate;
- (BOOL)isEqual:(id)equal;
- (NSString)joinAsName;
- (id)SQLJoinClause;
- (id)_initWithJoinType:(void *)type fromTable:(void *)table toTargetEntity:(void *)entity as:(void *)as localReference:(void *)reference targetKey:(void *)key additionalPredicate:;
- (id)copyWithJoinType:(int64_t)type;
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
    disambiguatedDatabaseTable = joinAsName;
  }

  else
  {
    disambiguatedDatabaseTable = [(objc_class *)self->_targetEntityClass disambiguatedDatabaseTable];
  }

  return disambiguatedDatabaseTable;
}

- (id)SQLJoinClause
{
  disambiguatedDatabaseTable = [(objc_class *)self->_targetEntityClass disambiguatedDatabaseTable];
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
    joinAsName = [(HDSQLiteJoinClause *)self joinAsName];
    v10 = [v5 stringWithFormat:@"%@.%@=%@.%@", localTable, localReferenceProperty, joinAsName, self->_targetKeyProperty];

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
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ JOIN %@ AS %@ %@", v14, disambiguatedDatabaseTable, self->_joinAsName, v6];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ JOIN %@ %@", v14, disambiguatedDatabaseTable, v6, v18];
  }
  v15 = ;

  return v15;
}

+ (id)innerJoinClauseFromTable:(id)table toTargetEntity:(Class)entity as:(id)as localReference:(id)reference targetKey:(id)key
{
  keyCopy = key;
  referenceCopy = reference;
  asCopy = as;
  tableCopy = table;
  v15 = [[HDSQLiteJoinClause alloc] _initWithJoinType:tableCopy fromTable:entity toTargetEntity:asCopy as:referenceCopy localReference:keyCopy targetKey:0 additionalPredicate:?];

  return v15;
}

- (id)copyWithJoinType:(int64_t)type
{
  if (self->_joinType == type)
  {

    return self;
  }

  else
  {
    v6[1] = v3;
    v6[2] = v4;
    [(HDSQLiteJoinClause *)&self->super.isa copyWithJoinType:type, v6];
    return v6[0];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    targetEntityClass = self->_targetEntityClass;
    if (targetEntityClass == [equalCopy targetEntityClass])
    {
      localTable = self->_localTable;
      localTable = [equalCopy localTable];
      if (!-[NSString isEqualToString:](localTable, "isEqualToString:", localTable) || (joinType = self->_joinType, joinType != [equalCopy joinType]))
      {
        v9 = 0;
LABEL_19:

        goto LABEL_4;
      }

      joinAsName = [(HDSQLiteJoinClause *)self joinAsName];
      joinAsName2 = [equalCopy joinAsName];
      if (joinAsName == joinAsName2)
      {
        goto LABEL_12;
      }

      joinAsName3 = [equalCopy joinAsName];
      if (!joinAsName3)
      {
        v9 = 0;
        goto LABEL_18;
      }

      v3 = joinAsName3;
      joinAsName4 = [(HDSQLiteJoinClause *)self joinAsName];
      joinAsName5 = [equalCopy joinAsName];
      if ([joinAsName4 isEqualToString:joinAsName5])
      {
LABEL_12:
        localReferenceProperty = self->_localReferenceProperty;
        localReferenceProperty = [equalCopy localReferenceProperty];
        if ([(NSString *)localReferenceProperty isEqualToString:localReferenceProperty])
        {
          targetKeyProperty = self->_targetKeyProperty;
          targetKeyProperty = [equalCopy targetKeyProperty];
          v9 = [(NSString *)targetKeyProperty isEqualToString:targetKeyProperty];
        }

        else
        {

          v9 = 0;
        }

        if (joinAsName == joinAsName2)
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

- (id)_initWithJoinType:(void *)type fromTable:(void *)table toTargetEntity:(void *)entity as:(void *)as localReference:(void *)reference targetKey:(void *)key additionalPredicate:
{
  typeCopy = type;
  entityCopy = entity;
  asCopy = as;
  referenceCopy = reference;
  keyCopy = key;
  if (!self)
  {
    goto LABEL_8;
  }

  if (typeCopy)
  {
    if (table)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    OUTLINED_FUNCTION_0_2();
    [v31 handleFailureInMethod:@"localTable != nil" object:? file:? lineNumber:? description:?];

    if (table)
    {
LABEL_4:
      if (asCopy)
      {
        goto LABEL_5;
      }

LABEL_11:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      OUTLINED_FUNCTION_0_2();
      [v33 handleFailureInMethod:@"localReferenceProperty != nil" object:? file:? lineNumber:? description:?];

      if (referenceCopy)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v32 handleFailureInMethod:@"targetEntityClass != nil" object:? file:? lineNumber:? description:?];

  if (!asCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (referenceCopy)
  {
    goto LABEL_6;
  }

LABEL_12:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v35 handleFailureInMethod:@"targetKeyProperty != nil" object:? file:? lineNumber:? description:?];

LABEL_6:
  v39.receiver = self;
  v39.super_class = HDSQLiteJoinClause;
  self = objc_msgSendSuper2(&v39, sel_init);
  if (self)
  {
    v20 = [typeCopy copy];
    v21 = self[2];
    self[2] = v20;

    objc_storeStrong(self + 3, table);
    v22 = [entityCopy copy];
    v23 = self[1];
    self[1] = v22;

    v24 = [asCopy copy];
    v25 = self[4];
    self[4] = v24;

    v26 = [referenceCopy copy];
    v27 = self[5];
    self[5] = v26;

    v28 = [keyCopy copy];
    v29 = self[7];
    self[7] = v28;

    self[6] = a2;
  }

LABEL_8:

  return self;
}

+ (id)leftJoinClauseFromTable:(id)table toTargetEntity:(Class)entity as:(id)as localReference:(id)reference targetKey:(id)key
{
  keyCopy = key;
  referenceCopy = reference;
  asCopy = as;
  tableCopy = table;
  v15 = [[HDSQLiteJoinClause alloc] _initWithJoinType:tableCopy fromTable:entity toTargetEntity:asCopy as:referenceCopy localReference:keyCopy targetKey:0 additionalPredicate:?];

  return v15;
}

+ (id)leftJoinClauseFromTable:(id)table toTargetEntity:(Class)entity as:(id)as localReference:(id)reference targetKey:(id)key additionalPredicate:(id)predicate
{
  predicateCopy = predicate;
  keyCopy = key;
  referenceCopy = reference;
  asCopy = as;
  tableCopy = table;
  v18 = [[HDSQLiteJoinClause alloc] _initWithJoinType:tableCopy fromTable:entity toTargetEntity:asCopy as:referenceCopy localReference:keyCopy targetKey:predicateCopy additionalPredicate:?];

  return v18;
}

- (id)copyWithJoinType:(id *)a3 .cold.1(void **a1, void *a2, id **a3)
{
  result = [[HDSQLiteJoinClause alloc] _initWithJoinType:a2 fromTable:a1[2] toTargetEntity:a1[3] as:a1[1] localReference:a1[4] targetKey:a1[5] additionalPredicate:a1[7]];
  *a3 = result;
  return result;
}

@end