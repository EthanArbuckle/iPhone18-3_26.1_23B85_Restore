@interface CKAutoupdatingRelativeDateFormatter
+ (id)relativeStringFromDate:(id)date;
+ (id)weekdayTemplateCharacters;
- (id)stringFromDate:(id)date isRelative:(BOOL *)relative;
@end

@implementation CKAutoupdatingRelativeDateFormatter

- (id)stringFromDate:(id)date isRelative:(BOOL *)relative
{
  dateCopy = date;
  v7 = [CKAutoupdatingRelativeDateFormatter relativeStringFromDate:dateCopy];
  if (v7)
  {
    v8 = v7;
    dateFormat = [(CKAutoupdatingRelativeDateFormatter *)self dateFormat];
    v10 = [dateFormat length];
    v11 = +[CKAutoupdatingRelativeDateFormatter weekdayTemplateCharacters];
    v12 = [dateFormat __ck_rangeOfSequenceOfCharactersFromSet:v11 options:0 range:{0, v10}];
    v14 = v12 != 0x7FFFFFFFFFFFFFFFLL;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22.receiver = self;
      v22.super_class = CKAutoupdatingRelativeDateFormatter;
      v19 = [(CKAutoupdatingRelativeDateFormatter *)&v22 stringFromDate:dateCopy];
    }

    else
    {
      v15 = v12;
      v16 = v13;
      v21 = [v8 stringByReplacingOccurrencesOfString:@"'" withString:@"''"];

      v17 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:dateFormat];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v21];
      [v17 replaceCharactersInRange:v15 withString:{v16, v18}];

      [(CKAutoupdatingRelativeDateFormatter *)self setDateFormat:v17];
      v23.receiver = self;
      v23.super_class = CKAutoupdatingRelativeDateFormatter;
      v19 = [(CKAutoupdatingRelativeDateFormatter *)&v23 stringFromDate:dateCopy];
      [(CKAutoupdatingRelativeDateFormatter *)self setDateFormat:dateFormat];

      v8 = v21;
    }

    if (!relative)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v24.receiver = self;
  v24.super_class = CKAutoupdatingRelativeDateFormatter;
  v19 = [(CKAutoupdatingRelativeDateFormatter *)&v24 stringFromDate:dateCopy];
  v14 = 0;
  if (relative)
  {
LABEL_8:
    *relative = v14;
  }

LABEL_9:

  return v19;
}

+ (id)relativeStringFromDate:(id)date
{
  dateCopy = date;
  relativeDateFormatter = [self relativeDateFormatter];
  v6 = [relativeDateFormatter stringFromDate:dateCopy];

  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v8 = [v6 rangeOfCharacterFromSet:decimalDigitCharacterSet options:0];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {

    v6 = 0;
  }

  return v6;
}

+ (id)weekdayTemplateCharacters
{
  if (weekdayTemplateCharacters_once != -1)
  {
    +[CKAutoupdatingRelativeDateFormatter weekdayTemplateCharacters];
  }

  v3 = weekdayTemplateCharacters_sWeekdayTemplateCharacters;

  return v3;
}

void __64__CKAutoupdatingRelativeDateFormatter_weekdayTemplateCharacters__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"Eec"];
  v1 = weekdayTemplateCharacters_sWeekdayTemplateCharacters;
  weekdayTemplateCharacters_sWeekdayTemplateCharacters = v0;
}

@end