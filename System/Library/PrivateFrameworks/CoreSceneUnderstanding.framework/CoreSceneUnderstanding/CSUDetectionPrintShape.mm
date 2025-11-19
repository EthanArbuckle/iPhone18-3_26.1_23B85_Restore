@interface CSUDetectionPrintShape
- (CSUDetectionPrintShape)initWithHeight:(unint64_t)a3 width:(unint64_t)a4 channels:(unint64_t)a5;
@end

@implementation CSUDetectionPrintShape

- (CSUDetectionPrintShape)initWithHeight:(unint64_t)a3 width:(unint64_t)a4 channels:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = CSUDetectionPrintShape;
  v8 = [(CSUDetectionPrintShape *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_width = a4;
    v8->_height = a3;
    v8->_channels = a5;
    v10 = v8;
  }

  return v9;
}

@end