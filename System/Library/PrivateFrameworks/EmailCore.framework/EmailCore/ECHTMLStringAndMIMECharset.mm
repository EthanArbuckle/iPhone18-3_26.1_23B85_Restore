@interface ECHTMLStringAndMIMECharset
- (ECHTMLStringAndMIMECharset)initWithString:(id)string charset:(id)charset;
@end

@implementation ECHTMLStringAndMIMECharset

- (ECHTMLStringAndMIMECharset)initWithString:(id)string charset:(id)charset
{
  stringCopy = string;
  charsetCopy = charset;
  v12.receiver = self;
  v12.super_class = ECHTMLStringAndMIMECharset;
  v8 = [(ECHTMLStringAndMIMECharset *)&v12 init];
  if (v8)
  {
    v9 = [stringCopy copy];
    string = v8->_string;
    v8->_string = v9;

    objc_storeStrong(&v8->_charset, charset);
  }

  return v8;
}

@end