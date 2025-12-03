@interface MFMessage
- (id)mf_conversationReference;
- (id)mf_documentReference;
@end

@implementation MFMessage

- (id)mf_conversationReference
{
  conversationID = [(MFMessage *)self conversationID];

  return sub_1000B0948(conversationID);
}

- (id)mf_documentReference
{
  documentID = [(MFMessage *)self documentID];
  uUIDString = [documentID UUIDString];

  if (uUIDString)
  {
    v4 = sub_1000B09E8(uUIDString);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end