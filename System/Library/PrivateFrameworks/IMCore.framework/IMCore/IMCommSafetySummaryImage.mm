@interface IMCommSafetySummaryImage
- (IMCommSafetySummaryImage)initWithIdentifier:(id)identifier imageData:(id)data;
@end

@implementation IMCommSafetySummaryImage

- (IMCommSafetySummaryImage)initWithIdentifier:(id)identifier imageData:(id)data
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = IMCommSafetySummaryImage;
  identifierCopy = identifier;
  v8 = [(IMCommSafetySummaryImage *)&v15 init];
  v11 = objc_msgSend_copy(identifierCopy, v9, v10, v15.receiver, v15.super_class);

  identifier = v8->_identifier;
  v8->_identifier = v11;

  imageData = v8->_imageData;
  v8->_imageData = dataCopy;

  return v8;
}

@end