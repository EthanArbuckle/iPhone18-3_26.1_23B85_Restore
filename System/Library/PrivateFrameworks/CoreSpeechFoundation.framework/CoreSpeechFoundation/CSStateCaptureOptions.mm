@interface CSStateCaptureOptions
- (CSStateCaptureOptions)initWithMutableBuilder:(id)builder;
@end

@implementation CSStateCaptureOptions

- (CSStateCaptureOptions)initWithMutableBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = CSStateCaptureOptions;
  v5 = [(CSStateCaptureOptions *)&v12 init];
  v6 = objc_alloc_init(CSStateCaptureOptionsMutable);
  if (v5)
  {
    if (builderCopy)
    {
      builderCopy[2](builderCopy, v6);
    }

    stateDataTitle = [(CSStateCaptureOptionsMutable *)v6 stateDataTitle];
    stateDataTitle = v5->_stateDataTitle;
    v5->_stateDataTitle = stateDataTitle;

    stateData = [(CSStateCaptureOptionsMutable *)v6 stateData];
    stateData = v5->_stateData;
    v5->_stateData = stateData;
  }

  return v5;
}

@end