@interface CalConferenceURLDetector
+ (BOOL)_hasDisallowedPathExtension:(id)extension;
+ (BOOL)_hasValidPath:(id)path;
+ (BOOL)_isGoogleMeetURL:(id)l;
+ (BOOL)_isValidTelURL:(id)l;
+ (BOOL)isPreferredURL:(id)l;
+ (BOOL)isTUConversationLink:(id)link;
+ (id)_URLDataDetector;
+ (id)_URLsInSource:(id)source;
+ (id)_dataDetector;
+ (id)_firstPhoneNumberInSource:(id)source;
+ (id)_googleMeetSuffix;
+ (id)_linksInSource:(id)source;
+ (id)_microsoftSafeLinkPrefix;
+ (id)_phoneNumberDataDetector;
+ (id)_preferredHostSuffixes;
+ (id)conferenceURLFromSources:(id)sources;
+ (id)decodeIfSafeLink:(id)link;
+ (id)googleMeetURLsAndPhoneNumbersFromSource:(id)source;
+ (id)logHandle;
@end

@implementation CalConferenceURLDetector

+ (id)conferenceURLFromSources:(id)sources
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  sourcesCopy = sources;
  v5 = [sourcesCopy countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    phoneURL = 0;
    v8 = 0;
    v9 = *v35;
    v28 = sourcesCopy;
    v26 = *v35;
    do
    {
      v10 = 0;
      v27 = v6;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(sourcesCopy);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        if ([v11 length])
        {
          v29 = phoneURL;
          v12 = [self _URLsInSource:v11];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v31;
            while (2)
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v31 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v30 + 1) + 8 * i);
                if ([v18 resultType] == 32)
                {
                  v19 = [v18 URL];
                  v20 = [self decodeIfSafeLink:v19];

                  if ([objc_opt_class() isPreferredURL:v20])
                  {

                    sourcesCopy = v28;
                    phoneURL = v29;
                    goto LABEL_36;
                  }

                  if (!v8)
                  {
                    if ([self _isValidTelURL:v20])
                    {
                      v8 = v20;
                    }

                    else
                    {
                      v8 = 0;
                    }
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          sourcesCopy = v28;
          phoneURL = v29;
          v6 = v27;
          if (!(v8 | v29))
          {
            v21 = [self _firstPhoneNumberInSource:v11];
            if ([v21 resultType] == 2048)
            {
              phoneNumber = [v21 phoneNumber];
              phoneURL = [phoneNumber phoneURL];

              v6 = v27;
            }

            else
            {
              phoneURL = 0;
            }
          }

          v9 = v26;
        }

        ++v10;
      }

      while (v10 != v6);
      v6 = [sourcesCopy countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v6);
  }

  else
  {
    phoneURL = 0;
    v8 = 0;
  }

  if (v8)
  {
    v23 = v8;
  }

  else
  {
    v23 = phoneURL;
  }

  v20 = v23;
LABEL_36:

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)googleMeetURLsAndPhoneNumbersFromSource:(id)source
{
  v46 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [self _linksInSource:sourceCopy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        if ([v11 resultType] == 32)
        {
          v12 = [v11 URL];
          if ([objc_opt_class() _isGoogleMeetURL:v12])
          {
            [array addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v8);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v35 + 1) + 8 * j);
        if ([v18 resultType] == 32)
        {
          v19 = [v18 URL];
          if ([objc_opt_class() isPreferredURL:v19] && (objc_msgSend(objc_opt_class(), "_isGoogleMeetURL:", v19) & 1) == 0)
          {
            [array addObject:v18];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v15);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v13;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v31 + 1) + 8 * k);
        if ([v25 resultType] == 32)
        {
          v26 = [v25 URL];
          if ([self _isValidTelURL:v26])
          {
            [array addObject:v25];
          }
        }

        else if ([v25 resultType] == 2048)
        {
          phoneNumber = [v25 phoneNumber];
          phoneURL = [phoneNumber phoneURL];

          if (phoneURL)
          {
            [array addObject:v25];
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v22);
  }

  v29 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)_linksInSource:(id)source
{
  sourceCopy = source;
  _dataDetector = [objc_opt_class() _dataDetector];
  v5 = [_dataDetector matchesInString:sourceCopy options:0 range:{0, objc_msgSend(sourceCopy, "length")}];

  return v5;
}

