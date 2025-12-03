@interface IMDSuperToRelayMessageParser
- (IMDSuperToRelayMessageParser)initWithAttributedString:(id)string;
- (id)parser:(id)parser preprocessedAttributesForAttributes:(id)attributes range:(_NSRange)range;
- (void)parser:(id)parser foundAttributes:(id)attributes inRange:(_NSRange)range characters:(id)characters;
- (void)parser:(id)parser foundAttributes:(id)attributes inRange:(_NSRange)range fileTransferGUID:(id)d filename:(id)filename bookmark:(id)bookmark width:(id)width height:(id)self0 isAnimoji:(id)self1;
- (void)parserDidStart:(id)start bodyAttributes:(id)attributes;
@end

@implementation IMDSuperToRelayMessageParser

- (IMDSuperToRelayMessageParser)initWithAttributedString:(id)string
{
  v7.receiver = self;
  v7.super_class = IMDSuperToRelayMessageParser;
  v3 = [(IMFromSuperParserContext *)&v7 initWithAttributedString:string];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    outHTML = v3->_outHTML;
    v3->_outHTML = v4;

    v3->_isSimpleString = 1;
  }

  return v3;
}

- (void)parserDidStart:(id)start bodyAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(NSMutableString *)self->_outHTML appendString:@"<html>"];
  [(NSMutableString *)self->_outHTML appendString:@"<body"];
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6 = [attributesCopy objectForKey:*MEMORY[0x277D19150]];
  v7 = v6;
  if (v6)
  {
    [v5 appendFormat:@"background-color:%@;", v6];
  }

  v8 = [attributesCopy objectForKey:*MEMORY[0x277D19158]];
  v9 = v8;
  if (v8)
  {
    [v5 appendFormat:@"color:%@;", v8];
  }

  if ([v5 length])
  {
    [(NSMutableString *)self->_outHTML appendFormat:@" style=%@", v5];
  }

  v10 = [attributesCopy objectForKey:*MEMORY[0x277D190B0]];
  v11 = v10;
  if (v10)
  {
    integerValue = [v10 integerValue];
    if (integerValue == 1)
    {
      v13 = @" dir=rtl";
    }

    else
    {
      if (integerValue)
      {
        goto LABEL_13;
      }

      v13 = @" dir=ltr";
    }

    [(NSMutableString *)self->_outHTML appendString:v13];
  }

LABEL_13:
  [(NSMutableString *)self->_outHTML appendString:@">"];
}

- (void)parser:(id)parser foundAttributes:(id)attributes inRange:(_NSRange)range characters:(id)characters
{
  charactersCopy = characters;
  v8 = *MEMORY[0x277D190A8];
  attributesCopy = attributes;
  v10 = [attributesCopy _stringForKey:v8];
  v11 = [attributesCopy _stringForKey:*MEMORY[0x277D19120]];
  v12 = [attributesCopy _stringForKey:*MEMORY[0x277D19110]];
  v13 = [attributesCopy _numberForKey:*MEMORY[0x277D19118]];
  integerValue = [v13 integerValue];

  v15 = [attributesCopy _numberForKey:*MEMORY[0x277D191E0]];
  bOOLValue = [v15 BOOLValue];

  v16 = [attributesCopy _numberForKey:*MEMORY[0x277D190B8]];
  bOOLValue2 = [v16 BOOLValue];

  v17 = [attributesCopy _numberForKey:*MEMORY[0x277D19138]];
  bOOLValue3 = [v17 BOOLValue];

  v18 = [attributesCopy _numberForKey:*MEMORY[0x277D191D8]];
  bOOLValue4 = [v18 BOOLValue];

  v20 = [attributesCopy objectForKey:*MEMORY[0x277D19140]];

  v21 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v22 = &OBJC_IVAR___IMDChat__isBlackholed;
  if (v20)
  {
    [v20 absoluteString];
    v23 = integerValue;
    v25 = v24 = v20;
    v26 = v12;
    v27 = v11;
    v28 = v10;
    v29 = IMCreateEscapedAttributeValueFromString();

    [(NSMutableString *)self->_outHTML appendString:@"<a href="];
    [(NSMutableString *)self->_outHTML appendString:v29];
    v20 = v24;
    integerValue = v23;
    [(NSMutableString *)self->_outHTML appendString:@">"];

    v10 = v28;
    v11 = v27;
    v12 = v26;
    v22 = &OBJC_IVAR___IMDChat__isBlackholed;
  }

  if (bOOLValue2)
  {
    [v21 appendString:@"font-weight: bold;"];
  }

  if (bOOLValue3)
  {
    [v21 appendString:@"font-style: italic;"];
  }

  if ((bOOLValue | bOOLValue4))
  {
    if (bOOLValue)
    {
      v30 = @"text-decoration: underline;";
    }

    else
    {
      v30 = @"text-decoration: line-through;";
    }

    [v21 appendString:v30];
  }

  if ([v12 length])
  {
    v31 = IMCopySafeNameOfFontFamilyName();
    v32 = v20;
    v33 = IMCreateEscapedAttributeValueFromString();
    [v21 appendFormat:@"font-family: '%@';", v33];

    v20 = v32;
  }

  if (integerValue)
  {
    [v21 appendFormat:@"font-size: %dpx;", integerValue];
  }

  if ([v11 length])
  {
    [v21 appendFormat:@"color: %@;", v11];
  }

  if ([v10 length])
  {
    [v21 appendFormat:@"background-color: %@;", v10];
  }

  if ([v21 length])
  {
    v34 = v22[82];
    [*(&self->super.super.super.isa + v34) appendString:@"<span style="];
    [*(&self->super.super.super.isa + v34) appendString:v21];
    [*(&self->super.super.super.isa + v34) appendString:@">"];
  }

  v35 = IMCreateEscapedStringFromString();
  if (v35)
  {
    [*(&self->super.super.super.isa + v22[82]) appendString:v35];
  }

  if ([v21 length])
  {
    [*(&self->super.super.super.isa + v22[82]) appendString:@"</span>"];
  }

  if (v20)
  {
    [*(&self->super.super.super.isa + v22[82]) appendString:@"</a>"];
  }
}

