@interface IMAttributedStringParser
+ (id)sharedInstance;
- (void)_preprocessWithContext:(id)context string:(id *)string;
- (void)parseContext:(id)context;
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

- (void)_preprocessWithContext:(id)context string:(id *)string
{
  v7 = [*string length];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    do
    {
      v16 = 0;
      v17 = 0;
      v11 = [*string attributesAtIndex:v10 longestEffectiveRange:&v16 inRange:{v10, v8 - v10}];
      v12 = [context parser:self preprocessedAttributesForAttributes:v11 range:{v16, v17}];
      if (v11 != v12)
      {
        v13 = v12;
        v14 = *string;
        if ((v9 & 1) == 0)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v14 = *string;
          if ((isKindOfClass & 1) == 0)
          {
            v14 = [*string mutableCopy];
            *string = v14;
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

- (void)parseContext:(id)context
{
  inString = [context inString];
  v12 = inString;
  [context parserDidStart:self];
  if ([context shouldPreprocess])
  {
    [(IMAttributedStringParser *)self _preprocessWithContext:context string:&v12];
    inString = v12;
  }

  v6 = [inString length];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v10 = 0;
      v11 = 0;
      v9 = [v12 attributesAtIndex:v8 longestEffectiveRange:&v10 inRange:{v8, v7 - v8}];
      [context parser:self foundAttributes:v9 inRange:{v10, v11}];
      v8 = v11 + v10;
    }

    while (v11 + v10 < v7);
  }

  [context parserDidEnd:self];
}

@end