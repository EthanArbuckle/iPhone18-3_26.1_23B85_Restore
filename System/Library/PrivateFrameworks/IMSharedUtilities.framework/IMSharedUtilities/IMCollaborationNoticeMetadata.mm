@interface IMCollaborationNoticeMetadata
+ (id)metadataWithType:(int64_t)type bundleIdentifier:(id)identifier contentURL:(id)l contentTitle:(id)title contentType:(id)contentType messageGUID:(id)d targetChatGUIDs:(id)ds;
- (BOOL)isEqual:(id)equal;
- (IMCollaborationNoticeMetadata)initWithCoder:(id)coder;
- (IMCollaborationNoticeMetadata)initWithNoticeType:(int64_t)type bundleIdentifier:(id)identifier contentURL:(id)l contentTitle:(id)title contentType:(id)contentType messageGUID:(id)d targetChatGUIDs:(id)ds;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(int64_t)type;
@end

@implementation IMCollaborationNoticeMetadata

+ (id)metadataWithType:(int64_t)type bundleIdentifier:(id)identifier contentURL:(id)l contentTitle:(id)title contentType:(id)contentType messageGUID:(id)d targetChatGUIDs:(id)ds
{
  dsCopy = ds;
  dCopy = d;
  contentTypeCopy = contentType;
  titleCopy = title;
  lCopy = l;
  identifierCopy = identifier;
  v21 = [[IMCollaborationNoticeMetadata alloc] initWithNoticeType:type bundleIdentifier:identifierCopy contentURL:lCopy contentTitle:titleCopy contentType:contentTypeCopy messageGUID:dCopy targetChatGUIDs:dsCopy];

  return v21;
}

- (IMCollaborationNoticeMetadata)initWithNoticeType:(int64_t)type bundleIdentifier:(id)identifier contentURL:(id)l contentTitle:(id)title contentType:(id)contentType messageGUID:(id)d targetChatGUIDs:(id)ds
{
  identifierCopy = identifier;
  lCopy = l;
  titleCopy = title;
  contentTypeCopy = contentType;
  dCopy = d;
  dsCopy = ds;
  v28.receiver = self;
  v28.super_class = IMCollaborationNoticeMetadata;
  v18 = [(IMCollaborationNoticeMetadata *)&v28 init];
  v19 = v18;
  if (v18)
  {
    if (type >= 0xA)
    {
      typeCopy = -1;
    }

    else
    {
      typeCopy = type;
    }

    v18->_type = typeCopy;
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:{contentTypeCopy, titleCopy, lCopy, identifierCopy}];
    typeNumber = v19->_typeNumber;
    v19->_typeNumber = v21;

    objc_storeStrong(&v19->_bundleIdentifier, identifier);
    objc_storeStrong(&v19->_contentURL, l);
    objc_storeStrong(&v19->_contentTitle, title);
    objc_storeStrong(&v19->_contentType, contentType);
    objc_storeStrong(&v19->_messageGUID, d);
    objc_storeStrong(&v19->_targetChatGUIDs, ds);
  }

  return v19;
}

- (void)setType:(int64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    self->_typeNumber = v5;

    MEMORY[0x1EEE66BB8](v5);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(IMCollaborationNoticeMetadata *)self type];
      if (type == [(IMCollaborationNoticeMetadata *)v5 type])
      {
        bundleIdentifier = [(IMCollaborationNoticeMetadata *)self bundleIdentifier];
        bundleIdentifier2 = [(IMCollaborationNoticeMetadata *)v5 bundleIdentifier];
        v9 = bundleIdentifier2;
        if (bundleIdentifier == bundleIdentifier2)
        {
        }

        else
        {
          v10 = [bundleIdentifier isEqual:bundleIdentifier2];

          if (!v10)
          {
            goto LABEL_24;
          }
        }

        contentURL = [(IMCollaborationNoticeMetadata *)self contentURL];
        contentURL2 = [(IMCollaborationNoticeMetadata *)v5 contentURL];
        v14 = contentURL2;
        if (contentURL == contentURL2)
        {
        }

        else
        {
          v15 = [contentURL isEqual:contentURL2];

          if (!v15)
          {
            goto LABEL_24;
          }
        }

        contentTitle = [(IMCollaborationNoticeMetadata *)self contentTitle];
        contentTitle2 = [(IMCollaborationNoticeMetadata *)v5 contentTitle];
        v18 = contentTitle2;
        if (contentTitle == contentTitle2)
        {
        }

        else
        {
          v19 = [contentTitle isEqual:contentTitle2];

          if (!v19)
          {
            goto LABEL_24;
          }
        }

        contentType = [(IMCollaborationNoticeMetadata *)self contentType];
        contentType2 = [(IMCollaborationNoticeMetadata *)v5 contentType];
        v22 = contentType2;
        if (contentType == contentType2)
        {
        }

        else
        {
          v23 = [contentType isEqual:contentType2];

          if (!v23)
          {
            goto LABEL_24;
          }
        }

        messageGUID = [(IMCollaborationNoticeMetadata *)self messageGUID];
        messageGUID2 = [(IMCollaborationNoticeMetadata *)v5 messageGUID];
        v26 = messageGUID2;
        if (messageGUID == messageGUID2)
        {
        }

        else
        {
          v27 = [messageGUID isEqual:messageGUID2];

          if (!v27)
          {
            goto LABEL_24;
          }
        }

        targetChatGUIDs = [(IMCollaborationNoticeMetadata *)self targetChatGUIDs];
        targetChatGUIDs2 = [(IMCollaborationNoticeMetadata *)v5 targetChatGUIDs];
        if (targetChatGUIDs == targetChatGUIDs2)
        {
          v11 = 1;
        }

        else
        {
          v11 = [targetChatGUIDs isEqual:targetChatGUIDs2];
        }

        goto LABEL_25;
      }

