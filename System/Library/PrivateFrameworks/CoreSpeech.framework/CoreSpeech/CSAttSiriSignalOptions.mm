@interface CSAttSiriSignalOptions
- (CSAttSiriSignalOptions)initWithAttendingOptions:(id)options audioStreamRequest:(id)request;
@end

@implementation CSAttSiriSignalOptions

- (CSAttSiriSignalOptions)initWithAttendingOptions:(id)options audioStreamRequest:(id)request
{
  optionsCopy = options;
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = CSAttSiriSignalOptions;
  v8 = [(CSAttSiriSignalOptions *)&v14 init];
  if (v8)
  {
    v9 = [optionsCopy copy];
    attendingOptions = v8->_attendingOptions;
    v8->_attendingOptions = v9;

    v11 = [requestCopy copy];
    audioStreamRequest = v8->_audioStreamRequest;
    v8->_audioStreamRequest = v11;
  }

  return v8;
}

@end