@interface CRKWebClipBundleIdentifier
+ (id)bundleIdentifierByLocatingWebClipBundleIdentifierInString:(id)string;
+ (id)specificWebClipPrefix;
+ (id)webClipBundleIdentifierInString:(id)string;
- (BOOL)isSpecificWebClip;
- (BOOL)isWebClipHostApplication;
- (CRKWebClipBundleIdentifier)initWithString:(id)string;
@end

@implementation CRKWebClipBundleIdentifier

+ (id)bundleIdentifierByLocatingWebClipBundleIdentifierInString:(id)string
{
  stringCopy = string;
  v5 = [self alloc];
  v6 = [self webClipBundleIdentifierInString:stringCopy];

  v7 = [v5 initWithString:v6];

  return v7;
}

+ (id)webClipBundleIdentifierInString:(id)string
{
  stringCopy = string;
  webClipHostApplicationBundleIdentifier = [self webClipHostApplicationBundleIdentifier];
  v6 = [stringCopy rangeOfString:webClipHostApplicationBundleIdentifier];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [stringCopy substringFromIndex:v6];
  }

  return v7;
}

- (CRKWebClipBundleIdentifier)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = CRKWebClipBundleIdentifier;
  v5 = [(CRKWebClipBundleIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

- (BOOL)isWebClipHostApplication
{
  stringValue = [(CRKWebClipBundleIdentifier *)self stringValue];
  webClipHostApplicationBundleIdentifier = [objc_opt_class() webClipHostApplicationBundleIdentifier];
  v4 = [stringValue isEqualToString:webClipHostApplicationBundleIdentifier];

  return v4;
}

- (BOOL)isSpecificWebClip
{
  stringValue = [(CRKWebClipBundleIdentifier *)self stringValue];
  specificWebClipPrefix = [objc_opt_class() specificWebClipPrefix];
  v4 = [stringValue hasPrefix:specificWebClipPrefix];

  return v4;
}

+ (id)specificWebClipPrefix
{
  webClipHostApplicationBundleIdentifier = [self webClipHostApplicationBundleIdentifier];
  v3 = [webClipHostApplicationBundleIdentifier stringByAppendingString:@"-"];

  return v3;
}

@end