@interface NUHTMLBuilder
- (NUHTMLBuilder)init;
- (id)HTML;
- (id)URLEncode:(id)a3;
- (id)appendBreak;
- (id)appendHTML:(id)a3;
- (id)appendLink:(id)a3 withURL:(id)a4;
- (id)appendParagraph:(id)a3;
- (id)appendParagraphText:(id)a3;
- (id)appendStrong:(id)a3;
- (id)appendText:(id)a3;
- (id)encodeHTMLEntities:(id)a3;
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
  v2 = [(NUHTMLBuilder *)self string];
  v3 = [v2 copy];

  return v3;
}

- (id)fullHTML
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(NUHTMLBuilder *)self string];
  v4 = [v2 stringWithFormat:@"<html><body>%@</body></html>", v3];

  return v4;
}

- (id)appendBreak
{
  v3 = [(NUHTMLBuilder *)self string];
  [v3 appendString:@"<br />"];

  return self;
}

- (id)appendStrong:(id)a3
{
  v4 = a3;
  v5 = [(NUHTMLBuilder *)self string];
  v6 = [(NUHTMLBuilder *)self encodeHTMLEntities:v4];

  [v5 appendFormat:@"<strong>%@</strong>", v6];
  return self;
}

- (id)appendParagraph:(id)a3
{
  v4 = a3;
  v5 = [(NUHTMLBuilder *)self string];
  v6 = [v4 HTML];

  [v5 appendFormat:@"<p>%@</p>", v6];
  return self;
}

- (id)appendParagraphText:(id)a3
{
  v4 = a3;
  v5 = [(NUHTMLBuilder *)self string];
  v6 = [(NUHTMLBuilder *)self encodeHTMLEntities:v4];

  [v5 appendFormat:@"<p>%@</p>", v6];
  return self;
}

- (id)appendLink:(id)a3 withURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NUHTMLBuilder *)self string];
  v9 = [(NUHTMLBuilder *)self URLEncode:v6];

  v10 = [(NUHTMLBuilder *)self encodeHTMLEntities:v7];

  [v8 appendFormat:@"<a href=%@>%@</a>", v9, v10];
  return self;
}

- (id)appendText:(id)a3
{
  v4 = a3;
  v5 = [(NUHTMLBuilder *)self string];
  v6 = [(NUHTMLBuilder *)self encodeHTMLEntities:v4];

  [v5 appendFormat:@"%@", v6];
  return self;
}

- (id)appendHTML:(id)a3
{
  v4 = a3;
  v5 = [(NUHTMLBuilder *)self string];
  v6 = [v4 HTML];

  [v5 appendString:v6];
  return self;
}

- (id)encodeHTMLEntities:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:2 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@" withString:@"&quot;" options:2 range:{0, objc_msgSend(v3, "length"")}];
  [v3 replaceOccurrencesOfString:@"'" withString:@"&#x27;" options:2 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@">" withString:@"&gt;" options:2 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:2 range:{0, objc_msgSend(v3, "length")}];
  v4 = [v3 copy];

  return v4;
}

- (id)URLEncode:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 URLQueryAllowedCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v5];

  return v6;
}

@end