@interface MPUHTMLParser
+ (id)attributedSanitizedStringFromHTMLString:(id)string defaultAttributes:(id)attributes;
+ (id)displayDelegateWithDefaultAttributes:(id)attributes;
+ (id)parser;
+ (id)parserWithDefaultAttributes:(id)attributes;
+ (id)sanitizedHTMLString:(id)string;
- (MPUHTMLParserDelegate)delegate;
- (id)attributedStringForHTMLString:(id)string error:(id *)error;
@end

@implementation MPUHTMLParser

+ (id)attributedSanitizedStringFromHTMLString:(id)string defaultAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7 = [self sanitizedHTMLString:string];
  v8 = +[MPUHTMLParser parser];
  v9 = [self displayDelegateWithDefaultAttributes:attributesCopy];
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
    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:attributesCopy];

    v10 = v12;
  }

  return v10;
}

+ (id)parser
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)parserWithDefaultAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = objc_alloc_init(self);
  v6 = v5;
  if (attributesCopy && v5)
  {
    v7 = objc_alloc_init(_MPUHTMLDefaultDelegate);
    [(_MPUHTMLDefaultDelegate *)v7 setDefaultAttributes:attributesCopy];
    v8 = v6[1];
    v6[1] = v7;
    v9 = v7;

    [v6 setDelegate:v9];
  }

  return v6;
}

+ (id)displayDelegateWithDefaultAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = objc_alloc_init(_MPUHTMLDefaultDelegate);
  [(_MPUHTMLDefaultDelegate *)v4 setDefaultAttributes:attributesCopy];

  return v4;
}

+ (id)sanitizedHTMLString:(id)string
{
  stringCopy = string;
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [stringCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
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
      v10 = [v6 scanUpToCharactersFromSet:whitespaceCharacterSet intoString:&v12];
      v8 = v12;

      if (v10)
      {
        [v7 appendString:v8];
        if ([v6 scanCharactersFromSet:whitespaceCharacterSet intoString:0])
        {
          [v7 appendString:@" "];
        }
      }
    }

    while (![v6 isAtEnd]);
  }

  return v7;
}

- (id)attributedStringForHTMLString:(id)string error:(id *)error
{
  v6 = [string dataUsingEncoding:4];
  v7 = [[_MPUHTMLParserState alloc] initWithParser:self data:v6];
  [(_MPUHTMLParserState *)v7 parse:error];
  attributedString = [(_MPUHTMLParserState *)v7 attributedString];

  return attributedString;
}

- (MPUHTMLParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end