@interface NSArray(PKError)
+ (id)pk_FilteredBillingErrorsForContactFields:()PKError errors:;
+ (id)pk_FilteredCardErrors:()PKError;
+ (id)pk_FilteredShippingErrorsForContactFields:()PKError errors:contactFieldOptional:;
@end

@implementation NSArray(PKError)

+ (id)pk_FilteredBillingErrorsForContactFields:()PKError errors:
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF70];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __68__NSArray_PKError__pk_FilteredBillingErrorsForContactFields_errors___block_invoke;
  v16 = &unk_1E79D3D68;
  v17 = v5;
  v18 = v8;
  v9 = v8;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:&v13];

  v11 = [v9 copy];

  return v11;
}

+ (id)pk_FilteredShippingErrorsForContactFields:()PKError errors:contactFieldOptional:
{
  v7 = a3;
  v8 = MEMORY[0x1E695DF70];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__NSArray_PKError__pk_FilteredShippingErrorsForContactFields_errors_contactFieldOptional___block_invoke;
  v15[3] = &unk_1E79D3D90;
  v16 = v7;
  v17 = v10;
  v18 = a5;
  v11 = v10;
  v12 = v7;
  [v9 enumerateObjectsUsingBlock:v15];

  v13 = [v11 copy];

  return v13;
}

+ (id)pk_FilteredCardErrors:()PKError
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__NSArray_PKError__pk_FilteredCardErrors___block_invoke;
  v9[3] = &unk_1E79D3DB8;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

@end