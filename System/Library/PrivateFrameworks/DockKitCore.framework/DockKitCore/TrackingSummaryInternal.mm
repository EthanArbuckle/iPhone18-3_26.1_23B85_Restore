@interface TrackingSummaryInternal
+ (id)decodeWithData:(id)data;
- (CGSize)referenceDimension;
- (NSString)description;
- (id)encode;
@end

@implementation TrackingSummaryInternal

- (CGSize)referenceDimension
{
  v2 = *(self + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_referenceDimension);
  v3 = *(self + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_referenceDimension + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)decodeWithData:(id)data
{
  dataCopy = data;
  v4 = sub_224627038();
  v6 = v5;

  swift_getObjCClassMetadata();
  v7 = static TrackingSummaryInternal.decode(data:)();
  sub_22452F684(v4, v6);

  return v7;
}

- (id)encode
{

  v2 = sub_224566878();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = sub_224627028();
    sub_2245687AC(v2, v4);
    v5 = v6;
  }

  return v5;
}

- (NSString)description
{

  sub_224566AE0();

  v2 = sub_224627CB8();

  return v2;
}

@end