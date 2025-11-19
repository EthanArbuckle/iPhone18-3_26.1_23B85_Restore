@interface CKHistoricEvent
- (NSDictionary)metadata;
- (NSString)identifier;
- (id)copyWithZone:(void *)a3;
- (id)initFrom:(id)a3 withIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKHistoricEvent

- (NSString)identifier
{
  CKHistoricEvent.identifier.getter();
  v2 = sub_1C86F8EEC();

  return v2;
}

- (NSDictionary)metadata
{
  sub_1C86BDBA8();
  v2 = sub_1C86F8E8C();

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C86BDD28(v4);
}

- (id)initFrom:(id)a3 withIdentifier:(id)a4
{
  v4 = sub_1C86F8EFC();
  v6 = v5;
  v7 = sub_1C86F8EFC();
  return CKHistoricEvent.init(from:withIdentifier:)(v4, v6, v7, v8);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_1C86BF914(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_1C86F947C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

@end