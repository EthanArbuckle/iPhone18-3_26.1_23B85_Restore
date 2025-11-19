@interface IMKeyTransparencyStatusChangedChatItem
- (id)_initWithHandles:(id)a3 status:(unint64_t)a4 isGroupChat:(BOOL)a5;
@end

@implementation IMKeyTransparencyStatusChangedChatItem

- (id)_initWithHandles:(id)a3 status:(unint64_t)a4 isGroupChat:(BOOL)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = IMKeyTransparencyStatusChangedChatItem;
  v10 = [(IMChatItem *)&v14 _initWithItem:0];
  v12 = v10;
  if (v10)
  {
    objc_msgSend__setGUID_(v10, v11, @"kte:");
    objc_storeStrong(v12 + 8, a3);
    v12[9] = a4;
    *(v12 + 56) = a5;
  }

  return v12;
}

@end