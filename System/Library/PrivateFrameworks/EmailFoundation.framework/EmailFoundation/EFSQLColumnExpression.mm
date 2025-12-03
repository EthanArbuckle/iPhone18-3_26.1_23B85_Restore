@interface EFSQLColumnExpression
+ (id)column:(id)column;
+ (id)table:(id)table column:(id)column;
- (BOOL)isEqual:(id)equal;
- (EFSQLColumnExpression)initWithName:(id)name table:(id)table;
- (EFSQLDisqualifiedColumnExpression)disqualified;
- (NSString)ef_SQLExpression;
- (id)beginsWith:(id)with caseSensitive:(BOOL)sensitive;
- (id)between:(id)between;
- (id)cachedSelf;
- (id)concatenate:(id)concatenate;
- (id)contains:(id)contains caseSensitive:(BOOL)sensitive;
- (id)doesNotContain:(id)contain caseSensitive:(BOOL)sensitive;
- (id)doesNotMatchMask:(id)mask;
- (id)endsWith:(id)with caseSensitive:(BOOL)sensitive;
- (id)equalTo:(id)to;
- (id)expressionForPredicateOperatorType:(unint64_t)type constantValue:(id)value;
- (id)glob:(id)glob;
- (id)greaterThan:(id)than;
- (id)greaterThanEqualTo:(id)to;
- (id)in:(id)in;
- (id)is:(id)is;
- (id)isNot:(id)not;
- (id)isNotNull;
- (id)isNull;
- (id)lessThan:(id)than;
- (id)lessThanEqualTo:(id)to;
- (id)like:(id)like;
- (id)like:(id)like patternType:(unint64_t)type;
- (id)matchesMask:(id)mask;
- (id)minus:(id)minus;
- (id)notBetween:(id)between;
- (id)notEqualTo:(id)to;
- (id)notGlob:(id)glob;
- (id)notIn:(id)in;
- (id)notLike:(id)like;
- (id)notLike:(id)like patternType:(unint64_t)type;
- (id)plus:(id)plus;
- (unint64_t)hash;
- (void)ef_renderSQLExpressionInto:(id)into;
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
  name = [(EFSQLColumnExpression *)self name];
  v4 = [name hash];

  tableName = [(EFSQLColumnExpression *)self tableName];
  v6 = [tableName hash] + 5859909;

  return 33 * v4 + v6;
}

- (id)isNotNull
{
  null = [MEMORY[0x1E695DFB0] null];
  v4 = [(EFSQLColumnExpression *)self isNot:null];

  return v4;
}

void __48__EFSQLColumnExpression_EFCacheable__cachedSelf__block_invoke()
{
  cachedSelf_sTableLock = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
  v1 = cachedSelf_sUniqueObjectIDs;
  cachedSelf_sUniqueObjectIDs = v0;
}

+ (id)table:(id)table column:(id)column
{
  tableCopy = table;
  columnCopy = column;
  v8 = [[self alloc] initWithName:columnCopy table:tableCopy];

  return v8;
}

+ (id)column:(id)column
{
  columnCopy = column;
  v5 = [[self alloc] initWithName:columnCopy];

  return v5;
}

