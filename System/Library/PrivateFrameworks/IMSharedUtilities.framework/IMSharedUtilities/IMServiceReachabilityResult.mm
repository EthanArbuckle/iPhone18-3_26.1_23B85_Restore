@interface IMServiceReachabilityResult
+ (id)finalResultForService:(id)a3 handleIDs:(id)a4 allAreReachable:(BOOL)a5 allSupportEncryption:(BOOL)a6 handleIsReachable:(id)a7 handleSupportsEncryption:(id)a8 checkedServer:(BOOL)a9 error:(int64_t)a10;
- (IMServiceReachabilityResult)initWithCoder:(id)a3;
- (IMServiceReachabilityResult)initWithService:(id)a3 error:(int64_t)a4 handleResults:(id)a5 isFinal:(BOOL)a6 allAreReachable:(BOOL)a7 allSupportEncryption:(BOOL)a8 didCheckServer:(BOOL)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)updateBrandInfo:(id)a3 brandLogo:(id)a4 forHandle:(id)a5;
- (void)updatePersistentMenu:(id)a3 forHandle:(id)a4;
@end

@implementation IMServiceReachabilityResult

- (IMServiceReachabilityResult)initWithService:(id)a3 error:(int64_t)a4 handleResults:(id)a5 isFinal:(BOOL)a6 allAreReachable:(BOOL)a7 allSupportEncryption:(BOOL)a8 didCheckServer:(BOOL)a9
{
  v16 = a3;
  v17 = a5;
  v21.receiver = self;
  v21.super_class = IMServiceReachabilityResult;
  v18 = [(IMServiceReachabilityResult *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_service, a3);
    v19->_error = a4;
    objc_storeStrong(&v19->_handleResults, a5);
    v19->_final = a6;
    v19->_allAreReachable = a7;
    v19->_allSupportEncryption = a8;
    v19->_didCheckServer = a9;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeObject:self->_service forKey:@"s"];
  [v8 encodeInteger:self->_error forKey:@"e"];
  [v8 encodeObject:self->_handleResults forKey:@"r"];
  [v8 encodeBool:self->_final forKey:@"f"];
  [v8 encodeBool:self->_allAreReachable forKey:@"ar"];
  [v8 encodeBool:self->_allSupportEncryption forKey:@"en"];
  [v8 encodeBool:self->_didCheckServer forKey:@"cs"];
  [v8 encodeBool:self->_reachabilityOverriddenToSuccessByPolicy forKey:@"os"];
  selfKTData = self->_selfKTData;
  if (selfKTData)
  {
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:selfKTData requiringSecureCoding:1 error:0];
    [v8 encodeObject:v5 forKey:@"skd"];
  }

  ktData = self->_ktData;
  if (ktData)
  {
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:ktData requiringSecureCoding:1 error:0];
    [v8 encodeObject:v7 forKey:@"kd"];
  }
}

- (IMServiceReachabilityResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"s"];
  v6 = [v4 decodeIntegerForKey:@"e"];
  v7 = objc_opt_class();
  v8 = [v4 decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"r"];
  v9 = [v4 decodeBoolForKey:@"f"];
  v10 = [v4 decodeBoolForKey:@"ar"];
  v11 = [v4 decodeBoolForKey:@"en"];
  LOBYTE(v30) = [v4 decodeBoolForKey:@"cs"];
  v12 = [(IMServiceReachabilityResult *)self initWithService:v5 error:v6 handleResults:v8 isFinal:v9 allAreReachable:v10 allSupportEncryption:v11 didCheckServer:v30];

  if (v12)
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"skd"];
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

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kd"];
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

    v12->_reachabilityOverriddenToSuccessByPolicy = [v4 decodeBoolForKey:@"os"];
  }

  return v12;
}

+ (id)finalResultForService:(id)a3 handleIDs:(id)a4 allAreReachable:(BOOL)a5 allSupportEncryption:(BOOL)a6 handleIsReachable:(id)a7 handleSupportsEncryption:(id)a8 checkedServer:(BOOL)a9 error:(int64_t)a10
{
  v13 = a5;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v19 = objc_alloc_init(IMServiceReachabilityResult);
  [(IMServiceReachabilityResult *)v19 setService:v15];
  [(IMServiceReachabilityResult *)v19 setError:a10];
  [(IMServiceReachabilityResult *)v19 setDidCheckServer:a9];
  [(IMServiceReachabilityResult *)v19 setFinal:1];
  v20 = v13 && [v16 count] != 0;
  [(IMServiceReachabilityResult *)v19 setAllAreReachable:v20];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1A86870E4;
  v29[3] = &unk_1E7828950;
  v32 = v17;
  v34 = v13;
  v21 = v19;
  v33 = v18;
  v35 = a6;
  v30 = v21;
  v31 = v15;
  v22 = v15;
  v23 = v18;
  v24 = v17;
  v25 = [v16 __imMapToDictionary:v29];
  [(IMServiceReachabilityResult *)v21 setHandleResults:v25];

  v26 = v31;
  v27 = v21;

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
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
    v9 = [(NSDictionary *)self->_handleResults allValues];
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 createDictionary];
          v16 = [v14 handleID];
          [v8 setObject:v15 forKeyedSubscript:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

  v5 = [(IMServiceReachabilityResult *)self service];
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

  v9 = [(IMServiceReachabilityResult *)self handleResults];
  if ([(IMServiceReachabilityResult *)self reachabilityOverriddenToSuccessByPolicy])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v13 stringWithFormat:@"<%@ %p [isFinal: %@ service: %@ allAreReachable: %@ allSupportEncryption: %@ didCheckServer: %@ handleResults: %@ overriddenToSuccess: %@]>", v3, self, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)updatePersistentMenu:(id)a3 forHandle:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(IMServiceReachabilityResult *)self handleResults];
  if (v7)
  {
    v8 = v7;
    v9 = [(IMServiceReachabilityResult *)self handleResults];
    v10 = [v9 objectForKeyedSubscript:v6];

    if (v10)
    {
      v11 = [(IMServiceReachabilityResult *)self handleResults];
      v12 = [v11 objectForKeyedSubscript:v6];
      [v12 setPersistentMenuDictionary:v13];
    }
  }
}

- (void)updateBrandInfo:(id)a3 brandLogo:(id)a4 forHandle:(id)a5
{
  v14 = a3;
  v7 = a5;
  v8 = [(IMServiceReachabilityResult *)self handleResults];
  if (v8)
  {
    v9 = v8;
    v10 = [(IMServiceReachabilityResult *)self handleResults];
    v11 = [v10 objectForKeyedSubscript:v7];

    if (v11)
    {
      v12 = [(IMServiceReachabilityResult *)self handleResults];
      v13 = [v12 objectForKeyedSubscript:v7];
      [v13 setBrandInfoDictionary:v14];
    }
  }
}

@end