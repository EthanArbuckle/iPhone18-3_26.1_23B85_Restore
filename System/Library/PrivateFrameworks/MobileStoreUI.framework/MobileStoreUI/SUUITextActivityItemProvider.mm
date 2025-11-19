@interface SUUITextActivityItemProvider
- (id)item;
@end

@implementation SUUITextActivityItemProvider

- (id)item
{
  v3 = [(UIActivityItemProvider *)self activityType];
  v4 = [v3 isEqualToString:*MEMORY[0x277D54720]];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(SUUIDeferredActivityItemProvider *)self productPageItem];
    v7 = [v6 title];

    v8 = [(SUUIDeferredActivityItemProvider *)self productPageItem];
    v9 = [v8 artistName];

    if ([v7 length] && objc_msgSend(v9, "length"))
    {
      v10 = [(SUUIDeferredActivityItemProvider *)self clientContext];
      v11 = v10;
      if (v10)
      {
        [v10 localizedStringForKey:@"SHARE_SHEET_ITEM_TITLE_FORMAT"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"SHARE_SHEET_ITEM_TITLE_FORMAT" inBundles:0];
      }
      v12 = ;

      v5 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@%@" error:0, v7, v9];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end