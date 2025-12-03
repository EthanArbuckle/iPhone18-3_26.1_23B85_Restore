@interface CompressedOutputStream
- (NSError)streamError;
- (NSOutputStream)outputStream;
- (NSString)dataDigestForStream;
- (_TtC7parsecd22CompressedOutputStream)initWithURL:(id)l append:(BOOL)append;
- (int64_t)write:(const char *)write maxLength:(int64_t)length;
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
  selfCopy = self;
  sub_100058420();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (int64_t)write:(const char *)write maxLength:(int64_t)length
{
  selfCopy = self;
  sub_1000585D0(write, length);
  v8 = v7;

  return v8;
}

- (NSError)streamError
{
  selfCopy = self;
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
  selfCopy = self;
  sub_100058950();
}

- (void)close
{
  selfCopy = self;
  sub_1000589B0();
}

- (_TtC7parsecd22CompressedOutputStream)initWithURL:(id)l append:(BOOL)append
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100058CF4();
}

@end