- (void)parser:(id)parser foundAttributes:(id)attributes inRange:(_NSRange)range fileTransferGUID:(id)d filename:(id)filename bookmark:(id)bookmark width:(id)width height:(id)self0 isAnimoji:(id)self1
{
  v66 = *MEMORY[0x277D85DE8];
  parserCopy = parser;
  attributesCopy = attributes;
  dCopy = d;
  filenameCopy = filename;
  bookmarkCopy = bookmark;
  widthCopy = width;
  heightCopy = height;
  animojiCopy = animoji;
  if (widthCopy)
  {
    v20 = widthCopy;
  }

  else
  {
    v20 = &unk_283F4EA80;
  }

  if (heightCopy)
  {
    v21 = heightCopy;
  }

  else
  {
    v21 = &unk_283F4EA80;
  }

  if (dCopy)
  {
    self->_isSimpleString = 0;
    v22 = +[IMDFileTransferCenter sharedInstance];
    v23 = [v22 transferForGUID:dCopy];

    if (!v23)
    {
LABEL_57:

      goto LABEL_58;
    }

    transferredFilename = [v23 transferredFilename];
    v25 = [transferredFilename length];

    if (v25)
    {
      transferredFilename2 = [v23 transferredFilename];
      lastPathComponent = [transferredFilename2 lastPathComponent];

      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v63 = lastPathComponent;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Filename from transferred file name: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      lastPathComponent = filenameCopy;
    }

    if ([lastPathComponent length])
    {
      lastPathComponent2 = lastPathComponent;
      if (!lastPathComponent)
      {
LABEL_56:
        filenameCopy = 0;
        goto LABEL_57;
      }
    }

    else
    {
      localPath = [v23 localPath];
      lastPathComponent2 = [localPath lastPathComponent];

      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v63 = lastPathComponent2;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Filename from local path: %@", buf, 0xCu);
        }
      }

      if (!lastPathComponent2)
      {
        goto LABEL_56;
      }
    }

    filenameCopy = [lastPathComponent2 lastPathComponent];

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v63 = filenameCopy;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Filename from last path component: %@", buf, 0xCu);
      }
    }

    if (filenameCopy)
    {
      defaultHFSFileManager = [MEMORY[0x277D19250] defaultHFSFileManager];
      v52 = IMCreateEscapedAttributeValueFromString();
      userInfo = [v23 userInfo];
      defaultHFSFileManager2 = [MEMORY[0x277D19250] defaultHFSFileManager];
      localPath2 = [v23 localPath];
      v61 = 0;
      v51 = [defaultHFSFileManager2 attributesOfItemAtPath:localPath2 error:&v61];
      v50 = v61;

      -[NSMutableString appendFormat:](self->_outHTML, "appendFormat:", @"<FILE name=%@ width=%ld height=%ld datasize=%llu", v52, [v20 integerValue], objc_msgSend(v21, "integerValue"), objc_msgSend(v51, "fileSize"));
      if (animojiCopy)
      {
        v35 = IMCreateEscapedAttributeValueFromString();
        stringValue = [animojiCopy stringValue];
        v37 = IMCreateEscapedAttributeValueFromString();

        if (v35 && v37)
        {
          [(NSMutableString *)self->_outHTML appendFormat:@" %@=%@", v35, v37];
        }
      }

      v55 = [defaultHFSFileManager MIMETypeOfPath:filenameCopy];
      if ([v55 length])
      {
        v38 = IMCreateEscapedAttributeValueFromString();
        v39 = IMCreateEscapedAttributeValueFromString();
        v40 = v39;
        if (v38 && v39)
        {
          [(NSMutableString *)self->_outHTML appendFormat:@" %@=%@", v38, v39];
        }
      }

      v54 = [defaultHFSFileManager UTITypeOfPath:filenameCopy];
      if ([v54 length])
      {
        v41 = IMCreateEscapedAttributeValueFromString();
        v42 = IMCreateEscapedAttributeValueFromString();
        v43 = v42;
        if (v41 && v42)
        {
          [(NSMutableString *)self->_outHTML appendFormat:@" %@=%@", v41, v42];
        }
      }

      if ([v23 isAdaptiveImageGlyph])
      {
        adaptiveImageGlyphContentIdentifier = [v23 adaptiveImageGlyphContentIdentifier];
        if ([adaptiveImageGlyphContentIdentifier length])
        {
          v45 = IMCreateEscapedAttributeValueFromString();
          [(NSMutableString *)self->_outHTML appendFormat:@" emoji-image-id=%@", v45];
        }

        adaptiveImageGlyphContentDescription = [v23 adaptiveImageGlyphContentDescription];
        if ([adaptiveImageGlyphContentDescription length])
        {
          v47 = IMCreateEscapedAttributeValueFromString();
          [(NSMutableString *)self->_outHTML appendFormat:@" emoji-image-description=%@", v47];
        }
      }

      if (qword_27D8CFF80 != -1)
      {
        sub_22B7D6F00();
      }

      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = sub_22B6299C8;
      v60[3] = &unk_278706958;
      v60[4] = self;
      [userInfo enumerateKeysAndObjectsUsingBlock:v60];
      [(NSMutableString *)self->_outHTML appendString:@"/>"];
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v63 = v23;
          v64 = 2112;
          v65 = userInfo;
          _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Parsed file transfer: %@    user info: %@", buf, 0x16u);
        }
      }
    }

    goto LABEL_57;
  }

