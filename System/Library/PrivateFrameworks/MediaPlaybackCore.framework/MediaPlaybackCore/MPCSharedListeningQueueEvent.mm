@interface MPCSharedListeningQueueEvent
+ (MPCSharedListeningQueueEvent)queueEventWithAddedContent:(id)content;
+ (MPCSharedListeningQueueEvent)queueEventWithContentUpdatedMessage:(id)message;
+ (MPCSharedListeningQueueEvent)queueEventWithPlaybackModeChanged:(id)changed;
+ (MPCSharedListeningQueueEvent)queueEventWithPlayedNowContent:(id)content;
+ (MPCSharedListeningQueueEvent)queueEventWithRemovedContent:(id)content;
+ (MPCSharedListeningQueueEvent)queueEventWithReorderedContent:(id)content;
+ (MPCSharedListeningQueueEvent)queueEventWithReplacedContent:(id)content;
- (id)description;
@end

@implementation MPCSharedListeningQueueEvent

- (id)description
{
  kind = self->_kind;
  if (kind > 3)
  {
    if (kind > 5)
    {
      if (kind == 6)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEvent: %p playedNowContent=%@>", self, self->_playedNowContent];
        goto LABEL_19;
      }

      if (kind == 7)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEvent: %p contentUpdatedMessage=%@>", self, self->_contentUpdatedMessage];
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (kind == 4)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEvent: %p playbackMode=%@>", self, self->_playbackMode];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEvent: %p replacedContent=%@>", self, self->_replacedContent];
    }
  }

  else
  {
    if (kind <= 1)
    {
      if (!kind)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEvent: %p unknown/invalid>", self, v5];
        goto LABEL_19;
      }

      if (kind == 1)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEvent: %p addedContent=%@>", self, self->_addedContent];
        goto LABEL_19;
      }

LABEL_18:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEvent: %p unknown/kind=%ld>", self, kind];
      goto LABEL_19;
    }

    if (kind == 2)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEvent: %p removedContent=%@>", self, self->_removedContent];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEvent: %p reorderedContent=%@>", self, self->_reorderedContent];
    }
  }

  v3 = LABEL_19:;

  return v3;
}

+ (MPCSharedListeningQueueEvent)queueEventWithPlaybackModeChanged:(id)changed
{
  changedCopy = changed;
  v4 = objc_alloc_init(MPCSharedListeningQueueEvent);
  v4->_kind = 4;
  playbackMode = v4->_playbackMode;
  v4->_playbackMode = changedCopy;

  return v4;
}

+ (MPCSharedListeningQueueEvent)queueEventWithContentUpdatedMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc_init(MPCSharedListeningQueueEvent);
  v4->_kind = 7;
  contentUpdatedMessage = v4->_contentUpdatedMessage;
  v4->_contentUpdatedMessage = messageCopy;

  return v4;
}

+ (MPCSharedListeningQueueEvent)queueEventWithReplacedContent:(id)content
{
  contentCopy = content;
  v4 = objc_alloc_init(MPCSharedListeningQueueEvent);
  v4->_kind = 5;
  replacedContent = v4->_replacedContent;
  v4->_replacedContent = contentCopy;

  return v4;
}

+ (MPCSharedListeningQueueEvent)queueEventWithReorderedContent:(id)content
{
  contentCopy = content;
  v4 = objc_alloc_init(MPCSharedListeningQueueEvent);
  v4->_kind = 3;
  reorderedContent = v4->_reorderedContent;
  v4->_reorderedContent = contentCopy;

  return v4;
}

+ (MPCSharedListeningQueueEvent)queueEventWithRemovedContent:(id)content
{
  contentCopy = content;
  v4 = objc_alloc_init(MPCSharedListeningQueueEvent);
  v4->_kind = 2;
  removedContent = v4->_removedContent;
  v4->_removedContent = contentCopy;

  return v4;
}

+ (MPCSharedListeningQueueEvent)queueEventWithPlayedNowContent:(id)content
{
  contentCopy = content;
  v4 = objc_alloc_init(MPCSharedListeningQueueEvent);
  v4->_kind = 6;
  playedNowContent = v4->_playedNowContent;
  v4->_playedNowContent = contentCopy;

  return v4;
}

+ (MPCSharedListeningQueueEvent)queueEventWithAddedContent:(id)content
{
  contentCopy = content;
  v4 = objc_alloc_init(MPCSharedListeningQueueEvent);
  addedContent = v4->_addedContent;
  v4->_kind = 1;
  v4->_addedContent = contentCopy;

  return v4;
}

@end