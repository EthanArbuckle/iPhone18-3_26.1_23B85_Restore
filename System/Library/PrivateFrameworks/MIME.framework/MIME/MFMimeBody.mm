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
- (id)partWithNumber:(id)a3;
- (id)preferredBodyPart;
- (id)textHtmlPart;
- (int64_t)numberOfAlternatives;
- (int64_t)preferredAlternative;
- (unsigned)numberOfAttachmentsSigned:(BOOL *)a3 encrypted:(BOOL *)a4;
- (void)hasEncryptedDescendantPart;
- (void)setPreferredAlternative:(int64_t)a3;
- (void)setTopLevelPart:(id)a3;
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
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 initWithFormat:@"Apple-Mail-%@", v4];

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

- (void)setTopLevelPart:(id)a3
{
  v5 = a3;
  if (self->_topLevelPart != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_topLevelPart, a3);
    v5 = v6;
    *(self + 17) = -1;
  }
}

- (NSString)mimeType
{
  v2 = [(MFMimeBody *)self preferredBodyPart];
  v3 = [v2 type];

  return v3;
}

- (NSString)mimeSubtype
{
  v2 = [(MFMimeBody *)self preferredBodyPart];
  v3 = [v2 subtype];

  return v3;
}

- (id)partWithNumber:(id)a3
{
  v4 = a3;
  v5 = [(MFMimeBody *)self topLevelPart];
  v6 = [v5 childPartWithNumber:v4];

  return v6;
}

- (BOOL)hasEncryptedDescendantPart
{
  v50 = *MEMORY[0x1E69E9840];
  encryptedDescendantState = self->_encryptedDescendantState;
  if (!encryptedDescendantState)
  {
    v4 = self;
    v33 = v4;
    v5 = [(MFMimeBody *)v4 topLevelPart];
    [v5 decodeIfNecessary];
    if ([v5 isMultipartSigned])
    {
      v6 = [v5 subparts];
      if ([v6 count] != 2)
      {
        v7 = _ef_log_MFMimeBody();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          -[MFMimeBody hasEncryptedDescendantPart].cold.1(buf, [v6 count], v7);
        }

LABEL_39:
        goto LABEL_40;
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v7 = v6;
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
                v14 = v5;
              }

              if (v9 >= 2)
              {
                v30 = _ef_log_MFMimeBody();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  [(MFMimeBody *)v30 hasEncryptedDescendantPart];
                }

                v5 = v14;
                goto LABEL_39;
              }

              v5 = v14;
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
      v16 = [v5 decryptedMessageBodyIsEncrypted:0 isSigned:0];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v4;
      }

      v19 = v18;

      v20 = [v19 topLevelPart];

      v5 = v20;
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    *buf = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __computeHasEncryptedDescendant_block_invoke;
    v46 = &unk_1E84551E8;
    v47 = v5;
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

        v26 = [v25 firstChildPart];
        if (!v26)
        {
          while (1)
          {
            v26 = [v25 nextSiblingPart];
            if (v26)
            {
              break;
            }

            v27 = [v25 parentPart];

            v25 = v27;
            if (!v27)
            {
              goto LABEL_30;
            }
          }
        }

        v28 = v25;
        v25 = v26;
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

- (unsigned)numberOfAttachmentsSigned:(BOOL *)a3 encrypted:(BOOL *)a4
{
  v10 = 0;
  v6 = [(MFMimeBody *)self topLevelPart];
  v7 = v6;
  if (v6)
  {
    [v6 decodeIfNecessary];
    [v7 getNumberOfAttachments:&v10 isSigned:a3 isEncrypted:a4];
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
  v2 = [(MFMimeBody *)self topLevelPart];
  [v2 decodeIfNecessary];
  v3 = [v2 attachments];

  return v3;
}

- (id)attachmentURLs
{
  v2 = [(MFMimeBody *)self topLevelPart];
  [v2 decodeIfNecessary];
  v3 = [v2 attachmentURLs];

  return v3;
}

- (BOOL)isHTML
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 isHTML];
  }

  else
  {
    v5 = [(MFMimeBody *)self preferredBodyPart];
    v4 = [v5 isHTML];
  }

  return v4;
}

- (BOOL)isRich
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 isRich];
  }

  else
  {
    v5 = [(MFMimePart *)self->_topLevelPart startPart];
    v4 = [v5 isRich];
  }

  return v4;
}

- (int64_t)numberOfAlternatives
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 numberOfAlternatives];
  }

  else
  {
    v5 = *(self + 17);
    if (v5 < 0)
    {
      topLevelPart = self->_topLevelPart;
      if (topLevelPart)
      {
        v7 = [(MFMimePart *)topLevelPart startPart];
        *(self + 17) = [v7 numberOfAlternatives];

        LOWORD(v5) = *(self + 17);
      }
    }

    v4 = v5;
  }

  return v4;
}

- (void)setPreferredAlternative:(int64_t)a3
{
  v5 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v5 setPreferredAlternative:a3];
  }

  else if ([(MFMimeBody *)self numberOfAlternatives]>= 2)
  {
    *(self + 16) = a3;
  }
}

- (int64_t)preferredAlternative
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = *(self + 16);
    if (v4 != -1)
    {
      goto LABEL_20;
    }

    v5 = [(MFMessageBody *)self message];
    v6 = [(MFMimeBody *)self topLevelPart];
    v7 = [v5 defaultAlternativeInPart:v6];

    if (v7)
    {
      v8 = [(MFMimePart *)self->_topLevelPart subparts];
      v9 = [v8 count];
      if (v9)
      {
        v10 = 1;
        do
        {
          v4 = v10 - 1;
          v11 = [v8 objectAtIndex:v10 - 1];
          if (v11 != v7)
          {
            v4 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        while (v4 == 0x7FFFFFFFFFFFFFFFLL && v10++ < v9);

        if (v4 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    v4 = -1;
LABEL_19:

    goto LABEL_20;
  }

  v4 = [v3 preferredAlternative];
LABEL_20:

  return v4;
}

- (id)preferredBodyPart
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 preferredBodyPart];
  }

  else
  {
    v5 = [(MFMimePart *)self->_topLevelPart startPart];
    v4 = [v5 alternativeAtIndex:{-[MFMimeBody preferredAlternative](self, "preferredAlternative")}];
  }

  return v4;
}

- (id)textHtmlPart
{
  v3 = [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3 || ([(MFMimePart *)self->_topLevelPart decodeIfNecessary], [(MFMimePart *)self->_topLevelPart decryptedMessageBodyIsEncrypted:0 isSigned:0], (v3 = objc_claimAutoreleasedReturnValue()) != 0)) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 textHtmlPart];
  }

  else
  {
    v5 = [(MFMimeBody *)self preferredBodyPart];
    v4 = [v5 textHtmlPart];
  }

  return v4;
}

- (void)hasEncryptedDescendantPart
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_1D36B2000, log, OS_LOG_TYPE_ERROR, "Error: Multipart Signed should have exactly 2 direct children, here the count is %lu", buf, 0xCu);
}

@end