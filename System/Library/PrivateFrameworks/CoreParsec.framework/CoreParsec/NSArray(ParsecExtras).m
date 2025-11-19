@interface NSArray(ParsecExtras)
- (id)parsec_filterObjectsUsingBlock:()ParsecExtras;
- (id)parsec_mapAndFilterObjectsWithOptions:()ParsecExtras usingBlock:;
- (id)parsec_numberAtIndex:()ParsecExtras;
@end

@implementation NSArray(ParsecExtras)

- (id)parsec_mapAndFilterObjectsWithOptions:()ParsecExtras usingBlock:
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__NSArray_ParsecExtras__parsec_mapAndFilterObjectsWithOptions_usingBlock___block_invoke;
  v13[3] = &unk_1E7AC67A8;
  v15 = v6;
  v8 = v7;
  v14 = v8;
  v9 = v6;
  [a1 enumerateObjectsWithOptions:a3 usingBlock:v13];
  v10 = v14;
  v11 = v8;

  return v8;
}

- (id)parsec_filterObjectsUsingBlock:()ParsecExtras
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__NSArray_ParsecExtras__parsec_filterObjectsUsingBlock___block_invoke;
  v9[3] = &unk_1E7AC6780;
  v10 = v4;
  v5 = v4;
  v6 = [a1 indexesOfObjectsPassingTest:v9];
  v7 = [a1 objectsAtIndexes:v6];

  return v7;
}

- (id)parsec_numberAtIndex:()ParsecExtras
{
  v1 = [a1 objectAtIndex:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end