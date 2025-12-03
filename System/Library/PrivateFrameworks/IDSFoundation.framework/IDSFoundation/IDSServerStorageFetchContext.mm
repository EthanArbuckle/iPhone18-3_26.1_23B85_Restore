@interface IDSServerStorageFetchContext
- (IDSServerStorageFetchContext)initWithCoder:(id)coder;
- (IDSServerStorageFetchContext)initWithDictionary:(id)dictionary;
- (IDSServerStorageFetchContext)initWithServerStorageSSM:(id)m service:(id)service;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSServerStorageFetchContext

- (IDSServerStorageFetchContext)initWithServerStorageSSM:(id)m service:(id)service
{
  mCopy = m;
  serviceCopy = service;
  v9 = serviceCopy;
  selfCopy = 0;
  if (mCopy && serviceCopy)
  {
    v14.receiver = self;
    v14.super_class = IDSServerStorageFetchContext;
    v11 = [(IDSServerStorageFetchContext *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_serverStorageSSM, m);
      objc_storeStrong(p_isa + 2, service);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (IDSServerStorageFetchContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v14.receiver = self;
    v14.super_class = IDSServerStorageFetchContext;
    v5 = [(IDSServerStorageFetchContext *)&v14 init];
    if (v5)
    {
      v6 = [dictionaryCopy objectForKeyedSubscript:@"IDSServerStorageSSMKey"];
      serverStorageSSM = v5->_serverStorageSSM;
      v5->_serverStorageSSM = v6;

      v8 = [dictionaryCopy objectForKeyedSubscript:@"IDSServerStorageServiceKey"];
      service = v5->_service;
      v5->_service = v8;

      v10 = [dictionaryCopy objectForKeyedSubscript:@"IDSServerStorageReasonKey"];
      reason = v5->_reason;
      v5->_reason = v10;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (void)encodeWithCoder:(id)coder
{
  serverStorageSSM = self->_serverStorageSSM;
  coderCopy = coder;
  [coderCopy encodeObject:serverStorageSSM forKey:@"IDSServerStorageSSMKey"];
  [coderCopy encodeObject:self->_service forKey:@"IDSServerStorageServiceKey"];
  [coderCopy encodeObject:self->_reason forKey:@"IDSServerStorageReasonKey"];
}

- (IDSServerStorageFetchContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSServerStorageSSMKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSServerStorageServiceKey"];

  v7 = [(IDSServerStorageFetchContext *)self initWithServerStorageSSM:v5 service:v6];
  [(IDSServerStorageFetchContext *)v7 setReason:v7->_reason];

  return v7;
}

@end