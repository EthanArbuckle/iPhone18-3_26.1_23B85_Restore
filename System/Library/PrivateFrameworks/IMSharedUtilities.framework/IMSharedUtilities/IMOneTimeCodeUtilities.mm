@interface IMOneTimeCodeUtilities
- (BOOL)isValidOneTimeCode:(id)code;
- (id)createOTCFromMessageBody:(id)body sender:(id)sender guid:(id)guid;
@end

@implementation IMOneTimeCodeUtilities

- (BOOL)isValidOneTimeCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [codeCopy objectForKeyedSubscript:@"handle"];
      if (v6)
      {
        v7 = [codeCopy objectForKeyedSubscript:@"code"];
        if (v7)
        {
          goto LABEL_5;
        }

        v14 = [codeCopy objectForKeyedSubscript:@"machineReadableCode"];
        if (v14)
        {
          v3 = v14;
          v15 = [codeCopy objectForKeyedSubscript:@"domain"];
          if (!v15)
          {
            v13 = 0;
            goto LABEL_18;
          }

          v4 = v15;
LABEL_5:
          v8 = [codeCopy objectForKeyedSubscript:@"displayCode"];
          if (v8)
          {
            v9 = v8;
            v10 = [codeCopy objectForKeyedSubscript:@"guid"];
            if (v10)
            {
              v11 = v10;
              v12 = [codeCopy objectForKeyedSubscript:@"timeStamp"];
              v13 = v12 != 0;

              if (!v7)
              {
                goto LABEL_16;
              }

              goto LABEL_19;
            }
          }

          v13 = 0;
          if (!v7)
          {
LABEL_16:

LABEL_18:
            v7 = v3;
          }

LABEL_19:

          goto LABEL_20;
        }
      }

      v13 = 0;
LABEL_20:

      goto LABEL_21;
    }
  }

  v13 = 0;
LABEL_21:

  return v13;
}

