@interface CSStateCaptureOptions
- (CSStateCaptureOptions)initWithMutableBuilder:(id)a3;
@end

@implementation CSStateCaptureOptions

- (CSStateCaptureOptions)initWithMutableBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CSStateCaptureOptions;
  v5 = [(CSStateCaptureOptions *)&v12 init];
  v6 = objc_alloc_init(CSStateCaptureOptionsMutable);
  if (v5)
  {
    if (v4)
    {
      v4[2](v4, v6);
    }

    v7 = [(CSStateCaptureOptionsMutable *)v6 stateDataTitle];
    stateDataTitle = v5->_stateDataTitle;
    v5->_stateDataTitle = v7;

    v9 = [(CSStateCaptureOptionsMutable *)v6 stateData];
    stateData = v5->_stateData;
    v5->_stateData = v9;
  }

  return v5;
}

@end