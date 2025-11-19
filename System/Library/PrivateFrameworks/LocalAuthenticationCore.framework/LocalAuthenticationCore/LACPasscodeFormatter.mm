@interface LACPasscodeFormatter
+ (id)sharedInstance;
- (LACPasscodeFormatter)init;
- (id)localizePasscode:(id)a3 type:(int64_t)a4;
@end

@implementation LACPasscodeFormatter

- (LACPasscodeFormatter)init
{
  v6.receiver = self;
  v6.super_class = LACPasscodeFormatter;
  v2 = [(LACPasscodeFormatter *)&v6 init];
  if (v2)
  {
    v3 = __28__LACPasscodeFormatter_init__block_invoke();
    formatter = v2->_formatter;
    v2->_formatter = v3;
  }

  return v2;
}

id __28__LACPasscodeFormatter_init__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en"];
  [v0 setLocale:v1];

  return v0;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9 != -1)
  {
    +[LACPasscodeFormatter sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_9;

  return v3;
}

uint64_t __38__LACPasscodeFormatter_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_9 = objc_alloc_init(LACPasscodeFormatter);

  return MEMORY[0x1EEE66BB8]();
}

- (id)localizePasscode:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 4)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v10 = [v7 length];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__LACPasscodeFormatter_localizePasscode_type___block_invoke;
    v13[3] = &unk_1E7A967B8;
    v13[4] = self;
    v15 = &v16;
    v11 = v9;
    v14 = v11;
    [v7 enumerateSubstringsInRange:0 options:v10 usingBlock:{2, v13}];
    if (v17[3])
    {
      v8 = 0;
    }

    else
    {
      v8 = v11;
    }

    _Block_object_dispose(&v16, 8);
  }

  return v8;
}

void __46__LACPasscodeFormatter_localizePasscode_type___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = [*(*(a1 + 32) + 8) numberFromString:a2];
  if (v9)
  {
    v10 = v9;
    [*(a1 + 40) appendFormat:@"%d", objc_msgSend(v9, "intValue")];
    v9 = v10;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a7 = 1;
  }
}

@end