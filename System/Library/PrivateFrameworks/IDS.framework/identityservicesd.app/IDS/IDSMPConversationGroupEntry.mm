@interface IDSMPConversationGroupEntry
+ (id)entryFromPublicDataRepresentation:(id)representation error:(id *)error;
- (IDSMPConversationGroupEntry)initWithStableGroupID:(id)d groupServerEntry:(id)entry;
- (id)description;
- (id)publicDataRepresentationWithError:(id *)error;
@end

@implementation IDSMPConversationGroupEntry

- (IDSMPConversationGroupEntry)initWithStableGroupID:(id)d groupServerEntry:(id)entry
{
  dCopy = d;
  entryCopy = entry;
  v21.receiver = self;
  v21.super_class = IDSMPConversationGroupEntry;
  v8 = [(IDSMPConversationGroupEntry *)&v21 init];
  if (v8)
  {
    v9 = [entryCopy objectForKeyedSubscript:@"key"];
    publicKeyData = v8->_publicKeyData;
    v8->_publicKeyData = v9;

    v11 = [entryCopy objectForKeyedSubscript:@"data"];
    data = v8->_data;
    v8->_data = v11;

    v13 = [entryCopy objectForKeyedSubscript:@"signature"];
    signature = v8->_signature;
    v8->_signature = v13;

    v15 = [entryCopy objectForKeyedSubscript:@"forwarding-sig"];
    forwardingTicket = v8->_forwardingTicket;
    v8->_forwardingTicket = v15;

    v17 = [entryCopy objectForKeyedSubscript:@"version"];
    v18 = [[ENGroupID alloc] initWithStableGroupID:dCopy generation:{objc_msgSend(v17, "intValue")}];
    groupID = v8->_groupID;
    v8->_groupID = v18;
  }

  return v8;
}

+ (id)entryFromPublicDataRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v6 = [NSPropertyListSerialization propertyListWithData:representationCopy options:0 format:0 error:error];
  if (v6)
  {
    v7 = objc_alloc_init(IDSMPConversationGroupEntry);
    v8 = [v6 objectForKeyedSubscript:@"data"];
    [(IDSMPConversationGroupEntry *)v7 setData:v8];

    v9 = [v6 objectForKeyedSubscript:@"key"];
    [(IDSMPConversationGroupEntry *)v7 setPublicKeyData:v9];

    v10 = [v6 objectForKeyedSubscript:@"signature"];
    [(IDSMPConversationGroupEntry *)v7 setSignature:v10];

    v11 = [v6 objectForKeyedSubscript:@"forwarding-sig"];
    [(IDSMPConversationGroupEntry *)v7 setForwardingTicket:v11];

    v12 = [ENGroupID alloc];
    v13 = [v6 objectForKeyedSubscript:@"groupID"];
    v14 = [v12 initWithDataRepresentation:v13];
    [(IDSMPConversationGroupEntry *)v7 setGroupID:v14];
  }

  else
  {
    v15 = +[ENLog groupContext];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_10091DC44();
    }

    v7 = 0;
  }

  return v7;
}

- (id)publicDataRepresentationWithError:(id *)error
{
  v5 = objc_alloc_init(NSMutableDictionary);
  publicKeyData = [(IDSMPConversationGroupEntry *)self publicKeyData];
  [v5 setObject:publicKeyData forKeyedSubscript:@"key"];

  data = [(IDSMPConversationGroupEntry *)self data];
  [v5 setObject:data forKeyedSubscript:@"data"];

  signature = [(IDSMPConversationGroupEntry *)self signature];
  [v5 setObject:signature forKeyedSubscript:@"signature"];

  groupID = [(IDSMPConversationGroupEntry *)self groupID];
  dataRepresentation = [groupID dataRepresentation];
  [v5 setObject:dataRepresentation forKeyedSubscript:@"groupID"];

  forwardingTicket = [(IDSMPConversationGroupEntry *)self forwardingTicket];
  [v5 setObject:forwardingTicket forKeyedSubscript:@"forwarding-sig"];

  v12 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:error];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = +[ENLog groupContext];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_10091DCD0();
    }
  }

  return v13;
}

- (id)description
{
  v3 = objc_opt_class();
  publicKeyData = [(IDSMPConversationGroupEntry *)self publicKeyData];
  groupID = [(IDSMPConversationGroupEntry *)self groupID];
  data = [(IDSMPConversationGroupEntry *)self data];
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [data length]);
  signature = [(IDSMPConversationGroupEntry *)self signature];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [signature length]);
  v10 = [NSString stringWithFormat:@"<%@ %p key: %@, groupID: %@, data.length: %@, signature.length: %@>", v3, self, publicKeyData, groupID, v7, v9];

  return v10;
}

@end