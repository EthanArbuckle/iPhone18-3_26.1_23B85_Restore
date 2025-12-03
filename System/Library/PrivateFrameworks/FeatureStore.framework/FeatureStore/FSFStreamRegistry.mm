@interface FSFStreamRegistry
+ (BOOL)writeDict:(id)dict;
+ (id)readFileInToDict;
+ (id)registryFilePath;
- (BOOL)registerForStream:(id)stream withSchema:(id)schema error:(id *)error;
@end

@implementation FSFStreamRegistry

+ (id)registryFilePath
{
  v2 = +[FSFUtils getBaseLocalPath];
  v3 = [v2 stringByAppendingString:@"/schema_registry.json"];

  return v3;
}

- (BOOL)registerForStream:(id)stream withSchema:(id)schema error:(id *)error
{
  streamCopy = stream;
  schemaCopy = schema;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = +[FSFStreamRegistry readFileInToDict];
  if (v9)
  {
    [v8 addEntriesFromDictionary:v9];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [v8 objectForKeyedSubscript:streamCopy];

  if (v11)
  {
    v12 = [v8 objectForKeyedSubscript:streamCopy];
    [v10 addObjectsFromArray:v12];
  }

  schemaData = [schemaCopy schemaData];
  [v10 addObject:schemaData];

  [v8 setObject:v10 forKey:streamCopy];
  LOBYTE(schemaData) = [FSFStreamRegistry writeDict:v8];

  return schemaData;
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

+ (BOOL)writeDict:(id)dict
{
  v11 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dict options:3 error:&v11];
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