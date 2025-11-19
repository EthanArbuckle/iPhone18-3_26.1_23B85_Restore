@interface TUContinuityHandleCapabilities
- (TUContinuityHandleCapabilities)initWithCoder:(id)a3;
- (TUContinuityHandleCapabilities)initWithSupportsTelephonyCalls:(BOOL)a3 supportsFaceTimeAudio:(BOOL)a4 supportsFaceTimeVideo:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUContinuityHandleCapabilities

- (TUContinuityHandleCapabilities)initWithSupportsTelephonyCalls:(BOOL)a3 supportsFaceTimeAudio:(BOOL)a4 supportsFaceTimeVideo:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = TUContinuityHandleCapabilities;
  result = [(TUContinuityHandleCapabilities *)&v9 init];
  if (result)
  {
    result->_supportsTelephonyCalls = a3;
    result->_supportsFaceTimeAudio = a4;
    result->_supportsFaceTimeVideo = a5;
  }

  return result;
}

- (TUContinuityHandleCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"supportsTelephonyCalls"];
  v6 = [v4 decodeBoolForKey:@"supportsFaceTimeAudio"];
  v7 = [v4 decodeBoolForKey:@"supportsFaceTimeVideo"];

  return [(TUContinuityHandleCapabilities *)self initWithSupportsTelephonyCalls:v5 supportsFaceTimeAudio:v6 supportsFaceTimeVideo:v7];
}

- (void)encodeWithCoder:(id)a3
{
  supportsTelephonyCalls = self->_supportsTelephonyCalls;
  v5 = a3;
  [v5 encodeBool:supportsTelephonyCalls forKey:@"supportsTelephonyCalls"];
  [v5 encodeBool:self->_supportsFaceTimeAudio forKey:@"supportsFaceTimeAudio"];
  [v5 encodeBool:self->_supportsFaceTimeVideo forKey:@"supportsFaceTimeVideo"];
}

@end