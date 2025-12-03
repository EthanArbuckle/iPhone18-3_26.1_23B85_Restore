@interface MFMimeBody
+ (id)copyNewMimeBoundary;
+ (id)versionString;
- (BOOL)hasEncryptedDescendantPart;
- (BOOL)isHTML;
- (BOOL)isRich;
- (MFMimeBody)init;
- (NSString)mimeSubtype;
- (NSString)mimeType;
- (id)attachmentURLs;
- (id)attachments;
- (id)partWithNumber:(id)number;
- (id)preferredBodyPart;
- (id)textHtmlPart;
- (int64_t)numberOfAlternatives;
- (int64_t)preferredAlternative;
- (unsigned)numberOfAttachmentsSigned:(BOOL *)signed encrypted:(BOOL *)encrypted;
- (void)hasEncryptedDescendantPart;
- (void)setPreferredAlternative:(int64_t)alternative;
- (void)setTopLevelPart:(id)part;
@end

@implementation MFMimeBody

uint64_t ___ef_log_MFMimeBody_block_invoke()
{
  _ef_log_MFMimeBody_log = os_log_create("com.apple.email", "MFMimeBody");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)versionString
{
  if (versionString_onceToken != -1)
  {
    +[MFMimeBody versionString];
  }

  v3 = versionString_mime_version;

  return v3;
}

void __27__MFMimeBody_versionString__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"1.0 (%@)", @"1.0"];
  v2 = versionString_mime_version;
  versionString_mime_version = v1;

  objc_autoreleasePoolPop(v0);
}

+ (id)copyNewMimeBoundary
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithFormat:@"Apple-Mail-%@", uUIDString];

  return v5;
}

- (MFMimeBody)init
{
  v3.receiver = self;
  v3.super_class = MFMimeBody;
  result = [(MFMimeBody *)&v3 init];
  if (result)
  {
    *(result + 16) = -1;
  }

  return result;
}

- (void)setTopLevelPart:(id)part
{
  partCopy = part;
  if (self->_topLevelPart != partCopy)
  {
    v6 = partCopy;
    objc_storeStrong(&self->_topLevelPart, part);
    partCopy = v6;
    *(self + 17) = -1;
  }
}

- (NSString)mimeType
{
  preferredBodyPart = [(MFMimeBody *)self preferredBodyPart];
  type = [preferredBodyPart type];

  return type;
}

- (NSString)mimeSubtype
{
  preferredBodyPart = [(MFMimeBody *)self preferredBodyPart];
  subtype = [preferredBodyPart subtype];

  return subtype;
}

- (id)partWithNumber:(id)number
{
  numberCopy = number;
  topLevelPart = [(MFMimeBody *)self topLevelPart];
  v6 = [topLevelPart childPartWithNumber:numberCopy];

  return v6;
}

- (BOOL)hasEncryptedDescendantPart
{
  v50 = *MEMORY[0x1E69E9840];
  encryptedDescendantState = self->_encryptedDescendantState;
  if (!encryptedDescendantState)
  {
    selfCopy = self;
    v33 = selfCopy;
    topLevelPart = [(MFMimeBody *)selfCopy topLevelPart];
    [topLevelPart decodeIfNecessary];
    if ([topLevelPart isMultipartSigned])
    {
      subparts = [topLevelPart subparts];
      if ([subparts count] != 2)
      {
        v7 = _ef_log_MFMimeBody();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          -[MFMimeBody hasEncryptedDescendantPart].cold.1(buf, [subparts count], v7);
        }

LABEL_39:
        goto LABEL_40;
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v7 = subparts;
      v8 = [v7 countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v8)
      {
        v9 = 0;
        v10 = *v39;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v39 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v38 + 1) + 8 * i);
            if (([v12 isDetatchedSignature] & 1) == 0)
            {
              buf[0] = 0;
              v13 = [v12 decryptedMessageBodyIsEncrypted:buf isSigned:0];
              if (buf[0] == 1)
              {
                v14 = v12;

                [v14 decodeIfNecessary];
                v15 = [v14 decryptedMessageBodyIsEncrypted:0 isSigned:0];
                ++v9;
              }

              else
              {
                v14 = topLevelPart;
              }

              if (v9 >= 2)
              {
                v30 = _ef_log_MFMimeBody();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  [(MFMimeBody *)v30 hasEncryptedDescendantPart];
                }

                topLevelPart = v14;
                goto LABEL_39;
              }

              topLevelPart = v14;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v38 objects:v49 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v16 = [topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = selfCopy;
      }

      v19 = v18;

      topLevelPart2 = [v19 topLevelPart];

      topLevelPart = topLevelPart2;
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    *buf = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __computeHasEncryptedDescendant_block_invoke;
    v46 = &unk_1E84551E8;
    v47 = topLevelPart;
    v48 = &v34;
    v21 = v47;
    v22 = buf;
    v42 = 0;
    v23 = v21;
    v24 = v23;
    if (v23)
    {
      v25 = v23;
      while (1)
      {
        v45(v22, v25, &v42);
        if (v42)
        {
          break;
        }

        firstChildPart = [v25 firstChildPart];
        if (!firstChildPart)
        {
          while (1)
          {
            firstChildPart = [v25 nextSiblingPart];
            if (firstChildPart)
            {
              break;
            }

            parentPart = [v25 parentPart];

            v25 = parentPart;
            if (!parentPart)
            {
              goto LABEL_30;
            }
          }
        }

        v28 = v25;
        v25 = firstChildPart;
      }

LABEL_30:
    }

    v29 = *(v35 + 24);
    _Block_object_dispose(&v34, 8);

    if ((v29 & 1) == 0)
    {
      encryptedDescendantState = 2;
LABEL_41:
      self->_encryptedDescendantState = encryptedDescendantState;
      goto LABEL_42;
    }

LABEL_40:
    encryptedDescendantState = 1;
    goto LABEL_41;
  }

LABEL_42:
  result = encryptedDescendantState == 1;
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)numberOfAttachmentsSigned:(BOOL *)signed encrypted:(BOOL *)encrypted
{
  v10 = 0;
  topLevelPart = [(MFMimeBody *)self topLevelPart];
  v7 = topLevelPart;
  if (topLevelPart)
  {
    [topLevelPart decodeIfNecessary];
    [v7 getNumberOfAttachments:&v10 isSigned:signed isEncrypted:encrypted];
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)attachments
{
  topLevelPart = [(MFMimeBody *)self topLevelPart];
  [topLevelPart decodeIfNecessary];
  attachments = [topLevelPart attachments];

  return attachments;
}

- (id)attachmentURLs
{
  topLevelPart = [(MFMimeBody *)self topLevelPart];
  [topLevelPart decodeIfNecessary];
  attachmentURLs = [topLevelPart attachmentURLs];

  return attachmentURLs;
}

- (BOOL)isHTML
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isHTML = [v3 isHTML];
  }

  else
  {
    preferredBodyPart = [(MFMimeBody *)self preferredBodyPart];
    isHTML = [preferredBodyPart isHTML];
  }

  return isHTML;
}

