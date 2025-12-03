@interface ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient
- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish;
- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didUpdateCaptions:(id)captions;
- (void)streamTokenDidChange:(id)change;
@end

@implementation ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient

- (void)streamTokenDidChange:(id)change
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.streamTokenDidChange(_:)();

  (*(v4 + 8))(v6, v3);
}

- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;

  errorCopy = error;
  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didEnableCaptions:error:)(errorCopy, captions, error);
}

- (void)captionsClient:(id)client didUpdateCaptions:(id)captions
{
  clientCopy = client;
  captionsCopy = captions;

  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:)();
}

- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish
{
  clientCopy = client;

  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didDetectGibberish:)(v6, gibberish);
}

@end