- (EFSQLColumnExpression)initWithName:(id)name table:(id)table
{
  nameCopy = name;
  tableCopy = table;
  v14.receiver = self;
  v14.super_class = EFSQLColumnExpression;
  v9 = [(EFSQLColumnExpression *)&v14 init];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_tableName, table);
  }

  cachedSelf = [(EFSQLColumnExpression *)v11 cachedSelf];

  return cachedSelf;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (([(EFSQLColumnExpression *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    name = [(EFSQLColumnExpression *)self name];
    name2 = [(EFSQLColumnExpression *)v5 name];
    if ([name isEqualToString:name2])
    {
      tableName = [(EFSQLColumnExpression *)self tableName];
      tableName2 = [(EFSQLColumnExpression *)v5 tableName];
      v10 = EFObjectsAreEqual(tableName, tableName2);
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
  string = [MEMORY[0x1E696AD60] string];
  [(EFSQLColumnExpression *)self ef_renderSQLExpressionInto:string];

  return string;
}

- (void)ef_renderSQLExpressionInto:(id)into
{
  intoCopy = into;
  if (self->_tableName)
  {
    [intoCopy appendFormat:@"%@.", self->_tableName];
  }

  [intoCopy appendString:self->_name];
}

- (EFSQLDisqualifiedColumnExpression)disqualified
{
  v3 = [EFSQLDisqualifiedColumnExpression alloc];
  name = [(EFSQLColumnExpression *)self name];
  tableName = [(EFSQLColumnExpression *)self tableName];
  v6 = [(EFSQLColumnExpression *)v3 initWithName:name table:tableName];

  return v6;
}

- (id)equalTo:(id)to
{
  toCopy = to;
  null = [MEMORY[0x1E695DFB0] null];

  v6 = [EFSQLBinaryExpression alloc];
  [toCopy ef_SQLIsolatedExpression];
  if (null == toCopy)
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

- (id)notEqualTo:(id)to
{
  toCopy = to;
  null = [MEMORY[0x1E695DFB0] null];

  v6 = [EFSQLBinaryExpression alloc];
  [toCopy ef_SQLIsolatedExpression];
  if (null == toCopy)
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

- (id)greaterThan:(id)than
{
  thanCopy = than;
  v5 = [EFSQLBinaryExpression alloc];
  ef_SQLIsolatedExpression = [thanCopy ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:2 right:ef_SQLIsolatedExpression];

  return v7;
}

- (id)greaterThanEqualTo:(id)to
{
  toCopy = to;
  v5 = [EFSQLBinaryExpression alloc];
  ef_SQLIsolatedExpression = [toCopy ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:3 right:ef_SQLIsolatedExpression];

  return v7;
}

- (id)lessThan:(id)than
{
  thanCopy = than;
  v5 = [EFSQLBinaryExpression alloc];
  ef_SQLIsolatedExpression = [thanCopy ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:4 right:ef_SQLIsolatedExpression];

  return v7;
}

- (id)lessThanEqualTo:(id)to
{
  toCopy = to;
  v5 = [EFSQLBinaryExpression alloc];
  ef_SQLIsolatedExpression = [toCopy ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:5 right:ef_SQLIsolatedExpression];

  return v7;
}

- (id)like:(id)like
{
  likeCopy = like;
  v5 = [[EFSQLLikeEscapedExpression alloc] initWithValue:likeCopy];
  v6 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:6 right:v5];

  return v6;
}

- (id)like:(id)like patternType:(unint64_t)type
{
  likeCopy = like;
  v7 = [[EFSQLLikeEscapedExpression alloc] initWithValue:likeCopy pattern:type];
  v8 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:6 right:v7];

  return v8;
}

- (id)notLike:(id)like
{
  likeCopy = like;
  v5 = [[EFSQLLikeEscapedExpression alloc] initWithValue:likeCopy];
  v6 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:7 right:v5];

  return v6;
}

- (id)notLike:(id)like patternType:(unint64_t)type
{
  likeCopy = like;
  v7 = [[EFSQLLikeEscapedExpression alloc] initWithValue:likeCopy pattern:type];
  v8 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:7 right:v7];

  return v8;
}

- (id)glob:(id)glob
{
  globCopy = glob;
  v5 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:8 right:globCopy];

  return v5;
}

- (id)notGlob:(id)glob
{
  globCopy = glob;
  v5 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:9 right:globCopy];

  return v5;
}

- (id)beginsWith:(id)with caseSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  withCopy = with;
  if (sensitiveCopy)
  {
    withCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@*", withCopy];
    v8 = [(EFSQLColumnExpression *)self glob:withCopy];
  }

  else
  {
    v8 = [(EFSQLColumnExpression *)self like:withCopy patternType:0];
  }

  return v8;
}

