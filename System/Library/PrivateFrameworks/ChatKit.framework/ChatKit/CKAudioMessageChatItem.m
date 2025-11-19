@interface CKAudioMessageChatItem
- (BOOL)canForward;
- (Class)balloonViewClass;
- (Class)cellClass;
- (NSString)audioTranscriptionText;
- (id)_audioTranscriptionTextFromTransfer;
@end

@implementation CKAudioMessageChatItem

- (Class)cellClass
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 audioBalloonCellClass];

  return v3;
}

- (BOOL)canForward
{
  v2 = MEMORY[0x1E69A5CA0];
  v3 = [(CKMessagePartChatItem *)self serviceName];
  v4 = [v2 serviceWithInternalName:v3];
  v5 = [v4 supportsForwardingAudioMessages];

  return v5;
}

- (NSString)audioTranscriptionText
{
  v3 = [(CKMessagePartChatItem *)self message];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _imMessageItem];
    v6 = [v5 body];
    v7 = v6;
    if (v6 && [v6 length])
    {
      v8 = [v7 attribute:*MEMORY[0x1E69A68D0] atIndex:0 effectiveRange:0];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [(CKAudioMessageChatItem *)self _audioTranscriptionTextFromTransfer];
      }

      v11 = v10;
    }

    else
    {
      v11 = [(CKAudioMessageChatItem *)self _audioTranscriptionTextFromTransfer];
    }
  }

  else
  {
    v11 = [(CKAudioMessageChatItem *)self _audioTranscriptionTextFromTransfer];
  }

  return v11;
}

- (id)_audioTranscriptionTextFromTransfer
{
  v2 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 transfer];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 audioTranscriptionText];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (Class)balloonViewClass
{
  v2 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v3 = [v2 transfer];
  v4 = [v3 isFileDataReady];

  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 audioBalloonViewClass];
  }

  else
  {
    v6 = objc_opt_class();
  }

  return v6;
}

@end