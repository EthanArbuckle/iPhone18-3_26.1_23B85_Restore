@interface IMReplyContextTranscriptPluginChatItem
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me initialPayload:(id)payload index:(int64_t)index messagePartRange:(_NSRange)range parentChatHasKnownParticipants:(BOOL)self0 chatContext:(id)self1;
@end

@implementation IMReplyContextTranscriptPluginChatItem

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me initialPayload:(id)payload index:(int64_t)index messagePartRange:(_NSRange)range parentChatHasKnownParticipants:(BOOL)self0 chatContext:(id)self1
{
  itemCopy = item;
  parentItemCopy = parentItem;
  obj = d;
  dCopy = d;
  contextCopy = context;
  v31.receiver = self;
  v31.super_class = IMReplyContextTranscriptPluginChatItem;
  participants = [(IMTranscriptPluginChatItem *)&v31 _initWithItem:itemCopy initialPayload:payload index:index messagePartRange:range.location parentChatHasKnownParticipants:range.length, participants];
  if (participants)
  {
    v22 = objc_msgSend_guid(itemCopy, v19, v20);
    v23 = sub_1A83AC604();

    objc_msgSend__setGUID_(participants, v24, v23);
    objc_msgSend_setChatContext_(participants, v25, contextCopy);
    objc_storeStrong(participants + 29, parentItem);
    *(participants + 216) = me;
    objc_storeStrong(participants + 30, obj);
    objc_storeStrong(participants + 28, item);
  }

  return participants;
}

@end