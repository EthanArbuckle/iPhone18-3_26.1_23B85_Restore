@interface IDSConversationGroupCypher
- (IDSConversationGroupCypher)initWithCoder:(id)coder;
- (IDSConversationGroupCypher)initWithConversationGroup:(id)group deviceIdentity:(id)identity participants:(id)participants;
- (id)_memberList;
- (id)cypherData:(id)data withAccountIdentity:(id)identity identifier:(id *)identifier error:(id *)error;
- (id)decypherData:(id)data withAccountIdentity:(id)identity signingDevicePublicKey:(id)key identifier:(id)identifier error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSConversationGroupCypher

- (IDSConversationGroupCypher)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSConversationGroupCypherGroupData"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"IDSConversationGroupCypherGroupParticipants"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSConversationGroupCypherGroupDeviceIdentity"];

  v11 = [IDSMPConversationGroup conversationGroupWithPrivateDataRepresentation:v5];
  v12 = [(IDSConversationGroupCypher *)self initWithConversationGroup:v11 deviceIdentity:v10 participants:v9];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  conversationGroup = [(IDSConversationGroupCypher *)self conversationGroup];
  v12 = 0;
  v6 = [conversationGroup privateDataRepresentationWithError:&v12];
  v7 = v12;

  if (v6)
  {
    [coderCopy encodeObject:v6 forKey:@"IDSConversationGroupCypherGroupData"];
    participants = [(IDSConversationGroupCypher *)self participants];
    [coderCopy encodeObject:participants forKey:@"IDSConversationGroupCypherGroupParticipants"];

    deviceIdentity = [(IDSConversationGroupCypher *)self deviceIdentity];
    [coderCopy encodeObject:deviceIdentity forKey:@"IDSConversationGroupCypherGroupDeviceIdentity"];

    coderCopy = deviceIdentity;
  }

  else
  {
    v10 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      conversationGroup2 = [(IDSConversationGroupCypher *)self conversationGroup];
      *buf = 138543619;
      v14 = v7;
      v15 = 2113;
      v16 = conversationGroup2;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Failed group.encodeWithCoder -- Could not create privateDataRepresentation {error: %{public}@, group: %{private}@}", buf, 0x16u);
    }

    [coderCopy failWithError:v7];
  }
}

- (IDSConversationGroupCypher)initWithConversationGroup:(id)group deviceIdentity:(id)identity participants:(id)participants
{
  groupCopy = group;
  identityCopy = identity;
  participantsCopy = participants;
  v15.receiver = self;
  v15.super_class = IDSConversationGroupCypher;
  v12 = [(IDSConversationGroupCypher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conversationGroup, group);
    objc_storeStrong(&v13->_deviceIdentity, identity);
    objc_storeStrong(&v13->_participants, participants);
  }

  return v13;
}

- (id)cypherData:(id)data withAccountIdentity:(id)identity identifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  identityCopy = identity;
  v11 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v21 = 0;
    _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_INFO, "ConversationGroupCypher cypher data", v21, 2u);
  }

  accountKey = [identityCopy accountKey];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    accountKey2 = [identityCopy accountKey];
    _memberList = [(IDSConversationGroupCypher *)self _memberList];
    conversationGroup = [(IDSConversationGroupCypher *)self conversationGroup];
    signingIdentity = [accountKey2 signingIdentity];
    v18 = [conversationGroup signAndProtectData:dataCopy senderSigningIdentity:signingIdentity members:_memberList error:error];
  }

  else
  {
    v19 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1C2C0(identityCopy);
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSConversationGroupCypherErroDomain" code:-2000 userInfo:0];
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (id)decypherData:(id)data withAccountIdentity:(id)identity signingDevicePublicKey:(id)key identifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  identityCopy = identity;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = keyCopy;
    v15 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_INFO, "ConversationGroupCypher decypher data", v27, 2u);
    }

    accountIdentity = [v14 accountIdentity];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      _memberList = [(IDSConversationGroupCypher *)self _memberList];
      conversationGroup = [(IDSConversationGroupCypher *)self conversationGroup];
      accountIdentity2 = [v14 accountIdentity];
      signingIdentity = [accountIdentity2 signingIdentity];
      v22 = [conversationGroup verifyAndExposeData:dataCopy senderSigningIdentity:signingIdentity members:_memberList error:error];
    }

    else
    {
      v25 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E1C2C0(identityCopy);
      }

      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSConversationGroupCypherErroDomain" code:-2000 userInfo:0];
        *error = v22 = 0;
      }

      else
      {
        v22 = 0;
      }
    }

    v24 = v22;
  }

  else
  {
    v23 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1C2C0(identityCopy);
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSConversationGroupCypherErroDomain" code:-2000 userInfo:0];
      *error = v24 = 0;
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (id)_memberList
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(IDSConversationGroupCypher *)self participants];
  v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        devices = [v5 devices];
        v7 = [devices countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v22;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(devices);
              }

              v11 = *(*(&v21 + 1) + 8 * j);
              devicePublicKey = [v11 devicePublicKey];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                devicePublicKey2 = [v11 devicePublicKey];
                modernIdentity = [devicePublicKey2 modernIdentity];

                if (modernIdentity)
                {
                  modernIdentity2 = [devicePublicKey2 modernIdentity];
                  [v3 addObject:modernIdentity2];
                }
              }
            }

            v8 = [devices countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v8);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  return v3;
}

@end