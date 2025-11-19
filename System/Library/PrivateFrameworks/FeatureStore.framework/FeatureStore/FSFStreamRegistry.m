@interface FSFStreamRegistry
+ (BOOL)writeDict:(id)a3;
+ (id)readFileInToDict;
+ (id)registryFilePath;
- (BOOL)registerForStream:(id)a3 withSchema:(id)a4 error:(id *)a5;
@end

@implementation FSFStreamRegistry

+ (id)registryFilePath
{
  v2 = +[FSFUtils getBaseLocalPath];
  v3 = [v2 stringByAppendingString:@"/schema_registry.json"];

  return v3;
}

- (BOOL)registerForStream:(id)a3 withSchema:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = +[FSFStreamRegistry readFileInToDict];
  if (v9)
  {
    [v8 addEntriesFromDictionary:v9];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [v8 objectForKeyedSubscript:v6];

  if (v11)
  {
    v12 = [v8 objectForKeyedSubscript:v6];
    [v10 addObjectsFromArray:v12];
  }

  v13 = [v7 schemaData];
  [v10 addObject:v13];

  [v8 setObject:v10 forKey:v6];
  LOBYTE(v13) = [FSFStreamRegistry writeDict:v8];

  return v13;
}

+ (id)readFileInToDict
{
  v2 = +[FSFStreamRegistry registryFilePath];
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)writeDict:(id)a3
{
  v11 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:3 error:&v11];
  v4 = v11;
  v5 = +[FSFStreamRegistry registryFilePath];
  v10 = v4;
  v6 = [v3 writeToFile:v5 options:0x10000000 error:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (!v8)
  {
    NSLog(&cfstr_WriteStatusDEr.isa, v6, v7);
  }

  return v8;
}

@end