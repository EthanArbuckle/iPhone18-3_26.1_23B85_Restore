@interface DDDirectionsAction
- (id)notificationTitle;
- (id)notificationURL;
@end

@implementation DDDirectionsAction

- (id)notificationTitle
{
  url = self->super.super._url;
  v4 = self->super.super._result;
  contact = self->super.super._contact;
  v6 = [(NSDictionary *)self->super.super._context objectForKeyedSubscript:0x282C1E0C8];
  v7 = _displayString(url, v4, contact, v6, 1);

  if (v7)
  {
    scheme = [(NSURL *)self->super.super._url scheme];
    lowercaseString = [scheme lowercaseString];
    v10 = [lowercaseString isEqualToString:@"geo"];

    v11 = MEMORY[0x277CCACA8];
    if (v10)
    {
      v12 = @"Get directions to location “%@”";
    }

    else
    {
      v12 = @"Get directions to “%@”";
    }

    v14 = DDLocalizedString(v12);
    v13 = [v11 stringWithFormat:v14, v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)notificationURL
{
  v3 = self->super.super._result;
  if (v3)
  {
    goto LABEL_24;
  }

  if (!self->super.super._url)
  {
    v4 = DDDefaultAddressForContact(self->super.super._contact);
    if (v4)
    {
    }

    else
    {
      v5 = [(NSDictionary *)self->super.super._context objectForKeyedSubscript:0x282C1E0C8];

      if (!v5)
      {
        DDUILogAssertionFailure("_result || _url || DDDefaultAddressForContact(_contact) || _context[kDataDetectorsCachedEventKey]", "/Library/Caches/com.apple.xbs/Sources/MobileDataDetectorsUI/Actions/DDAddressActions.m", "[DDDirectionsAction notificationURL]", 409, @"Expecting a result, a URL, a contact with an address or an event with a location", v6, v7, v8, v18);
      }
    }
  }

  v3 = self->super.super._result;
  if (v3)
  {
LABEL_24:
    v9 = DDDirectionsURLForResult(v3);
    if (v9)
    {
      goto LABEL_9;
    }
  }

  url = self->super.super._url;
  if (url)
  {
    v9 = DDDirectionsURLForURL(url);
    if (v9)
    {
LABEL_9:

      return v9;
    }

    v12 = self->super.super._url;
  }

  else
  {
    v12 = 0;
  }

  v13 = self->super.super._result;
  contact = self->super.super._contact;
  v15 = [(NSDictionary *)self->super.super._context objectForKeyedSubscript:0x282C1E0C8];
  v16 = _displayString(v12, v13, contact, v15, 0);

  if (v16)
  {
    v17 = DDDirectionsURLForString(v16);
  }

  else
  {
    v17 = 0;
  }

  v9 = v17;

  return v9;
}

@end