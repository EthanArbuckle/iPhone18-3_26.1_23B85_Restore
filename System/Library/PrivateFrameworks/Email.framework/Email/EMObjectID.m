@interface EMObjectID
+ (OS_os_log)log;
+ (id)_decodableClasses;
+ (id)objectIDFromSerializedRepresentation:(id)a3;
+ (void)addDecodableClass:(Class)a3;
- (BOOL)isEqual:(id)a3;
- (EFStringHash)stringHash;
- (EMObjectID)initWithCoder:(id)a3;
- (EMObjectID)initWithRepresentedObjectID:(id)a3;
- (NSData)serializedRepresentation;
- (NSString)description;
- (id)cachedSelf;
- (void)_commonInitAsEphemeralID:(BOOL)a3 representedObjectID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMObjectID

- (EFStringHash)stringHash
{
  os_unfair_lock_lock(&self->_lock);
  stringHash = self->_stringHash;
  if (!stringHash)
  {
    v4 = [(EMObjectID *)self representedObjectID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_alloc(MEMORY[0x1E699B990]) initWithString:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [objc_alloc(MEMORY[0x1E699B990]) initWithData:v4];
      }

      else
      {
        v5 = [objc_alloc(MEMORY[0x1E699B990]) initWithHash:{-[EMObjectID hash](self, "hash")}];
      }
    }

    v6 = self->_stringHash;
    self->_stringHash = v5;

    stringHash = self->_stringHash;
  }

  v7 = stringHash;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(EMObjectID *)self representedObjectID];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

+ (id)_decodableClasses
{
  if (_decodableClasses_onceToken != -1)
  {
    +[EMObjectID _decodableClasses];
  }

  v3 = _decodableClasses_decodableClasses;

  return v3;
}

void __31__EMObjectID__decodableClasses__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFA8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [v0 initWithObjects:{v1, v2, v3, objc_opt_class(), 0}];
  v5 = _decodableClasses_decodableClasses;
  _decodableClasses_decodableClasses = v4;
}

void __24__EMObjectID_cachedSelf__block_invoke()
{
  cachedSelf_sTableLock_3 = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
  v1 = cachedSelf_sUniqueObjectIDs_3;
  cachedSelf_sUniqueObjectIDs_3 = v0;
}

- (id)cachedSelf
{
  if (cachedSelf_onceToken_3 != -1)
  {
    [EMObjectID cachedSelf];
  }

  os_unfair_lock_lock(&cachedSelf_sTableLock_3);
  v3 = [cachedSelf_sUniqueObjectIDs_3 ef_uniquedObject:self];
  os_unfair_lock_unlock(&cachedSelf_sTableLock_3);

  return v3;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __17__EMObjectID_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_27 != -1)
  {
    dispatch_once(&log_onceToken_27, block);
  }

  v2 = log_log_27;

  return v2;
}

void __17__EMObjectID_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_27;
  log_log_27 = v1;
}

+ (void)addDecodableClass:(Class)a3
{
  v4 = [a1 _decodableClasses];
  [v4 addObject:a3];
}

+ (id)objectIDFromSerializedRepresentation:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:0];
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"kClassKey"];
  if ([(NSString *)v6 length])
  {
    a1 = NSClassFromString(v6);
  }

  if ([a1 isSubclassOfClass:objc_opt_class()])
  {
    v7 = [[a1 alloc] initWithCoder:v5];
  }

  else
  {
    v8 = +[EMObjectID log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(EMObjectID *)v6 objectIDFromSerializedRepresentation:v8];
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (EMObjectID)initWithRepresentedObjectID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EMObjectID;
  v5 = [(EMObjectID *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(EMObjectID *)v5 _commonInitAsEphemeralID:0 representedObjectID:v4];
  }

  return v6;
}

- (void)_commonInitAsEphemeralID:(BOOL)a3 representedObjectID:(id)a4
{
  v6 = a4;
  self->_ephemeral = a3;
  if (v6)
  {
    v9 = v6;
    v7 = [v6 copyWithZone:0];
    representedObjectID = self->_representedObjectID;
    self->_representedObjectID = v7;

    self->_hash = [self->_representedObjectID hash];
    v6 = v9;
  }
}

- (NSData)serializedRepresentation
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(EMObjectID *)self encodeWithCoder:v3];
  v4 = [v3 encodedData];

  return v4;
}

- (EMObjectID)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EMObjectID;
  v5 = [(EMObjectID *)&v11 init];
  if (v5)
  {
    v5->_ephemeral = [v4 decodeBoolForKey:@"EFPropertyKey_ephemeral"];
    v6 = +[EMObjectID _decodableClasses];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"kRepresentedObjectIDKey"];

    v8 = [v7 copyWithZone:0];
    representedObjectID = v5->_representedObjectID;
    v5->_representedObjectID = v8;

    v5->_hash = [v5->_representedObjectID hash];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeBool:-[EMObjectID isEphemeral](self forKey:{"isEphemeral"), @"EFPropertyKey_ephemeral"}];
  [v6 encodeObject:self->_representedObjectID forKey:@"kRepresentedObjectIDKey"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 encodeObject:v5 forKey:@"kClassKey"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(EMObjectID *)self isEphemeral];
      if (v6 == [(EMObjectID *)v5 isEphemeral])
      {
        representedObjectID = self->_representedObjectID;
        v9 = [(EMObjectID *)v5 representedObjectID];
        v7 = [representedObjectID isEqual:v9];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (void)objectIDFromSerializedRepresentation:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_1C6655000, log, OS_LOG_TYPE_FAULT, "Exception occured: %{public}@\nSymbols:\n%{public}@", buf, 0x16u);
}

+ (void)objectIDFromSerializedRepresentation:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "objectIDFromSerializedRepresentation called with non ObjectID type %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end