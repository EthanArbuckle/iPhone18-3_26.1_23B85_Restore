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
  v1 = [a1 text];
  v2 = [v1 __im_suggestedReplyPreviewText];

  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)__ck_richCardsPreviewText
{
  v1 = [a1 text];
  v2 = [v1 __im_richCardsPreviewText];

  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)__ck_service
{
  if ([a1 wasDowngraded])
  {
    v2 = [MEMORY[0x1E69A5C90] smsService];
  }

  else
  {
    v3 = [a1 sender];
    v2 = [v3 service];
  }

  return v2;
}

- (uint64_t)__ck_isiMessage
{
  v1 = [a1 __ck_service];
  v2 = [v1 __ck_isiMessage];

  return v2;
}

- (uint64_t)__ck_isSMS
{
  v1 = [a1 __ck_service];
  v2 = [v1 __ck_isSMS];

  return v2;
}

- (id)__ck_attachmentPreviewTextForAttachmentAtIndex:()CKAdditions
{
  v5 = [a1 fileTransferGUIDs];
  if ([v5 count] > a3 && (+[CKMediaObjectManager sharedInstance](CKMediaObjectManager, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectAtIndexedSubscript:", a3), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "mediaObjectWithTransferGUID:imMessage:", v7, a1), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, v8))
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
  if ([a1 isFromMe])
  {
    v2 = +[(CKMessageContext *)CKMutableMessageContext];
  }

  else
  {
    v2 = objc_alloc_init(CKMutableMessageContext);
    -[CKMutableMessageContext setSenderUnknown:](v2, "setSenderUnknown:", [a1 isSenderUnknown]);
    v3 = [a1 __ck_service];
    v4 = [v3 name];

    [(CKMutableMessageContext *)v2 setServiceName:v4];
    if (([a1 __ck_isiMessage] & 1) == 0)
    {
      [(CKMutableMessageContext *)v2 setSenderUnauthenticated:1];
    }
  }

  -[CKMutableMessageContext setAudioMessage:](v2, "setAudioMessage:", [a1 isAudioMessage]);

  return v2;
}

- (id)__ck_mediaObjects
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 fileTransferGUIDs];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
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
        v11 = [v10 mediaObjectWithTransferGUID:v9 imMessage:a1];

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
  v1 = [a1 _copyWithFlags:{objc_msgSend(a1, "flags") | 0x80000}];
  v2 = [v1 _imMessageItem];
  [v2 setEncrypted:0];
  v3 = [v2 service];
  [v2 setOriginalServiceName:v3];

  v4 = [v2 message];

  return v4;
}

- (id)__ck_undowngradedMessage
{
  v1 = [a1 _copyWithFlags:{objc_msgSend(a1, "flags") & 0xFFFFFFFFFFF7FFFFLL}];

  return v1;
}

- (id)__ck_sosMessage
{
  v1 = [a1 _copyWithFlags:{objc_msgSend(a1, "flags") | 0x8000000000}];

  return v1;
}

- (id)__ck_criticalMessage
{
  v1 = [a1 _copyWithFlags:{objc_msgSend(a1, "flags") | 0x4000000000}];

  return v1;
}

@end