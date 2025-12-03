@interface CNLocalization
+ (id)localizedStringForInteger:(int64_t)integer;
+ (id)localizedStringForString:(id)string bundle:(id)bundle table:(id)table lookupBlock:(id)block returningNilIfNotFound:(BOOL)found;
@end

@implementation CNLocalization

+ (id)localizedStringForString:(id)string bundle:(id)bundle table:(id)table lookupBlock:(id)block returningNilIfNotFound:(BOOL)found
{
  stringCopy = string;
  bundleCopy = bundle;
  tableCopy = table;
  blockCopy = block;
  v15 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, bundleCopy, stringCopy, tableCopy);
  }

  else
  {
    [bundleCopy localizedStringForKey:stringCopy value:@"__ABUnlocalizedString" table:tableCopy];
  }
  v16 = ;
  if ([v16 isEqualToString:@"__ABUnlocalizedString"])
  {
    if (found)
    {
      v17 = 0;
    }

    else
    {
      v17 = stringCopy;
    }

    v16 = v17;
  }

  return v16;
}

+ (id)localizedStringForInteger:(int64_t)integer
{
  v3 = MEMORY[0x1E696ADA0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:integer];
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:1];

  return v5;
}

@end