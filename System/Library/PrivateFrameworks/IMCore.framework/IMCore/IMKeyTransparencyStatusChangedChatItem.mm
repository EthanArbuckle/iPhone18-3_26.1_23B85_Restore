@interface IMKeyTransparencyStatusChangedChatItem
- (id)_initWithHandles:(id)handles status:(unint64_t)status isGroupChat:(BOOL)chat;
@end

@implementation IMKeyTransparencyStatusChangedChatItem

- (id)_initWithHandles:(id)handles status:(unint64_t)status isGroupChat:(BOOL)chat
{
  handlesCopy = handles;
  v14.receiver = self;
  v14.super_class = IMKeyTransparencyStatusChangedChatItem;
  v10 = [(IMChatItem *)&v14 _initWithItem:0];
  v12 = v10;
  if (v10)
  {
    objc_msgSend__setGUID_(v10, v11, @"kte:");
    objc_storeStrong(v12 + 8, handles);
    v12[9] = status;
    *(v12 + 56) = chat;
  }

  return v12;
}

@end