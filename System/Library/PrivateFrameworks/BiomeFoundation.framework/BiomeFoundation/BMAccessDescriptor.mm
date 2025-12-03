@interface BMAccessDescriptor
- (BMAccessDescriptor)accessDescriptorWithAccessMode:(unint64_t)mode;
- (BMAccessDescriptor)initWithDomain:(unint64_t)domain accessMode:(unint64_t)mode resource:(id)resource;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation BMAccessDescriptor

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_mode];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_domain];
  v6 = [v5 hash] ^ v4;
  v7 = [(BMResourceSpecifier *)self->_resource hash];
  v8 = v7 ^ [(NSString *)self->_personaIdentifier hash];

  return v6 ^ v8;
}

- (BMAccessDescriptor)initWithDomain:(unint64_t)domain accessMode:(unint64_t)mode resource:(id)resource
{
  resourceCopy = resource;
  name = [resourceCopy name];
  IsPathSafe = BMIdentifierIsPathSafe(name);

  if (IsPathSafe)
  {
    v19.receiver = self;
    v19.super_class = BMAccessDescriptor;
    v12 = [(BMAccessDescriptor *)&v19 init];
    v13 = v12;
    if (v12)
    {
      v12->_domain = domain;
      v12->_mode = mode;
      objc_storeStrong(&v12->_resource, resource);
      v14 = +[BMPersonaUtilities currentPersonaIdentifier];
      personaIdentifier = v13->_personaIdentifier;
      v13->_personaIdentifier = v14;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    v17 = __biome_log_for_category(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [BMAccessDescriptor initWithDomain:v17 accessMode:? resource:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BMAccessDescriptor)accessDescriptorWithAccessMode:(unint64_t)mode
{
  if (self->_mode == mode)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_alloc(objc_opt_class()) initWithDomain:self->_domain accessMode:mode resource:self->_resource];
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_domain == equalCopy[1] && self->_mode == equalCopy[2] && [(BMResourceSpecifier *)self->_resource isEqual:equalCopy[3]])
  {
    personaIdentifier = self->_personaIdentifier;
    if (personaIdentifier | equalCopy[4])
    {
      v6 = [(NSString *)personaIdentifier isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMAccessModePrintableDescription(self->_mode);
  resource = self->_resource;
  domain = [(BMAccessDescriptor *)self domain];
  v7 = domain;
  if (self->_personaIdentifier)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" as persona %@", self->_personaIdentifier];
    v9 = [v3 initWithFormat:@"<BMAccessDescriptor: %@ access to %@ in domain %lu%@>", v4, resource, v7, v8];
  }

  else
  {
    v9 = [v3 initWithFormat:@"<BMAccessDescriptor: %@ access to %@ in domain %lu%@>", v4, resource, domain, &stru_1F20E2850];
  }

  return v9;
}

@end