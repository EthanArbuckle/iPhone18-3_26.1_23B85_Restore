@interface IMMessage(CKAdditions)
- (CKMutableMessageContext)__ck_context;
- (id)__ck_attachmentPreviewTextForAttachmentAtIndex:()CKAdditions;
- (id)__ck_criticalMessage;
- (id)__ck_downgradedMessage;
- (id)__ck_mediaObjects;
- (id)__ck_richCardsPreviewText;
- (id)__ck_service;
- (id)__ck_sosMessage;
- (id)__ck_suggestedReplyPreviewText;
- (id)__ck_undowngradedMessage;
- (uint64_t)__ck_isSMS;
- (uint64_t)__ck_isiMessage;
@end

@implementation IMMessage(CKAdditions)

- (id)__ck_suggestedReplyPreviewText
{
  text = [self text];
  __im_suggestedReplyPreviewText = [text __im_suggestedReplyPreviewText];

  if (__im_suggestedReplyPreviewText)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:__im_suggestedReplyPreviewText];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)__ck_richCardsPreviewText
{
  text = [self text];
  __im_richCardsPreviewText = [text __im_richCardsPreviewText];

  if (__im_richCardsPreviewText)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:__im_richCardsPreviewText];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)__ck_service
{
  if ([self wasDowngraded])
  {
    smsService = [MEMORY[0x1E69A5C90] smsService];
  }

  else
  {
    sender = [self sender];
    smsService = [sender service];
  }

  return smsService;
}

- (uint64_t)__ck_isiMessage
{
  __ck_service = [self __ck_service];
  __ck_isiMessage = [__ck_service __ck_isiMessage];

  return __ck_isiMessage;
}

- (uint64_t)__ck_isSMS
{
  __ck_service = [self __ck_service];
  __ck_isSMS = [__ck_service __ck_isSMS];

  return __ck_isSMS;
}

- (id)__ck_attachmentPreviewTextForAttachmentAtIndex:()CKAdditions
{
  fileTransferGUIDs = [self fileTransferGUIDs];
  if ([fileTransferGUIDs count] > a3 && (+[CKMediaObjectManager sharedInstance](CKMediaObjectManager, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(fileTransferGUIDs, "objectAtIndexedSubscript:", a3), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "mediaObjectWithTransferGUID:imMessage:", v7, self), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, v8))
  {
    v9 = CKAttachmentSummaryForOneMediaObject(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CKMutableMessageContext)__ck_context
{
  if ([self isFromMe])
  {
    v2 = +[(CKMessageContext *)CKMutableMessageContext];
  }

  else
  {
    v2 = objc_alloc_init(CKMutableMessageContext);
    -[CKMutableMessageContext setSenderUnknown:](v2, "setSenderUnknown:", [self isSenderUnknown]);
    __ck_service = [self __ck_service];
    name = [__ck_service name];

    [(CKMutableMessageContext *)v2 setServiceName:name];
    if (([self __ck_isiMessage] & 1) == 0)
    {
      [(CKMutableMessageContext *)v2 setSenderUnauthenticated:1];
    }
  }

  -[CKMutableMessageContext setAudioMessage:](v2, "setAudioMessage:", [self isAudioMessage]);

  return v2;
}

- (id)__ck_mediaObjects
{
  v18 = *MEMORY[0x1E69E9840];
  fileTransferGUIDs = [self fileTransferGUIDs];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(fileTransferGUIDs, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = fileTransferGUIDs;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = +[CKMediaObjectManager sharedInstance];
        v11 = [v10 mediaObjectWithTransferGUID:v9 imMessage:self];

        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)__ck_downgradedMessage
{
  v1 = [self _copyWithFlags:{objc_msgSend(self, "flags") | 0x80000}];
  _imMessageItem = [v1 _imMessageItem];
  [_imMessageItem setEncrypted:0];
  service = [_imMessageItem service];
  [_imMessageItem setOriginalServiceName:service];

  message = [_imMessageItem message];

  return message;
}

- (id)__ck_undowngradedMessage
{
  v1 = [self _copyWithFlags:{objc_msgSend(self, "flags") & 0xFFFFFFFFFFF7FFFFLL}];

  return v1;
}

- (id)__ck_sosMessage
{
  v1 = [self _copyWithFlags:{objc_msgSend(self, "flags") | 0x8000000000}];

  return v1;
}

- (id)__ck_criticalMessage
{
  v1 = [self _copyWithFlags:{objc_msgSend(self, "flags") | 0x4000000000}];

  return v1;
}

@end