@interface IDSFamilyService
- (BOOL)isValidDestination:(id)destination error:(id *)error;
- (BOOL)sendData:(id)data toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendMessage:(id)message toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendProtobuf:(id)protobuf toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendResourceAtURL:(id)l metadata:(id)metadata toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (NSDictionary)dsidToFamilyMember;
- (NSSet)familyMembers;
- (id)familyHandles;
- (void)fetchFamilyMembersWithDevices:(id)devices;
- (void)service:(id)service familyInfoUpdated:(id)updated;
@end

@implementation IDSFamilyService

- (BOOL)isValidDestination:(id)destination error:(id *)error
{
  v39[1] = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  familyHandles = [(IDSFamilyService *)self familyHandles];
  v8 = [familyHandles count];

  if (v8)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = destinationCopy;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v28 = destinationCopy;
      errorCopy = error;
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
          familyHandles2 = [(IDSFamilyService *)self familyHandles];
          _stripFZIDPrefix = [v15 _stripFZIDPrefix];
          v18 = [familyHandles2 containsObject:_stripFZIDPrefix];

          if ((v18 & 1) == 0)
          {
            v20 = +[IDSLogging IDSService];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              _stripFZIDPrefix2 = [v15 _stripFZIDPrefix];
              *buf = 138412290;
              v36 = _stripFZIDPrefix2;
              _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Handle: %@ is not in family.", buf, 0xCu);
            }

            if (errorCopy)
            {
              v33 = *MEMORY[0x1E696A578];
              v34 = @"Could not send to non family member.";
              v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
              *errorCopy = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:50 userInfo:v22];
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
      destinationCopy = v28;
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

    if (!error)
    {
      v19 = 0;
      goto LABEL_23;
    }

    v38 = *MEMORY[0x1E696A578];
    v39[0] = @"Family handles not loaded on service.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:52 userInfo:v9];
    *error = v19 = 0;
  }

LABEL_23:
  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)sendMessage:(id)message toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  messageCopy = message;
  destinationsCopy = destinations;
  optionsCopy = options;
  if ([(IDSFamilyService *)self isValidDestination:destinationsCopy error:error])
  {
    v19.receiver = self;
    v19.super_class = IDSFamilyService;
    v17 = [(IDSService *)&v19 sendMessage:messageCopy toDestinations:destinationsCopy priority:priority options:optionsCopy identifier:identifier error:error];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)sendData:(id)data toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  destinationsCopy = destinations;
  optionsCopy = options;
  if ([(IDSFamilyService *)self isValidDestination:destinationsCopy error:error])
  {
    v19.receiver = self;
    v19.super_class = IDSFamilyService;
    v17 = [(IDSService *)&v19 sendData:dataCopy toDestinations:destinationsCopy priority:priority options:optionsCopy identifier:identifier error:error];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)sendResourceAtURL:(id)l metadata:(id)metadata toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  lCopy = l;
  metadataCopy = metadata;
  destinationsCopy = destinations;
  optionsCopy = options;
  if ([(IDSFamilyService *)self isValidDestination:destinationsCopy error:error])
  {
    v21.receiver = self;
    v21.super_class = IDSFamilyService;
    v19 = [(IDSService *)&v21 sendResourceAtURL:lCopy metadata:metadataCopy toDestinations:destinationsCopy priority:priority options:optionsCopy identifier:identifier error:error];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)sendProtobuf:(id)protobuf toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  protobufCopy = protobuf;
  destinationsCopy = destinations;
  optionsCopy = options;
  if ([(IDSFamilyService *)self isValidDestination:destinationsCopy error:error])
  {
    v19.receiver = self;
    v19.super_class = IDSFamilyService;
    v17 = [(IDSService *)&v19 sendProtobuf:protobufCopy toDestinations:destinationsCopy priority:priority options:optionsCopy identifier:identifier error:error];
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

  accounts = [(IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];

  v7 = +[IDSDaemonController sharedInstance];
  listener = [v7 listener];
  v9 = [listener familyInfoForService:serviceName];

  v10 = [v9 objectForKey:*MEMORY[0x1E69A4C90]];
  familyHandles = self->familyHandles;
  self->familyHandles = v10;

  v12 = self->familyHandles;
  v13 = v12;

  return v12;
}

- (void)fetchFamilyMembersWithDevices:(id)devices
{
  devicesCopy = devices;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  if (!self->listenerID)
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    listenerID = self->listenerID;
    self->listenerID = stringGUID;
  }

  accounts = [(IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];

  v10 = +[IDSDaemonController sharedInstance];
  listener = [v10 listener];
  [listener familyDevicesForService:serviceName listenerID:self->listenerID withCompletion:devicesCopy];
}

- (NSDictionary)dsidToFamilyMember
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  accounts = [(IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];

  v7 = +[IDSDaemonController sharedInstance];
  listener = [v7 listener];
  v24 = serviceName;
  v9 = [listener familyInfoForService:serviceName];

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
        dSID = [v16 DSID];
        [(NSDictionary *)v10 setObject:v16 forKey:dSID];

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

  accounts = [(IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];

  v7 = +[IDSDaemonController sharedInstance];
  listener = [v7 listener];
  v9 = [listener familyInfoForService:serviceName];

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

- (void)service:(id)service familyInfoUpdated:(id)updated
{
  v32 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  updatedCopy = updated;
  accounts = [(IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  v11 = [serviceCopy isEqualToString:serviceName];

  if (v11)
  {
    accountEnabled = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(accountEnabled, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = serviceCopy;
      _os_log_impl(&dword_1959FF000, accountEnabled, OS_LOG_TYPE_DEFAULT, "Service received %@ familyInfoUpdated", buf, 0xCu);
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = [updatedCopy objectForKey:{*MEMORY[0x1E69A4CB0], 0}];
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

    v22 = [updatedCopy objectForKey:*MEMORY[0x1E69A4C90]];
    familyHandles = self->familyHandles;
    self->familyHandles = v22;
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end