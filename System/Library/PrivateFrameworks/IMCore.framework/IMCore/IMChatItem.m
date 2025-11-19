@interface IMChatItem
- (BOOL)itemIsReply;
- (BOOL)itemIsReplyContextPreview;
- (BOOL)itemIsThreadOriginatorWithThreadIdentifier:(id *)a3;
- (NSString)balloonBundleID;
- (id)_initWithItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)threadGroupIdentifier;
- (void)setNeedsReloadForTransferStatusChangeWithType:(int64_t)a3;
@end

@implementation IMChatItem

- (BOOL)itemIsReply
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  if (objc_msgSend_isReplyContextPreview(self, v3, v4))
  {
    return 0;
  }

  v8 = objc_msgSend_threadIdentifier(self, v5, v6);
  v7 = objc_msgSend_length(v8, v9, v10) != 0;

  return v7;
}

- (BOOL)itemIsReplyContextPreview
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return objc_msgSend_isReplyContextPreview(self, v3, v4);
}

- (BOOL)itemIsThreadOriginatorWithThreadIdentifier:(id *)a3
{
  if (objc_msgSend_isReplyContextPreview(self, a2, a3))
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self;
    v9 = objc_msgSend_replyCount(v6, v7, v8);
    v5 = v9 != 0;
    if (!a3 || !v9)
    {
      goto LABEL_12;
    }

    v10 = IMCreateThreadIdentifierForMessagePartChatItem(v6);
LABEL_11:
    v15 = v10;
    *a3 = v15;

    v5 = 1;
LABEL_12:

    return v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = self;
    v14 = objc_msgSend_replyCount(v11, v12, v13);
    v5 = v14 != 0;
    if (!a3 || !v14)
    {
      goto LABEL_12;
    }

    v10 = IMCreateThreadIdentifierForRetractedMessagePartChatItem(v11);
    goto LABEL_11;
  }

  return 0;
}

- (id)threadGroupIdentifier
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
    v6 = objc_msgSend_threadIdentifier(v3, v4, v5);
    if (v6)
    {
LABEL_10:
      v18 = v6;
LABEL_11:

      goto LABEL_13;
    }

    isReplyContextPreview = objc_msgSend_isReplyContextPreview(v3, v7, v8);
    v12 = objc_msgSend_replyCount(v3, v10, v11);
    if ((isReplyContextPreview & 1) != 0 || v12)
    {
      v6 = IMCreateThreadIdentifierForMessagePartChatItem(v3);
      goto LABEL_10;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = self;
    v6 = objc_msgSend_threadIdentifier(v13, v14, v15);
    if (v6)
    {
      goto LABEL_10;
    }

    if (objc_msgSend_replyCount(v13, v16, v17))
    {
      v6 = IMCreateThreadIdentifierForRetractedMessagePartChatItem(v13);
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v18 = 0;
LABEL_13:

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IMChatItem;
  v4 = [(IMChatItem *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ (%@)", v4, self->_item);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  item = self->_item;

  return objc_msgSend__initWithItem_(v4, v5, item);
}

- (void)setNeedsReloadForTransferStatusChangeWithType:(int64_t)a3
{
  if (a3 == 1)
  {
    if (!objc_msgSend_supportsCommunicationSafety(self, a2, 1))
    {
      return;
    }

    a3 = 1;
  }

  self->_fileTransferReloadStatus = a3;
}

- (id)_initWithItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMChatItem;
  v6 = [(IMChatItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

- (NSString)balloonBundleID
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_balloonBundleID(v3, v4, v5);

  return v6;
}

@end