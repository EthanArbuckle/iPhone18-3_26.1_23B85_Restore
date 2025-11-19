@interface EFSQLColumnExpression
+ (id)column:(id)a3;
+ (id)table:(id)a3 column:(id)a4;
- (BOOL)isEqual:(id)a3;
- (EFSQLColumnExpression)initWithName:(id)a3 table:(id)a4;
- (EFSQLDisqualifiedColumnExpression)disqualified;
- (NSString)ef_SQLExpression;
- (id)beginsWith:(id)a3 caseSensitive:(BOOL)a4;
- (id)between:(id)a3;
- (id)cachedSelf;
- (id)concatenate:(id)a3;
- (id)contains:(id)a3 caseSensitive:(BOOL)a4;
- (id)doesNotContain:(id)a3 caseSensitive:(BOOL)a4;
- (id)doesNotMatchMask:(id)a3;
- (id)endsWith:(id)a3 caseSensitive:(BOOL)a4;
- (id)equalTo:(id)a3;
- (id)expressionForPredicateOperatorType:(unint64_t)a3 constantValue:(id)a4;
- (id)glob:(id)a3;
- (id)greaterThan:(id)a3;
- (id)greaterThanEqualTo:(id)a3;
- (id)in:(id)a3;
- (id)is:(id)a3;
- (id)isNot:(id)a3;
- (id)isNotNull;
- (id)isNull;
- (id)lessThan:(id)a3;
- (id)lessThanEqualTo:(id)a3;
- (id)like:(id)a3;
- (id)like:(id)a3 patternType:(unint64_t)a4;
- (id)matchesMask:(id)a3;
- (id)minus:(id)a3;
- (id)notBetween:(id)a3;
- (id)notEqualTo:(id)a3;
- (id)notGlob:(id)a3;
- (id)notIn:(id)a3;
- (id)notLike:(id)a3;
- (id)notLike:(id)a3 patternType:(unint64_t)a4;
- (id)plus:(id)a3;
- (unint64_t)hash;
- (void)ef_renderSQLExpressionInto:(id)a3;
@end

@implementation EFSQLColumnExpression

- (id)cachedSelf
{
  if (cachedSelf_onceToken != -1)
  {
    [EFSQLColumnExpression(EFCacheable) cachedSelf];
  }

  os_unfair_lock_lock(&cachedSelf_sTableLock);
  v3 = [cachedSelf_sUniqueObjectIDs ef_uniquedObject:self];
  os_unfair_lock_unlock(&cachedSelf_sTableLock);

  return v3;
}

- (unint64_t)hash
{
  v3 = [(EFSQLColumnExpression *)self name];
  v4 = [v3 hash];

  v5 = [(EFSQLColumnExpression *)self tableName];
  v6 = [v5 hash] + 5859909;

  return 33 * v4 + v6;
}

- (id)isNotNull
{
  v3 = [MEMORY[0x1E695DFB0] null];
  v4 = [(EFSQLColumnExpression *)self isNot:v3];

  return v4;
}

void __48__EFSQLColumnExpression_EFCacheable__cachedSelf__block_invoke()
{
  cachedSelf_sTableLock = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
  v1 = cachedSelf_sUniqueObjectIDs;
  cachedSelf_sUniqueObjectIDs = v0;
}

+ (id)table:(id)a3 column:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithName:v7 table:v6];

  return v8;
}

+ (id)column:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithName:v4];

  return v5;
}

- (EFSQLColumnExpression)initWithName:(id)a3 table:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = EFSQLColumnExpression;
  v9 = [(EFSQLColumnExpression *)&v14 init];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_tableName, a4);
  }

  v12 = [(EFSQLColumnExpression *)v11 cachedSelf];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (([(EFSQLColumnExpression *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    v6 = [(EFSQLColumnExpression *)self name];
    v7 = [(EFSQLColumnExpression *)v5 name];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(EFSQLColumnExpression *)self tableName];
      v9 = [(EFSQLColumnExpression *)v5 tableName];
      v10 = EFObjectsAreEqual(v8, v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)ef_SQLExpression
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(EFSQLColumnExpression *)self ef_renderSQLExpressionInto:v3];

  return v3;
}

- (void)ef_renderSQLExpressionInto:(id)a3
{
  v4 = a3;
  if (self->_tableName)
  {
    [v4 appendFormat:@"%@.", self->_tableName];
  }

  [v4 appendString:self->_name];
}

- (EFSQLDisqualifiedColumnExpression)disqualified
{
  v3 = [EFSQLDisqualifiedColumnExpression alloc];
  v4 = [(EFSQLColumnExpression *)self name];
  v5 = [(EFSQLColumnExpression *)self tableName];
  v6 = [(EFSQLColumnExpression *)v3 initWithName:v4 table:v5];

  return v6;
}

- (id)equalTo:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFB0] null];

  v6 = [EFSQLBinaryExpression alloc];
  [v4 ef_SQLIsolatedExpression];
  if (v5 == v4)
    v7 = {;
    v8 = [(EFSQLBinaryExpression *)v6 initWithLeft:self operator:12 right:v7];
  }

  else
    v7 = {;
    v8 = [(EFSQLBinaryExpression *)v6 initWithLeft:self operator:0 right:v7];
  }

  v9 = v8;

  return v9;
}

