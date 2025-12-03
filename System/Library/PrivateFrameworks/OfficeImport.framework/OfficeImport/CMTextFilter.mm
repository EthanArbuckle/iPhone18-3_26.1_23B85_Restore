@interface CMTextFilter
+ (id)convertLineBreaksToParagraphBreaks:(id)breaks;
+ (id)convertToVericalString:(id)string;
+ (id)covertFormatString:(id)string;
+ (id)filterHyperlinkField:(id)field;
+ (id)filterSpecialCodes:(id)codes;
+ (id)filterToPreserveMultipleWhiteSpaces:(id)spaces;
- (CMTextFilter)init;
@end

@implementation CMTextFilter

- (CMTextFilter)init
{
  v3.receiver = self;
  v3.super_class = CMTextFilter;
  return [(CMTextFilter *)&v3 init];
}

+ (id)filterHyperlinkField:(id)field
{
  fieldCopy = field;
  v4 = [fieldCopy rangeOfString:@"HYPERLINK"];
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    v8 = [MEMORY[0x277CCAB68] stringWithString:fieldCopy];
    [v8 deleteCharactersInRange:{v7, v6}];
    [v8 replaceOccurrencesOfString:@" withString:&stru_286EE1130 options:2 range:{0, objc_msgSend(v8, "length"")}];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v10 = [v8 oi_rangeOfCharactersFromSet:whitespaceCharacterSet index:0];
    v12 = v11;

    if (v12 && !v10)
    {
      [v8 deleteCharactersInRange:{0, v12}];
    }

    if ([v8 length] < 2)
    {
      v6 = 0;
LABEL_16:

      goto LABEL_17;
    }

    whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v14 = [v8 oi_rangeOfCharactersFromSet:whitespaceCharacterSet2 index:0];
    v16 = v15;

    if (v16 && v10 == [v8 length] - v16)
    {
      [v8 deleteCharactersInRange:{v14, v16}];
    }

    if ([v8 hasPrefix:@"\\l "])
    {
      v17 = @"\\l ";
      v18 = 3;
    }

    else
    {
      if (![v8 hasPrefix:@"\\l"])
      {
LABEL_15:
        v6 = v8;
        goto LABEL_16;
      }

      v17 = @"\\l";
      v18 = 2;
    }

    [v8 replaceOccurrencesOfString:v17 withString:@"#" options:2 range:{0, v18}];
    goto LABEL_15;
  }

LABEL_17:

  return v6;
}

+ (id)covertFormatString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x277CCAB68] stringWithString:stringCopy];
  [v4 replaceOccurrencesOfString:@" withString:&stru_286EE1130 options:2 range:{0, objc_msgSend(stringCopy, "length"")}];

  return v4;
}

+ (id)filterSpecialCodes:(id)codes
{
  codesCopy = codes;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:codesCopy];
  v5 = [codesCopy length];
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = [v4 characterAtIndex:i];
      if (v7 > 2027)
      {
        if (v7 != 2028)
        {
          if (v7 == 61607 || v7 == 61623)
          {
            [v4 replaceCharactersInRange:i withString:{1, @"&bull;"}];
            v5 += 5;
          }

          continue;
        }
      }

      else if ((v7 - 10) >= 5)
      {
        if (v7 == 9)
        {
          [v4 replaceCharactersInRange:i withString:{1, @"<span style=padding-left:36;>&#x200b;</span>"}];
          v5 += 45;
        }

        continue;
      }

      [v4 replaceCharactersInRange:i withString:{1, @"<br/>"}];
      v5 += 4;
    }
  }

  return v4;
}

+ (id)convertLineBreaksToParagraphBreaks:(id)breaks
{
  breaksCopy = breaks;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:breaksCopy];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", 10];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", 13];
  [v4 replaceOccurrencesOfString:v5 withString:v6 options:2 range:{0, objc_msgSend(v4, "length")}];

  return v4;
}

+ (id)filterToPreserveMultipleWhiteSpaces:(id)spaces
{
  spacesCopy = spaces;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:spacesCopy];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@" &nbsp"];;
    ;
  }

  return v4;
}

+ (id)convertToVericalString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  for (i = 0; [stringCopy length] > i; ++i)
  {
    v6 = [stringCopy characterAtIndex:i];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [whitespaceAndNewlineCharacterSet characterIsMember:v6];

    if (v8)
    {
      v9 = 160;
    }

    else
    {
      v9 = v6;
    }

    [v4 appendFormat:@"%C\r", v9];
  }

  return v4;
}

@end