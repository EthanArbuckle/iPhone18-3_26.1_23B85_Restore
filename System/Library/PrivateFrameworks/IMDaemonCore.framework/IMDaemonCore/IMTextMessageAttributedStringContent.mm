@interface IMTextMessageAttributedStringContent
- (IMTextMessageAttributedStringContent)initWithMessageBodyWithNativeAttributes:(id)a3 fileTransferGuids:(id)a4;
@end

@implementation IMTextMessageAttributedStringContent

- (IMTextMessageAttributedStringContent)initWithMessageBodyWithNativeAttributes:(id)a3 fileTransferGuids:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = IMTextMessageAttributedStringContent;
  v8 = [(IMTextMessageAttributedStringContent *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    messageBodyWithNativeAttributes = v8->_messageBodyWithNativeAttributes;
    v8->_messageBodyWithNativeAttributes = v9;

    v11 = [v7 copy];
    fileTransferGuids = v8->_fileTransferGuids;
    v8->_fileTransferGuids = v11;
  }

  return v8;
}

@end