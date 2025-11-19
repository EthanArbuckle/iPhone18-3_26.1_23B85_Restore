@interface IMTransientMessagePartChatItem
- (IMTransientMessagePartChatItem)initWithGUID:(id)a3;
@end

@implementation IMTransientMessagePartChatItem

- (IMTransientMessagePartChatItem)initWithGUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMTransientMessagePartChatItem;
  v5 = [(IMTransientMessagePartChatItem *)&v9 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend__setGUID_(v5, v6, v4);
  }

  return v7;
}

@end