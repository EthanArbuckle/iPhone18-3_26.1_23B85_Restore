@interface IMAttributedStringParser
+ (id)sharedInstance;
- (void)_preprocessWithContext:(id)a3 string:(id *)a4;
- (void)parseContext:(id)a3;
@end

@implementation IMAttributedStringParser

+ (id)sharedInstance
{
  if (qword_1ED8CA430 != -1)
  {
    sub_1A88C4490();
  }

  return qword_1ED8CA398;
}

- (void)_preprocessWithContext:(id)a3 string:(id *)a4
{
  v7 = [*a4 length];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    do
    {
      v16 = 0;
      v17 = 0;
      v11 = [*a4 attributesAtIndex:v10 longestEffectiveRange:&v16 inRange:{v10, v8 - v10}];
      v12 = [a3 parser:self preprocessedAttributesForAttributes:v11 range:{v16, v17}];
      if (v11 != v12)
      {
        v13 = v12;
        v14 = *a4;
        if ((v9 & 1) == 0)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v14 = *a4;
          if ((isKindOfClass & 1) == 0)
          {
            v14 = [*a4 mutableCopy];
            *a4 = v14;
          }
        }

        [v14 setAttributes:v13 range:{v16, v17}];
        v9 = 1;
      }

      v10 = v17 + v16;
    }

    while (v17 + v16 < v8);
  }
}

- (void)parseContext:(id)a3
{
  v5 = [a3 inString];
  v12 = v5;
  [a3 parserDidStart:self];
  if ([a3 shouldPreprocess])
  {
    [(IMAttributedStringParser *)self _preprocessWithContext:a3 string:&v12];
    v5 = v12;
  }

  v6 = [v5 length];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v10 = 0;
      v11 = 0;
      v9 = [v12 attributesAtIndex:v8 longestEffectiveRange:&v10 inRange:{v8, v7 - v8}];
      [a3 parser:self foundAttributes:v9 inRange:{v10, v11}];
      v8 = v11 + v10;
    }

    while (v11 + v10 < v7);
  }

  [a3 parserDidEnd:self];
}

@end