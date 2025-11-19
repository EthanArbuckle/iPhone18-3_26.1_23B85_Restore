@interface IMCollaborationNoticeMetadata
+ (id)metadataWithType:(int64_t)a3 bundleIdentifier:(id)a4 contentURL:(id)a5 contentTitle:(id)a6 contentType:(id)a7 messageGUID:(id)a8 targetChatGUIDs:(id)a9;
- (BOOL)isEqual:(id)a3;
- (IMCollaborationNoticeMetadata)initWithCoder:(id)a3;
- (IMCollaborationNoticeMetadata)initWithNoticeType:(int64_t)a3 bundleIdentifier:(id)a4 contentURL:(id)a5 contentTitle:(id)a6 contentType:(id)a7 messageGUID:(id)a8 targetChatGUIDs:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setType:(int64_t)a3;
@end

@implementation IMCollaborationNoticeMetadata

+ (id)metadataWithType:(int64_t)a3 bundleIdentifier:(id)a4 contentURL:(id)a5 contentTitle:(id)a6 contentType:(id)a7 messageGUID:(id)a8 targetChatGUIDs:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = [[IMCollaborationNoticeMetadata alloc] initWithNoticeType:a3 bundleIdentifier:v20 contentURL:v19 contentTitle:v18 contentType:v17 messageGUID:v16 targetChatGUIDs:v15];

  return v21;
}

- (IMCollaborationNoticeMetadata)initWithNoticeType:(int64_t)a3 bundleIdentifier:(id)a4 contentURL:(id)a5 contentTitle:(id)a6 contentType:(id)a7 messageGUID:(id)a8 targetChatGUIDs:(id)a9
{
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v16 = a8;
  v17 = a9;
  v28.receiver = self;
  v28.super_class = IMCollaborationNoticeMetadata;
  v18 = [(IMCollaborationNoticeMetadata *)&v28 init];
  v19 = v18;
  if (v18)
  {
    if (a3 >= 0xA)
    {
      v20 = -1;
    }

    else
    {
      v20 = a3;
    }

    v18->_type = v20;
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:{v24, v25, v26, v27}];
    typeNumber = v19->_typeNumber;
    v19->_typeNumber = v21;

    objc_storeStrong(&v19->_bundleIdentifier, a4);
    objc_storeStrong(&v19->_contentURL, a5);
    objc_storeStrong(&v19->_contentTitle, a6);
    objc_storeStrong(&v19->_contentType, a7);
    objc_storeStrong(&v19->_messageGUID, a8);
    objc_storeStrong(&v19->_targetChatGUIDs, a9);
  }

  return v19;
}

