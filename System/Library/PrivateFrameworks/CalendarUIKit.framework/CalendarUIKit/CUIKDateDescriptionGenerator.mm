@interface CUIKDateDescriptionGenerator
+ (id)_dateAfterTodayNextWeekFormatStringForDayOfWeek:(int64_t)a3 generateLowercaseString:(BOOL)a4;
+ (id)_dateAfterTodayThisWeekFormatStringForDayOfWeek:(int64_t)a3 generateLowercaseString:(BOOL)a4;
+ (id)_dateBeforeTodayLastWeekFormatStringForDayOfWeek:(int64_t)a3 generateLowercaseString:(BOOL)a4;
+ (id)_dateBeforeTodayThisWeekFormatStringForDayOfWeek:(int64_t)a3 generateLowercaseString:(BOOL)a4;
+ (id)sharedGenerator;
- (CUIKDateDescriptionGenerator)init;
- (id)_customFormatter;
- (id)_dateFormatterWithLongFormat:(id)a3;
- (id)_stringForDate:(id)a3 relativeToReferenceDate:(id)a4 withLongFormatString:(id)a5 useAbbreviatedFormats:(BOOL)a6 lowerCase:(BOOL)a7;
- (id)_stringForDateTime:(id)a3 timeZone:(__CFTimeZone *)a4;
- (id)_stringForTime:(id)a3;
- (id)_timeStringForDate:(id)a3;
- (id)abbreviatedDayFormatter;
- (id)dateStringForDate:(id)a3 allDay:(BOOL)a4 standalone:(BOOL)a5 shortFormat:(BOOL)a6;
- (id)dateStringForDate:(id)a3 relativeToReferenceDate:(id)a4 allDay:(BOOL)a5 standalone:(BOOL)a6 shortFormat:(BOOL)a7;
- (id)dateStringForEventInvitationWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6 withFormat:(unint64_t)a7 showTimeZone:(BOOL)a8;
- (id)dayFormatter;
- (id)dayOfWeekFormatter;
- (id)formatterForLongFormat:(id)a3;
- (id)fullStyleDateFormatter;
- (id)standardTimeFormatter;
- (id)stringForDate:(id)a3 withLongFormatString:(id)a4 useAbbreviatedFormats:(BOOL)a5 lowerCase:(BOOL)a6;
- (id)timeFormatter;
- (id)timeStringForDate:(id)a3 inTimeZone:(id)a4;
- (void)_initializeFormatters;
@end

@implementation CUIKDateDescriptionGenerator

+ (id)sharedGenerator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CUIKDateDescriptionGenerator_sharedGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedGenerator_onceToken_0 != -1)
  {
    dispatch_once(&sharedGenerator_onceToken_0, block);
  }

  v2 = sharedGenerator___sharedInstance_0;

  return v2;
}