- (id)notEqualTo:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFB0] null];

  v6 = [EFSQLBinaryExpression alloc];
  [v4 ef_SQLIsolatedExpression];
  if (v5 == v4)
    v7 = {;
    v8 = [(EFSQLBinaryExpression *)v6 initWithLeft:self operator:13 right:v7];
  }

  else
    v7 = {;
    v8 = [(EFSQLBinaryExpression *)v6 initWithLeft:self operator:1 right:v7];
  }

  v9 = v8;

  return v9;
}

- (id)greaterThan:(id)a3
{
  v4 = a3;
  v5 = [EFSQLBinaryExpression alloc];
  v6 = [v4 ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:2 right:v6];

  return v7;
}

- (id)greaterThanEqualTo:(id)a3
{
  v4 = a3;
  v5 = [EFSQLBinaryExpression alloc];
  v6 = [v4 ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:3 right:v6];

  return v7;
}

- (id)lessThan:(id)a3
{
  v4 = a3;
  v5 = [EFSQLBinaryExpression alloc];
  v6 = [v4 ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:4 right:v6];

  return v7;
}

- (id)lessThanEqualTo:(id)a3
{
  v4 = a3;
  v5 = [EFSQLBinaryExpression alloc];
  v6 = [v4 ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:5 right:v6];

  return v7;
}

- (id)like:(id)a3
{
  v4 = a3;
  v5 = [[EFSQLLikeEscapedExpression alloc] initWithValue:v4];
  v6 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:6 right:v5];

  return v6;
}

- (id)like:(id)a3 patternType:(unint64_t)a4
{
  v6 = a3;
  v7 = [[EFSQLLikeEscapedExpression alloc] initWithValue:v6 pattern:a4];
  v8 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:6 right:v7];

  return v8;
}

- (id)notLike:(id)a3
{
  v4 = a3;
  v5 = [[EFSQLLikeEscapedExpression alloc] initWithValue:v4];
  v6 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:7 right:v5];

  return v6;
}

- (id)notLike:(id)a3 patternType:(unint64_t)a4
{
  v6 = a3;
  v7 = [[EFSQLLikeEscapedExpression alloc] initWithValue:v6 pattern:a4];
  v8 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:7 right:v7];

  return v8;
}

- (id)glob:(id)a3
{
  v4 = a3;
  v5 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:8 right:v4];

  return v5;
}

- (id)notGlob:(id)a3
{
  v4 = a3;
  v5 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:9 right:v4];

  return v5;
}

- (id)beginsWith:(id)a3 caseSensitive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@*", v6];
    v8 = [(EFSQLColumnExpression *)self glob:v7];
  }

  else
  {
    v8 = [(EFSQLColumnExpression *)self like:v6 patternType:0];
  }

  return v8;
}

- (id)contains:(id)a3 caseSensitive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*%@*", v6];
    v8 = [(EFSQLColumnExpression *)self glob:v7];
  }

  else
  {
    v8 = [(EFSQLColumnExpression *)self like:v6 patternType:1];
  }

  return v8;
}

- (id)doesNotContain:(id)a3 caseSensitive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*%@*", v6];
    v8 = [(EFSQLColumnExpression *)self notGlob:v7];
  }

  else
  {
    v8 = [(EFSQLColumnExpression *)self notLike:v6 patternType:1];
  }

  return v8;
}

- (id)endsWith:(id)a3 caseSensitive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*%@", v6];
    v8 = [(EFSQLColumnExpression *)self glob:v7];
  }

  else
  {
    v8 = [(EFSQLColumnExpression *)self like:v6 patternType:2];
  }

  return v8;
}

- (id)in:(id)a3
{
  v4 = a3;
  v5 = [EFSQLBinaryExpression alloc];
  v6 = [v4 ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:10 right:v6];

  return v7;
}

- (id)notIn:(id)a3
{
  v4 = a3;
  v5 = [EFSQLBinaryExpression alloc];
  v6 = [v4 ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:11 right:v6];

  return v7;
}

- (id)between:(id)a3
{
  v4 = a3;
  v5 = [EFSQLBetweenExpression alloc];
  v6 = [v4 first];
  v7 = [v6 ef_SQLIsolatedExpression];
  v8 = [v4 second];
  v9 = [v8 ef_SQLIsolatedExpression];
  v10 = [(EFSQLBetweenExpression *)v5 initWithLeft:self firstValue:v7 secondValue:v9 between:1];

  return v10;
}

