@interface NSDate(Goodies)
- (id)mf_replyPrefixForSender:()Goodies;
@end

@implementation NSDate(Goodies)

- (id)mf_replyPrefixForSender:()Goodies
{
  v4 = a3;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v7 = [@"ja_JP_TRADITIONAL" caseInsensitiveCompare:localeIdentifier];

  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"ja"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;

      currentLocale = v10;
    }
  }

  v11 = CFDateFormatterCreate(0, currentLocale, kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle);
  if (v11)
  {
    StringWithDate = CFDateFormatterCreateStringWithDate(0, v11, self);
    CFRelease(v11);
  }

  else
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "#Warning failed to create date formatter", buf, 2u);
    }

    StringWithDate = 0;
  }

  v14 = CFDateFormatterCreate(0, currentLocale, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
  if (v14)
  {
    v15 = CFDateFormatterCreateStringWithDate(0, v14, self);
    CFRelease(v14);
  }

  else
  {
    v16 = MFLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 0;
      _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "#Warning failed to create time formatter", v36, 2u);
    }

    v15 = 0;
  }

  v17 = v4;
  emailAddressValue = [v17 emailAddressValue];
  displayName = [emailAddressValue displayName];
  v20 = displayName;
  if (displayName)
  {
    stringValue = displayName;
  }

  else
  {
    stringValue = [v17 stringValue];
  }

  v22 = stringValue;

  v23 = v17;
  emailAddressValue2 = [v23 emailAddressValue];
  simpleAddress = [emailAddressValue2 simpleAddress];
  v26 = simpleAddress;
  if (simpleAddress)
  {
    stringValue2 = simpleAddress;
  }

  else
  {
    stringValue2 = [v23 stringValue];
  }

  v28 = stringValue2;

  v29 = v23;
  if (v22)
  {
    v29 = v23;
    if (v28)
    {
      v29 = v23;
      if (([v22 isEqual:v28] & 1) == 0)
      {
        v30 = MEMORY[0x1E696AEC0];
        v31 = MFLookupLocalizedString(@"REPLY_ATTRIBUTION_SENDER", @"%@ <%@>", @"Message");
        v29 = [v30 stringWithFormat:v31, v22, v28];
      }
    }
  }

  v32 = 0;
  if (StringWithDate && v15)
  {
    v33 = MEMORY[0x1E696AEC0];
    v34 = MFLookupLocalizedString(@"REPLY_ATTRIBUTION", @"On %@, at %@, %@ wrote:\n\n", @"Delayed");
    v32 = [v33 stringWithFormat:v34, StringWithDate, v15, v29];
  }

  return v32;
}

@end