void __47__CUIKDateDescriptionGenerator_sharedGenerator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedGenerator___sharedInstance_0;
  sharedGenerator___sharedInstance_0 = v1;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CUIKDateDescriptionGeneratorDateTimeFormatChanged, *MEMORY[0x1E6993128], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v5 = *MEMORY[0x1E6993138];

  CFNotificationCenterAddObserver(LocalCenter, 0, _CUIKDateDescriptionGeneratorDateTimeFormatChanged, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (CUIKDateDescriptionGenerator)init
{
  v6.receiver = self;
  v6.super_class = CUIKDateDescriptionGenerator;
  v2 = [(CUIKDateDescriptionGenerator *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Serial Formatter Edit Queue", 0);
    serialFormatterEditQueue = v2->_serialFormatterEditQueue;
    v2->_serialFormatterEditQueue = v3;

    [(CUIKDateDescriptionGenerator *)v2 _initializeFormatters];
  }

  return v2;
}

- (void)_initializeFormatters
{
  serialFormatterEditQueue = self->_serialFormatterEditQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CUIKDateDescriptionGenerator__initializeFormatters__block_invoke;
  block[3] = &unk_1E8399BD8;
  block[4] = self;
  dispatch_sync(serialFormatterEditQueue, block);
}

uint64_t __53__CUIKDateDescriptionGenerator__initializeFormatters__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = objc_opt_new();
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = v5;

  v8 = *(*(a1 + 32) + 48);
  v9 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v8 setLocale:v9];

  [*(*(a1 + 32) + 48) setDateStyle:0];
  [*(*(a1 + 32) + 48) setTimeStyle:0];
  v10 = objc_opt_new();
  v11 = *(a1 + 32);
  v12 = *(v11 + 32);
  *(v11 + 32) = v10;

  v13 = *(*(a1 + 32) + 32);
  v14 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v13 setLocale:v14];

  [*(*(a1 + 32) + 32) setDateStyle:0];
  [*(*(a1 + 32) + 32) setTimeStyle:1];
  v15 = objc_opt_new();
  v16 = *(a1 + 32);
  v17 = *(v16 + 16);
  *(v16 + 16) = v15;

  v18 = *(*(a1 + 32) + 16);
  v19 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v18 setLocale:v19];

  [*(*(a1 + 32) + 16) setDateStyle:0];
  [*(*(a1 + 32) + 16) setTimeStyle:0];
  [*(*(a1 + 32) + 16) setDateFormat:@"EEEE"];
  v20 = objc_opt_new();
  v21 = *(a1 + 32);
  v22 = *(v21 + 24);
  *(v21 + 24) = v20;

  v23 = *(*(a1 + 32) + 24);
  v24 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v23 setLocale:v24];

  [*(*(a1 + 32) + 24) setDateStyle:0];
  [*(*(a1 + 32) + 24) setTimeStyle:0];
  [*(*(a1 + 32) + 24) setDateFormat:@"EEE"];
  v25 = objc_opt_new();
  v26 = *(a1 + 32);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  v28 = *(*(a1 + 32) + 40);
  v29 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v28 setLocale:v29];

  [*(*(a1 + 32) + 40) setDateStyle:0];
  [*(*(a1 + 32) + 40) setTimeStyle:1];
  v30 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v31 = *(a1 + 32);
  v32 = *(v31 + 56);
  *(v31 + 56) = v30;

  v33 = *(*(a1 + 32) + 56);
  v34 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v33 setLocale:v34];

  [*(*(a1 + 32) + 56) setDateStyle:4];
  [*(*(a1 + 32) + 56) setTimeStyle:0];
  v35 = objc_opt_new();
  v36 = *(a1 + 32);
  v37 = *(v36 + 64);
  *(v36 + 64) = v35;

  v38 = *(*(a1 + 32) + 64);

  return [v38 setDateFormat:@"e"];
}

- (id)_customFormatter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  serialFormatterEditQueue = self->_serialFormatterEditQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CUIKDateDescriptionGenerator__customFormatter__block_invoke;
  v5[3] = &unk_1E839A6E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialFormatterEditQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__CUIKDateDescriptionGenerator__customFormatter__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)timeFormatter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  serialFormatterEditQueue = self->_serialFormatterEditQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__CUIKDateDescriptionGenerator_timeFormatter__block_invoke;
  v5[3] = &unk_1E839A6E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialFormatterEditQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __45__CUIKDateDescriptionGenerator_timeFormatter__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)dayFormatter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  serialFormatterEditQueue = self->_serialFormatterEditQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__CUIKDateDescriptionGenerator_dayFormatter__block_invoke;
  v5[3] = &unk_1E839A6E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialFormatterEditQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__CUIKDateDescriptionGenerator_dayFormatter__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)abbreviatedDayFormatter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  serialFormatterEditQueue = self->_serialFormatterEditQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__CUIKDateDescriptionGenerator_abbreviatedDayFormatter__block_invoke;
  v5[3] = &unk_1E839A6E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialFormatterEditQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __55__CUIKDateDescriptionGenerator_abbreviatedDayFormatter__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)standardTimeFormatter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  serialFormatterEditQueue = self->_serialFormatterEditQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__CUIKDateDescriptionGenerator_standardTimeFormatter__block_invoke;
  v5[3] = &unk_1E839A6E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialFormatterEditQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __53__CUIKDateDescriptionGenerator_standardTimeFormatter__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)fullStyleDateFormatter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  serialFormatterEditQueue = self->_serialFormatterEditQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__CUIKDateDescriptionGenerator_fullStyleDateFormatter__block_invoke;
  v5[3] = &unk_1E839A6E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialFormatterEditQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __54__CUIKDateDescriptionGenerator_fullStyleDateFormatter__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)dayOfWeekFormatter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  serialFormatterEditQueue = self->_serialFormatterEditQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__CUIKDateDescriptionGenerator_dayOfWeekFormatter__block_invoke;
  v5[3] = &unk_1E839A6E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialFormatterEditQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __50__CUIKDateDescriptionGenerator_dayOfWeekFormatter__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)_dateFormatterWithLongFormat:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v4 setLocale:v5];

  v6 = MEMORY[0x1E696AB78];
  v7 = [v4 locale];
  v8 = [v6 dateFormatFromTemplate:v3 options:0 locale:v7];

  [v4 setDateFormat:v8];

  return v4;
}

