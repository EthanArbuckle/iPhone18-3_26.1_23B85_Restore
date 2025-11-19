@interface AvatarViewUserData
- (_TtC20CommunicationDetails18AvatarViewUserData)init;
- (id)copyWithZone:(void *)a3;
@end

@implementation AvatarViewUserData

- (_TtC20CommunicationDetails18AvatarViewUserData)init
{
  *(&self->super.isa + OBJC_IVAR____TtC20CommunicationDetails18AvatarViewUserData_contact) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AvatarViewUserData();
  return [(AvatarViewUserData *)&v3 init];
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  AvatarViewUserData.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

@end