- (BOOL)isRich
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isRich = [v3 isRich];
  }

  else
  {
    startPart = [(MFMimePart *)self->_topLevelPart startPart];
    isRich = [startPart isRich];
  }

  return isRich;
}

- (int64_t)numberOfAlternatives
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    numberOfAlternatives = [v3 numberOfAlternatives];
  }

  else
  {
    v5 = *(self + 17);
    if (v5 < 0)
    {
      topLevelPart = self->_topLevelPart;
      if (topLevelPart)
      {
        startPart = [(MFMimePart *)topLevelPart startPart];
        *(self + 17) = [startPart numberOfAlternatives];

        LOWORD(v5) = *(self + 17);
      }
    }

    numberOfAlternatives = v5;
  }

  return numberOfAlternatives;
}

- (void)setPreferredAlternative:(int64_t)alternative
{
  v5 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v5 setPreferredAlternative:alternative];
  }

  else if ([(MFMimeBody *)self numberOfAlternatives]>= 2)
  {
    *(self + 16) = alternative;
  }
}

- (int64_t)preferredAlternative
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    preferredAlternative = *(self + 16);
    if (preferredAlternative != -1)
    {
      goto LABEL_20;
    }

    message = [(MFMessageBody *)self message];
    topLevelPart = [(MFMimeBody *)self topLevelPart];
    v7 = [message defaultAlternativeInPart:topLevelPart];

    if (v7)
    {
      subparts = [(MFMimePart *)self->_topLevelPart subparts];
      v9 = [subparts count];
      if (v9)
      {
        v10 = 1;
        do
        {
          preferredAlternative = v10 - 1;
          v11 = [subparts objectAtIndex:v10 - 1];
          if (v11 != v7)
          {
            preferredAlternative = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        while (preferredAlternative == 0x7FFFFFFFFFFFFFFFLL && v10++ < v9);

        if (preferredAlternative != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    preferredAlternative = -1;
LABEL_19:

    goto LABEL_20;
  }

  preferredAlternative = [v3 preferredAlternative];
LABEL_20:

  return preferredAlternative;
}

- (id)preferredBodyPart
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    preferredBodyPart = [v3 preferredBodyPart];
  }

  else
  {
    startPart = [(MFMimePart *)self->_topLevelPart startPart];
    preferredBodyPart = [startPart alternativeAtIndex:{-[MFMimeBody preferredAlternative](self, "preferredAlternative")}];
  }

  return preferredBodyPart;
}

- (id)textHtmlPart
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 || ([(MFMimePart *)self->_topLevelPart decodeIfNecessary], [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0], (v3 = objc_claimAutoreleasedReturnValue()) != 0)) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    textHtmlPart = [v3 textHtmlPart];
  }

  else
  {
    preferredBodyPart = [(MFMimeBody *)self preferredBodyPart];
    textHtmlPart = [preferredBodyPart textHtmlPart];
  }

  return textHtmlPart;
}

- (void)hasEncryptedDescendantPart
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_1D36B2000, log, OS_LOG_TYPE_ERROR, "Error: Multipart Signed should have exactly 2 direct children, here the count is %lu", buf, 0xCu);
}

@end