- (id)formatterForLongFormat:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  serialFormatterEditQueue = self->_serialFormatterEditQueue;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CUIKDateDescriptionGenerator_formatterForLongFormat___block_invoke;
  block[3] = &unk_1E839A710;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialFormatterEditQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__CUIKDateDescriptionGenerator_formatterForLongFormat___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [*(a1 + 32) _dateFormatterWithLongFormat:*(a1 + 40)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 40);
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = *(*(a1 + 32) + 72);

    [v10 setObject:v9 forKeyedSubscript:v8];
  }
}

- (id)stringForDate:(id)a3 withLongFormatString:(id)a4 useAbbreviatedFormats:(BOOL)a5 lowerCase:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = MEMORY[0x1E695DF00];
  v11 = a4;
  v12 = a3;
  v13 = [v10 date];
  v14 = [(CUIKDateDescriptionGenerator *)self _stringForDate:v12 relativeToReferenceDate:v13 withLongFormatString:v11 useAbbreviatedFormats:v7 lowerCase:v6];

  return v14;
}

- (id)_stringForDate:(id)a3 relativeToReferenceDate:(id)a4 withLongFormatString:(id)a5 useAbbreviatedFormats:(BOOL)a6 lowerCase:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a4;
  v42 = a5;
  v13 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v14 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v13];
  v15 = [MEMORY[0x1E695DF58] currentLocale];
  [v14 setLocale:v15];

  v16 = [v14 isDate:v11 inSameDayAsDate:v12];
  v17 = [v12 dateByAddingDays:-1 inCalendar:v14];
  v18 = [v14 isDate:v11 inSameDayAsDate:v17];
  v19 = [v12 dateByAddingDays:1 inCalendar:v14];
  v20 = [v14 isDate:v11 inSameDayAsDate:v19];
  if (v16)
  {
    v21 = CUIKBundle();
    if (v7)
    {
      v22 = @"today";
    }

    else
    {
      v22 = @"Today";
    }

LABEL_19:
    v26 = [v21 localizedStringForKey:v22 value:&stru_1F4AA8958 table:0];
    v27 = v42;
    goto LABEL_20;
  }

  if (v18)
  {
    v21 = CUIKBundle();
    if (v7)
    {
      v22 = @"yesterday";
    }

    else
    {
      v22 = @"Yesterday";
    }

    goto LABEL_19;
  }

  if (v20)
  {
    v21 = CUIKBundle();
    if (v7)
    {
      v22 = @"tomorrow";
    }

    else
    {
      v22 = @"Tomorrow";
    }

    goto LABEL_19;
  }

  v23 = [v11 CalIsAfterDate:v12];
  v21 = [v14 components:240 fromDate:v11 toDate:v12 options:0];
  v24 = [v21 day];
  if (v24 >= 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = -v24;
  }

  if (v25 > 6)
  {
    v27 = v42;
    if (v42)
    {
      [(CUIKDateDescriptionGenerator *)self formatterForLongFormat:v42];
    }

    else
    {
      [(CUIKDateDescriptionGenerator *)self fullStyleDateFormatter];
    }
    v29 = ;
    v33 = v29;
    if (v11)
    {
      v26 = [v29 stringFromDate:v11];
    }

    else
    {
      v26 = &stru_1F4AA8958;
    }
  }

  else
  {
    if (a6)
    {
      [(CUIKDateDescriptionGenerator *)self abbreviatedDayFormatter];
    }

    else
    {
      [(CUIKDateDescriptionGenerator *)self dayFormatter];
    }
    v40 = ;
    v39 = [v40 stringFromDate:v11];
    v38 = [v14 component:512 fromDate:v11];
    v37 = [v14 component:0x2000 fromDate:v11];
    v30 = [v14 component:0x2000 fromDate:v12];
    v31 = objc_opt_class();
    if (v23)
    {
      if (v37 <= v30)
      {
        [v31 _dateAfterTodayThisWeekFormatStringForDayOfWeek:v38 generateLowercaseString:v7];
      }

      else
      {
        [v31 _dateAfterTodayNextWeekFormatStringForDayOfWeek:v38 generateLowercaseString:v7];
      }
    }

    else if (v37 >= v30)
    {
      [v31 _dateBeforeTodayThisWeekFormatStringForDayOfWeek:v38 generateLowercaseString:v7];
    }

    else
    {
      [v31 _dateBeforeTodayLastWeekFormatStringForDayOfWeek:v38 generateLowercaseString:v7];
    }
    v32 = ;
    v34 = v32;
    v27 = v42;
    v26 = &stru_1F4AA8958;
    if (v32 && v39)
    {
      v35 = v32;
      v36 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v32 validFormatSpecifiers:@"%@" error:0, v39];
      v34 = v35;
      v26 = v36;
    }

    v33 = v40;
  }

