@interface NUHTMLBuilder
- (NUHTMLBuilder)init;
- (id)HTML;
- (id)URLEncode:(id)encode;
- (id)appendBreak;
- (id)appendHTML:(id)l;
- (id)appendLink:(id)link withURL:(id)l;
- (id)appendParagraph:(id)paragraph;
- (id)appendParagraphText:(id)text;
- (id)appendStrong:(id)strong;
- (id)appendText:(id)text;
- (id)encodeHTMLEntities:(id)entities;
- (id)fullHTML;
@end

@implementation NUHTMLBuilder

- (NUHTMLBuilder)init
{
  v6.receiver = self;
  v6.super_class = NUHTMLBuilder;
  v2 = [(NUHTMLBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
    string = v2->_string;
    v2->_string = v3;
  }

  return v2;
}

- (id)HTML
{
  string = [(NUHTMLBuilder *)self string];
  v3 = [string copy];

  return v3;
}

- (id)fullHTML
{
  v2 = MEMORY[0x277CCACA8];
  string = [(NUHTMLBuilder *)self string];
  v4 = [v2 stringWithFormat:@"<html><body>%@</body></html>", string];

  return v4;
}

- (id)appendBreak
{
  string = [(NUHTMLBuilder *)self string];
  [string appendString:@"<br />"];

  return self;
}

- (id)appendStrong:(id)strong
{
  strongCopy = strong;
  string = [(NUHTMLBuilder *)self string];
  v6 = [(NUHTMLBuilder *)self encodeHTMLEntities:strongCopy];

  [string appendFormat:@"<strong>%@</strong>", v6];
  return self;
}

- (id)appendParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  string = [(NUHTMLBuilder *)self string];
  hTML = [paragraphCopy HTML];

  [string appendFormat:@"<p>%@</p>", hTML];
  return self;
}

- (id)appendParagraphText:(id)text
{
  textCopy = text;
  string = [(NUHTMLBuilder *)self string];
  v6 = [(NUHTMLBuilder *)self encodeHTMLEntities:textCopy];

  [string appendFormat:@"<p>%@</p>", v6];
  return self;
}

- (id)appendLink:(id)link withURL:(id)l
{
  lCopy = l;
  linkCopy = link;
  string = [(NUHTMLBuilder *)self string];
  v9 = [(NUHTMLBuilder *)self URLEncode:lCopy];

  v10 = [(NUHTMLBuilder *)self encodeHTMLEntities:linkCopy];

  [string appendFormat:@"<a href=%@>%@</a>", v9, v10];
  return self;
}

- (id)appendText:(id)text
{
  textCopy = text;
  string = [(NUHTMLBuilder *)self string];
  v6 = [(NUHTMLBuilder *)self encodeHTMLEntities:textCopy];

  [string appendFormat:@"%@", v6];
  return self;
}

- (id)appendHTML:(id)l
{
  lCopy = l;
  string = [(NUHTMLBuilder *)self string];
  hTML = [lCopy HTML];

  [string appendString:hTML];
  return self;
}

- (id)encodeHTMLEntities:(id)entities
{
  v3 = [entities mutableCopy];
  [v3 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:2 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@" withString:@"&quot;" options:2 range:{0, objc_msgSend(v3, "length"")}];
  [v3 replaceOccurrencesOfString:@"'" withString:@"&#x27;" options:2 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@">" withString:@"&gt;" options:2 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:2 range:{0, objc_msgSend(v3, "length")}];
  v4 = [v3 copy];

  return v4;
}

- (id)URLEncode:(id)encode
{
  v3 = MEMORY[0x277CCA900];
  encodeCopy = encode;
  uRLQueryAllowedCharacterSet = [v3 URLQueryAllowedCharacterSet];
  v6 = [encodeCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  return v6;
}

@end