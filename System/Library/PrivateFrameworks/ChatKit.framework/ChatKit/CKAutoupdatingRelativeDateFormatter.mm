@interface CKAutoupdatingRelativeDateFormatter
+ (id)relativeStringFromDate:(id)a3;
+ (id)weekdayTemplateCharacters;
- (id)stringFromDate:(id)a3 isRelative:(BOOL *)a4;
@end

@implementation CKAutoupdatingRelativeDateFormatter

- (id)stringFromDate:(id)a3 isRelative:(BOOL *)a4
{
  v6 = a3;
  v7 = [CKAutoupdatingRelativeDateFormatter relativeStringFromDate:v6];
  if (v7)
  {
    v8 = v7;
    v9 = [(CKAutoupdatingRelativeDateFormatter *)self dateFormat];
    v10 = [v9 length];
    v11 = +[CKAutoupdatingRelativeDateFormatter weekdayTemplateCharacters];
    v12 = [v9 __ck_rangeOfSequenceOfCharactersFromSet:v11 options:0 range:{0, v10}];
    v14 = v12 != 0x7FFFFFFFFFFFFFFFLL;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22.receiver = self;
      v22.super_class = CKAutoupdatingRelativeDateFormatter;
      v19 = [(CKAutoupdatingRelativeDateFormatter *)&v22 stringFromDate:v6];
    }

    else
    {
      v15 = v12;
      v16 = v13;
      v21 = [v8 stringByReplacingOccurrencesOfString:@"'" withString:@"''"];

      v17 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v9];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v21];
      [v17 replaceCharactersInRange:v15 withString:{v16, v18}];

      [(CKAutoupdatingRelativeDateFormatter *)self setDateFormat:v17];
      v23.receiver = self;
      v23.super_class = CKAutoupdatingRelativeDateFormatter;
      v19 = [(CKAutoupdatingRelativeDateFormatter *)&v23 stringFromDate:v6];
      [(CKAutoupdatingRelativeDateFormatter *)self setDateFormat:v9];

      v8 = v21;
    }

    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v24.receiver = self;
  v24.super_class = CKAutoupdatingRelativeDateFormatter;
  v19 = [(CKAutoupdatingRelativeDateFormatter *)&v24 stringFromDate:v6];
  v14 = 0;
  if (a4)
  {
LABEL_8:
    *a4 = v14;
  }

LABEL_9:

  return v19;
}

+ (id)relativeStringFromDate:(id)a3
{
  v4 = a3;
  v5 = [a1 relativeDateFormatter];
  v6 = [v5 stringFromDate:v4];

  v7 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v8 = [v6 rangeOfCharacterFromSet:v7 options:0];

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