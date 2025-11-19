@interface NSDictionary(MSVAdditions)
+ (id)msv_dictionaryWithContentsOfBase64EncodedJSONString:()MSVAdditions error:;
+ (id)msv_dictionaryWithContentsOfJSON:()MSVAdditions error:;
- (id)msv_compactDescription;
- (void)msv_enumerateKeysAndObjectsOrderedByKeyComparator:()MSVAdditions usingBlock:;
- (void)msv_enumerateKeysAndObjectsOrderedByKeyDescriptors:()MSVAdditions usingBlock:;
- (void)msv_enumerateKeysAndObjectsOrderedByKeySelector:()MSVAdditions usingBlock:;
@end

@implementation NSDictionary(MSVAdditions)

- (void)msv_enumerateKeysAndObjectsOrderedByKeyComparator:()MSVAdditions usingBlock:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 allKeys];
  v9 = [v8 sortedArrayWithOptions:0 usingComparator:v7];

  [(NSDictionary *)a1 _msv_enumerateKeysAndObjectsWithSortedKeys:v9 usingBlock:v6];
}

- (void)msv_enumerateKeysAndObjectsOrderedByKeySelector:()MSVAdditions usingBlock:
{
  v6 = a4;
  v7 = [a1 allKeys];
  v8 = [v7 sortedArrayUsingSelector:a3];

  [(NSDictionary *)a1 _msv_enumerateKeysAndObjectsWithSortedKeys:v8 usingBlock:v6];
}

- (void)msv_enumerateKeysAndObjectsOrderedByKeyDescriptors:()MSVAdditions usingBlock:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 allKeys];
  v9 = [v8 sortedArrayUsingDescriptors:v7];

  [(NSDictionary *)a1 _msv_enumerateKeysAndObjectsWithSortedKeys:v9 usingBlock:v6];
}

- (id)msv_compactDescription
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __52__NSDictionary_MSVAdditions__msv_compactDescription__block_invoke;
  v11 = &unk_1E7982030;
  v12 = v2;
  v3 = v2;
  [a1 enumerateKeysAndObjectsUsingBlock:&v8];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 msv_compactDescription];
  v6 = [v4 stringWithFormat:@"{ %@ }", v5, v8, v9, v10, v11];

  return v6;
}

+ (id)msv_dictionaryWithContentsOfJSON:()MSVAdditions error:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v13];
  v6 = v13;
  if (v5 && (_NSIsNSDictionary() & 1) == 0)
  {
    v7 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A278];
    v15[0] = @"Unexpected non-dictionary object in JSON payload";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [v7 errorWithDomain:@"MediaServices" code:400 userInfo:v8];

    v6 = v9;
  }

  if (a4 && v6)
  {
    v10 = v6;
    *a4 = v6;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)msv_dictionaryWithContentsOfBase64EncodedJSONString:()MSVAdditions error:
{
  v6 = MEMORY[0x1E695DEF0];
  v7 = a3;
  v8 = [[v6 alloc] initWithBase64EncodedString:v7 options:0];

  v9 = [a1 msv_dictionaryWithContentsOfJSON:v8 error:a4];

  return v9;
}

@end