+ (id)_URLsInSource:(id)source
{
  sourceCopy = source;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  _URLDataDetector = [objc_opt_class() _URLDataDetector];
  v6 = [sourceCopy length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__CalConferenceURLDetector__URLsInSource___block_invoke;
  v10[3] = &unk_1E7EC6C38;
  v10[4] = &v11;
  v10[5] = &v17;
  v10[6] = self;
  [_URLDataDetector enumerateMatchesInString:sourceCopy options:2 range:0 usingBlock:{v6, v10}];

  if (v12[5])
  {
    v7 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
  }

  else
  {
    v7 = v18[5];
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __42__CalConferenceURLDetector__URLsInSource___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (v7)
  {
    v11 = v7;
    v8 = [v7 resultType] == 32;
    v7 = v11;
    if (v8)
    {
      v9 = [v11 URL];
      v10 = [*(a1 + 48) decodeIfSafeLink:v9];

      if ([*(a1 + 48) isPreferredURL:v10])
      {
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
        *a4 = 1;
      }

      else
      {
        [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
      }

      v7 = v11;
    }
  }
}

+ (id)_firstPhoneNumberInSource:(id)source
{
  sourceCopy = source;
  _phoneNumberDataDetector = [self _phoneNumberDataDetector];
  v6 = [_phoneNumberDataDetector firstMatchInString:sourceCopy options:0 range:{0, objc_msgSend(sourceCopy, "length")}];

  return v6;
}

+ (id)decodeIfSafeLink:(id)link
{
  v28 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  v5 = linkCopy;
  if (!linkCopy)
  {
    v18 = 0;
    goto LABEL_18;
  }

  host = [linkCopy host];
  _microsoftSafeLinkPrefix = [self _microsoftSafeLinkPrefix];
  v8 = [host containsString:_microsoftSafeLinkPrefix];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AF20] componentsWithURL:v5 resolvingAgainstBaseURL:0];
    if (!v9)
    {
      v18 = 0;
      goto LABEL_17;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v9;
    queryItems = [v9 queryItems];
    v11 = [queryItems countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(queryItems);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          name = [v15 name];
          v17 = [name isEqualToString:@"url"];

          if (v17)
          {
            value = [v15 value];
            v18 = [MEMORY[0x1E695DFF8] URLWithString:value];

            goto LABEL_17;
          }
        }

        v12 = [queryItems countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  v18 = v5;
LABEL_17:

LABEL_18:
  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (BOOL)isPreferredURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy && ([self _hasDisallowedPathExtension:lCopy] & 1) == 0 && objc_msgSend(self, "_hasValidPath:", lCopy))
  {
    cal_hostAfterGoogleRedirects = [lCopy cal_hostAfterGoogleRedirects];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    _preferredHostSuffixes = [self _preferredHostSuffixes];
    v7 = [_preferredHostSuffixes countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(_preferredHostSuffixes);
          }

          if ([cal_hostAfterGoogleRedirects hasSuffix:*(*(&v14 + 1) + 8 * i)])
          {

            v11 = 1;
            goto LABEL_16;
          }
        }

        v8 = [_preferredHostSuffixes countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = [self isTUConversationLink:lCopy];
LABEL_16:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)isTUConversationLink:(id)link
{
  v17 = *MEMORY[0x1E69E9840];
  if (link)
  {
    host = [link host];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    baseURLs = [MEMORY[0x1E69D8B70] baseURLs];
    v5 = [baseURLs countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(baseURLs);
          }

          host2 = [*(*(&v12 + 1) + 8 * i) host];
          v9 = [host2 isEqualToString:host];

          if (v9)
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        v5 = [baseURLs countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)_isGoogleMeetURL:(id)l
{
  lCopy = l;
  if (lCopy && ([self _hasDisallowedPathExtension:lCopy] & 1) == 0 && objc_msgSend(self, "_hasValidPath:", lCopy))
  {
    cal_hostAfterGoogleRedirects = [lCopy cal_hostAfterGoogleRedirects];
    _googleMeetSuffix = [self _googleMeetSuffix];
    v7 = [cal_hostAfterGoogleRedirects hasSuffix:_googleMeetSuffix];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_isValidTelURL:(id)l
{
  lCopy = l;
  if ([lCopy cal_hasSchemeTel])
  {
    resourceSpecifier = [lCopy resourceSpecifier];
    v5 = [resourceSpecifier stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F379FFA8];
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_hasValidPath:(id)path
{
  path = [path path];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [path stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v6 = [v5 length] && (objc_msgSend(v5, "length") != 1 || (objc_msgSend(v5, "hasPrefix:", @"/") & 1) == 0);
  return v6;
}

+ (BOOL)_hasDisallowedPathExtension:(id)extension
{
  extensionCopy = extension;
  if (_hasDisallowedPathExtension__onceToken != -1)
  {
    +[CalConferenceURLDetector _hasDisallowedPathExtension:];
  }

  pathExtension = [extensionCopy pathExtension];
  if ([pathExtension length])
  {
    v5 = [_hasDisallowedPathExtension__disallowedPathExtensions containsObject:pathExtension];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __56__CalConferenceURLDetector__hasDisallowedPathExtension___block_invoke()
{
  _hasDisallowedPathExtension__disallowedPathExtensions = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F37B0598];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_googleMeetSuffix
{
  if (_googleMeetSuffix_onceToken != -1)
  {
    +[CalConferenceURLDetector _googleMeetSuffix];
  }

  v3 = _googleMeetSuffix_suffix;

  return v3;
}

void __45__CalConferenceURLDetector__googleMeetSuffix__block_invoke()
{
  v0 = _googleMeetSuffix_suffix;
  _googleMeetSuffix_suffix = @"meet.google.com";
}

+ (id)_microsoftSafeLinkPrefix
{
  if (_microsoftSafeLinkPrefix_onceToken != -1)
  {
    +[CalConferenceURLDetector _microsoftSafeLinkPrefix];
  }

  v3 = _microsoftSafeLinkPrefix_prefix;

  return v3;
}

void __52__CalConferenceURLDetector__microsoftSafeLinkPrefix__block_invoke()
{
  v0 = _microsoftSafeLinkPrefix_prefix;
  _microsoftSafeLinkPrefix_prefix = @"safelinks.protection.outlook.com";
}

+ (id)_preferredHostSuffixes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CalConferenceURLDetector__preferredHostSuffixes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_preferredHostSuffixes_onceToken != -1)
  {
    dispatch_once(&_preferredHostSuffixes_onceToken, block);
  }

  v2 = _preferredHostSuffixes_preferredSuffixes;

  return v2;
}

void __50__CalConferenceURLDetector__preferredHostSuffixes__block_invoke(uint64_t a1)
{
  v5[22] = *MEMORY[0x1E69E9840];
  v5[0] = @".webex.com";
  v5[1] = @".webex.com.cn";
  v5[2] = @".dmz.webex.com";
  v5[3] = @"web.ciscospark.com";
  v5[4] = @".skype.com";
  v5[5] = @"meetings.ringcentral.com";
  v1 = [*(a1 + 32) _googleMeetSuffix];
  v5[6] = v1;
  v5[7] = @"zoom.us";
  v5[8] = @"teams.microsoft.com";
  v5[9] = @"teams.microsoft.us";
  v5[10] = @"teams.live.com";
  v5[11] = @"teams.microsoftonline.cn";
  v5[12] = @"messenger.com";
  v5[13] = @"msngr.com";
  v5[14] = @"line.me";
  v5[15] = @"telegram.me";
  v5[16] = @"duo.app.goo.gl";
  v5[17] = @"transcripts.gotomeeting.com";
  v5[18] = @"gotomeet.me";
  v5[19] = @"bluejeans.com";
  v5[20] = @"join.me";
  v5[21] = @"call.whatsapp.com";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:22];
  v3 = _preferredHostSuffixes_preferredSuffixes;
  _preferredHostSuffixes_preferredSuffixes = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)_dataDetector
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CalConferenceURLDetector__dataDetector__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_dataDetector_onceToken != -1)
  {
    dispatch_once(&_dataDetector_onceToken, block);
  }

  v2 = _dataDetector_dataDetector;

  return v2;
}

void __41__CalConferenceURLDetector__dataDetector__block_invoke(uint64_t a1)
{
  v9 = 0;
  v2 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:2080 error:&v9];
  v3 = v9;
  v4 = _dataDetector_dataDetector;
  _dataDetector_dataDetector = v2;

  if (_dataDetector_dataDetector)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B990D000, v7, OS_LOG_TYPE_DEFAULT, "Error initializing the data detector.", v8, 2u);
    }
  }
}

+ (id)_URLDataDetector
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CalConferenceURLDetector__URLDataDetector__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_URLDataDetector_onceToken != -1)
  {
    dispatch_once(&_URLDataDetector_onceToken, block);
  }

  v2 = _URLDataDetector_dataDetector;

  return v2;
}

void __44__CalConferenceURLDetector__URLDataDetector__block_invoke(uint64_t a1)
{
  v9 = 0;
  v2 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:32 error:&v9];
  v3 = v9;
  v4 = _URLDataDetector_dataDetector;
  _URLDataDetector_dataDetector = v2;

  if (_URLDataDetector_dataDetector)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B990D000, v7, OS_LOG_TYPE_DEFAULT, "Error initializing the data detector.", v8, 2u);
    }
  }
}