LABEL_20:

  return v26;
}

+ (id)_dateAfterTodayNextWeekFormatStringForDayOfWeek:(int64_t)a3 generateLowercaseString:(BOOL)a4
{
  v4 = a4;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date after today, but in next week ('next Thursday').  Format for #1 day of the week.";
          goto LABEL_26;
        }

        v6 = @"Date after today, but in next week ('next Thursday').  Format for #1 day of the week. (capitalized)";
        goto LABEL_34;
      case 2:
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date after today, but in next week ('next Thursday').  Format for #2 day of the week..";
          goto LABEL_26;
        }

        v6 = @"Date after today, but in next week ('next Thursday').  Format for #2 day of the week. (capitalized).";
        goto LABEL_34;
      case 3:
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date after today, but in next week ('next Thursday').  Format for #3 day of the week..";
          goto LABEL_26;
        }

        v6 = @"Date after today, but in next week ('next Thursday').  Format for #3 day of the week. (capitalized).";
LABEL_34:
        v9 = @"Next %@";
        goto LABEL_35;
    }
  }

  else
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date after today, but in next week ('next Thursday').  Format for #4 day of the week..";
          goto LABEL_26;
        }

        v6 = @"Date after today, but in next week ('next Thursday').  Format for #4 day of the week. (capitalized).";
      }

      else
      {
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date after today, but in next week ('next Thursday').  Format for #5 day of the week..";
LABEL_26:
          v9 = @"next %@";
LABEL_35:
          v8 = [v5 localizedStringForKey:v6 value:v9 table:0];

          goto LABEL_36;
        }

        v6 = @"Date after today, but in next week ('next Thursday').  Format for #5 day of the week. (capitalized).";
      }

      goto LABEL_34;
    }

    if (a3 == 6)
    {
      v5 = CUIKBundle();
      if (v4)
      {
        v6 = @"Date after today, but in next week ('next Thursday').  Format for #6 day of the week..";
        goto LABEL_26;
      }

      v6 = @"Date after today, but in next week ('next Thursday').  Format for #6 day of the week. (capitalized).";
      goto LABEL_34;
    }

    if (a3 == 7)
    {
      v5 = CUIKBundle();
      if (v4)
      {
        v6 = @"Date after today, but in next week ('next Thursday').  Format for #7 day of the week..";
        goto LABEL_26;
      }

      v6 = @"Date after today, but in next week ('next Thursday').  Format for #7 day of the week. (capitalized).";
      goto LABEL_34;
    }
  }

  v7 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    +[CUIKDateDescriptionGenerator _dateAfterTodayNextWeekFormatStringForDayOfWeek:generateLowercaseString:];
  }

  v8 = 0;
LABEL_36:

  return v8;
}

