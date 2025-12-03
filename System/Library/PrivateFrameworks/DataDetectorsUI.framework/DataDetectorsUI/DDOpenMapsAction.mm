@interface DDOpenMapsAction
+ (BOOL)actionAvailableForCachedEvent:(id)event;
+ (BOOL)actionAvailableForContact:(id)contact;
- (id)compactTitle;
- (id)defaultAppRecord;
- (id)localizedName;
- (id)notificationIconBundleIdentifier;
- (id)notificationTitle;
- (id)notificationURL;
- (void)performFromView:(id)view;
@end

@implementation DDOpenMapsAction

+ (BOOL)actionAvailableForContact:(id)contact
{
  v3 = _displayString(0, 0, contact, 0, 0);
  v4 = [v3 length] != 0;

  return v4;
}

+ (BOOL)actionAvailableForCachedEvent:(id)event
{
  v3 = _displayString(0, 0, 0, event, 0);
  v4 = [v3 length] != 0;

  return v4;
}

- (id)defaultAppRecord
{
  if (!*(&self->_defaultAppRecordFetched + 6))
  {
    if ([MEMORY[0x277CC1EE8] hasDatabaseAccess])
    {
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v9 = 0;
      v4 = [defaultWorkspace defaultApplicationForCategory:5 error:&v9];
      v5 = v9;
      defaultAppRecord = self->_defaultAppRecord;
      self->_defaultAppRecord = v4;
    }

    *(&self->_defaultAppRecordFetched + 6) = 1;
  }

  v7 = self->_defaultAppRecord;

  return v7;
}

- (id)localizedName
{
  defaultAppRecord = [(DDOpenMapsAction *)self defaultAppRecord];
  localizedName = [defaultAppRecord localizedName];

  if (![localizedName length])
  {
    goto LABEL_5;
  }

  url = self->super._url;
  if (!url || (-[NSURL scheme](url, "scheme"), v6 = objc_claimAutoreleasedReturnValue(), [v6 lowercaseString], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"geo-navigation"), v7, v6, v8))
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = DDLocalizedString(@"Open in %@");
    v11 = [v9 stringWithFormat:v10, localizedName];
  }

  else
  {
LABEL_5:
    v11 = DDLocalizedString(@"Show on Map");
  }

  return v11;
}

- (id)compactTitle
{
  url = self->super._url;
  v4 = self->super._result;
  contact = self->super._contact;
  v6 = [(NSDictionary *)self->super._context objectForKeyedSubscript:0x282C1E0C8];
  v7 = _displayString(url, v4, contact, v6, 1);

  if ([v7 length])
  {
    compactTitle = v7;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = DDOpenMapsAction;
    compactTitle = [(DDAction *)&v11 compactTitle];
  }

  v9 = compactTitle;

  return v9;
}

- (id)notificationTitle
{
  url = self->super._url;
  v4 = self->super._result;
  contact = self->super._contact;
  v6 = [(NSDictionary *)self->super._context objectForKeyedSubscript:0x282C1E0C8];
  v7 = _displayString(url, v4, contact, v6, 1);

  if (!v7)
  {
    v16 = 0;
    goto LABEL_13;
  }

  defaultAppRecord = [(DDOpenMapsAction *)self defaultAppRecord];
  localizedName = [defaultAppRecord localizedName];

  scheme = [(NSURL *)self->super._url scheme];
  lowercaseString = [scheme lowercaseString];
  v12 = [lowercaseString isEqualToString:@"geo"];

  v13 = [localizedName length];
  v14 = MEMORY[0x277CCACA8];
  if (!v12)
  {
    if (v13)
    {
      v15 = @"View “%@” in %@";
      goto LABEL_8;
    }

    v18 = @"View “%@” on Map";
LABEL_11:
    v17 = DDLocalizedString(v18);
    [v14 stringWithFormat:v17, v7, v20];
    goto LABEL_12;
  }

  if (!v13)
  {
    v18 = @"View location “%@” on Map";
    goto LABEL_11;
  }

  v15 = @"View location “%@” in %@";
LABEL_8:
  v17 = DDLocalizedString(v15);
  [v14 stringWithFormat:v17, v7, localizedName];
  v16 = LABEL_12:;

LABEL_13:

  return v16;
}

- (id)notificationIconBundleIdentifier
{
  defaultAppRecord = [(DDOpenMapsAction *)self defaultAppRecord];
  bundleIdentifier = [defaultAppRecord bundleIdentifier];
  v4 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v5 = bundleIdentifier;
  }

  else
  {
    v5 = @"com.apple.Maps";
  }

  v6 = v5;

  return v5;
}

- (id)notificationURL
{
  v3 = self->super._result;
  if (!v3)
  {
    if (!self->super._url)
    {
      v4 = DDDefaultAddressForContact(self->super._contact);
      if (v4)
      {
      }

      else
      {
        v5 = [(NSDictionary *)self->super._context objectForKeyedSubscript:0x282C1E0C8];
        v6 = [v5 objectForKeyedSubscript:@"event"];

        if (!v6)
        {
          DDUILogAssertionFailure("_result || _url || DDDefaultAddressForContact(_contact) || _context[kDataDetectorsCachedEventKey][@event]", "/Library/Caches/com.apple.xbs/Sources/MobileDataDetectorsUI/Actions/DDAddressActions.m", "[DDOpenMapsAction notificationURL]", 347, @"Expecting a result, a URL, a contact with an address or an event with a location", v7, v8, v9, v19);
        }
      }
    }

    v3 = self->super._result;
    if (!v3)
    {
      v12 = 0;
      url = self->super._url;
      if (url)
      {
        goto LABEL_13;
      }

LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }
  }

  v10 = DDMapURLForResult(v3);
  if (v10)
  {
    goto LABEL_9;
  }

  v12 = self->super._result;
  url = self->super._url;
  if (!url)
  {
    goto LABEL_16;
  }

LABEL_13:
  v10 = DDMapsURLForUrlAndResult(url, v12);
  if (v10)
  {
LABEL_9:

    return v10;
  }

  v14 = self->super._url;
  v12 = self->super._result;
LABEL_17:
  contact = self->super._contact;
  v16 = [(NSDictionary *)self->super._context objectForKeyedSubscript:0x282C1E0C8];
  v17 = _displayString(v14, v12, contact, v16, 0);

  if (v17)
  {
    v18 = DDMapURLForString(v17);
  }

  else
  {
    v18 = 0;
  }

  v10 = v18;

  return v10;
}

- (void)performFromView:(id)view
{
  viewCopy = view;
  notificationURL = [(DDOpenMapsAction *)self notificationURL];
  if (notificationURL)
  {
    [(DDAction *)self addToRecents];
    [(DDAction *)self _performFromView:viewCopy byOpeningURL:notificationURL];
  }
}

@end