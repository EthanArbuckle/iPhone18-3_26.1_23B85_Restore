@interface IMRichActionCarouselCountChatItem
- (id)_initWithItem:(id)a3 selectedIndex:(int64_t)a4 totalCount:(int64_t)a5;
@end

@implementation IMRichActionCarouselCountChatItem

- (id)_initWithItem:(id)a3 selectedIndex:(int64_t)a4 totalCount:(int64_t)a5
{
  v8 = a3;
  v21.receiver = self;
  v21.super_class = IMRichActionCarouselCountChatItem;
  v11 = [(IMChatItem *)&v21 _initWithItem:v8];
  if (v11)
  {
    v12 = objc_msgSend_guid(v8, v9, v10);
    v14 = objc_msgSend_stringByAppendingString_(@"rcc:", v13, v12);
    objc_msgSend__setGUID_(v11, v15, v14);

    v18 = objc_msgSend__senderHandle(v8, v16, v17);
    v19 = v11[7];
    v11[7] = v18;

    v11[8] = a4;
    v11[9] = a5;
  }

  return v11;
}

@end