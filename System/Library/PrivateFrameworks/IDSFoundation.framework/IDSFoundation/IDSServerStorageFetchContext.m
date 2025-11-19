@interface IDSServerStorageFetchContext
- (IDSServerStorageFetchContext)initWithCoder:(id)a3;
- (IDSServerStorageFetchContext)initWithDictionary:(id)a3;
- (IDSServerStorageFetchContext)initWithServerStorageSSM:(id)a3 service:(id)a4;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSServerStorageFetchContext

- (IDSServerStorageFetchContext)initWithServerStorageSSM:(id)a3 service:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v14.receiver = self;
    v14.super_class = IDSServerStorageFetchContext;
    v11 = [(IDSServerStorageFetchContext *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_serverStorageSSM, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v10 = self;
  }

  return v10;
}

- (IDSServerStorageFetchContext)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14.receiver = self;
    v14.super_class = IDSServerStorageFetchContext;
    v5 = [(IDSServerStorageFetchContext *)&v14 init];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"IDSServerStorageSSMKey"];
      serverStorageSSM = v5->_serverStorageSSM;
      v5->_serverStorageSSM = v6;

      v8 = [v4 objectForKeyedSubscript:@"IDSServerStorageServiceKey"];
      service = v5->_service;
      v5->_service = v8;

      v10 = [v4 objectForKeyedSubscript:@"IDSServerStorageReasonKey"];
      reason = v5->_reason;
      v5->_reason = v10;
    }

    self = v5;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  serverStorageSSM = self->_serverStorageSSM;
  if (serverStorageSSM)
  {
    CFDictionarySetValue(v3, @"IDSServerStorageSSMKey", serverStorageSSM);
  }

  service = self->_service;
  if (service)
  {
    CFDictionarySetValue(v4, @"IDSServerStorageServiceKey", service);
  }

  reason = self->_reason;
  if (reason)
  {
    CFDictionarySetValue(v4, @"IDSServerStorageReasonKey", reason);
  }

  v8 = [(__CFDictionary *)v4 copy];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  serverStorageSSM = self->_serverStorageSSM;
  v5 = a3;
  [v5 encodeObject:serverStorageSSM forKey:@"IDSServerStorageSSMKey"];
  [v5 encodeObject:self->_service forKey:@"IDSServerStorageServiceKey"];
  [v5 encodeObject:self->_reason forKey:@"IDSServerStorageReasonKey"];
}

- (IDSServerStorageFetchContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSServerStorageSSMKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSServerStorageServiceKey"];

  v7 = [(IDSServerStorageFetchContext *)self initWithServerStorageSSM:v5 service:v6];
  [(IDSServerStorageFetchContext *)v7 setReason:v7->_reason];

  return v7;
}

@end