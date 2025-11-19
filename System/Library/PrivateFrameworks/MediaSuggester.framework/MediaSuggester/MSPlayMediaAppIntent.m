@interface MSPlayMediaAppIntent
+ (void)artworkFor:(id)a3 withCompletion:(id)a4;
- (NSString)description;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSPlayMediaAppIntent

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_22CA1D230(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22CA1D3B8(v4);
}

- (NSString)description
{
  v2 = self;
  sub_22CA1DBE4();

  v3 = sub_22CA20E10();

  return v3;
}

+ (void)artworkFor:(id)a3 withCompletion:(id)a4
{
  v4 = _Block_copy(a4);
  swift_unknownObjectRetain();
  sub_22CA21130();
  swift_unknownObjectRelease();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_22CA1FC38(v6, sub_22C9DE140, v5);

  sub_22C9D04CC(v6);
}

@end