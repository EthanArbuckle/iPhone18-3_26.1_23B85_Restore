@interface IMCommSafetySummaryImage
- (IMCommSafetySummaryImage)initWithIdentifier:(id)a3 imageData:(id)a4;
@end

@implementation IMCommSafetySummaryImage

- (IMCommSafetySummaryImage)initWithIdentifier:(id)a3 imageData:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = IMCommSafetySummaryImage;
  v7 = a3;
  v8 = [(IMCommSafetySummaryImage *)&v15 init];
  v11 = objc_msgSend_copy(v7, v9, v10, v15.receiver, v15.super_class);

  identifier = v8->_identifier;
  v8->_identifier = v11;

  imageData = v8->_imageData;
  v8->_imageData = v6;

  return v8;
}

@end