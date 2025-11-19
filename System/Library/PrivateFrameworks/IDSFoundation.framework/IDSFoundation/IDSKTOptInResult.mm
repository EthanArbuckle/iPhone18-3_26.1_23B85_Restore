@interface IDSKTOptInResult
- (IDSKTOptInResult)init;
- (IDSKTOptInResult)initWithCoder:(id)a3;
- (IDSKTOptInResult)initWithSuccess:(BOOL)a3 optedInOutURIs:(id)a4 serverSMTByURI:(id)a5 error:(id)a6;
- (IDSKTOptInResult)initWithSuccess:(BOOL)a3 serverProvidedSMT:(id)a4 error:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSKTOptInResult

- (IDSKTOptInResult)init
{
  v7.receiver = self;
  v7.super_class = IDSKTOptInResult;
  v2 = [(IDSKTOptInResult *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_success = 0;
    error = v2->_error;
    v2->_error = 0;

    serverProvidedSMT = v3->_serverProvidedSMT;
    v3->_serverProvidedSMT = 0;
  }

  return v3;
}

- (IDSKTOptInResult)initWithSuccess:(BOOL)a3 serverProvidedSMT:(id)a4 error:(id)a5
{
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = IDSKTOptInResult;
  v11 = [(IDSKTOptInResult *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_success = a3;
    objc_storeStrong(&v11->_serverProvidedSMT, a4);
    objc_storeStrong(&v12->_error, a5);
    v13 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    optedInOutURIs = v12->_optedInOutURIs;
    v12->_optedInOutURIs = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF20]);
    serverSMTByURI = v12->_serverSMTByURI;
    v12->_serverSMTByURI = v15;
  }

  return v12;
}

- (IDSKTOptInResult)initWithSuccess:(BOOL)a3 optedInOutURIs:(id)a4 serverSMTByURI:(id)a5 error:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v24.receiver = self;
  v24.super_class = IDSKTOptInResult;
  v13 = [(IDSKTOptInResult *)&v24 init];
  v14 = v13;
  if (v13)
  {
    v13->_success = a3;
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    optedInOutURIs = v14->_optedInOutURIs;
    v14->_optedInOutURIs = v15;

    if (v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF20]);
    }

    serverSMTByURI = v14->_serverSMTByURI;
    v14->_serverSMTByURI = v17;

    v19 = v14->_serverSMTByURI;
    if (v19)
    {
      v20 = [(NSDictionary *)v19 allValues];
      v21 = [v20 firstObject];
      serverProvidedSMT = v14->_serverProvidedSMT;
      v14->_serverProvidedSMT = v21;
    }

    objc_storeStrong(&v14->_error, a6);
  }

  return v14;
}

- (IDSKTOptInResult)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IDSKTOptInResult;
  v5 = [(IDSKTOptInResult *)&v16 init];
  if (v5)
  {
    v5->_success = [v4 decodeBoolForKey:@"Success"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Error"];
    error = v5->_error;
    v5->_error = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SMT"];
    serverProvidedSMT = v5->_serverProvidedSMT;
    v5->_serverProvidedSMT = v8;

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"OptInOutURIs"];
    optedInOutURIs = v5->_optedInOutURIs;
    v5->_optedInOutURIs = v10;

    v12 = objc_opt_class();
    v13 = [v4 decodeDictionaryWithKeysOfClass:v12 objectsOfClass:objc_opt_class() forKey:@"ServerSMTsByURI"];
    serverSMTByURI = v5->_serverSMTByURI;
    v5->_serverSMTByURI = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  success = self->_success;
  v5 = a3;
  [v5 encodeBool:success forKey:@"Success"];
  [v5 encodeObject:self->_error forKey:@"Error"];
  [v5 encodeObject:self->_serverProvidedSMT forKey:@"SMT"];
  [v5 encodeObject:self->_optedInOutURIs forKey:@"OptInOutURIs"];
  [v5 encodeObject:self->_serverSMTByURI forKey:@"ServerSMTsByURI"];
}

- (id)description
{
  if (self->_success)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<IDSKTOptInResult: %p, success: %@, error: %@, serverProvidedSMT: %@, optedInOutURIs: %@, serverSMTByURI: %@>", self, v2, self->_error, self->_serverProvidedSMT, self->_optedInOutURIs, self->_serverSMTByURI];
}

@end