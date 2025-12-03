@interface IMStewieResumeItem
- (id)_initWithItem:(id)item chatIdentifier:(id)identifier;
@end

@implementation IMStewieResumeItem

- (id)_initWithItem:(id)item chatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = IMStewieResumeItem;
  v8 = [(IMChatItem *)&v12 _initWithItem:item];
  v10 = v8;
  if (v8)
  {
    objc_msgSend__setGUID_(v8, v9, @"srb:");
    objc_storeStrong(v10 + 7, identifier);
  }

  return v10;
}

@end