@interface IMServiceReachabilityResult
+ (id)finalResultForService:(id)service handleIDs:(id)ds allAreReachable:(BOOL)reachable allSupportEncryption:(BOOL)encryption handleIsReachable:(id)isReachable handleSupportsEncryption:(id)supportsEncryption checkedServer:(BOOL)server error:(int64_t)self0;
- (IMServiceReachabilityResult)initWithCoder:(id)coder;
- (IMServiceReachabilityResult)initWithService:(id)service error:(int64_t)error handleResults:(id)results isFinal:(BOOL)final allAreReachable:(BOOL)reachable allSupportEncryption:(BOOL)encryption didCheckServer:(BOOL)server;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateBrandInfo:(id)info brandLogo:(id)logo forHandle:(id)handle;
- (void)updatePersistentMenu:(id)menu forHandle:(id)handle;
@end

@implementation IMServiceReachabilityResult

- (IMServiceReachabilityResult)initWithService:(id)service error:(int64_t)error handleResults:(id)results isFinal:(BOOL)final allAreReachable:(BOOL)reachable allSupportEncryption:(BOOL)encryption didCheckServer:(BOOL)server
{
  serviceCopy = service;
  resultsCopy = results;
  v21.receiver = self;
  v21.super_class = IMServiceReachabilityResult;
  v18 = [(IMServiceReachabilityResult *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_service, service);
    v19->_error = error;
    objc_storeStrong(&v19->_handleResults, results);
    v19->_final = final;
    v19->_allAreReachable = reachable;
    v19->_allSupportEncryption = encryption;
    v19->_didCheckServer = server;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_service forKey:@"s"];
  [coderCopy encodeInteger:self->_error forKey:@"e"];
  [coderCopy encodeObject:self->_handleResults forKey:@"r"];
  [coderCopy encodeBool:self->_final forKey:@"f"];
  [coderCopy encodeBool:self->_allAreReachable forKey:@"ar"];
  [coderCopy encodeBool:self->_allSupportEncryption forKey:@"en"];
  [coderCopy encodeBool:self->_didCheckServer forKey:@"cs"];
  [coderCopy encodeBool:self->_reachabilityOverriddenToSuccessByPolicy forKey:@"os"];
  selfKTData = self->_selfKTData;
  if (selfKTData)
  {
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:selfKTData requiringSecureCoding:1 error:0];
    [coderCopy encodeObject:v5 forKey:@"skd"];
  }

  ktData = self->_ktData;
  if (ktData)
  {
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:ktData requiringSecureCoding:1 error:0];
    [coderCopy encodeObject:v7 forKey:@"kd"];
  }
}

- (IMServiceReachabilityResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"s"];
  v6 = [coderCopy decodeIntegerForKey:@"e"];
  v7 = objc_opt_class();
  v8 = [coderCopy decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"r"];
  v9 = [coderCopy decodeBoolForKey:@"f"];
  v10 = [coderCopy decodeBoolForKey:@"ar"];
  v11 = [coderCopy decodeBoolForKey:@"en"];
  LOBYTE(v30) = [coderCopy decodeBoolForKey:@"cs"];
  v12 = [(IMServiceReachabilityResult *)self initWithService:v5 error:v6 handleResults:v8 isFinal:v9 allAreReachable:v10 allSupportEncryption:v11 didCheckServer:v30];

  if (v12)
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"skd"];
    if (v13)
    {
      v14 = MEMORY[0x1E696ACD0];
      v15 = MEMORY[0x1E695DFD8];
      v16 = objc_opt_class();
      v31 = objc_opt_class();
      v17 = [v15 setWithObjects:{v16, v31, objc_opt_class(), 0}];
      v18 = [v14 unarchivedObjectOfClasses:v17 fromData:v13 error:0];
      selfKTData = v12->_selfKTData;
      v12->_selfKTData = v18;
    }

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kd"];
    if (v20)
    {
      v21 = MEMORY[0x1E696ACD0];
      v22 = MEMORY[0x1E695DFD8];
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = [v22 setWithObjects:{v23, v24, v25, objc_opt_class(), 0}];
      v27 = [v21 unarchivedObjectOfClasses:v26 fromData:v20 error:0];
      ktData = v12->_ktData;
      v12->_ktData = v27;
    }

    v12->_reachabilityOverriddenToSuccessByPolicy = [coderCopy decodeBoolForKey:@"os"];
  }

  return v12;
}

