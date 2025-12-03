@interface CMContinuityCaptureControl
- (CMContinuityCaptureControl)initWithCoder:(id)coder;
- (CMContinuityCaptureControl)initWithDictionaryRepresentation:(id)representation;
- (CMContinuityCaptureControl)initWithName:(id)name attributes:(id)attributes entity:(int64_t)entity minimumSupportedVersion:(id *)version value:(id)value;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)value;
- (void)encodeWithCoder:(id)coder;
- (void)setValue:(id)value;
@end

@implementation CMContinuityCaptureControl

- (CMContinuityCaptureControl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CMContinuityCaptureControl;
  v5 = [(CMContinuityCaptureControl *)&v15 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = v5->_name;
  v5->_name = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"class"];
  v9 = v5->_class;
  v5->_class = v8;

  v5->_entity = [coderCopy decodeInt64ForKey:@"entity"];
  v5->_minimumSupportedVersion.major = [coderCopy decodeInt64ForKey:@"minimumSupportedVersionMajor"];
  v5->_minimumSupportedVersion.minor = [coderCopy decodeInt64ForKey:@"minimumSupportedVersionMinor"];
  v5->_minimumSupportedVersion.patch = [coderCopy decodeInt64ForKey:@"minimumSupportedVersionPatch"];
  if (v5->_class)
  {
    v10 = v5;
    objc_sync_enter(v10);
    if ([(NSString *)v5->_class isEqualToString:@"CVPixelBufferRef"])
    {
      [coderCopy decodeCVPixelBufferForKey:@"value" expectSourceMedia:1];
    }

    else
    {
      [coderCopy decodePropertyListForKey:@"value"];
    }
    v11 = ;
    value = v10->_value;
    v10->_value = v11;

    objc_sync_exit(v10);
    v13 = v10;
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

  return v13;
}

- (CMContinuityCaptureControl)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"name"];
  if (!v5)
  {
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureControl initWithDictionaryRepresentation:v6];
    }

    goto LABEL_16;
  }

  v6 = [representationCopy objectForKeyedSubscript:@"attributes"];
  v7 = [representationCopy objectForKeyedSubscript:@"entity"];
  selfCopy2 = v7;
  if (!v7)
  {
    [CMContinuityCaptureControl initWithDictionaryRepresentation:];
    goto LABEL_11;
  }

  integerValue = [(CMContinuityCaptureControl *)v7 integerValue];
  v10 = [representationCopy objectForKeyedSubscript:@"minimumSupportedVersionMajor"];

  if (v10)
  {
    v11 = [representationCopy objectForKeyedSubscript:@"minimumSupportedVersionMajor"];
    intValue = [v11 intValue];
    v13 = [representationCopy objectForKeyedSubscript:@"minimumSupportedVersionMinor"];

    intValue2 = [v13 intValue];
    v10 = [representationCopy objectForKeyedSubscript:@"minimumSupportedVersionPatch"];

    intValue3 = [v10 intValue];
  }

  else
  {
    intValue2 = 0;
    intValue3 = 0;
    intValue = 1;
  }

  v23[0] = intValue;
  v23[1] = intValue2;
  v23[2] = intValue3;
  self = [(CMContinuityCaptureControl *)self initWithName:v5 attributes:v6 entity:integerValue minimumSupportedVersion:v23 value:0];
  v16 = [representationCopy objectForKeyedSubscript:@"class"];
  v17 = self->_class;
  self->_class = v16;

  if (self->_class)
  {
    v18 = [representationCopy objectForKeyedSubscript:@"value"];

    if (v18)
    {
      if (![(NSString *)self->_class isEqualToString:@"CVPixelBufferRef"])
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        v20 = [representationCopy objectForKeyedSubscript:@"value"];
        value = selfCopy->_value;
        selfCopy->_value = v20;

        objc_sync_exit(selfCopy);
      }

      goto LABEL_10;
    }

    [(CMContinuityCaptureControl *)v10 initWithDictionaryRepresentation:selfCopy2];
LABEL_16:
    selfCopy2 = 0;
    goto LABEL_11;
  }

LABEL_10:
  self = self;

  selfCopy2 = self;
