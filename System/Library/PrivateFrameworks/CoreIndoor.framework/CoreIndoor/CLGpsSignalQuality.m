@interface CLGpsSignalQuality
- (CLGpsSignalQuality)init;
- (CLGpsSignalQuality)initWithCoder:(id)a3;
- (CLGpsSignalQuality)initWithSignalQuality:(int)a3;
@end

@implementation CLGpsSignalQuality

- (CLGpsSignalQuality)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v2, v3, v4, a2);

  return 0;
}

- (CLGpsSignalQuality)initWithSignalQuality:(int)a3
{
  v8.receiver = self;
  v8.super_class = CLGpsSignalQuality;
  v4 = [(CLGpsSignalQuality *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_quality = a3;
    v6 = v4;
  }

  return v5;
}

- (CLGpsSignalQuality)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CLGpsSignalQuality;
  v6 = [(CLGpsSignalQuality *)&v12 init];
  if (v6)
  {
    v6->_quality = objc_msgSend_decodeIntForKey_(v4, v5, v7, v8, v9, @"signalQuality");
    v10 = v6;
  }

  return v6;
}

@end