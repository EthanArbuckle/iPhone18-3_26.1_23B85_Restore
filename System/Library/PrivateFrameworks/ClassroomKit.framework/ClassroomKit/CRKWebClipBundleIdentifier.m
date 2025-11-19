@interface CRKWebClipBundleIdentifier
+ (id)bundleIdentifierByLocatingWebClipBundleIdentifierInString:(id)a3;
+ (id)specificWebClipPrefix;
+ (id)webClipBundleIdentifierInString:(id)a3;
- (BOOL)isSpecificWebClip;
- (BOOL)isWebClipHostApplication;
- (CRKWebClipBundleIdentifier)initWithString:(id)a3;
@end

@implementation CRKWebClipBundleIdentifier

+ (id)bundleIdentifierByLocatingWebClipBundleIdentifierInString:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [a1 webClipBundleIdentifierInString:v4];

  v7 = [v5 initWithString:v6];

  return v7;
}

+ (id)webClipBundleIdentifierInString:(id)a3
{
  v4 = a3;
  v5 = [a1 webClipHostApplicationBundleIdentifier];
  v6 = [v4 rangeOfString:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 substringFromIndex:v6];
  }

  return v7;
}

- (CRKWebClipBundleIdentifier)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKWebClipBundleIdentifier;
  v5 = [(CRKWebClipBundleIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

- (BOOL)isWebClipHostApplication
{
  v2 = [(CRKWebClipBundleIdentifier *)self stringValue];
  v3 = [objc_opt_class() webClipHostApplicationBundleIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (BOOL)isSpecificWebClip
{
  v2 = [(CRKWebClipBundleIdentifier *)self stringValue];
  v3 = [objc_opt_class() specificWebClipPrefix];
  v4 = [v2 hasPrefix:v3];

  return v4;
}

+ (id)specificWebClipPrefix
{
  v2 = [a1 webClipHostApplicationBundleIdentifier];
  v3 = [v2 stringByAppendingString:@"-"];

  return v3;
}

@end