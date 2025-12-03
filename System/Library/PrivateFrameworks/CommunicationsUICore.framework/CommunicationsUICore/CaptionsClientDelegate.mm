@interface CaptionsClientDelegate
- (_TtC20CommunicationsUICore22CaptionsClientDelegate)init;
- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didStartCaptioningWithReason:(unsigned __int8)reason;
- (void)captionsClient:(id)client didStopCaptioningWithReason:(unsigned __int8)reason;
- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source;
- (void)captionsServerDidDie:(id)die;
@end

@implementation CaptionsClientDelegate

- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_1C2F32630(clientCopy, captions, error, "Captions %s enabled: %{BOOL}d; error: %@");
}

- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_1C2F32630(clientCopy, captions, error, "Captions %s disabled: %{BOOL}d; error: %@");
}

- (void)captionsClient:(id)client didStartCaptioningWithReason:(unsigned __int8)reason
{
  clientCopy = client;
  selfCopy = self;
  sub_1C2F329AC(clientCopy, reason, MEMORY[0x1E69E9440], "Captions %s started for reason: %s");
}

- (void)captionsClient:(id)client didStopCaptioningWithReason:(unsigned __int8)reason
{
  clientCopy = client;
  selfCopy = self;
  sub_1C2F329AC(clientCopy, reason, MEMORY[0x1E69E9430], "Captions %s stopped for reason: %s");
}

- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source
{
  clientCopy = client;
  captionsCopy = captions;
  selfCopy = self;
  sub_1C2F33AC8(clientCopy, captionsCopy);
}

- (void)captionsServerDidDie:(id)die
{
  dieCopy = die;
  selfCopy = self;
  sub_1C2F32C98(dieCopy);
}

- (_TtC20CommunicationsUICore22CaptionsClientDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end