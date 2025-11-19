@interface IMLocatingChatItem
- (id)_initWithItem:(id)a3;
@end

@implementation IMLocatingChatItem

- (id)_initWithItem:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IMLocatingChatItem;
  v7 = [(IMChatItem *)&v12 _initWithItem:v4];
  if (v7)
  {
    v8 = objc_msgSend_guid(v4, v5, v6);
    v9 = sub_1A83AC604();

    objc_msgSend__setGUID_(v7, v10, v9);
  }

  return v7;
}

@end