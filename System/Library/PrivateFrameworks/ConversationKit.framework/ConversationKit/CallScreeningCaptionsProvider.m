@interface CallScreeningCaptionsProvider
- (void)captionsClient:(id)a3 didDetectGibberish:(BOOL)a4;
- (void)captionsClient:(id)a3 didDisableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4;
@end

@implementation CallScreeningCaptionsProvider

- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  CallScreeningCaptionsProvider.captionsClient(_:didEnableCaptions:error:)();
}

- (void)captionsClient:(id)a3 didDisableCaptions:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  CallScreeningCaptionsProvider.captionsClient(_:didDisableCaptions:error:)();
}

- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CallScreeningCaptionsProvider.captionsClient(_:didUpdateCaptions:)();
}

- (void)captionsClient:(id)a3 didDetectGibberish:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CallScreeningCaptionsProvider.captionsClient(_:didDetectGibberish:)(v7, a4);
}

@end