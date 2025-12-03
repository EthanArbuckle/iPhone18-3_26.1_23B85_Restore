@interface IPStateUpdateMessage
- (IPStateUpdateMessage)initWithType:(unint64_t)type identity:(id)identity;
- (IPStateUpdateMessage)initWithXPCDictionaryRepresentation:(id)representation error:(id *)error;
- (id)XPCDictionaryRepresentation;
- (void)XPCDictionaryRepresentation;
@end

@implementation IPStateUpdateMessage

- (IPStateUpdateMessage)initWithType:(unint64_t)type identity:(id)identity
{
  identityCopy = identity;
  v11.receiver = self;
  v11.super_class = IPStateUpdateMessage;
  v8 = [(IPStateUpdateMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_identity, identity);
  }

  return v9;
}

- (id)XPCDictionaryRepresentation
{
  keys[2] = *MEMORY[0x277D85DE8];
  identity = self->_identity;
  v13 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:identity requiringSecureCoding:1 error:&v13];
  v5 = v13;
  if (!v4)
  {
    v6 = _IPDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(IPStateUpdateMessage *)v5 XPCDictionaryRepresentation];
    }
  }

  keys[0] = [@"type" UTF8String];
  keys[1] = [@"data" UTF8String];
  values[0] = xpc_uint64_create(self->_type);
  if (v4)
  {
    v7 = v4;
    v8 = xpc_data_create([v4 bytes], objc_msgSend(v4, "length"));
  }

  else
  {
    v8 = xpc_null_create();
  }

  values[1] = v8;
  v9 = xpc_dictionary_create(keys, values, 2uLL);
  for (i = 1; i != -1; --i)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (IPStateUpdateMessage)initWithXPCDictionaryRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  if (MEMORY[0x259C29850]() != MEMORY[0x277D86468])
  {
    v7 = *MEMORY[0x277CCA050];
    v8 = 70;
LABEL_8:
    v13 = _IPMakeNSErrorImpl(v7, 4864, "[IPStateUpdateMessage initWithXPCDictionaryRepresentation:error:]", v8, 0);
    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(representationCopy, [@"type" UTF8String]);
  length = 0;
  data = xpc_dictionary_get_data(representationCopy, [@"data" UTF8String], &length);
  if (!uint64 || !data)
  {
    v7 = *MEMORY[0x277CCA050];
    v8 = 67;
    goto LABEL_8;
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:data length:length freeWhenDone:0];
  v18 = 0;
  v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v18];
  v13 = v18;

  if (v12)
  {
    v14 = [(IPStateUpdateMessage *)self initWithType:uint64 identity:v12];
    goto LABEL_12;
  }

LABEL_9:

  if (error)
  {
    v15 = v13;
    v12 = 0;
    v14 = 0;
    *error = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

LABEL_12:
  v16 = v14;

  return v16;
}

- (void)XPCDictionaryRepresentation
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_254C69000, a2, OS_LOG_TYPE_FAULT, "Could not encode identity: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end