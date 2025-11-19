@interface IDSFamilyService
- (BOOL)isValidDestination:(id)a3 error:(id *)a4;
- (BOOL)sendData:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendMessage:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendProtobuf:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendResourceAtURL:(id)a3 metadata:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
- (NSDictionary)dsidToFamilyMember;
- (NSSet)familyMembers;
- (id)familyHandles;
- (void)fetchFamilyMembersWithDevices:(id)a3;
- (void)service:(id)a3 familyInfoUpdated:(id)a4;
@end

@implementation IDSFamilyService

- (BOOL)isValidDestination:(id)a3 error:(id *)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(IDSFamilyService *)self familyHandles];
  v8 = [v7 count];

  if (v8)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v28 = v6;
      v12 = a4;
      v13 = *v30;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [(IDSFamilyService *)self familyHandles];
          v17 = [v15 _stripFZIDPrefix];
          v18 = [v16 containsObject:v17];

          if ((v18 & 1) == 0)
          {
            v20 = +[IDSLogging IDSService];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v15 _stripFZIDPrefix];
              *buf = 138412290;
              v36 = v21;
              _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Handle: %@ is not in family.", buf, 0xCu);
            }

            if (v12)
            {
              v33 = *MEMORY[0x1E696A578];
              v34 = @"Could not send to non family member.";
              v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
              *v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:50 userInfo:v22];
            }

            v19 = 0;
            goto LABEL_16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
        v19 = 1;
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_16:
      v6 = v28;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v23 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "There are currently no family handles on service. Failing message, will try to fetch members.", buf, 2u);
    }

    v24 = +[IDSDaemonController sharedInstance];
    [v24 blockUntilConnected];

    v25 = +[IDSDaemonController sharedInstance];
    [v25 tryForceFamilyFetch];

    if (!a4)
    {
      v19 = 0;
      goto LABEL_23;
    }

    v38 = *MEMORY[0x1E696A578];
    v39[0] = @"Family handles not loaded on service.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:52 userInfo:v9];
    *a4 = v19 = 0;
  }

LABEL_23:
  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)sendMessage:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  if ([(IDSFamilyService *)self isValidDestination:v15 error:a8])
  {
    v19.receiver = self;
    v19.super_class = IDSFamilyService;
    v17 = [(IDSService *)&v19 sendMessage:v14 toDestinations:v15 priority:a5 options:v16 identifier:a7 error:a8];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)sendData:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  if ([(IDSFamilyService *)self isValidDestination:v15 error:a8])
  {
    v19.receiver = self;
    v19.super_class = IDSFamilyService;
    v17 = [(IDSService *)&v19 sendData:v14 toDestinations:v15 priority:a5 options:v16 identifier:a7 error:a8];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)sendResourceAtURL:(id)a3 metadata:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  if ([(IDSFamilyService *)self isValidDestination:v17 error:a9])
  {
    v21.receiver = self;
    v21.super_class = IDSFamilyService;
    v19 = [(IDSService *)&v21 sendResourceAtURL:v15 metadata:v16 toDestinations:v17 priority:a6 options:v18 identifier:a8 error:a9];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)sendProtobuf:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  if ([(IDSFamilyService *)self isValidDestination:v15 error:a8])
  {
    v19.receiver = self;
    v19.super_class = IDSFamilyService;
    v17 = [(IDSService *)&v19 sendProtobuf:v14 toDestinations:v15 priority:a5 options:v16 identifier:a7 error:a8];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)familyHandles
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v4 = [(IDSService *)self accounts];
  v5 = [v4 anyObject];
  v6 = [v5 serviceName];

  v7 = +[IDSDaemonController sharedInstance];
  v8 = [v7 listener];
  v9 = [v8 familyInfoForService:v6];

  v10 = [v9 objectForKey:*MEMORY[0x1E69A4C90]];
  familyHandles = self->familyHandles;
  self->familyHandles = v10;

  v12 = self->familyHandles;
  v13 = v12;

  return v12;
}

- (void)fetchFamilyMembersWithDevices:(id)a3
{
  v4 = a3;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  if (!self->listenerID)
  {
    v6 = [MEMORY[0x1E696AEC0] stringGUID];
    listenerID = self->listenerID;
    self->listenerID = v6;
  }

  v8 = [(IDSService *)self accounts];
  v9 = [v8 anyObject];
  v12 = [v9 serviceName];

  v10 = +[IDSDaemonController sharedInstance];
  v11 = [v10 listener];
  [v11 familyDevicesForService:v12 listenerID:self->listenerID withCompletion:v4];
}

- (NSDictionary)dsidToFamilyMember
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v4 = [(IDSService *)self accounts];
  v5 = [v4 anyObject];
  v6 = [v5 serviceName];

  v7 = +[IDSDaemonController sharedInstance];
  v8 = [v7 listener];
  v24 = v6;
  v9 = [v8 familyInfoForService:v6];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [v9 objectForKey:*MEMORY[0x1E69A4CB0]];
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [objc_alloc(MEMORY[0x1E69A5268]) initWithDictionary:*(*(&v25 + 1) + 8 * v15)];
        v17 = [v16 DSID];
        [(NSDictionary *)v10 setObject:v16 forKey:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  dsidToFamilyMember = self->_dsidToFamilyMember;
  self->_dsidToFamilyMember = v10;
  v19 = v10;

  v20 = self->_dsidToFamilyMember;
  v21 = v20;

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (NSSet)familyMembers
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v4 = [(IDSService *)self accounts];
  v5 = [v4 anyObject];
  v6 = [v5 serviceName];

  v7 = +[IDSDaemonController sharedInstance];
  v8 = [v7 listener];
  v9 = [v8 familyInfoForService:v6];

  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [v9 objectForKey:{*MEMORY[0x1E69A4CB0], 0}];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [objc_alloc(MEMORY[0x1E69A5268]) initWithDictionary:*(*(&v23 + 1) + 8 * v15)];
        [(NSSet *)v10 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  familyMembers = self->_familyMembers;
  self->_familyMembers = v10;
  v18 = v10;

  v19 = self->_familyMembers;
  v20 = v19;

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)service:(id)a3 familyInfoUpdated:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(IDSService *)self accounts];
  v9 = [v8 anyObject];
  v10 = [v9 serviceName];
  v11 = [v6 isEqualToString:v10];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v6;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Service received %@ familyInfoUpdated", buf, 0xCu);
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = [v7 objectForKey:{*MEMORY[0x1E69A4CB0], 0}];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [objc_alloc(MEMORY[0x1E69A5268]) initWithDictionary:*(*(&v25 + 1) + 8 * v18)];
          [(NSSet *)v13 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    familyMembers = self->_familyMembers;
    self->_familyMembers = v13;
    v21 = v13;

    v22 = [v7 objectForKey:*MEMORY[0x1E69A4C90]];
    familyHandles = self->familyHandles;
    self->familyHandles = v22;
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end