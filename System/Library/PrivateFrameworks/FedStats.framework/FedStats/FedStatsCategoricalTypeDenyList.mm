@interface FedStatsCategoricalTypeDenyList
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
- (BOOL)isInDenyList:(id)list;
- (FedStatsCategoricalTypeDenyList)initWithDenyListDB:(id)b partialMatch:(BOOL)match;
- (id)filter:(id)filter;
@end

@implementation FedStatsCategoricalTypeDenyList

- (FedStatsCategoricalTypeDenyList)initWithDenyListDB:(id)b partialMatch:(BOOL)match
{
  bCopy = b;
  v11.receiver = self;
  v11.super_class = FedStatsCategoricalTypeDenyList;
  v8 = [(FedStatsCategoricalTypeDenyList *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_denyListDB, b);
    v9->_partialMatch = match;
  }

  return v9;
}

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v7 = [parametersCopy objectForKey:@"fileName"];
  v8 = [parametersCopy objectForKey:@"tableName"];
  v9 = [parametersCopy objectForKey:@"columnName"];
  v16 = 0;
  v10 = [FedStatsSQLiteDenyListDatabase databaseWithFileURL:v7 tableName:v8 columnName:v9 error:&v16];
  v11 = v16;
  if (v10)
  {
    v12 = [parametersCopy objectForKey:@"partialMatch"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithBool:0];

      v12 = v13;
    }

    v14 = [[self alloc] initWithDenyListDB:v10 partialMatch:{objc_msgSend(v12, "BOOLValue")}];
  }

  else if (error)
  {
    [FedStatsError errorWithCode:101 underlyingError:v11 description:@"The URL cannot be loaded as a database"];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isInDenyList:(id)list
{
  listCopy = list;
  denyListDB = [(FedStatsCategoricalTypeDenyList *)self denyListDB];
  LOBYTE(self) = [denyListDB isInDenyList:listCopy partialMatch:{-[FedStatsCategoricalTypeDenyList partialMatch](self, "partialMatch")}];

  return self;
}

- (id)filter:(id)filter
{
  if (filter)
  {
    v4 = MEMORY[0x277CCACA8];
    filterCopy = filter;
    filterCopy = [v4 stringWithFormat:@"%@", filterCopy];
    if ([(FedStatsCategoricalTypeDenyList *)self isInDenyList:filterCopy])
    {
      v7 = 0;
    }

    else
    {
      v7 = filterCopy;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end