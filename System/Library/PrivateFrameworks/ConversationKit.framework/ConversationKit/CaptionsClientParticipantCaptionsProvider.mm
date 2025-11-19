@interface CaptionsClientParticipantCaptionsProvider
- (void)captionsClient:(id)a3 didDetectGibberish:(BOOL)a4;
- (void)captionsClient:(id)a3 didDisableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didStartCaptioningWithReason:(unsigned __int8)a4;
- (void)captionsClient:(id)a3 didStopCaptioningWithReason:(unsigned __int8)a4;
- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4 source:(int)a5;
- (void)captionsServerDidDie:(id)a3;
@end

@implementation CaptionsClientParticipantCaptionsProvider

- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  CaptionsClientParticipantCaptionsProvider.captionsClient(_:didEnableCaptions:error:)();
}

- (void)captionsClient:(id)a3 didDisableCaptions:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  CaptionsClientParticipantCaptionsProvider.captionsClient(_:didDisableCaptions:error:)();
}

- (void)captionsClient:(id)a3 didStartCaptioningWithReason:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  CaptionsClientParticipantCaptionsProvider.captionsClient(_:didStartCaptioningWith:)(v7, v4);
}

- (void)captionsClient:(id)a3 didStopCaptioningWithReason:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  CaptionsClientParticipantCaptionsProvider.captionsClient(_:didStopCaptioningWith:)(v7, v4);
}

- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4 source:(int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  CaptionsClientParticipantCaptionsProvider.captionsClient(_:didUpdateCaptions:source:)();
}

- (void)captionsServerDidDie:(id)a3
{
  v4 = a3;
  v5 = self;
  CaptionsClientParticipantCaptionsProvider.captionsServerDidDie(_:)();
}

- (void)captionsClient:(id)a3 didDetectGibberish:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CaptionsClientParticipantCaptionsProvider.captionsClient(_:didDetectGibberish:)(v7, a4);
}

@end