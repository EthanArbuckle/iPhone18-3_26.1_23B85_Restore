@interface CalConferenceURLDetector
+ (BOOL)_hasDisallowedPathExtension:(id)a3;
+ (BOOL)_hasValidPath:(id)a3;
+ (BOOL)_isGoogleMeetURL:(id)a3;
+ (BOOL)_isValidTelURL:(id)a3;
+ (BOOL)isPreferredURL:(id)a3;
+ (BOOL)isTUConversationLink:(id)a3;
+ (id)_URLDataDetector;
+ (id)_URLsInSource:(id)a3;
+ (id)_dataDetector;
+ (id)_firstPhoneNumberInSource:(id)a3;
+ (id)_googleMeetSuffix;
+ (id)_linksInSource:(id)a3;
+ (id)_microsoftSafeLinkPrefix;
+ (id)_phoneNumberDataDetector;
+ (id)_preferredHostSuffixes;
+ (id)conferenceURLFromSources:(id)a3;
+ (id)decodeIfSafeLink:(id)a3;
+ (id)googleMeetURLsAndPhoneNumbersFromSource:(id)a3;
+ (id)logHandle;
@end

@implementation CalConferenceURLDetector

+ (id)conferenceURLFromSources:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v35;
    v28 = v4;
    v26 = *v35;
    do
    {
      v10 = 0;
      v27 = v6;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        if ([v11 length])
        {
          v29 = v7;
          v12 = [a1 _URLsInSource:v11];
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
                  v20 = [a1 decodeIfSafeLink:v19];

                  if ([objc_opt_class() isPreferredURL:v20])
                  {

                    v4 = v28;
                    v7 = v29;
                    goto LABEL_36;
                  }

                  if (!v8)
                  {
                    if ([a1 _isValidTelURL:v20])
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

          v4 = v28;
          v7 = v29;
          v6 = v27;
          if (!(v8 | v29))
          {
            v21 = [a1 _firstPhoneNumberInSource:v11];
            if ([v21 resultType] == 2048)
            {
              v22 = [v21 phoneNumber];
              v7 = [v22 phoneURL];

              v6 = v27;
            }

            else
            {
              v7 = 0;
            }
          }

          v9 = v26;
        }

        ++v10;
      }

      while (v10 != v6);
      v6 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (v8)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  v20 = v23;
LABEL_36:

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)googleMeetURLsAndPhoneNumbersFromSource:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [a1 _linksInSource:v4];
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
            [v5 addObject:v11];
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
            [v5 addObject:v18];
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
          if ([a1 _isValidTelURL:v26])
          {
            [v5 addObject:v25];
          }
        }

        else if ([v25 resultType] == 2048)
        {
          v27 = [v25 phoneNumber];
          v28 = [v27 phoneURL];

          if (v28)
          {
            [v5 addObject:v25];
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v22);
  }

  v29 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_linksInSource:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _dataDetector];
  v5 = [v4 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];

  return v5;
}

+ (id)_URLsInSource:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = [MEMORY[0x1E695DF70] array];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v5 = [objc_opt_class() _URLDataDetector];
  v6 = [v4 length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__CalConferenceURLDetector__URLsInSource___block_invoke;
  v10[3] = &unk_1E7EC6C38;
  v10[4] = &v11;
  v10[5] = &v17;
  v10[6] = a1;
  [v5 enumerateMatchesInString:v4 options:2 range:0 usingBlock:{v6, v10}];

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

+ (id)_firstPhoneNumberInSource:(id)a3
{
  v4 = a3;
  v5 = [a1 _phoneNumberDataDetector];
  v6 = [v5 firstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

  return v6;
}

+ (id)decodeIfSafeLink:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v18 = 0;
    goto LABEL_18;
  }

  v6 = [v4 host];
  v7 = [a1 _microsoftSafeLinkPrefix];
  v8 = [v6 containsString:v7];

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
    v10 = [v9 queryItems];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v15 name];
          v17 = [v16 isEqualToString:@"url"];

          if (v17)
          {
            v19 = [v15 value];
            v18 = [MEMORY[0x1E695DFF8] URLWithString:v19];

            goto LABEL_17;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

+ (BOOL)isPreferredURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && ([a1 _hasDisallowedPathExtension:v4] & 1) == 0 && objc_msgSend(a1, "_hasValidPath:", v4))
  {
    v5 = [v4 cal_hostAfterGoogleRedirects];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [a1 _preferredHostSuffixes];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          if ([v5 hasSuffix:*(*(&v14 + 1) + 8 * i)])
          {

            v11 = 1;
            goto LABEL_16;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = [a1 isTUConversationLink:v4];
LABEL_16:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)isTUConversationLink:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [a3 host];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [MEMORY[0x1E69D8B70] baseURLs];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [*(*(&v12 + 1) + 8 * i) host];
          v9 = [v8 isEqualToString:v3];

          if (v9)
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (BOOL)_isGoogleMeetURL:(id)a3
{
  v4 = a3;
  if (v4 && ([a1 _hasDisallowedPathExtension:v4] & 1) == 0 && objc_msgSend(a1, "_hasValidPath:", v4))
  {
    v5 = [v4 cal_hostAfterGoogleRedirects];
    v6 = [a1 _googleMeetSuffix];
    v7 = [v5 hasSuffix:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_isValidTelURL:(id)a3
{
  v3 = a3;
  if ([v3 cal_hasSchemeTel])
  {
    v4 = [v3 resourceSpecifier];
    v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F379FFA8];
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_hasValidPath:(id)a3
{
  v3 = [a3 path];
  v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  v6 = [v5 length] && (objc_msgSend(v5, "length") != 1 || (objc_msgSend(v5, "hasPrefix:", @"/") & 1) == 0);
  return v6;
}

+ (BOOL)_hasDisallowedPathExtension:(id)a3
{
  v3 = a3;
  if (_hasDisallowedPathExtension__onceToken != -1)
  {
    +[CalConferenceURLDetector _hasDisallowedPathExtension:];
  }

  v4 = [v3 pathExtension];
  if ([v4 length])
  {
    v5 = [_hasDisallowedPathExtension__disallowedPathExtensions containsObject:v4];
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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