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
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = __notesDisplayDateFormatterWithYear;
    __notesDisplayDateFormatterWithYear = v3;

    [__notesDisplayDateFormatterWithYear setLocale:currentLocale];
    [__notesDisplayDateFormatterWithYear setDateStyle:0];
    [__notesDisplayDateFormatterWithYear setTimeStyle:0];
    v5 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"MMMMdyjmm" options:0 locale:currentLocale];
    if (v5)
    {
      [__notesDisplayDateFormatterWithYear setDateFormat:v5];
    }
  }

  selfCopy = self;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [selfCopy isEqual:distantFuture];

  if (v8)
  {
    date = [MEMORY[0x1E695DF00] date];

    selfCopy = date;
  }

  v10 = [__notesDisplayDateFormatterWithYear stringFromDate:selfCopy];

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
    date = [MEMORY[0x1E695DF00] date];
    v5 = _dateForDay(date);
    v6 = __Today;
    __Today = v5;

    v3 = __Today;
  }

  v7 = v3;
  v8 = [v2 dateByAddingUnit:16 value:-1 toDate:v7 options:0];
  v9 = [v2 dateByAddingUnit:0x2000 value:-1 toDate:v7 options:0];
  v10 = [self compare:v7];

  if (v10 == 1)
  {
    _notes_todayDateFormatter = [MEMORY[0x1E695DF00] _notes_todayDateFormatter];
    goto LABEL_5;
  }

  if ([self compare:v8] != 1 && objc_msgSend(self, "compare:", v9) == 1)
  {
    _notes_todayDateFormatter = [MEMORY[0x1E695DF00] _notes_relativeDateFormatter];
LABEL_5:
    v12 = _notes_todayDateFormatter;
    v13 = [_notes_todayDateFormatter stringFromDate:self];

    if (v13)
    {
      goto LABEL_11;
    }
  }

  _notes_fallbackDateFormatter = [MEMORY[0x1E695DF00] _notes_fallbackDateFormatter];
  v13 = [_notes_fallbackDateFormatter stringFromDate:self];

LABEL_11:

  return v13;
}

@end