- (id)createOTCFromMessageBody:(id)body sender:(id)sender guid:(id)guid
{
  v76 = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  senderCopy = sender;
  guidCopy = guid;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = guidCopy;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Checking MessageBody with GUID:%@ for OTC", buf, 0xCu);
    }
  }

  if (bodyCopy && senderCopy && guidCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ([bodyCopy length] > 0x264)
    {
      v28 = 0;
LABEL_26:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v73 = sub_1A8602034;
      v74 = sub_1A860220C;
      v75 = 0;
      v30 = [bodyCopy length];
      v31 = *MEMORY[0x1E69A5FF0];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = sub_1A86FCC60;
      v65[3] = &unk_1E7827DE8;
      v65[4] = buf;
      [bodyCopy enumerateAttribute:v31 inRange:0 options:v30 usingBlock:{0, v65}];
      if (!*(*&buf[8] + 40) && ![dictionary count])
      {
        goto LABEL_44;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [*(*&buf[8] + 40) objectForKeyedSubscript:@"code"];
        if (v32)
        {
          v33 = [*(*&buf[8] + 40) objectForKeyedSubscript:@"displayCode"];
          v34 = v33 == 0;

          if (!v34)
          {
            goto LABEL_36;
          }
        }
      }

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *v70 = 138412290;
          v71 = guidCopy;
          _os_log_impl(&dword_1A85E5000, v35, OS_LOG_TYPE_INFO, "Detected code for GUID:%@ but it does not appear to be valid", v70, 0xCu);
        }
      }

      if ([dictionary count])
      {
LABEL_36:
        v36 = [*(*&buf[8] + 40) objectForKeyedSubscript:@"displayCode"];
        v37 = v36;
        if (v36)
        {
          v38 = v36;

          v28 = v38;
        }

        v39 = [*(*&buf[8] + 40) objectForKeyedSubscript:@"displayMoneyAmount"];
        if ([v39 length])
        {
          if (IMOSLoggingEnabled())
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *v70 = 138412290;
              v71 = guidCopy;
              _os_log_impl(&dword_1A85E5000, v40, OS_LOG_TYPE_INFO, "TAN found for guid %@", v70, 0xCu);
            }
          }

          v41 = MEMORY[0x1E696AEC0];
          v42 = IMSharedUtilitiesFrameworkBundle();
          v43 = [v42 localizedStringForKey:@"TAN_DISPLAY" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
          v44 = [v41 localizedStringWithFormat:v43, v28, v39];

          v28 = v44;
        }

        else if (IMOSLoggingEnabled())
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *v70 = 138412290;
            v71 = guidCopy;
            _os_log_impl(&dword_1A85E5000, v46, OS_LOG_TYPE_INFO, "OTC found for guid %@", v70, 0xCu);
          }
        }

        v47 = [*(*&buf[8] + 40) objectForKeyedSubscript:@"code"];
        [dictionary setObject:v47 forKeyedSubscript:@"code"];

        [dictionary setObject:v28 forKeyedSubscript:@"displayCode"];
        [dictionary setObject:senderCopy forKeyedSubscript:@"handle"];
        [dictionary setObject:guidCopy forKeyedSubscript:@"guid"];
        date = [MEMORY[0x1E695DF00] date];
        [dictionary setObject:date forKeyedSubscript:@"timeStamp"];

        v45 = [dictionary copy];
      }

      else
      {
LABEL_44:
        v45 = 0;
      }

      _Block_object_dispose(buf, 8);

      goto LABEL_78;
    }

    string = [bodyCopy string];
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v13 = [string componentsSeparatedByCharactersInSet:newlineCharacterSet];

    lastObject = [v13 lastObject];
    if (!lastObject)
    {
      v28 = 0;
LABEL_25:

      goto LABEL_26;
    }

    array = [MEMORY[0x1E695DF70] array];
    v15 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:lastObject];
    [v15 setCharactersToBeSkipped:0];
    if ([v15 scanString:@"@" intoString:0])
    {
      v62 = [v15 scanString:@"@" intoString:0];
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v69 = 0;
      v17 = [v15 scanUpToCharactersFromSet:whitespaceCharacterSet intoString:&v69];
      v18 = v69;

      if (v17)
      {
        whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v20 = [v15 scanCharactersFromSet:whitespaceCharacterSet2 intoString:0];

        if (v20)
        {
          if ([v15 scanString:@"#" intoString:0])
          {
            whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
            v68 = 0;
            v22 = [v15 scanUpToCharactersFromSet:whitespaceAndNewlineCharacterSet intoString:&v68];
            v61 = v68;

            if (!v22)
            {
LABEL_69:
              v27 = 0;
LABEL_70:
              v29 = v61;
              goto LABEL_23;
            }

            whitespaceCharacterSet3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v24 = [v15 scanCharactersFromSet:whitespaceCharacterSet3 intoString:0];

            if (v24)
            {
              if ([v15 scanString:@"%" intoString:0])
              {
                whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
                v67 = 0;
                v26 = [v15 scanUpToCharactersFromSet:whitespaceAndNewlineCharacterSet2 intoString:&v67];
                v27 = v67;

                if (!v26)
                {
                  goto LABEL_70;
                }

LABEL_57:
                if (IMOSLoggingEnabled())
                {
                  v54 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    *&buf[4] = guidCopy;
                    _os_log_impl(&dword_1A85E5000, v54, OS_LOG_TYPE_INFO, "Found formatted domain and code for GUID %@", buf, 0xCu);
                  }
                }

                [dictionary setObject:v61 forKeyedSubscript:@"machineReadableCode"];
                [dictionary setObject:v18 forKeyedSubscript:@"domain"];
                if (v62)
                {
                  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"domainStrict"];
                }

                if (v27)
                {
                  [dictionary setObject:v27 forKeyedSubscript:@"embeddedDomain"];
                }

                else if ([array count])
                {
                  firstObject = [array firstObject];
                  [dictionary setObject:firstObject forKeyedSubscript:@"embeddedDomain"];

                  [dictionary setObject:array forKeyedSubscript:@"embeddedDomains"];
                }

                v28 = v61;
                goto LABEL_24;
              }

              for (i = [v15 isAtEnd]; (i & 1) == 0 && objc_msgSend(v15, "scanString:intoString:", @"@", 0); i = objc_msgSend(v15, "isAtEnd"))
              {
                v59 = [v15 scanString:@"@" intoString:0];
                whitespaceCharacterSet4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                v66 = 0;
                v51 = [v15 scanUpToCharactersFromSet:whitespaceCharacterSet4 intoString:&v66];
                v60 = v66;

                if ((v51 & 1) == 0)
                {

                  goto LABEL_69;
                }

                [array addObject:v60];
                v52 = [MEMORY[0x1E696AD98] numberWithBool:v59];
                [array addObject:v52];

                whitespaceAndNewlineCharacterSet3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
                [v15 scanCharactersFromSet:whitespaceAndNewlineCharacterSet3 intoString:0];
              }
            }

            v27 = 0;
            goto LABEL_57;
          }
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v29 = 0;
    v27 = 0;
LABEL_23:

    v18 = 0;
    v28 = 0;
LABEL_24:

    goto LABEL_25;
  }

  if (IMOSLoggingEnabled())
  {
    v56 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = @"NO";
      *buf = 138412802;
      if (!bodyCopy)
      {
        v57 = @"YES";
      }

      *&buf[4] = v57;
      *&buf[12] = 2112;
      *&buf[14] = senderCopy;
      *&buf[22] = 2112;
      v73 = guidCopy;
      _os_log_impl(&dword_1A85E5000, v56, OS_LOG_TYPE_INFO, "createOTCFromMessageBody called with bad arguments, aborting create. messagesBodyNil:%@ sender:%@ guid:%@", buf, 0x20u);
    }
  }

  v45 = 0;
LABEL_78:

  return v45;
}

@end