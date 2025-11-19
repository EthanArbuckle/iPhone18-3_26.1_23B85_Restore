@interface ContainerLoadMetric
- (NSDictionary)dictionaryRepresentation;
- (NSString)name;
- (_TtC17identityservicesdP33_534A9A00092BF767A56A700BAD85BE0F19ContainerLoadMetric)init;
@end

@implementation ContainerLoadMetric

- (_TtC17identityservicesdP33_534A9A00092BF767A56A700BAD85BE0F19ContainerLoadMetric)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17identityservicesdP33_534A9A00092BF767A56A700BAD85BE0F19ContainerLoadMetric_containerType) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ContainerLoadMetric();
  return [(ContainerLoadMetric *)&v3 init];
}

- (NSString)name
{
  v2 = sub_100936B28();

  return v2;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = self;
  sub_1000134E4();

  sub_100706B30(&qword_100CB4F40);
  v3.super.isa = sub_100936A58().super.isa;

  return v3.super.isa;
}

@end