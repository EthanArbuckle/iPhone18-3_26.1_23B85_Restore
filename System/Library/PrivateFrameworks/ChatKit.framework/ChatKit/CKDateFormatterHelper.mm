@interface CKDateFormatterHelper
+ (id)sharedInstance;
- (CKDateFormatterHelper)init;
- (id)_createDateFormatterFor:(int64_t)for;
- (id)_createRelativeStandaloneDateFormatter;
- (id)_createShortDateNoTimeInSentenceDateFormatter;
- (id)_keyForDateFormatterType:(int64_t)type;
- (id)_templateStringForFormatterType:(int64_t)type;
- (id)getDateFormatterFor:(int64_t)for;
- (void)removeAllObjects;
@end

@implementation CKDateFormatterHelper

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CKDateFormatterHelper_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAC8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_removeAllObjects name:*MEMORY[0x1E69DDAD8] object:0];
  }

  return v2;
}

- (id)getDateFormatterFor:(int64_t)for
{
  v5 = [(CKDateFormatterHelper *)self _keyForDateFormatterType:?];
  lockList = [(CKDateFormatterHelper *)self lockList];
  v7 = [lockList objectAtIndexedSubscript:for];

  [v7 lock];
  dateFormatterContainer = [(CKDateFormatterHelper *)self dateFormatterContainer];
  v9 = [dateFormatterContainer objectForKey:v5];

  if (!v9)
  {
    v9 = [(CKDateFormatterHelper *)self _createDateFormatterFor:for];
    dateFormatterContainer2 = [(CKDateFormatterHelper *)self dateFormatterContainer];
    [dateFormatterContainer2 setObject:v9 forKey:v5];
  }

  [v7 unlock];

  return v9;
}

- (id)_createDateFormatterFor:(int64_t)for
{
  v5 = [(CKDateFormatterHelper *)self _templateStringForFormatterType:?];
  v6 = 0;
  if (for > 4)
  {
    if (for > 7)
    {
      if (for == 8)
      {
        _createShortDateNoTimeInSentenceDateFormatter = [(CKDateFormatterHelper *)self _createShortDateNoTimeInSentenceDateFormatter];
        goto LABEL_14;
      }

      if (for != 9)
      {
        if (for != 10)
        {
          goto LABEL_15;
        }

        _createShortDateNoTimeInSentenceDateFormatter = [(CKDateFormatterHelper *)self _createRelativeStandaloneDateFormatter];
        goto LABEL_14;
      }
    }

    else if (for != 5)
    {
      v7 = CKAutoupdatingRelativeDateFormatter;
LABEL_13:
      _createShortDateNoTimeInSentenceDateFormatter = [[v7 alloc] initWithTemplate:v5];
LABEL_14:
      v6 = _createShortDateNoTimeInSentenceDateFormatter;
      goto LABEL_15;
    }

LABEL_12:
    v7 = CKAutoupdatingDateFormatter;
    goto LABEL_13;
  }

  if (for > 1 || for <= 1)
  {
    goto LABEL_12;
  }

LABEL_15:

  return v6;
}

- (id)_createShortDateNoTimeInSentenceDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  __ck_currentLocale = [MEMORY[0x1E695DF58] __ck_currentLocale];
  [v2 setLocale:__ck_currentLocale];

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
  __ck_currentLocale = [MEMORY[0x1E695DF58] __ck_currentLocale];
  [v2 setLocale:__ck_currentLocale];

  [v2 setDoesRelativeDateFormatting:1];
  [v2 setFormattingContext:2];

  return v2;
}

- (id)_keyForDateFormatterType:(int64_t)type
{
  if ((type - 1) > 0xA)
  {
    return @"kThePastDateFormatterKey";
  }

  else
  {
    return off_1E72F7478[type - 1];
  }
}

- (id)_templateStringForFormatterType:(int64_t)type
{
  if ((type - 1) > 0xA)
  {
    return @"yMMMdjm";
  }

  else
  {
    return off_1E72F74D0[type - 1];
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

  dateFormatterContainer = [(CKDateFormatterHelper *)self dateFormatterContainer];
  [dateFormatterContainer removeAllObjects];
}

@end