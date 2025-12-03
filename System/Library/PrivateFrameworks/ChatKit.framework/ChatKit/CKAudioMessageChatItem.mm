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
  audioBalloonCellClass = [v2 audioBalloonCellClass];

  return audioBalloonCellClass;
}

- (BOOL)canForward
{
  v2 = MEMORY[0x1E69A5CA0];
  serviceName = [(CKMessagePartChatItem *)self serviceName];
  v4 = [v2 serviceWithInternalName:serviceName];
  supportsForwardingAudioMessages = [v4 supportsForwardingAudioMessages];

  return supportsForwardingAudioMessages;
}

- (NSString)audioTranscriptionText
{
  message = [(CKMessagePartChatItem *)self message];
  v4 = message;
  if (message)
  {
    _imMessageItem = [message _imMessageItem];
    body = [_imMessageItem body];
    v7 = body;
    if (body && [body length])
    {
      v8 = [v7 attribute:*MEMORY[0x1E69A68D0] atIndex:0 effectiveRange:0];
      v9 = v8;
      if (v8)
      {
        _audioTranscriptionTextFromTransfer = v8;
      }

      else
      {
        _audioTranscriptionTextFromTransfer = [(CKAudioMessageChatItem *)self _audioTranscriptionTextFromTransfer];
      }

      _audioTranscriptionTextFromTransfer2 = _audioTranscriptionTextFromTransfer;
    }

    else
    {
      _audioTranscriptionTextFromTransfer2 = [(CKAudioMessageChatItem *)self _audioTranscriptionTextFromTransfer];
    }
  }

  else
  {
    _audioTranscriptionTextFromTransfer2 = [(CKAudioMessageChatItem *)self _audioTranscriptionTextFromTransfer];
  }

  return _audioTranscriptionTextFromTransfer2;
}

- (id)_audioTranscriptionTextFromTransfer
{
  mediaObject = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v3 = mediaObject;
  if (mediaObject)
  {
    transfer = [mediaObject transfer];
    v5 = transfer;
    if (transfer)
    {
      audioTranscriptionText = [transfer audioTranscriptionText];
    }

    else
    {
      audioTranscriptionText = 0;
    }
  }

  else
  {
    audioTranscriptionText = 0;
  }

  return audioTranscriptionText;
}

- (Class)balloonViewClass
{
  mediaObject = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  transfer = [mediaObject transfer];
  isFileDataReady = [transfer isFileDataReady];

  if (isFileDataReady)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    audioBalloonViewClass = [v5 audioBalloonViewClass];
  }

  else
  {
    audioBalloonViewClass = objc_opt_class();
  }

  return audioBalloonViewClass;
}

@end