@interface CalStructuredDataArchiver
+ (NSSet)defaultPermittedClasses;
+ (id)archiveDictionary:(id)dictionary error:(id *)error;
+ (id)unarchiveDictionaryFromData:(id)data error:(id *)error;
+ (id)unarchiveDictionaryFromData:(id)data permittedClasses:(id)classes strict:(BOOL)strict error:(id *)error;
@end

@implementation CalStructuredDataArchiver

+ (NSSet)defaultPermittedClasses
{
  if (defaultPermittedClasses_onceToken != -1)
  {
    +[CalStructuredDataArchiver defaultPermittedClasses];
  }

  v3 = defaultPermittedClasses_permittedClasses;

  return v3;
}

void __52__CalStructuredDataArchiver_defaultPermittedClasses__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:9];
  v2 = [v0 setWithArray:{v1, v5, v6, v7, v8, v9, v10, v11, v12}];
  v3 = defaultPermittedClasses_permittedClasses;
  defaultPermittedClasses_permittedClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)unarchiveDictionaryFromData:(id)data error:(id *)error
{
  dataCopy = data;
  defaultPermittedClasses = [self defaultPermittedClasses];
  v8 = [self unarchiveDictionaryFromData:dataCopy permittedClasses:defaultPermittedClasses strict:0 error:error];

  return v8;
}

+ (id)unarchiveDictionaryFromData:(id)data permittedClasses:(id)classes strict:(BOOL)strict error:(id *)error
{
  strictCopy = strict;
  v14 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  classesCopy = classes;
  if (dataCopy)
  {
    if (strictCopy)
    {
      [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:classesCopy fromData:dataCopy error:error];
    }

    else
    {
      [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:classesCopy fromData:dataCopy error:error];
    }
    v11 = ;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)archiveDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  defaultPermittedClasses = [self defaultPermittedClasses];
  v8 = [self archiveDictionary:dictionaryCopy permittedClasses:defaultPermittedClasses strict:0 error:error];

  return v8;
}

@end