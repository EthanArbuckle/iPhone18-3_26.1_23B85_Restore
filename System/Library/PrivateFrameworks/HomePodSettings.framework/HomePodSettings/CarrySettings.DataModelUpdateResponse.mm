@interface CarrySettings.DataModelUpdateResponse
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CarrySettings.DataModelUpdateResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CarrySettings.DataModelUpdateResponse.encode(with:)(v4);
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

  v6 = CarrySettings.DataModelUpdateResponse.isEqual(_:)(v8);

  sub_2542E1050(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  CarrySettings.DataModelUpdateResponse.description.getter();

  v3 = sub_2543A2858();

  return v3;
}

@end