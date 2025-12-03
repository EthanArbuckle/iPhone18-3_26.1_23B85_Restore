@interface CaptionsClientParticipantCaptionsProvider
- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish;
- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didStartCaptioningWithReason:(unsigned __int8)reason;
- (void)captionsClient:(id)client didStopCaptioningWithReason:(unsigned __int8)reason;
- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source;
- (void)captionsServerDidDie:(id)die;
@end

@implementation CaptionsClientParticipantCaptionsProvider

- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  CaptionsClientParticipantCaptionsProvider.captionsClient(_:didEnableCaptions:error:)();
}

- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  CaptionsClientParticipantCaptionsProvider.captionsClient(_:didDisableCaptions:error:)();
}

- (void)captionsClient:(id)client didStartCaptioningWithReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  clientCopy = client;
  selfCopy = self;
  CaptionsClientParticipantCaptionsProvider.captionsClient(_:didStartCaptioningWith:)(selfCopy, reasonCopy);
}

- (void)captionsClient:(id)client didStopCaptioningWithReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  clientCopy = client;
  selfCopy = self;
  CaptionsClientParticipantCaptionsProvider.captionsClient(_:didStopCaptioningWith:)(selfCopy, reasonCopy);
}

- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source
{
  clientCopy = client;
  captionsCopy = captions;
  selfCopy = self;
  CaptionsClientParticipantCaptionsProvider.captionsClient(_:didUpdateCaptions:source:)();
}

- (void)captionsServerDidDie:(id)die
{
  dieCopy = die;
  selfCopy = self;
  CaptionsClientParticipantCaptionsProvider.captionsServerDidDie(_:)();
}

- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish
{
  clientCopy = client;
  selfCopy = self;
  CaptionsClientParticipantCaptionsProvider.captionsClient(_:didDetectGibberish:)(selfCopy, gibberish);
}

@end