+ (id)_dateAfterTodayThisWeekFormatStringForDayOfWeek:(int64_t)a3 generateLowercaseString:(BOOL)a4
{
  v4 = a4;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date after today, but in this week ('this Friday').  Format 1.";
          goto LABEL_26;
        }

        v6 = @"Date after today, but in this week ('this Friday').  Format 1 (capitalized).";
        goto LABEL_34;
      case 2:
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date after today, but in this week ('this Friday').  Format 2.";
          goto LABEL_26;
        }

        v6 = @"Date after today, but in this week ('this Friday').  Format 2 (capitalized).";
        goto LABEL_34;
      case 3:
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date after today, but in this week ('this Friday').  Format 3.";
          goto LABEL_26;
        }

        v6 = @"Date after today, but in this week ('this Friday').  Format 3 (capitalized).";
LABEL_34:
        v9 = @"This %@";
        goto LABEL_35;
    }
  }

  else
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date after today, but in this week ('this Friday').  Format 4.";
          goto LABEL_26;
        }

        v6 = @"Date after today, but in this week ('this Friday').  Format 4 (capitalized).";
      }

      else
      {
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date after today, but in this week ('this Friday').  Format 5.";
LABEL_26:
          v9 = @"this %@";
LABEL_35:
          v8 = [v5 localizedStringForKey:v6 value:v9 table:0];

          goto LABEL_36;
        }

        v6 = @"Date after today, but in this week ('this Friday').  Format 5 (capitalized).";
      }

      goto LABEL_34;
    }

    if (a3 == 6)
    {
      v5 = CUIKBundle();
      if (v4)
      {
        v6 = @"Date after today, but in this week ('this Friday').  Format 6.";
        goto LABEL_26;
      }

      v6 = @"Date after today, but in this week ('this Friday').  Format 6 (capitalized).";
      goto LABEL_34;
    }

    if (a3 == 7)
    {
      v5 = CUIKBundle();
      if (v4)
      {
        v6 = @"Date after today, but in this week ('this Friday').  Format 7.";
        goto LABEL_26;
      }

      v6 = @"Date after today, but in this week ('this Friday').  Format 7 (capitalized).";
      goto LABEL_34;
    }
  }

  v7 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    +[CUIKDateDescriptionGenerator _dateAfterTodayThisWeekFormatStringForDayOfWeek:generateLowercaseString:];
  }

  v8 = 0;
LABEL_36:

  return v8;
}

+ (id)_dateBeforeTodayThisWeekFormatStringForDayOfWeek:(int64_t)a3 generateLowercaseString:(BOOL)a4
{
  v4 = a4;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Prior day to today, but in this week ('this past Monday').  Format 1.";
          goto LABEL_26;
        }

        v6 = @"Prior day to today, but in this week ('this past Monday').  Format 1 (capitalized).";
        goto LABEL_34;
      case 2:
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Prior day to today, but in this week ('this past Monday').  Format 2.";
          goto LABEL_26;
        }

        v6 = @"Prior day to today, but in this week ('this past Monday').  Format 2 (capitalized).";
        goto LABEL_34;
      case 3:
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Prior day to today, but in this week ('this past Monday').  Format 3.";
          goto LABEL_26;
        }

        v6 = @"Prior day to today, but in this week ('this past Monday').  Format 3 (capitalized).";
LABEL_34:
        v9 = @"Last %@";
        goto LABEL_35;
    }
  }

  else
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Prior day to today, but in this week ('this past Monday').  Format 4.";
          goto LABEL_26;
        }

        v6 = @"Prior day to today, but in this week ('this past Monday').  Format 4 (capitalized).";
      }

      else
      {
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Prior day to today, but in this week ('this past Monday').  Format 5.";
LABEL_26:
          v9 = @"last %@";
LABEL_35:
          v8 = [v5 localizedStringForKey:v6 value:v9 table:0];

          goto LABEL_36;
        }

        v6 = @"Prior day to today, but in this week ('this past Monday').  Format 5 (capitalized).";
      }

      goto LABEL_34;
    }

    if (a3 == 6)
    {
      v5 = CUIKBundle();
      if (v4)
      {
        v6 = @"Prior day to today, but in this week ('this past Monday').  Format 6.";
        goto LABEL_26;
      }

      v6 = @"Prior day to today, but in this week ('this past Monday').  Format 6 (capitalized).";
      goto LABEL_34;
    }

    if (a3 == 7)
    {
      v5 = CUIKBundle();
      if (v4)
      {
        v6 = @"Prior day to today, but in this week ('this past Monday').  Format 7.";
        goto LABEL_26;
      }

      v6 = @"Prior day to today, but in this week ('this past Monday').  Format 7 (capitalized).";
      goto LABEL_34;
    }
  }

  v7 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    +[CUIKDateDescriptionGenerator _dateBeforeTodayThisWeekFormatStringForDayOfWeek:generateLowercaseString:];
  }

  v8 = 0;
