@interface NearbyGroupHostIDSService
- (_TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService)init;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation NearbyGroupHostIDSService

- (_TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a5;
  if (a5)
  {
    v12 = a3;
    v13 = a4;
    v14 = a6;
    v15 = a7;
    v16 = self;
    v17 = v9;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (a6)
    {
LABEL_3:
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      goto LABEL_6;
    }
  }

  else
  {
    v23 = a3;
    v24 = a4;
    v25 = a6;
    v26 = a7;
    v27 = self;
    v19 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v22 = 0;
LABEL_6:
  specialized NearbyGroupHostIDSService.service(_:account:incomingData:fromID:context:)(v9, v19, v20, v22, a7);

  outlined consume of Data?(v9, v19);
}

@end