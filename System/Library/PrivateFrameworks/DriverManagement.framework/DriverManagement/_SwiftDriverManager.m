@interface _SwiftDriverManager
+ (id)sharedManager;
- (id)driverApprovalStatesForThirdPartyApp:(id)a3;
- (int64_t)driverCount;
- (int64_t)driverCountForAppID:(id)a3;
- (int64_t)thirdPartyDriverCount;
- (void)refresh;
- (void)setDriverState:(id)a3 approved:(BOOL)a4;
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
  v2 = self;
  v3 = DriverManager.driverCount()();

  return v3;
}

- (int64_t)thirdPartyDriverCount
{
  v2 = self;
  v3 = DriverManager.thirdPartyDriverCount()();

  return v3;
}

- (int64_t)driverCountForAppID:(id)a3
{
  v4 = sub_21C58206C();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = DriverManager.driverCount(forAppID:)(v8);

  return v9;
}

- (void)refresh
{
  v2 = self;
  DriverManager.refresh()();
}

- (void)setDriverState:(id)a3 approved:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = self;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  DriverManager.setDriverState(driverApprovalState:state:)(v6, v7);
}

- (id)driverApprovalStatesForThirdPartyApp:(id)a3
{
  v4 = sub_21C58206C();
  v6 = v5;
  v7 = self;
  DriverManager.driverApprovalStatesForThirdPartyApp(_:)(v4, v6);

  type metadata accessor for DriverApprovalState();
  v8 = sub_21C58216C();

  return v8;
}

@end