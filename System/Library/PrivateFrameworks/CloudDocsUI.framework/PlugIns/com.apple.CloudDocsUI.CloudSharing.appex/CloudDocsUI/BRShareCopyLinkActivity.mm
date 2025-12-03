@interface BRShareCopyLinkActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)_activitySettingsImage;
- (id)activityTitle;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation BRShareCopyLinkActivity

- (id)activityTitle
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v3 = [v2 localizedStringForKey:@"COPY_LINK_ACTIVITY_TEXT" value:@"Copy Link" table:@"Localizable"];

  return v3;
}

- (id)_activitySettingsImage
{
  activitySettingsImage = [(BRShareCopyLinkActivity *)self activitySettingsImage];
  v3 = [activitySettingsImage _applicationIconImageForFormat:0 precomposed:0];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)prepareWithActivityItems:(id)items
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemsCopy = items;
  v5 = [itemsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&self->_urlToCopy, v9);
          goto LABEL_11;
        }
      }

      v6 = [itemsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)performActivity
{
  v3 = +[UIPasteboard generalPasteboard];
  [v3 setValue:self->_urlToCopy forPasteboardType:kUTTypeURL];

  [(BRShareCopyLinkActivity *)self activityDidFinish:1];
}

@end