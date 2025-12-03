@interface NSString(HTMLEncoding)
- (id)_navigation_sanitizedStringForDisplayInHTML;
- (id)_navigation_stringByEscapingHTML;
- (id)_navigation_stringByReplacingNewLinesWithString:()HTMLEncoding;
@end

@implementation NSString(HTMLEncoding)

- (id)_navigation_sanitizedStringForDisplayInHTML
{
  _navigation_stringByEscapingHTML = [self _navigation_stringByEscapingHTML];
  v2 = [_navigation_stringByEscapingHTML _navigation_stringByReplacingNewLinesWithString:@"<br>"];

  return v2;
}

- (id)_navigation_stringByReplacingNewLinesWithString:()HTMLEncoding
{
  v4 = MEMORY[0x1E696AB08];
  v5 = a3;
  newlineCharacterSet = [v4 newlineCharacterSet];
  v7 = [self componentsSeparatedByCharactersInSet:newlineCharacterSet];
  v8 = [v7 componentsJoinedByString:v5];

  return v8;
}

- (id)_navigation_stringByEscapingHTML
{
  v1 = [self stringByReplacingOccurrencesOfString:@"&" withString:@"&amp"];;
  v2 = [v1 stringByReplacingOccurrencesOfString:@" withString:@"&quot""];;

  v3 = [v2 stringByReplacingOccurrencesOfString:@"'" withString:@"&#39"];;

  v4 = [v3 stringByReplacingOccurrencesOfString:@"<" withString:@"&lt"];;

  v5 = [v4 stringByReplacingOccurrencesOfString:@">" withString:@"&gt"];;

  v6 = [v5 stringByReplacingOccurrencesOfString:@"—" withString:@"&mdash"];;

  return v6;
}

@end