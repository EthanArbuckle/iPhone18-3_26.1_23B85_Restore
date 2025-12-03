@interface IMSharedMessage3rdPartySummary
+ (id)_appNameSummary:(id)summary;
+ (id)_displayNameWithID:(id)d;
+ (id)_handleIdentifiers:(id)identifiers;
+ (id)_idForHandleIdentifier:(id)identifier;
+ (id)_individualPreviewSummary:(id)summary;
+ (id)_pollVoteSummaryForPluginPayload:(id)payload isCustomAcknowledgement:(BOOL)acknowledgement;
+ (id)_replaceHandleWithContactNameInString:(id)string;
+ (id)previewSummaryWithPluginPayload:(id)payload isCustomAcknowledgement:(BOOL)acknowledgement;
@end

@implementation IMSharedMessage3rdPartySummary

+ (id)previewSummaryWithPluginPayload:(id)payload isCustomAcknowledgement:(BOOL)acknowledgement
{
  acknowledgementCopy = acknowledgement;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___IMSharedMessage3rdPartySummary;
  v7 = objc_msgSendSuper2(&v15, sel_previewSummaryWithPluginPayload_);
  data = [payload data];
  if (data)
  {
    v9 = data;
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
    v12 = [self _pollVoteSummaryForPluginPayload:payload isCustomAcknowledgement:acknowledgementCopy];
    if (!v12)
    {
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = [self _individualPreviewSummary:v11];
        if (!v12)
        {
          return [self _appNameSummary:v11];
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

+ (id)_individualPreviewSummary:(id)summary
{
  v3 = [self _replaceHandleWithContactNameInString:{objc_msgSend(summary, "objectForKeyedSubscript:", @"ldtext"}];
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

+ (id)_pollVoteSummaryForPluginPayload:(id)payload isCustomAcknowledgement:(BOOL)acknowledgement
{
  if (!acknowledgement || ![objc_msgSend(payload "pluginBundleID")])
  {
    return 0;
  }

  if ([payload isFromMe])
  {
    v6 = IMSharedUtilitiesFrameworkBundle();
    v7 = @"POLL_VOTE_SELF_MESSAGE";
LABEL_11:

    return [v6 localizedStringForKey:v7 value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
  }

  if (![objc_msgSend(payload "sender")])
  {
    v6 = IMSharedUtilitiesFrameworkBundle();
    v7 = @"POLL_VOTE_MESSAGE";
    goto LABEL_11;
  }

  v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:objc_msgSend(IMSharedUtilitiesFrameworkBundle(), "localizedStringForKey:value:table:", @"POLL_VOTE_OTHER_MESSAGE", &stru_1F1BB91F0, @"IMSharedUtilities", objc_msgSend(payload, "sender")];

  return [self _replaceHandleWithContactNameInString:v9];
}

+ (id)_replaceHandleWithContactNameInString:(id)string
{
  stringCopy = string;
  v21 = *MEMORY[0x1E69E9840];
  if (string)
  {
    v5 = [self _handleIdentifiers:string];
    stringCopy = [MEMORY[0x1E696AD60] stringWithString:stringCopy];
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
          v10 = [self _idForHandleIdentifier:v9];
          _stripFZIDPrefix = [self _displayNameWithID:v10];
          if (!-[__CFString length](_stripFZIDPrefix, "length") && ([v10 isEqualToString:@"kIMTranscriptPluginBreadcrumbTextSenderIdentifier"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"kIMTranscriptPluginBreadcrumbTextReceiverIdentifier") & 1) == 0)
          {
            _stripFZIDPrefix = [v10 _stripFZIDPrefix];
          }

          v12 = [(__CFString *)_stripFZIDPrefix length];
          v13 = [stringCopy length];
          if (v12)
          {
            v14 = _stripFZIDPrefix;
          }

          else
          {
            v14 = &stru_1F1BB91F0;
          }

          [stringCopy replaceOccurrencesOfString:v9 withString:v14 options:0 range:{0, v13}];
        }

        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  return stringCopy;
}

+ (id)_displayNameWithID:(id)d
{
  [+[IMContactStore sharedInstance](IMContactStore fetchCNContactForHandleWithID:"fetchCNContactForHandleWithID:", d];

  return MEMORY[0x1EEE66B58](IMContactStore, sel_displayNameForContact_);
}

+ (id)_handleIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(self "_handleIdentifierRegex")];
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

        range = [*(*(&v13 + 1) + 8 * v9) range];
        [v5 addObject:{objc_msgSend(identifiers, "substringWithRange:", range, v11)}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)_idForHandleIdentifier:(id)identifier
{
  v4 = [objc_msgSend(self "_handleIdentifierRegex")];
  if (!v4 || [v4 range] || v5 != objc_msgSend(identifier, "length"))
  {
    return 0;
  }

  v6 = [identifier length] - 3;

  return [identifier substringWithRange:{2, v6}];
}

+ (id)_appNameSummary:(id)summary
{
  v3 = [summary objectForKey:@"an"];
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