LABEL_36:

  return v8;
}

+ (id)_dateBeforeTodayLastWeekFormatStringForDayOfWeek:(int64_t)a3 generateLowercaseString:(BOOL)a4
{
  v4 = a4;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date prior to day, but in previous week ('last Monday').  Format 1.";
          goto LABEL_26;
        }

        v6 = @"Date prior to day, but in previous week ('last Monday').  Format 1 (capitalized).";
        goto LABEL_34;
      case 2:
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date prior to day, but in previous week ('last Monday').  Format 2.";
          goto LABEL_26;
        }

        v6 = @"Date prior to day, but in previous week ('last Monday').  Format 2 (capitalized).";
        goto LABEL_34;
      case 3:
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date prior to day, but in previous week ('last Monday').  Format 3.";
          goto LABEL_26;
        }

        v6 = @"Date prior to day, but in previous week ('last Monday').  Format 3 (capitalized).";
LABEL_34:
        v9 = @"Last %@";
        goto LABEL_35;
    }
  }

  else
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date prior to day, but in previous week ('last Monday').  Format 4.";
          goto LABEL_26;
        }

        v6 = @"Date prior to day, but in previous week ('last Monday').  Format 4 (capitalized).";
      }

      else
      {
        v5 = CUIKBundle();
        if (v4)
        {
          v6 = @"Date prior to day, but in previous week ('last Monday').  Format 5.";
LABEL_26:
          v9 = @"last %@";
LABEL_35:
          v8 = [v5 localizedStringForKey:v6 value:v9 table:0];

          goto LABEL_36;
        }

        v6 = @"Date prior to day, but in previous week ('last Monday').  Format 5 (capitalized).";
      }

      goto LABEL_34;
    }

    if (a3 == 6)
    {
      v5 = CUIKBundle();
      if (v4)
      {
        v6 = @"Date prior to day, but in previous week ('last Monday').  Format 6.";
        goto LABEL_26;
      }

      v6 = @"Date prior to day, but in previous week ('last Monday').  Format 6 (capitalized).";
      goto LABEL_34;
    }

    if (a3 == 7)
    {
      v5 = CUIKBundle();
      if (v4)
      {
        v6 = @"Date prior to day, but in previous week ('last Monday').  Format 7.";
        goto LABEL_26;
      }

      v6 = @"Date prior to day, but in previous week ('last Monday').  Format 7 (capitalized).";
      goto LABEL_34;
    }
  }

  v7 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    +[CUIKDateDescriptionGenerator _dateBeforeTodayLastWeekFormatStringForDayOfWeek:generateLowercaseString:];
  }

  v8 = &stru_1F4AA8958;
LABEL_36:

  return v8;
}

- (id)_timeStringForDate:(id)a3
{
  v4 = a3;
  v5 = [(CUIKDateDescriptionGenerator *)self timeFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)timeStringForDate:(id)a3 inTimeZone:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CUIKDateDescriptionGenerator *)self _timeStringForDate:v7];
  v9 = MEMORY[0x1E696AEC0];
  v10 = [v6 abbreviationForDate:v7];

  v11 = [v9 localizedStringWithFormat:@"%@ %@", v8, v10];

  return v11;
}

- (id)dateStringForDate:(id)a3 allDay:(BOOL)a4 standalone:(BOOL)a5 shortFormat:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = MEMORY[0x1E695DF00];
  v11 = a3;
  v12 = [v10 date];
  v13 = [(CUIKDateDescriptionGenerator *)self dateStringForDate:v11 relativeToReferenceDate:v12 allDay:v8 standalone:v7 shortFormat:v6];

  return v13;
}

