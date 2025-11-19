@interface CalStructuredDataArchiver
+ (NSSet)defaultPermittedClasses;
+ (id)archiveDictionary:(id)a3 error:(id *)a4;
+ (id)unarchiveDictionaryFromData:(id)a3 error:(id *)a4;
+ (id)unarchiveDictionaryFromData:(id)a3 permittedClasses:(id)a4 strict:(BOOL)a5 error:(id *)a6;
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

+ (id)unarchiveDictionaryFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 defaultPermittedClasses];
  v8 = [a1 unarchiveDictionaryFromData:v6 permittedClasses:v7 strict:0 error:a4];

  return v8;
}

+ (id)unarchiveDictionaryFromData:(id)a3 permittedClasses:(id)a4 strict:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v14 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    if (v7)
    {
      [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:v10 fromData:v9 error:a6];
    }

    else
    {
      [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v10 fromData:v9 error:a6];
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

+ (id)archiveDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 defaultPermittedClasses];
  v8 = [a1 archiveDictionary:v6 permittedClasses:v7 strict:0 error:a4];

  return v8;
}

@end