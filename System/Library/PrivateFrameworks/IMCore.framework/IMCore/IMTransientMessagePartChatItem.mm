@interface IMTransientMessagePartChatItem
- (IMTransientMessagePartChatItem)initWithGUID:(id)d;
@end

@implementation IMTransientMessagePartChatItem

- (IMTransientMessagePartChatItem)initWithGUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = IMTransientMessagePartChatItem;
  v5 = [(IMTransientMessagePartChatItem *)&v9 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend__setGUID_(v5, v6, dCopy);
  }

  return v7;
}

@end