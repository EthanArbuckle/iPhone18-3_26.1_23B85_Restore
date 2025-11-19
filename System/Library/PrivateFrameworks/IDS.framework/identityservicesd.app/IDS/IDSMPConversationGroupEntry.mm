@interface IDSMPConversationGroupEntry
+ (id)entryFromPublicDataRepresentation:(id)a3 error:(id *)a4;
- (IDSMPConversationGroupEntry)initWithStableGroupID:(id)a3 groupServerEntry:(id)a4;
- (id)description;
- (id)publicDataRepresentationWithError:(id *)a3;
@end

@implementation IDSMPConversationGroupEntry

- (IDSMPConversationGroupEntry)initWithStableGroupID:(id)a3 groupServerEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = IDSMPConversationGroupEntry;
  v8 = [(IDSMPConversationGroupEntry *)&v21 init];
  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"key"];
    publicKeyData = v8->_publicKeyData;
    v8->_publicKeyData = v9;

    v11 = [v7 objectForKeyedSubscript:@"data"];
    data = v8->_data;
    v8->_data = v11;

    v13 = [v7 objectForKeyedSubscript:@"signature"];
    signature = v8->_signature;
    v8->_signature = v13;

    v15 = [v7 objectForKeyedSubscript:@"forwarding-sig"];
    forwardingTicket = v8->_forwardingTicket;
    v8->_forwardingTicket = v15;

    v17 = [v7 objectForKeyedSubscript:@"version"];
    v18 = [[ENGroupID alloc] initWithStableGroupID:v6 generation:{objc_msgSend(v17, "intValue")}];
    groupID = v8->_groupID;
    v8->_groupID = v18;
  }

  return v8;
}

+ (id)entryFromPublicDataRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:a4];
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

- (id)publicDataRepresentationWithError:(id *)a3
{
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [(IDSMPConversationGroupEntry *)self publicKeyData];
  [v5 setObject:v6 forKeyedSubscript:@"key"];

  v7 = [(IDSMPConversationGroupEntry *)self data];
  [v5 setObject:v7 forKeyedSubscript:@"data"];

  v8 = [(IDSMPConversationGroupEntry *)self signature];
  [v5 setObject:v8 forKeyedSubscript:@"signature"];

  v9 = [(IDSMPConversationGroupEntry *)self groupID];
  v10 = [v9 dataRepresentation];
  [v5 setObject:v10 forKeyedSubscript:@"groupID"];

  v11 = [(IDSMPConversationGroupEntry *)self forwardingTicket];
  [v5 setObject:v11 forKeyedSubscript:@"forwarding-sig"];

  v12 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:a3];
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
  v4 = [(IDSMPConversationGroupEntry *)self publicKeyData];
  v5 = [(IDSMPConversationGroupEntry *)self groupID];
  v6 = [(IDSMPConversationGroupEntry *)self data];
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 length]);
  v8 = [(IDSMPConversationGroupEntry *)self signature];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 length]);
  v10 = [NSString stringWithFormat:@"<%@ %p key: %@, groupID: %@, data.length: %@, signature.length: %@>", v3, self, v4, v5, v7, v9];

  return v10;
}

@end