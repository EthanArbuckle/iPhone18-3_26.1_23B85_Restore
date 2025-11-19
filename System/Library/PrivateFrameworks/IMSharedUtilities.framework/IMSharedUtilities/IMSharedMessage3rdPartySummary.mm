@interface IMSharedMessage3rdPartySummary
+ (id)_appNameSummary:(id)a3;
+ (id)_displayNameWithID:(id)a3;
+ (id)_handleIdentifiers:(id)a3;
+ (id)_idForHandleIdentifier:(id)a3;
+ (id)_individualPreviewSummary:(id)a3;
+ (id)_pollVoteSummaryForPluginPayload:(id)a3 isCustomAcknowledgement:(BOOL)a4;
+ (id)_replaceHandleWithContactNameInString:(id)a3;
+ (id)previewSummaryWithPluginPayload:(id)a3 isCustomAcknowledgement:(BOOL)a4;
@end

@implementation IMSharedMessage3rdPartySummary

+ (id)previewSummaryWithPluginPayload:(id)a3 isCustomAcknowledgement:(BOOL)a4
{
  v4 = a4;
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___IMSharedMessage3rdPartySummary;
  v7 = objc_msgSendSuper2(&v15, sel_previewSummaryWithPluginPayload_);
  v8 = [a3 data];
  if (v8)
  {
    v9 = v8;
    v14 = 0;
    if (objc_opt_respondsToSelector())
    {
      v10 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:IMExtensionPayloadUnarchivingClasses() fromData:v9 error:&v14];
    }

    else
    {
      v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:IMExtensionPayloadUnarchivingClasses() fromData:v9 error:&v14];
    }

    v11 = v10;
    v12 = [a1 _pollVoteSummaryForPluginPayload:a3 isCustomAcknowledgement:v4];
    if (!v12)
    {
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = [a1 _individualPreviewSummary:v11];
        if (!v12)
        {
          return [a1 _appNameSummary:v11];
        }
      }

      else
      {
        return v7;
      }
    }

    return v12;
  }

  return v7;
}

+ (id)_individualPreviewSummary:(id)a3
{
  v3 = [a1 _replaceHandleWithContactNameInString:{objc_msgSend(a3, "objectForKeyedSubscript:", @"ldtext"}];
  v4 = [objc_msgSend(v3 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), "length"}];
  v5 = [v3 length];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (id)_pollVoteSummaryForPluginPayload:(id)a3 isCustomAcknowledgement:(BOOL)a4
{
  if (!a4 || ![objc_msgSend(a3 "pluginBundleID")])
  {
    return 0;
  }

  if ([a3 isFromMe])
  {
    v6 = IMSharedUtilitiesFrameworkBundle();
    v7 = @"POLL_VOTE_SELF_MESSAGE";
LABEL_11:

    return [v6 localizedStringForKey:v7 value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
  }

  if (![objc_msgSend(a3 "sender")])
  {
    v6 = IMSharedUtilitiesFrameworkBundle();
    v7 = @"POLL_VOTE_MESSAGE";
    goto LABEL_11;
  }

  v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:objc_msgSend(IMSharedUtilitiesFrameworkBundle(), "localizedStringForKey:value:table:", @"POLL_VOTE_OTHER_MESSAGE", &stru_1F1BB91F0, @"IMSharedUtilities", objc_msgSend(a3, "sender")];

  return [a1 _replaceHandleWithContactNameInString:v9];
}

+ (id)_replaceHandleWithContactNameInString:(id)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [a1 _handleIdentifiers:a3];
    v3 = [MEMORY[0x1E696AD60] stringWithString:v3];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [a1 _idForHandleIdentifier:v9];
          v11 = [a1 _displayNameWithID:v10];
          if (!-[__CFString length](v11, "length") && ([v10 isEqualToString:@"kIMTranscriptPluginBreadcrumbTextSenderIdentifier"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"kIMTranscriptPluginBreadcrumbTextReceiverIdentifier") & 1) == 0)
          {
            v11 = [v10 _stripFZIDPrefix];
          }

          v12 = [(__CFString *)v11 length];
          v13 = [v3 length];
          if (v12)
          {
            v14 = v11;
          }

          else
          {
            v14 = &stru_1F1BB91F0;
          }

          [v3 replaceOccurrencesOfString:v9 withString:v14 options:0 range:{0, v13}];
        }

        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

+ (id)_displayNameWithID:(id)a3
{
  [+[IMContactStore sharedInstance](IMContactStore fetchCNContactForHandleWithID:"fetchCNContactForHandleWithID:", a3];

  return MEMORY[0x1EEE66B58](IMContactStore, sel_displayNameForContact_);
}

+ (id)_handleIdentifiers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(a1 "_handleIdentifierRegex")];
  v5 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) range];
        [v5 addObject:{objc_msgSend(a3, "substringWithRange:", v10, v11)}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)_idForHandleIdentifier:(id)a3
{
  v4 = [objc_msgSend(a1 "_handleIdentifierRegex")];
  if (!v4 || [v4 range] || v5 != objc_msgSend(a3, "length"))
  {
    return 0;
  }

  v6 = [a3 length] - 3;

  return [a3 substringWithRange:{2, v6}];
}

+ (id)_appNameSummary:(id)a3
{
  v3 = [a3 objectForKey:@"an"];
  if (v3 && (v4 = v3, ([v3 isEqualToString:&stru_1F1BB91F0] & 1) == 0))
  {
    return [MEMORY[0x1E696AEC0] localizedStringWithFormat:objc_msgSend(IMSharedUtilitiesFrameworkBundle(), "localizedStringForKey:value:table:", @"1 %@ Message", &stru_1F1BB91F0, @"IMSharedUtilities", v4];
  }

  else
  {
    return 0;
  }
}

@end