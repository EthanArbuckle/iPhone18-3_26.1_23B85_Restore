@interface SUUIReleaseNote
+ (id)dateFormatter;
- (SUUIReleaseNote)initWithReleaseNoteDictionary:(id)dictionary dateFormatter:(id)formatter;
@end

@implementation SUUIReleaseNote

- (SUUIReleaseNote)initWithReleaseNoteDictionary:(id)dictionary dateFormatter:(id)formatter
{
  dictionaryCopy = dictionary;
  formatterCopy = formatter;
  v19.receiver = self;
  v19.super_class = SUUIReleaseNote;
  v8 = [(SUUIReleaseNote *)&v19 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKey:@"releaseNotes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      changeNotes = v8->_changeNotes;
      v8->_changeNotes = v10;
    }

    v12 = [dictionaryCopy objectForKey:@"versionString"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      versionString = v8->_versionString;
      v8->_versionString = v13;
    }

    v15 = [dictionaryCopy objectForKey:@"releaseDate"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [formatterCopy dateFromString:v15];
      date = v8->_date;
      v8->_date = v16;
    }
  }

  return v8;
}

+ (id)dateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];

  return v2;
}

@end