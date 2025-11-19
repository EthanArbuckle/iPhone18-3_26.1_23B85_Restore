@interface NSDate(NotesDateUtilities)
+ (id)_notes_fallbackDateFormatter;
+ (id)_notes_relativeDateFormatter;
+ (id)_notes_todayDateFormatter;
- (id)userFriendlyString;
- (id)userFriendlyStringWithTime;
@end

@implementation NSDate(NotesDateUtilities)

- (id)userFriendlyStringWithTime
{
  if (!__notesDisplayDateFormatterWithYear)
  {
    v2 = [MEMORY[0x1E695DF58] currentLocale];
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = __notesDisplayDateFormatterWithYear;
    __notesDisplayDateFormatterWithYear = v3;

    [__notesDisplayDateFormatterWithYear setLocale:v2];
    [__notesDisplayDateFormatterWithYear setDateStyle:0];
    [__notesDisplayDateFormatterWithYear setTimeStyle:0];
    v5 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"MMMMdyjmm" options:0 locale:v2];
    if (v5)
    {
      [__notesDisplayDateFormatterWithYear setDateFormat:v5];
    }
  }

  v6 = a1;
  v7 = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DF00] date];

    v6 = v9;
  }

  v10 = [__notesDisplayDateFormatterWithYear stringFromDate:v6];

  return v10;
}

+ (id)_notes_todayDateFormatter
{
  if (_notes_todayDateFormatter_onceToken != -1)
  {
    +[NSDate(NotesDateUtilities) _notes_todayDateFormatter];
  }

  v1 = __notesTodayDateFormatter;

  return v1;
}

+ (id)_notes_relativeDateFormatter
{
  if (_notes_relativeDateFormatter_onceToken != -1)
  {
    +[NSDate(NotesDateUtilities) _notes_relativeDateFormatter];
  }

  v1 = __notesRelativeDateFormatter;

  return v1;
}

+ (id)_notes_fallbackDateFormatter
{
  if (_notes_fallbackDateFormatter_onceToken != -1)
  {
    +[NSDate(NotesDateUtilities) _notes_fallbackDateFormatter];
  }

  v1 = __notesFallbackFormatter;

  return v1;
}

- (id)userFriendlyString
{
  v2 = _calendar();
  v3 = __Today;
  if (!__Today)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = _dateForDay(v4);
    v6 = __Today;
    __Today = v5;

    v3 = __Today;
  }

  v7 = v3;
  v8 = [v2 dateByAddingUnit:16 value:-1 toDate:v7 options:0];
  v9 = [v2 dateByAddingUnit:0x2000 value:-1 toDate:v7 options:0];
  v10 = [a1 compare:v7];

  if (v10 == 1)
  {
    v11 = [MEMORY[0x1E695DF00] _notes_todayDateFormatter];
    goto LABEL_5;
  }

  if ([a1 compare:v8] != 1 && objc_msgSend(a1, "compare:", v9) == 1)
  {
    v11 = [MEMORY[0x1E695DF00] _notes_relativeDateFormatter];
LABEL_5:
    v12 = v11;
    v13 = [v11 stringFromDate:a1];

    if (v13)
    {
      goto LABEL_11;
    }
  }

  v14 = [MEMORY[0x1E695DF00] _notes_fallbackDateFormatter];
  v13 = [v14 stringFromDate:a1];

LABEL_11:

  return v13;
}

@end