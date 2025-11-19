@interface ECHTMLStringAndMIMECharset
- (ECHTMLStringAndMIMECharset)initWithString:(id)a3 charset:(id)a4;
@end

@implementation ECHTMLStringAndMIMECharset

- (ECHTMLStringAndMIMECharset)initWithString:(id)a3 charset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ECHTMLStringAndMIMECharset;
  v8 = [(ECHTMLStringAndMIMECharset *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    string = v8->_string;
    v8->_string = v9;

    objc_storeStrong(&v8->_charset, a4);
  }

  return v8;
}

@end