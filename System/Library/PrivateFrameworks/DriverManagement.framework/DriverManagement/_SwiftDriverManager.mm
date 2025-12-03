@interface _SwiftDriverManager
+ (id)sharedManager;
- (id)driverApprovalStatesForThirdPartyApp:(id)app;
- (int64_t)driverCount;
- (int64_t)driverCountForAppID:(id)d;
- (int64_t)thirdPartyDriverCount;
- (void)refresh;
- (void)setDriverState:(id)state approved:(BOOL)approved;
@end

@implementation _SwiftDriverManager

+ (id)sharedManager
{
  v2 = sub_21C581F5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58223C();
  sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v7 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v3 + 8))(v6, v2);
  if (qword_28120D428 != -1)
  {
    swift_once();
  }

  v8 = static DriverManager.shared;

  return v8;
}

- (int64_t)driverCount
{
  selfCopy = self;
  v3 = DriverManager.driverCount()();

  return v3;
}

- (int64_t)thirdPartyDriverCount
{
  selfCopy = self;
  v3 = DriverManager.thirdPartyDriverCount()();

  return v3;
}

- (int64_t)driverCountForAppID:(id)d
{
  v4 = sub_21C58206C();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = DriverManager.driverCount(forAppID:)(v8);

  return v9;
}

- (void)refresh
{
  selfCopy = self;
  DriverManager.refresh()();
}

- (void)setDriverState:(id)state approved:(BOOL)approved
{
  approvedCopy = approved;
  stateCopy = state;
  selfCopy = self;
  if (approvedCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  DriverManager.setDriverState(driverApprovalState:state:)(stateCopy, v7);
}

- (id)driverApprovalStatesForThirdPartyApp:(id)app
{
  v4 = sub_21C58206C();
  v6 = v5;
  selfCopy = self;
  DriverManager.driverApprovalStatesForThirdPartyApp(_:)(v4, v6);

  type metadata accessor for DriverApprovalState();
  v8 = sub_21C58216C();

  return v8;
}

@end