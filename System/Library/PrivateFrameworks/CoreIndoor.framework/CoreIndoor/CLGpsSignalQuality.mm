@interface CLGpsSignalQuality
- (CLGpsSignalQuality)init;
- (CLGpsSignalQuality)initWithCoder:(id)coder;
- (CLGpsSignalQuality)initWithSignalQuality:(int)quality;
@end

@implementation CLGpsSignalQuality

- (CLGpsSignalQuality)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v2, v3, v4, a2);

  return 0;
}

- (CLGpsSignalQuality)initWithSignalQuality:(int)quality
{
  v8.receiver = self;
  v8.super_class = CLGpsSignalQuality;
  v4 = [(CLGpsSignalQuality *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_quality = quality;
    v6 = v4;
  }

  return v5;
}

- (CLGpsSignalQuality)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CLGpsSignalQuality;
  v6 = [(CLGpsSignalQuality *)&v12 init];
  if (v6)
  {
    v6->_quality = objc_msgSend_decodeIntForKey_(coderCopy, v5, v7, v8, v9, @"signalQuality");
    v10 = v6;
  }

  return v6;
}

@end