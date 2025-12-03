@interface IDSManager
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation IDSManager

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  dCopy = d;
  if (message)
  {
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (dCopy)
    {
LABEL_3:
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      dCopy = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_10002E360(v12, v13, dCopy);
}

@end