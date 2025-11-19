@interface FamilyMemberAccountDetailsViewModel
- (_TtC14FamilyCircleUI35FamilyMemberAccountDetailsViewModel)init;
@end

@implementation FamilyMemberAccountDetailsViewModel

- (_TtC14FamilyCircleUI35FamilyMemberAccountDetailsViewModel)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI35FamilyMemberAccountDetailsViewModel_hearbeatTokenKey);
  *v3 = 0xD000000000000014;
  v3[1] = 0x800000021BE57DD0;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI35FamilyMemberAccountDetailsViewModel_familyDependentPasswordResetApi;
  type metadata accessor for FamilyDependentPasswordResetApi();
  v5 = swift_allocObject();
  *(v5 + 2) = 0;
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FamilyMemberAccountDetailsViewModel();
  return [(FamilyMemberAccountDetailsViewModel *)&v7 init];
}

@end