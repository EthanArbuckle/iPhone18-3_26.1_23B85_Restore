@interface NTKArgonKeyDescriptor
+ (id)keyDescriptorFromBundle:(id)bundle;
+ (id)unfilteredKeyDescriptorFromBundle:(id)bundle;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)argon_JSONRepresentation;
- (NSString)description;
- (NTKArgonKeyDescriptor)initWithCoder:(id)coder;
- (NTKArgonKeyDescriptor)initWithKey:(id)key fileName:(id)name;
- (id)argon_initWithJSONRepresentation:(id)representation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKArgonKeyDescriptor

- (NTKArgonKeyDescriptor)initWithKey:(id)key fileName:(id)name
{
  keyCopy = key;
  nameCopy = name;
  if ([keyCopy length] && objc_msgSend(nameCopy, "length"))
  {
    v16.receiver = self;
    v16.super_class = NTKArgonKeyDescriptor;
    v8 = [(NTKArgonKeyDescriptor *)&v16 init];
    if (v8)
    {
      v9 = [keyCopy copy];
      key = v8->_key;
      v8->_key = v9;

      v11 = [nameCopy copy];
      fileName = v8->_fileName;
      v8->_fileName = v11;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v14 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [NTKArgonKeyDescriptor initWithKey:fileName:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)keyDescriptorFromBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = bundleCopy;
  if (bundleCopy && ([bundleCopy bundlePath], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "pathComponents"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", @"AppleInternal"), v7, v6, (v8 & 1) == 0))
  {
    v9 = [self unfilteredKeyDescriptorFromBundle:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)unfilteredKeyDescriptorFromBundle:(id)bundle
{
  if (bundle)
  {
    infoDictionary = [bundle infoDictionary];
    v4 = [infoDictionary objectForKey:@"Argon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKey:@"FileName"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v4 objectForKey:@"Key"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [[NTKArgonKeyDescriptor alloc] initWithKey:v6 fileName:v5];
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

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NTKArgonKeyDescriptor *)self key];
  v4 = [v3 hash];
  fileName = [(NTKArgonKeyDescriptor *)self fileName];
  v6 = v4 ^ (4 * [fileName hash]);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NTKArgonKeyDescriptor *)self key];
    v6 = [equalCopy key];
    if (v5 == v6 || [v5 isEqual:v6])
    {
      fileName = [(NTKArgonKeyDescriptor *)self fileName];
      fileName2 = [equalCopy fileName];
      if (fileName == fileName2)
      {
        v9 = 1;
      }

      else
      {
        v9 = [fileName isEqual:fileName2];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NTKArgonKeyDescriptor *)self key];
  fileName = [(NTKArgonKeyDescriptor *)self fileName];
  v8 = [v3 stringWithFormat:@"<%@: %p, %@ | %@>", v5, self, v6, fileName];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NTKArgonKeyDescriptor *)self key];
  [coderCopy encodeObject:v5 forKey:@"key"];

  fileName = [(NTKArgonKeyDescriptor *)self fileName];
  [coderCopy encodeObject:fileName forKey:@"fileName"];
}

- (NTKArgonKeyDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileName"];

  v7 = [(NTKArgonKeyDescriptor *)self initWithKey:v5 fileName:v6];
  return v7;
}

- (NSDictionary)argon_JSONRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(NTKArgonKeyDescriptor *)self key];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 copy];
    [dictionary setObject:v6 forKeyedSubscript:@"k"];
  }

  fileName = [(NTKArgonKeyDescriptor *)self fileName];
  v8 = fileName;
  if (fileName)
  {
    v9 = [fileName copy];
    [dictionary setObject:v9 forKeyedSubscript:@"n"];
  }

  v10 = [dictionary copy];

  return v10;
}

- (id)argon_initWithJSONRepresentation:(id)representation
{
  representationCopy = representation;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__NTKArgonKeyDescriptor_argon_initWithJSONRepresentation___block_invoke;
  aBlock[3] = &unk_2787828A8;
  v13 = representationCopy;
  v5 = representationCopy;
  v6 = _Block_copy(aBlock);
  v7 = v6[2](v6, @"k");
  v8 = v6[2](v6, @"n");
  if ([v7 length] && objc_msgSend(v8, "length"))
  {
    v9 = [(NTKArgonKeyDescriptor *)self initWithKey:v7 fileName:v8];
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [NTKArgonKeyDescriptor argon_initWithJSONRepresentation:];
    }

    v9 = 0;
  }

  return v9;
}

id __58__NTKArgonKeyDescriptor_argon_initWithJSONRepresentation___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end