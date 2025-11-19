@interface CSAttSiriSignalOptions
- (CSAttSiriSignalOptions)initWithAttendingOptions:(id)a3 audioStreamRequest:(id)a4;
@end

@implementation CSAttSiriSignalOptions

- (CSAttSiriSignalOptions)initWithAttendingOptions:(id)a3 audioStreamRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CSAttSiriSignalOptions;
  v8 = [(CSAttSiriSignalOptions *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    attendingOptions = v8->_attendingOptions;
    v8->_attendingOptions = v9;

    v11 = [v7 copy];
    audioStreamRequest = v8->_audioStreamRequest;
    v8->_audioStreamRequest = v11;
  }

  return v8;
}

@end