- (void)setType:(int64_t)a3
{
  if (self->_type != a3)
  {
    self->_type = a3;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    self->_typeNumber = v5;

    MEMORY[0x1EEE66BB8](v5);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(IMCollaborationNoticeMetadata *)self type];
      if (v6 == [(IMCollaborationNoticeMetadata *)v5 type])
      {
        v7 = [(IMCollaborationNoticeMetadata *)self bundleIdentifier];
        v8 = [(IMCollaborationNoticeMetadata *)v5 bundleIdentifier];
        v9 = v8;
        if (v7 == v8)
        {
        }

        else
        {
          v10 = [v7 isEqual:v8];

          if (!v10)
          {
            goto LABEL_24;
          }
        }

        v12 = [(IMCollaborationNoticeMetadata *)self contentURL];
        v13 = [(IMCollaborationNoticeMetadata *)v5 contentURL];
        v14 = v13;
        if (v12 == v13)
        {
        }

        else
        {
          v15 = [v12 isEqual:v13];

          if (!v15)
          {
            goto LABEL_24;
          }
        }

        v16 = [(IMCollaborationNoticeMetadata *)self contentTitle];
        v17 = [(IMCollaborationNoticeMetadata *)v5 contentTitle];
        v18 = v17;
        if (v16 == v17)
        {
        }

        else
        {
          v19 = [v16 isEqual:v17];

          if (!v19)
          {
            goto LABEL_24;
          }
        }

        v20 = [(IMCollaborationNoticeMetadata *)self contentType];
        v21 = [(IMCollaborationNoticeMetadata *)v5 contentType];
        v22 = v21;
        if (v20 == v21)
        {
        }

        else
        {
          v23 = [v20 isEqual:v21];

          if (!v23)
          {
            goto LABEL_24;
          }
        }

        v24 = [(IMCollaborationNoticeMetadata *)self messageGUID];
        v25 = [(IMCollaborationNoticeMetadata *)v5 messageGUID];
        v26 = v25;
        if (v24 == v25)
        {
        }

        else
        {
          v27 = [v24 isEqual:v25];

          if (!v27)
          {
            goto LABEL_24;
          }
        }

        v29 = [(IMCollaborationNoticeMetadata *)self targetChatGUIDs];
        v30 = [(IMCollaborationNoticeMetadata *)v5 targetChatGUIDs];
        if (v29 == v30)
        {
          v11 = 1;
        }

        else
        {
          v11 = [v29 isEqual:v30];
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
  v3 = [(IMCollaborationNoticeMetadata *)self typeNumber];
  v4 = [v3 hash];
  v5 = [(IMCollaborationNoticeMetadata *)self bundleIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(IMCollaborationNoticeMetadata *)self contentURL];
  v8 = [v7 hash];
  v9 = [(IMCollaborationNoticeMetadata *)self contentTitle];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(IMCollaborationNoticeMetadata *)self contentType];
  v12 = [v11 hash];
  v13 = [(IMCollaborationNoticeMetadata *)self messageGUID];
  v14 = v12 ^ [v13 hash];
  v15 = [(IMCollaborationNoticeMetadata *)self targetChatGUIDs];
  v16 = v14 ^ [v15 hash];

  return v10 ^ v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMCollaborationNoticeMetadata type](self, "type")}];
  v5 = [(IMCollaborationNoticeMetadata *)self bundleIdentifier];
  v6 = [(IMCollaborationNoticeMetadata *)self contentURL];
  v7 = [(IMCollaborationNoticeMetadata *)self contentTitle];
  v8 = [(IMCollaborationNoticeMetadata *)self contentType];
  v9 = [(IMCollaborationNoticeMetadata *)self messageGUID];
  v10 = [(IMCollaborationNoticeMetadata *)self targetChatGUIDs];
  v11 = [v3 stringWithFormat:@"type: %@, bundleIdentifier: %@, contentURL: %@, contentTitle: %@, contentType: %@, messageGUID: %@, targetChatGUIDs: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[IMCollaborationNoticeMetadata type](self forKey:{"type"), @"t"}];
  v5 = [(IMCollaborationNoticeMetadata *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"b"];

  v6 = [(IMCollaborationNoticeMetadata *)self contentURL];
  [v4 encodeObject:v6 forKey:@"u"];

  v7 = [(IMCollaborationNoticeMetadata *)self contentTitle];
  [v4 encodeObject:v7 forKey:@"c"];

  v8 = [(IMCollaborationNoticeMetadata *)self contentType];
  [v4 encodeObject:v8 forKey:@"y"];

  v9 = [(IMCollaborationNoticeMetadata *)self messageGUID];
  [v4 encodeObject:v9 forKey:@"m"];

  v10 = [(IMCollaborationNoticeMetadata *)self targetChatGUIDs];
  [v4 encodeObject:v10 forKey:@"g"];
}

- (IMCollaborationNoticeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IMCollaborationNoticeMetadata;
  v5 = [(IMCollaborationNoticeMetadata *)&v16 init];
  if (v5)
  {
    -[IMCollaborationNoticeMetadata setType:](v5, "setType:", [v4 decodeIntegerForKey:@"t"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"b"];
    [(IMCollaborationNoticeMetadata *)v5 setBundleIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"u"];
    [(IMCollaborationNoticeMetadata *)v5 setContentURL:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"c"];
    [(IMCollaborationNoticeMetadata *)v5 setContentTitle:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"y"];
    [(IMCollaborationNoticeMetadata *)v5 setContentType:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"m"];
    [(IMCollaborationNoticeMetadata *)v5 setMessageGUID:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"g"];
    [(IMCollaborationNoticeMetadata *)v5 setTargetChatGUIDs:v14];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setType:{-[IMCollaborationNoticeMetadata type](self, "type")}];
  v5 = [(IMCollaborationNoticeMetadata *)self bundleIdentifier];
  [v4 setBundleIdentifier:v5];

  v6 = [(IMCollaborationNoticeMetadata *)self contentURL];
  [v4 setContentURL:v6];

  v7 = [(IMCollaborationNoticeMetadata *)self contentTitle];
  [v4 setContentTitle:v7];

  v8 = [(IMCollaborationNoticeMetadata *)self contentType];
  [v4 setContentType:v8];

  v9 = [(IMCollaborationNoticeMetadata *)self messageGUID];
  [v4 setMessageGUID:v9];

  v10 = [(IMCollaborationNoticeMetadata *)self targetChatGUIDs];
  [v4 setTargetChatGUIDs:v10];

  return v4;
}

@end