- (id)dateStringForDate:(id)a3 relativeToReferenceDate:(id)a4 allDay:(BOOL)a5 standalone:(BOOL)a6 shortFormat:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  if (v9)
  {
    v14 = [(CUIKDateDescriptionGenerator *)self _dateStringForDate:v12 relativeToReferenceDate:v13 allDay:1 shortFormat:v7 lowercase:!v8];
  }

  else
  {
    if (v7)
    {
      v15 = [MEMORY[0x1E695DEE8] currentCalendar];
      v16 = [v15 components:28 fromDate:v12];

      v17 = [MEMORY[0x1E695DEE8] currentCalendar];
      v18 = [v17 components:28 fromDate:v13];

      v19 = [v18 year];
      if (v19 == [v16 year] && (v20 = objc_msgSend(v18, "month"), v20 == objc_msgSend(v16, "month")) && (v21 = objc_msgSend(v18, "day"), v21 == objc_msgSend(v16, "day")))
      {
        v22 = [(CUIKDateDescriptionGenerator *)self _timeStringForDate:v12];
      }

      else
      {
        v22 = [(CUIKDateDescriptionGenerator *)self _dateStringForDate:v12 relativeToReferenceDate:v13 allDay:0 shortFormat:1 lowercase:!v8];
      }

      v14 = v22;
    }

    else
    {
      v16 = [(CUIKDateDescriptionGenerator *)self _timeStringForDate:v12];
      v23 = [(CUIKDateDescriptionGenerator *)self _dateStringForDate:v12 relativeToReferenceDate:v13 allDay:0 shortFormat:0 lowercase:!v8];
      v24 = [MEMORY[0x1E6992F68] requiresSingularLocalizationForDate:v12];
      v25 = MEMORY[0x1E696AEC0];
      v26 = CUIKBundle();
      v27 = v26;
      if (v24)
      {
        v28 = @"%@ at %@ (singular hour)";
      }

      else
      {
        v28 = @"%@ at %@ (plural hour)";
      }

      v29 = [v26 localizedStringForKey:v28 value:@"%@ at %@" table:0];
      v14 = [v25 localizedStringWithFormat:v29, v23, v16];
    }
  }

  return v14;
}

- (id)dateStringForEventInvitationWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6 withFormat:(unint64_t)a7 showTimeZone:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = CUIKBundle();
  v18 = v17;
  if (a6)
  {
    v19 = +[CUIKDateDescriptionGenerator sharedGenerator];
    v20 = [v19 stringForDate:v14 withLongFormatString:0 useAbbreviatedFormats:0 lowerCase:0];
  }

  else
  {
    v44 = v8;
    v46 = v17;
    [v14 timeIntervalSinceReferenceDate];
    GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    v23 = v22;
    v45 = v15;
    [v15 timeIntervalSinceReferenceDate];
    v24 = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    v26 = v25;
    if ((GregorianDateWithFallbackToDefaultTimeZone & 0xFFFFFFFFFFFFLL) == (v24 & 0xFFFFFFFFFFFFLL))
    {
      +[CUIKDateDescriptionGenerator sharedGenerator];
      v28 = v27 = a7;
      v19 = [v28 stringForDate:v14 withLongFormatString:0 useAbbreviatedFormats:0 lowerCase:0];

      v29 = [(CUIKDateDescriptionGenerator *)self _stringForTime:GregorianDateWithFallbackToDefaultTimeZone, v23];
      v30 = [(CUIKDateDescriptionGenerator *)self _stringForTime:v24, v26];
      v31 = objc_alloc(MEMORY[0x1E696AEC0]);
      v32 = [v46 localizedStringForKey:@"Invitation from start time to end time" value:@"%@ to %@" table:0];
      v33 = [v31 initWithFormat:v32, v29, v30];

      if (v27)
      {
        v34 = [v46 localizedStringForKey:@"Suggested event date and time format" value:@"%@ from %@" table:0];
        v20 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v34, v19, v33];
      }

      else
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v19, v33];
      }

      v15 = v45;
      v8 = v44;

      v18 = v46;
    }

    else
    {
      v35 = CalCopySystemTimeZone();
      v19 = [(CUIKDateDescriptionGenerator *)self _stringForDateTime:GregorianDateWithFallbackToDefaultTimeZone timeZone:v23, v35];
      v36 = [(CUIKDateDescriptionGenerator *)self _stringForDateTime:v24 timeZone:v26, v35];
      v37 = MEMORY[0x1E696AEC0];
      if (a7)
      {
        v38 = @"%@ to %@";
      }

      else
      {
        v38 = @"%@\nto %@";
      }

      v18 = v46;
      v39 = [v46 localizedStringForKey:v38 value:&stru_1F4AA8958 table:0];
      v20 = [v37 localizedStringWithFormat:v39, v19, v36];

      CFRelease(v35);
      v15 = v45;
      v8 = v44;
    }
  }

  if (v16 && v8)
  {
    v40 = [v16 abbreviationForDate:v14];
    v41 = [v18 localizedStringForKey:@"Date/time string with time zone format" value:@"%@ (%@)" table:0];
    v42 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v41, v20, v40];

    v20 = v42;
  }

  return v20;
}

