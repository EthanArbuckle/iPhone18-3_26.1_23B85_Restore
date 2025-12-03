@interface CarrySettings.DataModelUpdateResponse
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CarrySettings.DataModelUpdateResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CarrySettings.DataModelUpdateResponse.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2543A3158();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CarrySettings.DataModelUpdateResponse.isEqual(_:)(v8);

  sub_2542E1050(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  CarrySettings.DataModelUpdateResponse.description.getter();

  v3 = sub_2543A2858();

  return v3;
}

@end