LABEL_24:
      v11 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v11 = 0;
  }

LABEL_26:

  return v11;
}

- (unint64_t)hash
{
  typeNumber = [(IMCollaborationNoticeMetadata *)self typeNumber];
  v4 = [typeNumber hash];
  bundleIdentifier = [(IMCollaborationNoticeMetadata *)self bundleIdentifier];
  v6 = [bundleIdentifier hash] ^ v4;
  contentURL = [(IMCollaborationNoticeMetadata *)self contentURL];
  v8 = [contentURL hash];
  contentTitle = [(IMCollaborationNoticeMetadata *)self contentTitle];
  v10 = v6 ^ v8 ^ [contentTitle hash];
  contentType = [(IMCollaborationNoticeMetadata *)self contentType];
  v12 = [contentType hash];
  messageGUID = [(IMCollaborationNoticeMetadata *)self messageGUID];
  v14 = v12 ^ [messageGUID hash];
  targetChatGUIDs = [(IMCollaborationNoticeMetadata *)self targetChatGUIDs];
  v16 = v14 ^ [targetChatGUIDs hash];

  return v10 ^ v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMCollaborationNoticeMetadata type](self, "type")}];
  bundleIdentifier = [(IMCollaborationNoticeMetadata *)self bundleIdentifier];
  contentURL = [(IMCollaborationNoticeMetadata *)self contentURL];
  contentTitle = [(IMCollaborationNoticeMetadata *)self contentTitle];
  contentType = [(IMCollaborationNoticeMetadata *)self contentType];
  messageGUID = [(IMCollaborationNoticeMetadata *)self messageGUID];
  targetChatGUIDs = [(IMCollaborationNoticeMetadata *)self targetChatGUIDs];
  v11 = [v3 stringWithFormat:@"type: %@, bundleIdentifier: %@, contentURL: %@, contentTitle: %@, contentType: %@, messageGUID: %@, targetChatGUIDs: %@", v4, bundleIdentifier, contentURL, contentTitle, contentType, messageGUID, targetChatGUIDs];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[IMCollaborationNoticeMetadata type](self forKey:{"type"), @"t"}];
  bundleIdentifier = [(IMCollaborationNoticeMetadata *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"b"];

  contentURL = [(IMCollaborationNoticeMetadata *)self contentURL];
  [coderCopy encodeObject:contentURL forKey:@"u"];

  contentTitle = [(IMCollaborationNoticeMetadata *)self contentTitle];
  [coderCopy encodeObject:contentTitle forKey:@"c"];

  contentType = [(IMCollaborationNoticeMetadata *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"y"];

  messageGUID = [(IMCollaborationNoticeMetadata *)self messageGUID];
  [coderCopy encodeObject:messageGUID forKey:@"m"];

  targetChatGUIDs = [(IMCollaborationNoticeMetadata *)self targetChatGUIDs];
  [coderCopy encodeObject:targetChatGUIDs forKey:@"g"];
}

- (IMCollaborationNoticeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = IMCollaborationNoticeMetadata;
  v5 = [(IMCollaborationNoticeMetadata *)&v16 init];
  if (v5)
  {
    -[IMCollaborationNoticeMetadata setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"t"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"b"];
    [(IMCollaborationNoticeMetadata *)v5 setBundleIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"u"];
    [(IMCollaborationNoticeMetadata *)v5 setContentURL:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"c"];
    [(IMCollaborationNoticeMetadata *)v5 setContentTitle:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"y"];
    [(IMCollaborationNoticeMetadata *)v5 setContentType:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"m"];
    [(IMCollaborationNoticeMetadata *)v5 setMessageGUID:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"g"];
    [(IMCollaborationNoticeMetadata *)v5 setTargetChatGUIDs:v14];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setType:{-[IMCollaborationNoticeMetadata type](self, "type")}];
  bundleIdentifier = [(IMCollaborationNoticeMetadata *)self bundleIdentifier];
  [v4 setBundleIdentifier:bundleIdentifier];

  contentURL = [(IMCollaborationNoticeMetadata *)self contentURL];
  [v4 setContentURL:contentURL];

  contentTitle = [(IMCollaborationNoticeMetadata *)self contentTitle];
  [v4 setContentTitle:contentTitle];

  contentType = [(IMCollaborationNoticeMetadata *)self contentType];
  [v4 setContentType:contentType];

  messageGUID = [(IMCollaborationNoticeMetadata *)self messageGUID];
  [v4 setMessageGUID:messageGUID];

  targetChatGUIDs = [(IMCollaborationNoticeMetadata *)self targetChatGUIDs];
  [v4 setTargetChatGUIDs:targetChatGUIDs];

  return v4;
}

@end