- (id)contains:(id)contains caseSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  containsCopy = contains;
  if (sensitiveCopy)
  {
    containsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"*%@*", containsCopy];
    v8 = [(EFSQLColumnExpression *)self glob:containsCopy];
  }

  else
  {
    v8 = [(EFSQLColumnExpression *)self like:containsCopy patternType:1];
  }

  return v8;
}

- (id)doesNotContain:(id)contain caseSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  containCopy = contain;
  if (sensitiveCopy)
  {
    containCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"*%@*", containCopy];
    v8 = [(EFSQLColumnExpression *)self notGlob:containCopy];
  }

  else
  {
    v8 = [(EFSQLColumnExpression *)self notLike:containCopy patternType:1];
  }

  return v8;
}

- (id)endsWith:(id)with caseSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  withCopy = with;
  if (sensitiveCopy)
  {
    withCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"*%@", withCopy];
    v8 = [(EFSQLColumnExpression *)self glob:withCopy];
  }

  else
  {
    v8 = [(EFSQLColumnExpression *)self like:withCopy patternType:2];
  }

  return v8;
}

- (id)in:(id)in
{
  inCopy = in;
  v5 = [EFSQLBinaryExpression alloc];
  ef_SQLIsolatedExpression = [inCopy ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:10 right:ef_SQLIsolatedExpression];

  return v7;
}

- (id)notIn:(id)in
{
  inCopy = in;
  v5 = [EFSQLBinaryExpression alloc];
  ef_SQLIsolatedExpression = [inCopy ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:11 right:ef_SQLIsolatedExpression];

  return v7;
}

- (id)between:(id)between
{
  betweenCopy = between;
  v5 = [EFSQLBetweenExpression alloc];
  first = [betweenCopy first];
  ef_SQLIsolatedExpression = [first ef_SQLIsolatedExpression];
  second = [betweenCopy second];
  ef_SQLIsolatedExpression2 = [second ef_SQLIsolatedExpression];
  v10 = [(EFSQLBetweenExpression *)v5 initWithLeft:self firstValue:ef_SQLIsolatedExpression secondValue:ef_SQLIsolatedExpression2 between:1];

  return v10;
}

- (id)notBetween:(id)between
{
  betweenCopy = between;
  v5 = [EFSQLBetweenExpression alloc];
  first = [betweenCopy first];
  ef_SQLIsolatedExpression = [first ef_SQLIsolatedExpression];
  second = [betweenCopy second];
  ef_SQLIsolatedExpression2 = [second ef_SQLIsolatedExpression];
  v10 = [(EFSQLBetweenExpression *)v5 initWithLeft:self firstValue:ef_SQLIsolatedExpression secondValue:ef_SQLIsolatedExpression2 between:0];

  return v10;
}

- (id)is:(id)is
{
  isCopy = is;
  v5 = [EFSQLBinaryExpression alloc];
  ef_SQLIsolatedExpression = [isCopy ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:12 right:ef_SQLIsolatedExpression];

  return v7;
}

- (id)isNot:(id)not
{
  notCopy = not;
  v5 = [EFSQLBinaryExpression alloc];
  ef_SQLIsolatedExpression = [notCopy ef_SQLIsolatedExpression];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:self operator:13 right:ef_SQLIsolatedExpression];

  return v7;
}

- (id)isNull
{
  null = [MEMORY[0x1E695DFB0] null];
  v4 = [(EFSQLColumnExpression *)self is:null];

  return v4;
}

- (id)plus:(id)plus
{
  plusCopy = plus;
  v5 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:14 right:plusCopy];

  return v5;
}

- (id)minus:(id)minus
{
  minusCopy = minus;
  v5 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:15 right:minusCopy];

  return v5;
}

- (id)concatenate:(id)concatenate
{
  concatenateCopy = concatenate;
  v5 = [[EFSQLBinaryExpression alloc] initWithLeft:self operator:16 right:concatenateCopy];

  return v5;
}

