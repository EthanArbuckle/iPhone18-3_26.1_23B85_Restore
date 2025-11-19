@interface NSDate
@end

@implementation NSDate

uint64_t __55__NSDate_NotesDateUtilities___notes_todayDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = __notesTodayDateFormatter;
  __notesTodayDateFormatter = v0;

  v2 = __notesTodayDateFormatter;

  return [v2 setTimeStyle:1];
}

void __58__NSDate_NotesDateUtilities___notes_relativeDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = __notesRelativeDateFormatter;
  __notesRelativeDateFormatter = v0;

  v2 = __notesRelativeDateFormatter;
  v3 = MEMORY[0x1E696AB78];
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v3 dateFormatFromTemplate:@"cccc" options:0 locale:v5];
  [v2 setDateFormat:v4];
}

uint64_t __58__NSDate_NotesDateUtilities___notes_fallbackDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = __notesFallbackFormatter;
  __notesFallbackFormatter = v0;

  [__notesFallbackFormatter setDoesRelativeDateFormatting:1];
  v2 = __notesFallbackFormatter;

  return [v2 setDateStyle:1];
}

@end