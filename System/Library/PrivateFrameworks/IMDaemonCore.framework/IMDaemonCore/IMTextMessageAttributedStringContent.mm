@interface IMTextMessageAttributedStringContent
- (IMTextMessageAttributedStringContent)initWithMessageBodyWithNativeAttributes:(id)attributes fileTransferGuids:(id)guids;
@end

@implementation IMTextMessageAttributedStringContent

- (IMTextMessageAttributedStringContent)initWithMessageBodyWithNativeAttributes:(id)attributes fileTransferGuids:(id)guids
{
  attributesCopy = attributes;
  guidsCopy = guids;
  v14.receiver = self;
  v14.super_class = IMTextMessageAttributedStringContent;
  v8 = [(IMTextMessageAttributedStringContent *)&v14 init];
  if (v8)
  {
    v9 = [attributesCopy copy];
    messageBodyWithNativeAttributes = v8->_messageBodyWithNativeAttributes;
    v8->_messageBodyWithNativeAttributes = v9;

    v11 = [guidsCopy copy];
    fileTransferGuids = v8->_fileTransferGuids;
    v8->_fileTransferGuids = v11;
  }

  return v8;
}

@end