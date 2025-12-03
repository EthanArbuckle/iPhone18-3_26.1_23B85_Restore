@interface PKIdentityAddPassRequirementsChecker
- (BOOL)hasConflictingIdentityPassWithIdentityPasses:(id)passes;
- (_TtC11PassKitCore36PKIdentityAddPassRequirementsChecker)init;
@end

@implementation PKIdentityAddPassRequirementsChecker

- (BOOL)hasConflictingIdentityPassWithIdentityPasses:(id)passes
{
  sub_1AD3D3200(0, &unk_1EB599EA0);
  v4 = sub_1ADB06610();
  v5 = (self + OBJC_IVAR____TtC11PassKitCore36PKIdentityAddPassRequirementsChecker_documentType);
  if ((self->documentType[OBJC_IVAR____TtC11PassKitCore36PKIdentityAddPassRequirementsChecker_documentType] & 1) != 0 || (v6 = *v5, *v5 == 2))
  {

    return 0;
  }

  else
  {
    v8 = v4;
    selfCopy = self;
    v10 = sub_1AD45A490(v8, v6);

    return v10 > 0;
  }
}

- (_TtC11PassKitCore36PKIdentityAddPassRequirementsChecker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end