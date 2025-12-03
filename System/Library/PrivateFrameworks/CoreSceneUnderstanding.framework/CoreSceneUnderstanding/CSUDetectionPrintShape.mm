@interface CSUDetectionPrintShape
- (CSUDetectionPrintShape)initWithHeight:(unint64_t)height width:(unint64_t)width channels:(unint64_t)channels;
@end

@implementation CSUDetectionPrintShape

- (CSUDetectionPrintShape)initWithHeight:(unint64_t)height width:(unint64_t)width channels:(unint64_t)channels
{
  v12.receiver = self;
  v12.super_class = CSUDetectionPrintShape;
  v8 = [(CSUDetectionPrintShape *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_width = width;
    v8->_height = height;
    v8->_channels = channels;
    v10 = v8;
  }

  return v9;
}

@end