- (id)matchesMask:(id)mask
{
  maskCopy = mask;
  v5 = [EFSQLBinaryExpression alloc];
  v6 = [EFSQLBitExpression and:self with:maskCopy];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:v6 operator:0 right:maskCopy];

  return v7;
}

- (id)doesNotMatchMask:(id)mask
{
  maskCopy = mask;
  v5 = [EFSQLBinaryExpression alloc];
  v6 = [EFSQLBitExpression and:self with:maskCopy];
  v7 = [(EFSQLBinaryExpression *)v5 initWithLeft:v6 operator:0 right:&unk_1F45AD088];

  return v7;
}

- (id)expressionForPredicateOperatorType:(unint64_t)type constantValue:(id)value
{
  valueCopy = value;
  if (type > 6)
  {
    if (type <= 9)
    {
      if (type == 7)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:178 description:@"constantValue must be of class NSString"];
        }

        v9 = [(EFSQLColumnExpression *)self like:valueCopy];
      }

      else if (type == 8)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:181 description:@"constantValue must be of class NSString"];
        }

        v9 = [(EFSQLColumnExpression *)self beginsWith:valueCopy caseSensitive:0];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler3 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:184 description:@"constantValue must be of class NSString"];
        }

        v9 = [(EFSQLColumnExpression *)self endsWith:valueCopy caseSensitive:0];
      }

      goto LABEL_44;
    }

    if (type > 98)
    {
      if (type == 99)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler4 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:192 description:@"constantValue must be of class NSString"];
        }

        v9 = [(EFSQLColumnExpression *)self contains:valueCopy caseSensitive:0];
        goto LABEL_44;
      }

      if (type != 100)
      {
        goto LABEL_45;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler5 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:195 description:@"constantValue must be of class NSArray"];
      }

      currentHandler6 = [valueCopy objectAtIndexedSubscript:0];
      v11 = [valueCopy objectAtIndexedSubscript:1];
      v12 = [EFPair pairWithFirst:currentHandler6 second:v11];
      v4 = [(EFSQLColumnExpression *)self between:v12];

LABEL_29:
      goto LABEL_45;
    }

    if (type != 10)
    {
      if (type != 11)
      {
        goto LABEL_45;
      }

      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler6 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:189 description:@"NSCustomSelectorPredicateOperatorType currently has no EFSQLExpressable counterpart"];
      goto LABEL_23;
    }

    v9 = [(EFSQLColumnExpression *)self in:valueCopy];
  }

  else
  {
    if (type <= 2)
    {
      if (type)
      {
        if (type == 1)
        {
          v9 = [(EFSQLColumnExpression *)self lessThanEqualTo:valueCopy];
        }

        else
        {
          if (type != 2)
          {
            goto LABEL_45;
          }

          v9 = [(EFSQLColumnExpression *)self greaterThan:valueCopy];
        }
      }

      else
      {
        v9 = [(EFSQLColumnExpression *)self lessThan:valueCopy];
      }

      goto LABEL_44;
    }

    if (type <= 4)
    {
      if (type == 3)
      {
        [(EFSQLColumnExpression *)self greaterThanEqualTo:valueCopy];
      }

      else
      {
        [(EFSQLColumnExpression *)self equalTo:valueCopy];
      }
      v9 = ;
      goto LABEL_44;
    }

    if (type != 5)
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler6 handleFailureInMethod:a2 object:self file:@"EFSQLObjectPropertyMapper.m" lineNumber:175 description:@"NSMatchesPredicateOperatorType currently has no EFSQLExpressable counterpart"];
LABEL_23:
      v4 = 0;
      goto LABEL_29;
    }

    v9 = [(EFSQLColumnExpression *)self notEqualTo:valueCopy];
  }

LABEL_44:
  v4 = v9;
LABEL_45:

  return v4;
}

@end