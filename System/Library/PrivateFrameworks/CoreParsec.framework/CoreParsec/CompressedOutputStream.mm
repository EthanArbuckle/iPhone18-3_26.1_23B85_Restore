@interface CompressedOutputStream
- (NSError)streamError;
- (NSOutputStream)outputStream;
- (NSString)dataDigestForStream;
- (_TtC7parsecd22CompressedOutputStream)initWithURL:(id)a3 append:(BOOL)a4;
- (int64_t)write:(const char *)a3 maxLength:(int64_t)a4;
- (void)close;
- (void)open;
@end

@implementation CompressedOutputStream

- (NSOutputStream)outputStream
{
  v2 = sub_100058090();

  return v2;
}

- (NSString)dataDigestForStream
{
  v2 = self;
  sub_100058420();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (int64_t)write:(const char *)a3 maxLength:(int64_t)a4
{
  v6 = self;
  sub_1000585D0(a3, a4);
  v8 = v7;

  return v8;
}

- (NSError)streamError
{
  v2 = self;
  v3 = sub_1000588D8();

  if (v3)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)open
{
  v2 = self;
  sub_100058950();
}

- (void)close
{
  v2 = self;
  sub_1000589B0();
}

- (_TtC7parsecd22CompressedOutputStream)initWithURL:(id)a3 append:(BOOL)a4
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100058CF4();
}

@end