- (id)notBetween:(id)a3
{
  v4 = a3;
  v5 = [EFSQLBetweenExpression alloc];
  v6 = [v4 first];
  v7 = [v6 ef_SQLIsolatedExpression];
  v8 = [v4 second];
  v9 = [v8 ef_SQLIsolatedExpression];
  v10 = [(EFSQLBetweenExpression *)v5 initWithLeft:self firstValue:v7 secondValue:v9 between:0];

  return v10;
}

- (id)is:(id)a3
{
  v4 = a3;
  v5 = [EFSQLBinaryExpression alloc];
  v6 = [v4 ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:12 right:v6];

  return v7;
}

- (id)isNot:(id)a3
{
  v4 = a3;
  v5 = [EFSQLBinaryExpression alloc];
  v6 = [v4 ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:13 right:v6];

  return v7;
}

- (id)isNull
{
  v3 = [MEMORY[0x1E695DFB0] null];
  v4 = [(EFSQLColumnExpression *)self is:v3];

  return v4;
}

- (id)plus:(id)a3
{
  v4 = a3;
  v5 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:14 right:v4];

  return v5;
}

- (id)minus:(id)a3
{
  v4 = a3;
  v5 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:15 right:v4];

  return v5;
}

- (id)concatenate:(id)a3
{
  v4 = a3;
  v5 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:16 right:v4];

  return v5;
}

- (id)matchesMask:(id)a3
{
  v4 = a3;
  v5 = [EFSQLBinaryExpression alloc];
  v6 = [EFSQLBitExpression and:self with:v4];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:v6 operator:0 right:v4];

  return v7;
}

- (id)doesNotMatchMask:(id)a3
{
  v4 = a3;
  v5 = [EFSQLBinaryExpression alloc];
  v6 = [EFSQLBitExpression and:self with:v4];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:v6 operator:0 right:&unk_1F45AD088];

  return v7;
}

- (id)expressionForPredicateOperatorType:(unint64_t)a3 constantValue:(id)a4
{
  v8 = a4;
  if (a3 > 6)
  {
    if (a3 <= 9)
    {
      if (a3 == 7)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          [v15 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:178 description:@"constantValue must be of class NSString"];
        }

        v9 = [(EFSQLColumnExpression *)self like:v8];
      }

      else if (a3 == 8)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = [MEMORY[0x1E696AAA8] currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:181 description:@"constantValue must be of class NSString"];
        }

        v9 = [(EFSQLColumnExpression *)self beginsWith:v8 caseSensitive:0];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          [v18 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:184 description:@"constantValue must be of class NSString"];
        }

        v9 = [(EFSQLColumnExpression *)self endsWith:v8 caseSensitive:0];
      }

      goto LABEL_44;
    }

    if (a3 > 98)
    {
      if (a3 == 99)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:192 description:@"constantValue must be of class NSString"];
        }

        v9 = [(EFSQLColumnExpression *)self contains:v8 caseSensitive:0];
        goto LABEL_44;
      }

      if (a3 != 100)
      {
        goto LABEL_45;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        [v16 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:195 description:@"constantValue must be of class NSArray"];
      }

      v10 = [v8 objectAtIndexedSubscript:0];
      v11 = [v8 objectAtIndexedSubscript:1];
      v12 = [EFPair pairWithFirst:v10 second:v11];
      v4 = [(EFSQLColumnExpression *)self between:v12];

LABEL_29:
      goto LABEL_45;
    }

    if (a3 != 10)
    {
      if (a3 != 11)
      {
        goto LABEL_45;
      }

      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:189 description:@"NSCustomSelectorPredicateOperatorType currently has no EFSQLExpressable counterpart"];
      goto LABEL_23;
    }

    v9 = [(EFSQLColumnExpression *)self in:v8];
  }

  else
  {
    if (a3 <= 2)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v9 = [(EFSQLColumnExpression *)self lessThanEqualTo:v8];
        }

        else
        {
          if (a3 != 2)
          {
            goto LABEL_45;
          }

          v9 = [(EFSQLColumnExpression *)self greaterThan:v8];
        }
      }

      else
      {
        v9 = [(EFSQLColumnExpression *)self lessThan:v8];
      }

      goto LABEL_44;
    }

    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        [(EFSQLColumnExpression *)self greaterThanEqualTo:v8];
      }

      else
      {
        [(EFSQLColumnExpression *)self equalTo:v8];
      }
      v9 = ;
      goto LABEL_44;
    }

    if (a3 != 5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:175 description:@"NSMatchesPredicateOperatorType currently has no EFSQLExpressable counterpart"];
LABEL_23:
      v4 = 0;
      goto LABEL_29;
    }

    v9 = [(EFSQLColumnExpression *)self notEqualTo:v8];
  }

LABEL_44:
  v4 = v9;
LABEL_45:

  return v4;
}

@end