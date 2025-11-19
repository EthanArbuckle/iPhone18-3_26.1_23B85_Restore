@interface ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient
- (void)captionsClient:(id)a3 didDetectGibberish:(BOOL)a4;
- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4;
- (void)streamTokenDidChange:(id)a3;
@end

@implementation ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient

- (void)streamTokenDidChange:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.streamTokenDidChange(_:)();

  (*(v4 + 8))(v6, v3);
}

- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5
{
  v7 = a3;

  v8 = a5;
  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didEnableCaptions:error:)(v8, a4, a5);
}

- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4
{
  v5 = a3;
  v6 = a4;

  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didUpdateCaptions:)();
}

- (void)captionsClient:(id)a3 didDetectGibberish:(BOOL)a4
{
  v5 = a3;

  ReceiptionistCaptionsProvider.ReceiptionistCaptionsClient.captionsClient(_:didDetectGibberish:)(v6, a4);
}

@end