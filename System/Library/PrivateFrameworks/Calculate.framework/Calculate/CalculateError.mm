@interface CalculateError
+ (id)errorWithCode:(int64_t)code userInfo:(id)info;
- (CalculateError)initWithCode:(int64_t)code userInfo:(id)info;
- (id)initInvalidFlipArgument:(id)argument;
- (id)initInvalidNegativeArgument:(id)argument;
- (id)initUnbalancedSymbol:(id)symbol;
- (id)initUnexpectedPunctuation:(id)punctuation;
- (id)initUnexpectedSymbol:(id)symbol;
- (id)initUnknownVariable:(id)variable;
@end

@implementation CalculateError

- (id)initInvalidFlipArgument:(id)argument
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E696A588];
  v4 = MEMORY[0x1E696AEC0];
  argumentCopy = argument;
  v6 = +[Localize systemLocale];
  v7 = [Localize localizationForLocale:v6];
  v8 = [Localize localizedStringForKey:@"-1005.desc.flip" value:0 table:@"LocalizableErrors" localization:v7];
  v9 = [v4 stringWithFormat:v8, argumentCopy, v14];

  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [(CalculateError *)self initWithCode:-1005 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)initInvalidNegativeArgument:(id)argument
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E696A588];
  v4 = MEMORY[0x1E696AEC0];
  argumentCopy = argument;
  v6 = +[Localize systemLocale];
  v7 = [Localize localizationForLocale:v6];
  v8 = [Localize localizedStringForKey:@"-1005.desc.negative" value:0 table:@"LocalizableErrors" localization:v7];
  v9 = [v4 stringWithFormat:v8, argumentCopy, v14];

  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [(CalculateError *)self initWithCode:-1005 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)initUnbalancedSymbol:(id)symbol
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = initUnbalancedSymbol__onceToken;
  symbolCopy = symbol;
  if (v4 != -1)
  {
    dispatch_once(&initUnbalancedSymbol__onceToken, &__block_literal_global_98);
  }

  v6 = [initUnbalancedSymbol__normalizeMap objectForKeyedSubscript:symbolCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = symbolCopy;
  }

  v9 = v8;

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unbalanced %@", v9];
  v11 = +[Localize systemLocale];
  v12 = [Localize localizationForLocale:v11];
  v13 = [Localize localizedStringForKey:v10 value:0 table:@"LocalizableErrors" localization:v12];

  if (!v13)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = +[Localize systemLocale];
    v16 = [Localize localizationForLocale:v15];
    v17 = [Localize localizedStringForKey:@"Unbalanced Unknown" value:0 table:@"LocalizableErrors" localization:v16];
    v13 = [v14 stringWithFormat:v17, v9];
  }

  v22 = *MEMORY[0x1E696A578];
  v23[0] = v13;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v19 = [(CalculateError *)self initWithCode:-1001 userInfo:v18];

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void __39__CalculateError_initUnbalancedSymbol___block_invoke()
{
  v0 = initUnbalancedSymbol__normalizeMap;
  initUnbalancedSymbol__normalizeMap = &unk_1F419A708;
}

- (id)initUnexpectedSymbol:(id)symbol
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E696A578];
  v4 = MEMORY[0x1E696AEC0];
  symbolCopy = symbol;
  v6 = +[Localize systemLocale];
  v7 = [Localize localizationForLocale:v6];
  v8 = [Localize localizedStringForKey:@"-1012" value:0 table:@"LocalizableErrors" localization:v7];
  v9 = [v4 stringWithFormat:v8, symbolCopy, v14];

  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [(CalculateError *)self initWithCode:-1012 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)initUnexpectedPunctuation:(id)punctuation
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E696A578];
  v4 = MEMORY[0x1E696AEC0];
  punctuationCopy = punctuation;
  v6 = +[Localize systemLocale];
  v7 = [Localize localizationForLocale:v6];
  v8 = [Localize localizedStringForKey:@"-1011" value:0 table:@"LocalizableErrors" localization:v7];
  v9 = [v4 stringWithFormat:v8, punctuationCopy, v14];

  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [(CalculateError *)self initWithCode:-1011 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)initUnknownVariable:(id)variable
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"CalculateErrorKeySuggestions";
  v11[0] = variable;
  v4 = MEMORY[0x1E695DF20];
  variableCopy = variable;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(CalculateError *)self initWithCode:-1003 userInfo:v6];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (CalculateError)initWithCode:(int64_t)code userInfo:(id)info
{
  v6 = [info mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v10 = +[Localize systemLocale];
  v11 = [Localize localizationForLocale:v10];

  v12 = *MEMORY[0x1E696A578];
  v13 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  if (!v13)
  {
    code = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", code];
    v15 = [Localize localizedStringForKey:code value:0 table:@"LocalizableErrors" localization:v11];
    [v9 setObject:v15 forKeyedSubscript:v12];
  }

  v16 = *MEMORY[0x1E696A588];
  v17 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A588]];

  if (!v17)
  {
    code2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.desc", code];
    v19 = [Localize localizedStringForKey:code2 value:@"NOT_FOUND" table:@"LocalizableErrors" localization:v11];

    if (([v19 isEqualToString:@"NOT_FOUND"] & 1) == 0)
    {
      [v9 setObject:v19 forKeyedSubscript:v16];
    }
  }

  v22.receiver = self;
  v22.super_class = CalculateError;
  v20 = [(CalculateError *)&v22 initWithDomain:CalculateErrorDomain code:code userInfo:v9];

  return v20;
}

+ (id)errorWithCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  v6 = [[CalculateError alloc] initWithCode:code userInfo:infoCopy];

  return v6;
}

void __39__CalculateError_errorWithResultError___block_invoke()
{
  v4[15] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F4199C70;
  v3[1] = &unk_1F4199CA0;
  v4[0] = &unk_1F4199C88;
  v4[1] = &unk_1F4199CB8;
  v3[2] = &unk_1F4199CD0;
  v3[3] = &unk_1F4199D00;
  v4[2] = &unk_1F4199CE8;
  v4[3] = &unk_1F4199D18;
  v3[4] = &unk_1F4199D30;
  v3[5] = &unk_1F4199D60;
  v4[4] = &unk_1F4199D48;
  v4[5] = &unk_1F4199D78;
  v3[6] = &unk_1F4199D90;
  v3[7] = &unk_1F4199DA8;
  v4[6] = &unk_1F4199D78;
  v4[7] = &unk_1F4199DC0;
  v3[8] = &unk_1F4199DD8;
  v3[9] = &unk_1F4199E08;
  v4[8] = &unk_1F4199DF0;
  v4[9] = &unk_1F4199E20;
  v3[10] = &unk_1F4199E38;
  v3[11] = &unk_1F4199E68;
  v4[10] = &unk_1F4199E50;
  v4[11] = &unk_1F4199E80;
  v3[12] = &unk_1F4199E98;
  v3[13] = &unk_1F4199EC8;
  v4[12] = &unk_1F4199EB0;
  v4[13] = &unk_1F4199EE0;
  v3[14] = &unk_1F4199EF8;
  v4[14] = &unk_1F4199F10;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:15];
  v1 = errorWithResultError__mapping;
  errorWithResultError__mapping = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end