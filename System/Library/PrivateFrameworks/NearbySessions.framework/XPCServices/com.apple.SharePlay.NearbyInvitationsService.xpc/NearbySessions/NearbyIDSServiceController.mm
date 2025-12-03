@interface NearbyIDSServiceController
- (_TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController)init;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
@end

@implementation NearbyIDSServiceController

- (_TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  if (data)
  {
    serviceCopy = service;
    accountCopy = account;
    dCopy = d;
    contextCopy = context;
    selfCopy = self;
    v17 = dataCopy;
    dataCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (d)
    {
LABEL_3:
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      goto LABEL_6;
    }
  }

  else
  {
    serviceCopy2 = service;
    accountCopy2 = account;
    dCopy2 = d;
    contextCopy2 = context;
    selfCopy2 = self;
    v19 = 0xF000000000000000;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v22 = 0;
LABEL_6:
  specialized NearbyIDSServiceController.service(_:account:incomingData:fromID:context:)(service, dataCopy, v19, v20, v22, context);

  outlined consume of Data?(dataCopy, v19);
}

@end