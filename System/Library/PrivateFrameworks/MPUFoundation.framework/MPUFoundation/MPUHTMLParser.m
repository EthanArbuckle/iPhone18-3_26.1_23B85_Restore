@interface MPUHTMLParser
+ (id)attributedSanitizedStringFromHTMLString:(id)a3 defaultAttributes:(id)a4;
+ (id)displayDelegateWithDefaultAttributes:(id)a3;
+ (id)parser;
+ (id)parserWithDefaultAttributes:(id)a3;
+ (id)sanitizedHTMLString:(id)a3;
- (MPUHTMLParserDelegate)delegate;
- (id)attributedStringForHTMLString:(id)a3 error:(id *)a4;
@end

@implementation MPUHTMLParser

+ (id)attributedSanitizedStringFromHTMLString:(id)a3 defaultAttributes:(id)a4
{
  v6 = a4;
  v7 = [a1 sanitizedHTMLString:a3];
  v8 = +[MPUHTMLParser parser];
  v9 = [a1 displayDelegateWithDefaultAttributes:v6];
  [v8 setDelegate:v9];
  v14 = 0;
  v10 = [v8 attributedStringForHTMLString:v7 error:&v14];
  if (v10)
  {
    v11 = v14 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v6];

    v10 = v12;
  }

  return v10;
}

+ (id)parser
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)parserWithDefaultAttributes:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v5;
  if (v4 && v5)
  {
    v7 = objc_alloc_init(_MPUHTMLDefaultDelegate);
    [(_MPUHTMLDefaultDelegate *)v7 setDefaultAttributes:v4];
    v8 = v6[1];
    v6[1] = v7;
    v9 = v7;

    [v6 setDelegate:v9];
  }

  return v6;
}

+ (id)displayDelegateWithDefaultAttributes:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_MPUHTMLDefaultDelegate);
  [(_MPUHTMLDefaultDelegate *)v4 setDefaultAttributes:v3];

  return v4;
}

+ (id)sanitizedHTMLString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];
  v6 = [MEMORY[0x277CCAC80] scannerWithString:v5];
  [v6 setCharactersToBeSkipped:0];
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (([v6 isAtEnd] & 1) == 0)
  {
    v8 = 0;
    do
    {
      v9 = v8;
      v12 = v8;
      v10 = [v6 scanUpToCharactersFromSet:v4 intoString:&v12];
      v8 = v12;

      if (v10)
      {
        [v7 appendString:v8];
        if ([v6 scanCharactersFromSet:v4 intoString:0])
        {
          [v7 appendString:@" "];
        }
      }
    }

    while (![v6 isAtEnd]);
  }

  return v7;
}

- (id)attributedStringForHTMLString:(id)a3 error:(id *)a4
{
  v6 = [a3 dataUsingEncoding:4];
  v7 = [[_MPUHTMLParserState alloc] initWithParser:self data:v6];
  [(_MPUHTMLParserState *)v7 parse:a4];
  v8 = [(_MPUHTMLParserState *)v7 attributedString];

  return v8;
}

- (MPUHTMLParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end