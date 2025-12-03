@interface CallScreeningCaptionsProvider
- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish;
- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didUpdateCaptions:(id)captions;
@end

@implementation CallScreeningCaptionsProvider

- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  CallScreeningCaptionsProvider.captionsClient(_:didEnableCaptions:error:)();
}

- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  CallScreeningCaptionsProvider.captionsClient(_:didDisableCaptions:error:)();
}

- (void)captionsClient:(id)client didUpdateCaptions:(id)captions
{
  clientCopy = client;
  captionsCopy = captions;
  selfCopy = self;
  CallScreeningCaptionsProvider.captionsClient(_:didUpdateCaptions:)();
}

- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish
{
  clientCopy = client;
  selfCopy = self;
  CallScreeningCaptionsProvider.captionsClient(_:didDetectGibberish:)(selfCopy, gibberish);
}

@end