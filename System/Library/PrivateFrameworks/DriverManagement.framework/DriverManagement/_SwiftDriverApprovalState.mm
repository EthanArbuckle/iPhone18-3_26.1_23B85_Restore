@interface _SwiftDriverApprovalState
- (BOOL)driverIsApproved;
- (BOOL)updatePending;
- (NSString)displayName;
- (NSString)usageText;
- (_SwiftDriverApprovalState)init;
- (id)bundleIdentifier;
@end

@implementation _SwiftDriverApprovalState

- (NSString)displayName
{
  v2 = (self + OBJC_IVAR____SwiftDriverApprovalState_driver);
  v3 = (v2 + *(type metadata accessor for DriverKitDriver() + 24));
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v6 = *v2;
    v7 = v2[1];
  }

  v8 = sub_21C58205C();

  return v8;
}

- (NSString)usageText
{
  v2 = self + OBJC_IVAR____SwiftDriverApprovalState_driver;
  v3 = &v2[*(type metadata accessor for DriverKitDriver() + 28)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_21C58205C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)updatePending
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_21C581FBC();

  if (v5)
  {
  }

  return v5 != 0;
}

- (BOOL)driverIsApproved
{
  selfCopy = self;
  v3 = DriverApprovalState.driverIsApproved()();

  return v3;
}

- (id)bundleIdentifier
{
  v2 = *(&self->super.isa + OBJC_IVAR____SwiftDriverApprovalState_driver);
  v3 = *&self->_updateStatus[OBJC_IVAR____SwiftDriverApprovalState_driver];

  v4 = sub_21C58205C();

  return v4;
}

- (_SwiftDriverApprovalState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end