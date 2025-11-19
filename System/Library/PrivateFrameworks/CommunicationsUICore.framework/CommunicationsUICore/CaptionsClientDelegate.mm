@interface CaptionsClientDelegate
- (_TtC20CommunicationsUICore22CaptionsClientDelegate)init;
- (void)captionsClient:(id)a3 didDisableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didStartCaptioningWithReason:(unsigned __int8)a4;
- (void)captionsClient:(id)a3 didStopCaptioningWithReason:(unsigned __int8)a4;
- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4 source:(int)a5;
- (void)captionsServerDidDie:(id)a3;
@end

@implementation CaptionsClientDelegate

- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_1C2F32630(v8, a4, a5, "Captions %s enabled: %{BOOL}d; error: %@");
}

- (void)captionsClient:(id)a3 didDisableCaptions:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_1C2F32630(v8, a4, a5, "Captions %s disabled: %{BOOL}d; error: %@");
}

- (void)captionsClient:(id)a3 didStartCaptioningWithReason:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  sub_1C2F329AC(v6, a4, MEMORY[0x1E69E9440], "Captions %s started for reason: %s");
}

- (void)captionsClient:(id)a3 didStopCaptioningWithReason:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  sub_1C2F329AC(v6, a4, MEMORY[0x1E69E9430], "Captions %s stopped for reason: %s");
}

- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4 source:(int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1C2F33AC8(v7, v8);
}

- (void)captionsServerDidDie:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C2F32C98(v4);
}

- (_TtC20CommunicationsUICore22CaptionsClientDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end