@interface IDSCloudKitTransportLogMessage
- (ENGroupID)groupID;
- (IDSDestinationPushToken)destination;
- (NSData)encryptedPayload;
- (NSString)cypherIdentifier;
- (NSString)recipientAlias;
- (NSString)senderAlias;
@end

@implementation IDSCloudKitTransportLogMessage

- (ENGroupID)groupID
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(IDSCloudKitTransportLogMessage *)self payload];
  v4 = [v3 objectForKeyedSubscript:@"gI"];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E699BB88]) initWithDataRepresentation:v4];
    if (v5)
    {
      goto LABEL_7;
    }

    v6 = +[IDSFoundationLog cloudKit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138478083;
      v9 = self;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "Failed to create groupID from transportMessage {groupMessage: %{private}@, groupIDString: %{public}@", &v8, 0x16u);
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (NSString)recipientAlias
{
  v3 = [(IDSCloudKitTransportLogMessage *)self payload];
  v4 = [v3 objectForKeyedSubscript:@"tP"];

  if (!v4)
  {
    v5 = +[IDSFoundationLog cloudKit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1BFD8(self);
    }
  }

  return v4;
}

- (NSString)senderAlias
{
  v3 = [(IDSCloudKitTransportLogMessage *)self payload];
  v4 = [v3 objectForKeyedSubscript:@"sP"];

  if (!v4)
  {
    v5 = +[IDSFoundationLog cloudKit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C05C(self);
    }
  }

  return v4;
}

- (IDSDestinationPushToken)destination
{
  v3 = [(IDSCloudKitTransportLogMessage *)self payload];
  v4 = [v3 objectForKeyedSubscript:@"t"];

  if (v4)
  {
    v5 = [(IDSCloudKitTransportLogMessage *)self payload];
    v6 = [v5 objectForKeyedSubscript:@"sP"];

    if (v6)
    {
      v7 = [IDSDestination destinationWithAlias:v6 pushToken:v4];
      goto LABEL_10;
    }

    v8 = +[IDSFoundationLog cloudKit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C0E0();
    }
  }

  else
  {
    v6 = +[IDSFoundationLog cloudKit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C148();
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (NSData)encryptedPayload
{
  v2 = [(IDSCloudKitTransportLogMessage *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"P"];

  return v3;
}

- (NSString)cypherIdentifier
{
  v2 = [(IDSCloudKitTransportLogMessage *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"E"];

  return v3;
}

@end