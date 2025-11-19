@interface NSURL(CalendarUIKit)
- (id)cal_ShortDisplayStringForURL;
@end

@implementation NSURL(CalendarUIKit)

- (id)cal_ShortDisplayStringForURL
{
  if ([a1 cal_hasSchemeTel])
  {
    v2 = +[CUIKPhoneNumberDescriptionGenerator sharedGenerator];
    v3 = [v2 formattedStringForTelURL:a1];
  }

  else
  {
    v4 = [a1 cal_hostAfterGoogleRedirects];
    if (v4)
    {
      v2 = v4;
      v5 = [v4 lowercaseString];
      v6 = [v5 hasPrefix:@"www."];

      if (v6)
      {
        v7 = [v2 substringFromIndex:4];

        v2 = v7;
      }
    }

    else
    {
      v2 = [a1 absoluteString];
    }

    v3 = [v2 stringByURLUnescapingAllReservedCharacters];
  }

  v8 = v3;

  return v8;
}

@end