+ (id)_phoneNumberDataDetector
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CalConferenceURLDetector__phoneNumberDataDetector__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_phoneNumberDataDetector_onceToken != -1)
  {
    dispatch_once(&_phoneNumberDataDetector_onceToken, block);
  }

  v2 = _phoneNumberDataDetector_dataDetector;

  return v2;
}

void __52__CalConferenceURLDetector__phoneNumberDataDetector__block_invoke(uint64_t a1)
{
  v9 = 0;
  v2 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:2048 error:&v9];
  v3 = v9;
  v4 = _phoneNumberDataDetector_dataDetector;
  _phoneNumberDataDetector_dataDetector = v2;

  if (_phoneNumberDataDetector_dataDetector)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B990D000, v7, OS_LOG_TYPE_DEFAULT, "Error initializing the data detector.", v8, 2u);
    }
  }
}

+ (id)logHandle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CalConferenceURLDetector_logHandle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (logHandle_onceToken_1 != -1)
  {
    dispatch_once(&logHandle_onceToken_1, block);
  }

  v2 = logHandle_logHandle_1;

  return v2;
}

void __37__CalConferenceURLDetector_logHandle__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v6 = NSStringFromClass(v2);
  v3 = v6;
  v4 = os_log_create("com.apple.CalendarFoundation", [v6 UTF8String]);
  v5 = logHandle_logHandle_1;
  logHandle_logHandle_1 = v4;
}

@end