@interface _CSSuggestionToken(_CSSuggestionToken_MailUI)
- (__CFString)tokenKindAccessibilityDescription;
@end

@implementation _CSSuggestionToken(_CSSuggestionToken_MailUI)

- (__CFString)tokenKindAccessibilityDescription
{
  tokenKind = [self tokenKind];
  if (tokenKind > 0x2E)
  {
    return @"suggestion";
  }

  else
  {
    return off_278188930[tokenKind];
  }
}

@end