@interface CKDateFormatterHelper
+ (id)sharedInstance;
- (CKDateFormatterHelper)init;
- (id)_createDateFormatterFor:(int64_t)a3;
- (id)_createRelativeStandaloneDateFormatter;
- (id)_createShortDateNoTimeInSentenceDateFormatter;
- (id)_keyForDateFormatterType:(int64_t)a3;
- (id)_templateStringForFormatterType:(int64_t)a3;
- (id)getDateFormatterFor:(int64_t)a3;
- (void)removeAllObjects;
@end

@implementation CKDateFormatterHelper

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CKDateFormatterHelper_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_8 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_8, block);
  }

  v2 = sharedInstance_sInstance_4;

  return v2;
}

void __39__CKDateFormatterHelper_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedInstance_sInstance_4;
  sharedInstance_sInstance_4 = v0;
}

- (CKDateFormatterHelper)init
{
  v13.receiver = self;
  v13.super_class = CKDateFormatterHelper;
  v2 = [(CKDateFormatterHelper *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    dateFormatterContainer = v2->_dateFormatterContainer;
    v2->_dateFormatterContainer = v3;

    v5 = objc_opt_new();
    v6 = 11;
    do
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AE68]);
      [v5 addObject:v7];

      --v6;
    }

    while (v6);
    v8 = [v5 copy];
    lockList = v2->_lockList;
    v2->_lockList = v8;

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v2 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAC8] object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v2 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAD8] object:0];
  }

  return v2;
}

- (id)getDateFormatterFor:(int64_t)a3
{
  v5 = [(CKDateFormatterHelper *)self _keyForDateFormatterType:?];
  v6 = [(CKDateFormatterHelper *)self lockList];
  v7 = [v6 objectAtIndexedSubscript:a3];

  [v7 lock];
  v8 = [(CKDateFormatterHelper *)self dateFormatterContainer];
  v9 = [v8 objectForKey:v5];

  if (!v9)
  {
    v9 = [(CKDateFormatterHelper *)self _createDateFormatterFor:a3];
    v10 = [(CKDateFormatterHelper *)self dateFormatterContainer];
    [v10 setObject:v9 forKey:v5];
  }

  [v7 unlock];

  return v9;
}

- (id)_createDateFormatterFor:(int64_t)a3
{
  v5 = [(CKDateFormatterHelper *)self _templateStringForFormatterType:?];
  v6 = 0;
  if (a3 > 4)
  {
    if (a3 > 7)
    {
      if (a3 == 8)
      {
        v8 = [(CKDateFormatterHelper *)self _createShortDateNoTimeInSentenceDateFormatter];
        goto LABEL_14;
      }

      if (a3 != 9)
      {
        if (a3 != 10)
        {
          goto LABEL_15;
        }

        v8 = [(CKDateFormatterHelper *)self _createRelativeStandaloneDateFormatter];
        goto LABEL_14;
      }
    }

    else if (a3 != 5)
    {
      v7 = CKAutoupdatingRelativeDateFormatter;
LABEL_13:
      v8 = [[v7 alloc] initWithTemplate:v5];
LABEL_14:
      v6 = v8;
      goto LABEL_15;
    }

LABEL_12:
    v7 = CKAutoupdatingDateFormatter;
    goto LABEL_13;
  }

  if (a3 > 1 || a3 <= 1)
  {
    goto LABEL_12;
  }

LABEL_15:

  return v6;
}

- (id)_createShortDateNoTimeInSentenceDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = [MEMORY[0x1E695DF58] __ck_currentLocale];
  [v2 setLocale:v3];

  [v2 setTimeStyle:0];
  [v2 setDateStyle:1];
  [v2 setFormattingContext:5];

  return v2;
}

- (id)_createRelativeStandaloneDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setTimeStyle:0];
  [v2 setDateStyle:1];
  v3 = [MEMORY[0x1E695DF58] __ck_currentLocale];
  [v2 setLocale:v3];

  [v2 setDoesRelativeDateFormatting:1];
  [v2 setFormattingContext:2];

  return v2;
}

- (id)_keyForDateFormatterType:(int64_t)a3
{
  if ((a3 - 1) > 0xA)
  {
    return @"kThePastDateFormatterKey";
  }

  else
  {
    return off_1E72F7478[a3 - 1];
  }
}

- (id)_templateStringForFormatterType:(int64_t)a3
{
  if ((a3 - 1) > 0xA)
  {
    return @"yMMMdjm";
  }

  else
  {
    return off_1E72F74D0[a3 - 1];
  }
}

- (void)removeAllObjects
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Clean up date formatter objects", v5, 2u);
    }
  }

  v4 = [(CKDateFormatterHelper *)self dateFormatterContainer];
  [v4 removeAllObjects];
}

@end