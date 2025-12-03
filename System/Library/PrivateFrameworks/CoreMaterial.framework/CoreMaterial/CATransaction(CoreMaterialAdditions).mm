@interface CATransaction(CoreMaterialAdditions)
+ (void)mt_addCompletionBlock:()CoreMaterialAdditions;
@end

@implementation CATransaction(CoreMaterialAdditions)

+ (void)mt_addCompletionBlock:()CoreMaterialAdditions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1BFB5AC50](v4);
    completionBlock = [self completionBlock];
    v8 = completionBlock;
    if (completionBlock)
    {
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __62__CATransaction_CoreMaterialAdditions__mt_addCompletionBlock___block_invoke;
      v13 = &unk_1E80BE098;
      v14 = completionBlock;
      v15 = v5;
      v9 = MEMORY[0x1BFB5AC50](&v10);

      v6 = v9;
    }

    [self setCompletionBlock:{v6, v10, v11, v12, v13}];
  }
}

@end