@interface CNLocalization
+ (id)localizedStringForInteger:(int64_t)a3;
+ (id)localizedStringForString:(id)a3 bundle:(id)a4 table:(id)a5 lookupBlock:(id)a6 returningNilIfNotFound:(BOOL)a7;
@end

@implementation CNLocalization

+ (id)localizedStringForString:(id)a3 bundle:(id)a4 table:(id)a5 lookupBlock:(id)a6 returningNilIfNotFound:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, v12, v11, v13);
  }

  else
  {
    [v12 localizedStringForKey:v11 value:@"__ABUnlocalizedString" table:v13];
  }
  v16 = ;
  if ([v16 isEqualToString:@"__ABUnlocalizedString"])
  {
    if (a7)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11;
    }

    v16 = v17;
  }

  return v16;
}

+ (id)localizedStringForInteger:(int64_t)a3
{
  v3 = MEMORY[0x1E696ADA0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:1];

  return v5;
}

@end