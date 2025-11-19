@interface OBUtilities
+ (id)localizedString:(id)a3 forTable:(id)a4 inBundle:(id)a5 forLanguage:(id)a6;
+ (id)stringWithFormat:(id)a3;
@end

@implementation OBUtilities

+ (id)localizedString:(id)a3 forTable:(id)a4 inBundle:(id)a5 forLanguage:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 length] && objc_msgSend(v10, "length") && objc_msgSend(v12, "length"))
  {
    v13 = MEMORY[0x1E696AAE8];
    v14 = [v11 localizations];
    v22[0] = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v16 = [v13 preferredLocalizationsFromArray:v14 forPreferences:v15];
    v17 = [v16 firstObject];

    v18 = [v11 localizedStringForKey:v9 value:0 table:v10 localization:v17];
  }

  else
  {
    v18 = 0;
  }

  if (![v18 length])
  {
    v19 = [v11 localizedStringForKey:v9 value:&stru_1F2CE9518 table:v10];

    v18 = v19;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)stringWithFormat:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithFormat:v4 arguments:&v8];

  return v5;
}

@end