LABEL_58:

  v49 = *MEMORY[0x277D85DE8];
}

- (id)parser:(id)parser preprocessedAttributesForAttributes:(id)attributes range:(_NSRange)range
{
  v37 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v6 = *MEMORY[0x277D190E8];
  v31 = [attributesCopy objectForKey:*MEMORY[0x277D190E8]];

  v7 = *MEMORY[0x277D19170];
  v30 = [attributesCopy objectForKey:*MEMORY[0x277D19170]];

  v8 = *MEMORY[0x277D191C0];
  v29 = [attributesCopy objectForKey:*MEMORY[0x277D191C0]];

  v9 = *MEMORY[0x277D191D0];
  v28 = [attributesCopy objectForKey:*MEMORY[0x277D191D0]];

  v10 = *MEMORY[0x277D191C8];
  v27 = [attributesCopy objectForKey:*MEMORY[0x277D191C8]];

  v11 = *MEMORY[0x277D191E8];
  v26 = [attributesCopy objectForKey:*MEMORY[0x277D191E8]];

  v12 = *MEMORY[0x277D19130];
  v22 = v9;
  v23 = v8;
  v24 = v6;
  [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277D19110], *MEMORY[0x277D19118], *MEMORY[0x277D19138], *MEMORY[0x277D190B8], *MEMORY[0x277D191E0], *MEMORY[0x277D191D8], *MEMORY[0x277D19140], *MEMORY[0x277D19180], *MEMORY[0x277D19120], *MEMORY[0x277D190A8], *MEMORY[0x277D19150], *MEMORY[0x277D19158], *MEMORY[0x277D190B0], v11, v10, v7, v6, v8, v7, *MEMORY[0x277D19128], *MEMORY[0x277D19130], *MEMORY[0x277D191B0], v9, *MEMORY[0x277D19188], *MEMORY[0x277D19100], *MEMORY[0x277D190F8], *MEMORY[0x277D19108], 0}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = v35 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [attributesCopy objectForKey:*(*(&v32 + 1) + 8 * i)];

        if (v18)
        {
          self->_isSimpleString = 0;
          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (v31 || v30 || v29 || v28 || v27 || (v19 = attributesCopy, v26))
  {
    v19 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:attributesCopy];

    [v19 removeObjectForKey:v24];
    [v19 removeObjectForKey:v7];
    [v19 removeObjectForKey:v23];
    [v19 removeObjectForKey:v22];
    [v19 removeObjectForKey:v10];
    [v19 removeObjectForKey:v11];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end