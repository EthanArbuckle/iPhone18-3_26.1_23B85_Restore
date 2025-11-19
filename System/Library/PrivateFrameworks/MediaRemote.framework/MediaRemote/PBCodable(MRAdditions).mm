@interface PBCodable(MRAdditions)
- (id)mr_valueForPotentiallyUndefinedKey:()MRAdditions;
@end

@implementation PBCodable(MRAdditions)

- (id)mr_valueForPotentiallyUndefinedKey:()MRAdditions
{
  v4 = a3;
  v5 = [v4 substringToIndex:1];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 uppercaseString];
  v8 = [v6 stringWithFormat:@"has%@", v7];

  v9 = [v4 stringByReplacingCharactersInRange:0 withString:{1, v8}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__PBCodable_MRAdditions__mr_valueForPotentiallyUndefinedKey___block_invoke;
  v16[3] = &unk_1E769CB88;
  v16[4] = a1;
  v17 = v4;
  v10 = v4;
  v11 = MEMORY[0x1A58E3570](v16);
  v12 = NSSelectorFromString(v9);
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v13 = [a1 methodForSelector:v12]) != 0 && v13(a1, v12))
  {
    v14 = v11[2](v11);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end