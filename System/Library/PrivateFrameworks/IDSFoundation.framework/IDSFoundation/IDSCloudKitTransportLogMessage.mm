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
  payload = [(IDSCloudKitTransportLogMessage *)self payload];
  v4 = [payload objectForKeyedSubscript:@"gI"];

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
      selfCopy = self;
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
  payload = [(IDSCloudKitTransportLogMessage *)self payload];
  v4 = [payload objectForKeyedSubscript:@"tP"];

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
  payload = [(IDSCloudKitTransportLogMessage *)self payload];
  v4 = [payload objectForKeyedSubscript:@"sP"];

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
  payload = [(IDSCloudKitTransportLogMessage *)self payload];
  v4 = [payload objectForKeyedSubscript:@"t"];

  if (v4)
  {
    payload2 = [(IDSCloudKitTransportLogMessage *)self payload];
    v6 = [payload2 objectForKeyedSubscript:@"sP"];

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
  payload = [(IDSCloudKitTransportLogMessage *)self payload];
  v3 = [payload objectForKeyedSubscript:@"P"];

  return v3;
}

- (NSString)cypherIdentifier
{
  payload = [(IDSCloudKitTransportLogMessage *)self payload];
  v3 = [payload objectForKeyedSubscript:@"E"];

  return v3;
}

@end