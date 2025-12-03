@interface LNDurationBridge
- (BOOL)isEqual:(id)equal;
- (LNDurationBridge)initWithData:(id)data;
- (NSData)data;
- (NSNumber)attoseconds;
- (NSNumber)seconds;
- (NSNumber)timeInterval;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNDurationBridge

- (NSData)data
{
  v2 = LNDurationBridge.data.getter();
  v4 = v3;
  v5 = sub_21E342BC0();
  sub_21E1C99C4(v2, v4);

  return v5;
}

- (LNDurationBridge)initWithData:(id)data
{
  dataCopy = data;
  v4 = sub_21E342BF0();
  v6 = v5;

  return LNDurationBridge.init(data:)(v4, v6);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  LNDurationBridge.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21E343CE0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = LNDurationBridge.isEqual(_:)(v8);

  sub_21E1CB318(v8);
  return v6 & 1;
}

- (NSNumber)seconds
{
  selfCopy = self;
  v3 = LNDurationBridge.seconds.getter();

  return v3;
}

- (NSNumber)attoseconds
{
  selfCopy = self;
  v3 = LNDurationBridge.attoseconds.getter();

  return v3;
}

- (NSNumber)timeInterval
{
  selfCopy = self;
  v3 = LNDurationBridge.timeInterval.getter();

  return v3;
}

@end