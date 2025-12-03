@interface MRGroupSessionToken
- (MRGroupSessionToken)initWithInvitationData:(id)data sharedSecret:(id)secret sessionIdentifier:(id)identifier equivalentMediaIdentifier:(id)mediaIdentifier version:(int64_t)version;
@end

@implementation MRGroupSessionToken

- (MRGroupSessionToken)initWithInvitationData:(id)data sharedSecret:(id)secret sessionIdentifier:(id)identifier equivalentMediaIdentifier:(id)mediaIdentifier version:(int64_t)version
{
  dataCopy = data;
  secretCopy = secret;
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (secretCopy)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 0;
    v23 = 0;
    if (mediaIdentifierCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    v24 = 0;
    v26 = 0;
    return sub_1003812E4(v15, v17, v18, v20, v21, v23, v24, v26, version);
  }

  v18 = 0;
  v20 = 0;
  if (!identifierCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (!mediaIdentifierCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  return sub_1003812E4(v15, v17, v18, v20, v21, v23, v24, v26, version);
}

@end