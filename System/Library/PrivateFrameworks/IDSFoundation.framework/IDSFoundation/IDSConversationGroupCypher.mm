@interface IDSConversationGroupCypher
- (IDSConversationGroupCypher)initWithCoder:(id)a3;
- (IDSConversationGroupCypher)initWithConversationGroup:(id)a3 deviceIdentity:(id)a4 participants:(id)a5;
- (id)_memberList;
- (id)cypherData:(id)a3 withAccountIdentity:(id)a4 identifier:(id *)a5 error:(id *)a6;
- (id)decypherData:(id)a3 withAccountIdentity:(id)a4 signingDevicePublicKey:(id)a5 identifier:(id)a6 error:(id *)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSConversationGroupCypher

- (IDSConversationGroupCypher)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSConversationGroupCypherGroupData"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"IDSConversationGroupCypherGroupParticipants"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSConversationGroupCypherGroupDeviceIdentity"];

  v11 = [IDSMPConversationGroup conversationGroupWithPrivateDataRepresentation:v5];
  v12 = [(IDSConversationGroupCypher *)self initWithConversationGroup:v11 deviceIdentity:v10 participants:v9];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IDSConversationGroupCypher *)self conversationGroup];
  v12 = 0;
  v6 = [v5 privateDataRepresentationWithError:&v12];
  v7 = v12;

  if (v6)
  {
    [v4 encodeObject:v6 forKey:@"IDSConversationGroupCypherGroupData"];
    v8 = [(IDSConversationGroupCypher *)self participants];
    [v4 encodeObject:v8 forKey:@"IDSConversationGroupCypherGroupParticipants"];

    v9 = [(IDSConversationGroupCypher *)self deviceIdentity];
    [v4 encodeObject:v9 forKey:@"IDSConversationGroupCypherGroupDeviceIdentity"];

    v4 = v9;
  }

  else
  {
    v10 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(IDSConversationGroupCypher *)self conversationGroup];
      *buf = 138543619;
      v14 = v7;
      v15 = 2113;
      v16 = v11;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Failed group.encodeWithCoder -- Could not create privateDataRepresentation {error: %{public}@, group: %{private}@}", buf, 0x16u);
    }

    [v4 failWithError:v7];
  }
}

- (IDSConversationGroupCypher)initWithConversationGroup:(id)a3 deviceIdentity:(id)a4 participants:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSConversationGroupCypher;
  v12 = [(IDSConversationGroupCypher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conversationGroup, a3);
    objc_storeStrong(&v13->_deviceIdentity, a4);
    objc_storeStrong(&v13->_participants, a5);
  }

  return v13;
}

- (id)cypherData:(id)a3 withAccountIdentity:(id)a4 identifier:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v21 = 0;
    _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_INFO, "ConversationGroupCypher cypher data", v21, 2u);
  }

  v12 = [v10 accountKey];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [v10 accountKey];
    v15 = [(IDSConversationGroupCypher *)self _memberList];
    v16 = [(IDSConversationGroupCypher *)self conversationGroup];
    v17 = [v14 signingIdentity];
    v18 = [v16 signAndProtectData:v9 senderSigningIdentity:v17 members:v15 error:a6];
  }

  else
  {
    v19 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1C2C0(v10);
    }

    if (a6)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSConversationGroupCypherErroDomain" code:-2000 userInfo:0];
      *a6 = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (id)decypherData:(id)a3 withAccountIdentity:(id)a4 signingDevicePublicKey:(id)a5 identifier:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
    v15 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_INFO, "ConversationGroupCypher decypher data", v27, 2u);
    }

    v16 = [v14 accountIdentity];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v18 = [(IDSConversationGroupCypher *)self _memberList];
      v19 = [(IDSConversationGroupCypher *)self conversationGroup];
      v20 = [v14 accountIdentity];
      v21 = [v20 signingIdentity];
      v22 = [v19 verifyAndExposeData:v11 senderSigningIdentity:v21 members:v18 error:a7];
    }

    else
    {
      v25 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E1C2C0(v12);
      }

      if (a7)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSConversationGroupCypherErroDomain" code:-2000 userInfo:0];
        *a7 = v22 = 0;
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
      sub_1A7E1C2C0(v12);
    }

    if (a7)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSConversationGroupCypherErroDomain" code:-2000 userInfo:0];
      *a7 = v24 = 0;
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
        v6 = [v5 devices];
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v21 + 1) + 8 * j);
              v12 = [v11 devicePublicKey];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v14 = [v11 devicePublicKey];
                v15 = [v14 modernIdentity];

                if (v15)
                {
                  v16 = [v14 modernIdentity];
                  [v3 addObject:v16];
                }
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
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