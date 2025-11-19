@interface CarrySettings.InstallProfileRequest
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CarrySettings.InstallProfileRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CarrySettings.InstallProfileRequest.encode(with:)(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2543A3158();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CarrySettings.InstallProfileRequest.isEqual(_:)(v8);

  sub_2542E1050(v8);
  return v6;
}

@end