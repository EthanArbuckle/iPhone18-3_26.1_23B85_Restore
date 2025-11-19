@interface IMReplyContextTranscriptPluginChatItem
- (id)_initWithItem:(id)a3 parentItem:(id)a4 replyMessageGUID:(id)a5 replyIsFromMe:(BOOL)a6 initialPayload:(id)a7 index:(int64_t)a8 messagePartRange:(_NSRange)a9 parentChatHasKnownParticipants:(BOOL)a10 chatContext:(id)a11;
@end

@implementation IMReplyContextTranscriptPluginChatItem

- (id)_initWithItem:(id)a3 parentItem:(id)a4 replyMessageGUID:(id)a5 replyIsFromMe:(BOOL)a6 initialPayload:(id)a7 index:(int64_t)a8 messagePartRange:(_NSRange)a9 parentChatHasKnownParticipants:(BOOL)a10 chatContext:(id)a11
{
  v16 = a3;
  v30 = a4;
  obj = a5;
  v17 = a5;
  v18 = a11;
  v31.receiver = self;
  v31.super_class = IMReplyContextTranscriptPluginChatItem;
  v21 = [(IMTranscriptPluginChatItem *)&v31 _initWithItem:v16 initialPayload:a7 index:a8 messagePartRange:a9.location parentChatHasKnownParticipants:a9.length, a10];
  if (v21)
  {
    v22 = objc_msgSend_guid(v16, v19, v20);
    v23 = sub_1A83AC604();

    objc_msgSend__setGUID_(v21, v24, v23);
    objc_msgSend_setChatContext_(v21, v25, v18);
    objc_storeStrong(v21 + 29, a4);
    *(v21 + 216) = a6;
    objc_storeStrong(v21 + 30, obj);
    objc_storeStrong(v21 + 28, a3);
  }

  return v21;
}

@end