LABEL_11:

  return selfCopy2;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_name forKeyedSubscript:@"name"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_entity];
  [dictionary setObject:v4 forKeyedSubscript:@"entity"];

  attributes = self->_attributes;
  if (attributes)
  {
    [dictionary setObject:attributes forKeyedSubscript:@"attributes"];
  }

  v6 = self->_class;
  if (v6)
  {
    [dictionary setObject:v6 forKeyedSubscript:@"class"];
    if (![(NSString *)self->_class isEqualToString:@"CVPixelBufferRef"])
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [dictionary setObject:selfCopy->_value forKeyedSubscript:@"value"];
      objc_sync_exit(selfCopy);
    }
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumSupportedVersion.major];
  [dictionary setObject:v8 forKeyedSubscript:@"minimumSupportedVersionMajor"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumSupportedVersion.minor];
  [dictionary setObject:v9 forKeyedSubscript:@"minimumSupportedVersionMinor"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumSupportedVersion.patch];
  [dictionary setObject:v10 forKeyedSubscript:@"minimumSupportedVersionPatch"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(CMContinuityCaptureControl *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInt64:-[CMContinuityCaptureControl entity](self forKey:{"entity"), @"entity"}];
  [coderCopy encodeObject:self->_class forKey:@"class"];
  v5 = [(NSString *)self->_class isEqualToString:@"CVPixelBufferRef"];
  value = [(CMContinuityCaptureControl *)self value];
  if (v5)
  {
    [coderCopy encodeCVPixelBuffer:value forKey:@"value"];
  }

  else
  {
    [coderCopy encodeObject:value forKey:@"value"];
  }

  [coderCopy encodeInt64:self->_minimumSupportedVersion.major forKey:@"minimumSupportedVersionMajor"];
  [coderCopy encodeInt64:self->_minimumSupportedVersion.minor forKey:@"minimumSupportedVersionMinor"];
  [coderCopy encodeInt64:self->_minimumSupportedVersion.patch forKey:@"minimumSupportedVersionPatch"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = selfCopy->_value;
  objc_sync_exit(selfCopy);

  v5 = [CMContinuityCaptureControl alloc];
  entity = selfCopy->_entity;
  attributes = selfCopy->_attributes;
  name = selfCopy->_name;
  v11 = *&selfCopy->_minimumSupportedVersion.major;
  patch = selfCopy->_minimumSupportedVersion.patch;
  v9 = [(CMContinuityCaptureControl *)v5 initWithName:name attributes:attributes entity:entity minimumSupportedVersion:&v11 value:v4];

  return v9;
}

- (NSString)debugDescription
{
  name = [(CMContinuityCaptureControl *)self name];
  v4 = [name isEqualToString:@"kCMContinuityCaptureControlDebugInfo"];

  v5 = MEMORY[0x277CCACA8];
  name2 = [(CMContinuityCaptureControl *)self name];
  entity = [(CMContinuityCaptureControl *)self entity];
  if (v4)
  {
    v8 = self->_class;
    value = [MEMORY[0x277CCACA8] stringWithFormat:@"[%ld.%ld.%ld]", self->_minimumSupportedVersion.major, self->_minimumSupportedVersion.minor, self->_minimumSupportedVersion.patch];
    v10 = [v5 stringWithFormat:@"%@ entity:%u %@ minimumSupportedVersion: %@", name2, entity, v8, value];
  }

  else
  {
    value = [(CMContinuityCaptureControl *)self value];
    v11 = self->_class;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%ld.%ld.%ld]", self->_minimumSupportedVersion.major, self->_minimumSupportedVersion.minor, self->_minimumSupportedVersion.patch];
    v10 = [v5 stringWithFormat:@"%@ entity:%u value:%@ %@ minimumSupportedVersion: %@", name2, entity, value, v11, v12];
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureControl *)self debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
}

- (id)value
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_value;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = self->_class;
      self->_class = v7;
LABEL_8:

LABEL_9:
      selfCopy = self;
      objc_sync_enter(selfCopy);
      objc_storeStrong(&selfCopy->_value, value);
      objc_sync_exit(selfCopy);

      goto LABEL_10;
    }

    v10 = CFGetTypeID(valueCopy);
    if (v10 == CVPixelBufferGetTypeID())
    {
      v8 = self->_class;
      self->_class = @"CVPixelBufferRef";
      goto LABEL_8;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = CMContinuityCaptureLog(0);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (isKindOfClass)
    {
      if (v13)
      {
        v17 = 138412546;
        selfCopy3 = self;
        v19 = 2112;
        v20 = objc_opt_class();
        v14 = "%@ Unhandled value object type %@";
        v15 = v12;
        v16 = 22;
LABEL_18:
        _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, v14, &v17, v16);
      }
    }

    else if (v13)
    {
      v17 = 138412290;
      selfCopy3 = self;
      v14 = "%@ Unhandled value unknown type";
      v15 = v12;
      v16 = 12;
      goto LABEL_18;
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (CMContinuityCaptureControl)initWithName:(id)name attributes:(id)attributes entity:(int64_t)entity minimumSupportedVersion:(id *)version value:(id)value
{
  nameCopy = name;
  attributesCopy = attributes;
  valueCopy = value;
  v21.receiver = self;
  v21.super_class = CMContinuityCaptureControl;
  v16 = [(CMContinuityCaptureControl *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, name);
    objc_storeStrong(&v17->_attributes, attributes);
    v17->_entity = entity;
    v18 = *&version->var0;
    v17->_minimumSupportedVersion.patch = version->var2;
    *&v17->_minimumSupportedVersion.major = v18;
    [(CMContinuityCaptureControl *)v17 setValue:valueCopy];
    v19 = v17;
  }

  return v17;
}

- (void)initWithDictionaryRepresentation:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_242545000, v4, OS_LOG_TYPE_ERROR, "Missing CMContinuityCaptureControlKey_Value", v5, 2u);
  }
}

- (void)initWithDictionaryRepresentation:.cold.2()
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_242545000, v0, OS_LOG_TYPE_ERROR, "Missing CMContinuityCaptureControlKey_Entity", v1, 2u);
  }
}

@end