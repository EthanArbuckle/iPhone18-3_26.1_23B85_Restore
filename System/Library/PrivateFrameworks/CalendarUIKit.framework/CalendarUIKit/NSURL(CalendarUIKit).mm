@interface NSURL(CalendarUIKit)
- (id)cal_ShortDisplayStringForURL;
@end

@implementation NSURL(CalendarUIKit)

- (id)cal_ShortDisplayStringForURL
{
  if ([self cal_hasSchemeTel])
  {
    absoluteString = +[CUIKPhoneNumberDescriptionGenerator sharedGenerator];
    stringByURLUnescapingAllReservedCharacters = [absoluteString formattedStringForTelURL:self];
  }

  else
  {
    cal_hostAfterGoogleRedirects = [self cal_hostAfterGoogleRedirects];
    if (cal_hostAfterGoogleRedirects)
    {
      absoluteString = cal_hostAfterGoogleRedirects;
      lowercaseString = [cal_hostAfterGoogleRedirects lowercaseString];
      v6 = [lowercaseString hasPrefix:@"www."];

      if (v6)
      {
        v7 = [absoluteString substringFromIndex:4];

        absoluteString = v7;
      }
    }

    else
    {
      absoluteString = [self absoluteString];
    }

    stringByURLUnescapingAllReservedCharacters = [absoluteString stringByURLUnescapingAllReservedCharacters];
  }

  v8 = stringByURLUnescapingAllReservedCharacters;

  return v8;
}

@end