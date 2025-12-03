@interface IDSKTOptInResult
- (IDSKTOptInResult)init;
- (IDSKTOptInResult)initWithCoder:(id)coder;
- (IDSKTOptInResult)initWithSuccess:(BOOL)success optedInOutURIs:(id)is serverSMTByURI:(id)i error:(id)error;
- (IDSKTOptInResult)initWithSuccess:(BOOL)success serverProvidedSMT:(id)t error:(id)error;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (IDSKTOptInResult)initWithSuccess:(BOOL)success serverProvidedSMT:(id)t error:(id)error
{
  tCopy = t;
  errorCopy = error;
  v18.receiver = self;
  v18.super_class = IDSKTOptInResult;
  v11 = [(IDSKTOptInResult *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_success = success;
    objc_storeStrong(&v11->_serverProvidedSMT, t);
    objc_storeStrong(&v12->_error, error);
    v13 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    optedInOutURIs = v12->_optedInOutURIs;
    v12->_optedInOutURIs = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF20]);
    serverSMTByURI = v12->_serverSMTByURI;
    v12->_serverSMTByURI = v15;
  }

  return v12;
}

- (IDSKTOptInResult)initWithSuccess:(BOOL)success optedInOutURIs:(id)is serverSMTByURI:(id)i error:(id)error
{
  isCopy = is;
  iCopy = i;
  errorCopy = error;
  v24.receiver = self;
  v24.super_class = IDSKTOptInResult;
  v13 = [(IDSKTOptInResult *)&v24 init];
  v14 = v13;
  if (v13)
  {
    v13->_success = success;
    if (isCopy)
    {
      v15 = isCopy;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    optedInOutURIs = v14->_optedInOutURIs;
    v14->_optedInOutURIs = v15;

    if (iCopy)
    {
      v17 = iCopy;
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
      allValues = [(NSDictionary *)v19 allValues];
      firstObject = [allValues firstObject];
      serverProvidedSMT = v14->_serverProvidedSMT;
      v14->_serverProvidedSMT = firstObject;
    }

    objc_storeStrong(&v14->_error, error);
  }

  return v14;
}

- (IDSKTOptInResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = IDSKTOptInResult;
  v5 = [(IDSKTOptInResult *)&v16 init];
  if (v5)
  {
    v5->_success = [coderCopy decodeBoolForKey:@"Success"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Error"];
    error = v5->_error;
    v5->_error = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMT"];
    serverProvidedSMT = v5->_serverProvidedSMT;
    v5->_serverProvidedSMT = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"OptInOutURIs"];
    optedInOutURIs = v5->_optedInOutURIs;
    v5->_optedInOutURIs = v10;

    v12 = objc_opt_class();
    v13 = [coderCopy decodeDictionaryWithKeysOfClass:v12 objectsOfClass:objc_opt_class() forKey:@"ServerSMTsByURI"];
    serverSMTByURI = v5->_serverSMTByURI;
    v5->_serverSMTByURI = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  success = self->_success;
  coderCopy = coder;
  [coderCopy encodeBool:success forKey:@"Success"];
  [coderCopy encodeObject:self->_error forKey:@"Error"];
  [coderCopy encodeObject:self->_serverProvidedSMT forKey:@"SMT"];
  [coderCopy encodeObject:self->_optedInOutURIs forKey:@"OptInOutURIs"];
  [coderCopy encodeObject:self->_serverSMTByURI forKey:@"ServerSMTsByURI"];
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