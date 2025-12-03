@interface NSDate(Goodies)
- (uint64_t)mf_descriptionForMimeHeaders;
- (uint64_t)mf_replyPrefixForSender:()Goodies;
@end

@implementation NSDate(Goodies)

- (uint64_t)mf_descriptionForMimeHeaders
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"EEE, d MMM yyyy HH:mm:ss ZZ"];
  [v2 setLocale:{objc_msgSend(MEMORY[0x277CBEAF8], "localeWithLocaleIdentifier:", @"en_US_POSIX"}];

  return [v2 stringFromDate:self];
}

- (uint64_t)mf_replyPrefixForSender:()Goodies
{
  v5 = CFLocaleCopyCurrent();
  if (![@"ja_JP_TRADITIONAL" caseInsensitiveCompare:MEMORY[0x259C96310]()])
  {
    v6 = CFLocaleCreate(0, @"ja");
    if (v6)
    {
      v7 = v6;

      v5 = v7;
    }
  }

  v8 = CFDateFormatterCreate(0, v5, kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle);
  if (v8)
  {
    v9 = v8;
    StringWithDate = CFDateFormatterCreateStringWithDate(0, v8, self);
    CFRelease(v9);
  }

  else
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258BDA000, v11, OS_LOG_TYPE_DEFAULT, "#Warning failed to create date formatter", buf, 2u);
    }

    StringWithDate = 0;
  }

  v12 = CFDateFormatterCreate(0, v5, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
  if (v12)
  {
    v13 = v12;
    v14 = CFDateFormatterCreateStringWithDate(0, v12, self);
    CFRelease(v13);
  }

  else
  {
    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_258BDA000, v15, OS_LOG_TYPE_DEFAULT, "#Warning failed to create time formatter", v21, 2u);
    }

    v14 = 0;
  }

  mf_addressComment = [a3 mf_addressComment];
  mf_uncommentedAddress = [a3 mf_uncommentedAddress];
  if (mf_addressComment)
  {
    v18 = mf_uncommentedAddress;
    if (mf_uncommentedAddress)
    {
      if (([mf_addressComment isEqual:mf_uncommentedAddress] & 1) == 0)
      {
        a3 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"REPLY_ATTRIBUTION_SENDER", @"%@ <%@>", 0), mf_addressComment, v18];
      }
    }
  }

  v19 = 0;
  if (StringWithDate && v14)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"REPLY_ATTRIBUTION", @"On %@, at %@, %@ wrote:\n\n", @"Delayed", StringWithDate, v14, a3];
  }

  return v19;
}

@end