- (id)_stringForTime:(id)a3
{
  var5 = a3.var5;
  v4 = *&a3.var0;
  v6 = CalCopySystemTimeZone();
  v7 = MEMORY[0x1CCAA8570](v4, *&var5, v6);
  if (!HIBYTE(v4))
  {
    v8 = CPDateFormatStringForFormatType();
    v9 = v8;
    if (v8 && [v8 rangeOfString:@"H"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "rangeOfString:", @"k") == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(CUIKDateDescriptionGenerator *)self _customFormatter];
      [v10 setDateFormat:v9];
      v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v7];
      v12 = [v10 stringFromDate:v11];

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v13 = [(CUIKDateDescriptionGenerator *)self standardTimeFormatter];
  v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v7];
  v12 = [v13 stringFromDate:v14];

LABEL_9:
  CFRelease(v6);

  return v12;
}

- (id)_stringForDateTime:(id)a3 timeZone:(__CFTimeZone *)a4
{
  if (!a3.var4)
  {
    v5 = CPDateFormatStringForFormatType();
    v6 = v5;
    if (v5 && [v5 rangeOfString:@"H"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 rangeOfString:@"k"];
    }

    else
    {
    }
  }

  v7 = CPDateFormatStringForFormatType();
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  v9 = v8;
  if (v7)
  {
    v10 = [(CUIKDateDescriptionGenerator *)self _customFormatter];
    if (v10)
    {
      v11 = v10;
      [v10 setDateFormat:v7];
LABEL_11:
      v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v9];
      v15 = [v11 stringFromDate:v14];

      goto LABEL_17;
    }

    v11 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CUIKDateDescriptionGenerator _stringForDateTime:v11 timeZone:?];
    }
  }

  else
  {
    v12 = objc_opt_new();
    if (v12)
    {
      v11 = v12;
      v13 = [MEMORY[0x1E695DF58] currentLocale];
      [v11 setLocale:v13];

      [v11 setTimeStyle:2];
      [v11 setDateStyle:2];
      goto LABEL_11;
    }

    v11 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CUIKDateDescriptionGenerator _stringForDateTime:v11 timeZone:?];
    }
  }

  v15 = 0;
LABEL_17:

  return v15;
}

+ (void)_dateAfterTodayNextWeekFormatStringForDayOfWeek:generateLowercaseString:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1CAB19000, v1, v2, "Unknown day of week provided: [%@].  Will not generate a 'date after today (next week)' format string", v3, v4, v5, v6, v7);
}

+ (void)_dateAfterTodayThisWeekFormatStringForDayOfWeek:generateLowercaseString:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1CAB19000, v1, v2, "Unknown day of week provided: [%@].  Will not generate a 'date after today (this week)' format string", v3, v4, v5, v6, v7);
}

+ (void)_dateBeforeTodayThisWeekFormatStringForDayOfWeek:generateLowercaseString:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1CAB19000, v1, v2, "Unknown day of week provided: [%@].  Will not generate a 'date before today (this week)' format string", v3, v4, v5, v6, v7);
}

+ (void)_dateBeforeTodayLastWeekFormatStringForDayOfWeek:generateLowercaseString:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1CAB19000, v1, v2, "Unknown day of week provided: [%@].  Will not generate a 'date before today (last week)' format string", v3, v4, v5, v6, v7);
}

@end