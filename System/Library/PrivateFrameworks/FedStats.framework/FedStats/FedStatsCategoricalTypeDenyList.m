@interface FedStatsCategoricalTypeDenyList
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
- (BOOL)isInDenyList:(id)a3;
- (FedStatsCategoricalTypeDenyList)initWithDenyListDB:(id)a3 partialMatch:(BOOL)a4;
- (id)filter:(id)a3;
@end

@implementation FedStatsCategoricalTypeDenyList

- (FedStatsCategoricalTypeDenyList)initWithDenyListDB:(id)a3 partialMatch:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FedStatsCategoricalTypeDenyList;
  v8 = [(FedStatsCategoricalTypeDenyList *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_denyListDB, a3);
    v9->_partialMatch = a4;
  }

  return v9;
}

+ (id)instanceWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKey:@"fileName"];
  v8 = [v6 objectForKey:@"tableName"];
  v9 = [v6 objectForKey:@"columnName"];
  v16 = 0;
  v10 = [FedStatsSQLiteDenyListDatabase databaseWithFileURL:v7 tableName:v8 columnName:v9 error:&v16];
  v11 = v16;
  if (v10)
  {
    v12 = [v6 objectForKey:@"partialMatch"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithBool:0];

      v12 = v13;
    }

    v14 = [[a1 alloc] initWithDenyListDB:v10 partialMatch:{objc_msgSend(v12, "BOOLValue")}];
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:101 underlyingError:v11 description:@"The URL cannot be loaded as a database"];
    *a4 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isInDenyList:(id)a3
{
  v4 = a3;
  v5 = [(FedStatsCategoricalTypeDenyList *)self denyListDB];
  LOBYTE(self) = [v5 isInDenyList:v4 partialMatch:{-[FedStatsCategoricalTypeDenyList partialMatch](self, "partialMatch")}];

  return self;
}

- (id)filter:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = a3;
    v6 = [v4 stringWithFormat:@"%@", v5];
    if ([(FedStatsCategoricalTypeDenyList *)self isInDenyList:v6])
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
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