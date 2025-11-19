@interface IMJunkRecoveryTranscriptChatItem
- (id)_initWithItem:(id)a3;
@end

@implementation IMJunkRecoveryTranscriptChatItem

- (id)_initWithItem:(id)a3
{
  v7.receiver = self;
  v7.super_class = IMJunkRecoveryTranscriptChatItem;
  v3 = [(IMChatItem *)&v7 _initWithItem:a3];
  v5 = v3;
  if (v3)
  {
    objc_msgSend__setGUID_(v3, v4, @"jr:");
  }

  return v5;
}

@end