+ (id)finalResultForService:(id)service handleIDs:(id)ds allAreReachable:(BOOL)reachable allSupportEncryption:(BOOL)encryption handleIsReachable:(id)isReachable handleSupportsEncryption:(id)supportsEncryption checkedServer:(BOOL)server error:(int64_t)self0
{
  reachableCopy = reachable;
  serviceCopy = service;
  dsCopy = ds;
  isReachableCopy = isReachable;
  supportsEncryptionCopy = supportsEncryption;
  v19 = objc_alloc_init(IMServiceReachabilityResult);
  [(IMServiceReachabilityResult *)v19 setService:serviceCopy];
  [(IMServiceReachabilityResult *)v19 setError:error];
  [(IMServiceReachabilityResult *)v19 setDidCheckServer:server];
  [(IMServiceReachabilityResult *)v19 setFinal:1];
  v20 = reachableCopy && [dsCopy count] != 0;
  [(IMServiceReachabilityResult *)v19 setAllAreReachable:v20];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1A86870E4;
  v29[3] = &unk_1E7828950;
  v32 = isReachableCopy;
  v34 = reachableCopy;
  v21 = v19;
  v33 = supportsEncryptionCopy;
  encryptionCopy = encryption;
  v30 = v21;
  v31 = serviceCopy;
  v22 = serviceCopy;
  v23 = supportsEncryptionCopy;
  v24 = isReachableCopy;
  v25 = [dsCopy __imMapToDictionary:v29];
  [(IMServiceReachabilityResult *)v21 setHandleResults:v25];

  v26 = v31;
  v27 = v21;

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IMServiceReachabilityResult alloc];
  LOBYTE(v7) = self->_didCheckServer;
  v5 = [(IMServiceReachabilityResult *)v4 initWithService:self->_service error:self->_error handleResults:self->_handleResults isFinal:self->_final allAreReachable:self->_allAreReachable allSupportEncryption:self->_allSupportEncryption didCheckServer:v7];
  [(IMServiceReachabilityResult *)v5 setKtData:self->_ktData];
  [(IMServiceReachabilityResult *)v5 setSelfKTData:self->_selfKTData];
  [(IMServiceReachabilityResult *)v5 setReachabilityOverriddenToSuccessByPolicy:self->_reachabilityOverriddenToSuccessByPolicy];
  return v5;
}

- (id)createDictionary
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  service = self->_service;
  if (service)
  {
    [v3 setObject:service forKeyedSubscript:@"s"];
  }

  if (self->_error)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v4 setObject:v6 forKeyedSubscript:@"e"];
  }

  handleResults = self->_handleResults;
  if (handleResults)
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSDictionary count](handleResults, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    allValues = [(NSDictionary *)self->_handleResults allValues];
    v10 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(allValues);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          createDictionary = [v14 createDictionary];
          handleID = [v14 handleID];
          [v8 setObject:createDictionary forKeyedSubscript:handleID];
        }

        v11 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v17 = [v8 copy];
    [v4 setObject:v17 forKeyedSubscript:@"r"];
  }

  if (self->_final)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v4 setObject:v18 forKeyedSubscript:@"f"];
  }

  if (self->_didCheckServer)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v4 setObject:v19 forKeyedSubscript:@"cs"];
  }

  v20 = [v4 copy];

  return v20;
}

- (id)description
{
  v13 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  if ([(IMServiceReachabilityResult *)self isFinal])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  service = [(IMServiceReachabilityResult *)self service];
  if ([(IMServiceReachabilityResult *)self allAreReachable])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(IMServiceReachabilityResult *)self allSupportEncryption])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(IMServiceReachabilityResult *)self didCheckServer])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  handleResults = [(IMServiceReachabilityResult *)self handleResults];
  if ([(IMServiceReachabilityResult *)self reachabilityOverriddenToSuccessByPolicy])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v13 stringWithFormat:@"<%@ %p [isFinal: %@ service: %@ allAreReachable: %@ allSupportEncryption: %@ didCheckServer: %@ handleResults: %@ overriddenToSuccess: %@]>", v3, self, v4, service, v6, v7, v8, handleResults, v10];

  return v11;
}

- (void)updatePersistentMenu:(id)menu forHandle:(id)handle
{
  menuCopy = menu;
  handleCopy = handle;
  handleResults = [(IMServiceReachabilityResult *)self handleResults];
  if (handleResults)
  {
    v8 = handleResults;
    handleResults2 = [(IMServiceReachabilityResult *)self handleResults];
    v10 = [handleResults2 objectForKeyedSubscript:handleCopy];

    if (v10)
    {
      handleResults3 = [(IMServiceReachabilityResult *)self handleResults];
      v12 = [handleResults3 objectForKeyedSubscript:handleCopy];
      [v12 setPersistentMenuDictionary:menuCopy];
    }
  }
}

- (void)updateBrandInfo:(id)info brandLogo:(id)logo forHandle:(id)handle
{
  infoCopy = info;
  handleCopy = handle;
  handleResults = [(IMServiceReachabilityResult *)self handleResults];
  if (handleResults)
  {
    v9 = handleResults;
    handleResults2 = [(IMServiceReachabilityResult *)self handleResults];
    v11 = [handleResults2 objectForKeyedSubscript:handleCopy];

    if (v11)
    {
      handleResults3 = [(IMServiceReachabilityResult *)self handleResults];
      v13 = [handleResults3 objectForKeyedSubscript:handleCopy];
      [v13 setBrandInfoDictionary:infoCopy];
    }
  }
}

@end