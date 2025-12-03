@interface ECHTMLStringAndMIMECharset(MFAdditions)
+ (id)mf_utf8HTMLStringWithString:()MFAdditions;
@end

@implementation ECHTMLStringAndMIMECharset(MFAdditions)

+ (id)mf_utf8HTMLStringWithString:()MFAdditions
{
  v4 = a3;
  v5 = [self alloc];
  v6 = [MEMORY[0x1E69AD718] charsetForEncoding:134217984];
  v7 = [v5 initWithString:v4 charset:v6];

  return v7;
}

@end