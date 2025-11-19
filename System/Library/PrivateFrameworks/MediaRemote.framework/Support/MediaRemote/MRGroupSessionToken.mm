@interface MRGroupSessionToken
- (MRGroupSessionToken)initWithInvitationData:(id)a3 sharedSecret:(id)a4 sessionIdentifier:(id)a5 equivalentMediaIdentifier:(id)a6 version:(int64_t)a7;
@end

@implementation MRGroupSessionToken

- (MRGroupSessionToken)initWithInvitationData:(id)a3 sharedSecret:(id)a4 sessionIdentifier:(id)a5 equivalentMediaIdentifier:(id)a6 version:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v12)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 0;
    v23 = 0;
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_7:
    v24 = 0;
    v26 = 0;
    return sub_1003812E4(v15, v17, v18, v20, v21, v23, v24, v26, a7);
  }

  v18 = 0;
  v20 = 0;
  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_3:
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_4:
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  return sub_1003812E4(v15, v17, v18, v20, v21, v23, v24, v26, a7);
}

@end