@interface CMContinuityCaptureControl
- (CMContinuityCaptureControl)initWithCoder:(id)a3;
- (CMContinuityCaptureControl)initWithDictionaryRepresentation:(id)a3;
- (CMContinuityCaptureControl)initWithName:(id)a3 attributes:(id)a4 entity:(int64_t)a5 minimumSupportedVersion:(id *)a6 value:(id)a7;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)value;
- (void)encodeWithCoder:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation CMContinuityCaptureControl

- (CMContinuityCaptureControl)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CMContinuityCaptureControl;
  v5 = [(CMContinuityCaptureControl *)&v15 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = v5->_name;
  v5->_name = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"class"];
  v9 = v5->_class;
  v5->_class = v8;

  v5->_entity = [v4 decodeInt64ForKey:@"entity"];
  v5->_minimumSupportedVersion.major = [v4 decodeInt64ForKey:@"minimumSupportedVersionMajor"];
  v5->_minimumSupportedVersion.minor = [v4 decodeInt64ForKey:@"minimumSupportedVersionMinor"];
  v5->_minimumSupportedVersion.patch = [v4 decodeInt64ForKey:@"minimumSupportedVersionPatch"];
  if (v5->_class)
  {
    v10 = v5;
    objc_sync_enter(v10);
    if ([(NSString *)v5->_class isEqualToString:@"CVPixelBufferRef"])
    {
      [v4 decodeCVPixelBufferForKey:@"value" expectSourceMedia:1];
    }

    else
    {
      [v4 decodePropertyListForKey:@"value"];
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

- (CMContinuityCaptureControl)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"name"];
  if (!v5)
  {
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureControl initWithDictionaryRepresentation:v6];
    }

    goto LABEL_16;
  }

  v6 = [v4 objectForKeyedSubscript:@"attributes"];
  v7 = [v4 objectForKeyedSubscript:@"entity"];
  v8 = v7;
  if (!v7)
  {
    [CMContinuityCaptureControl initWithDictionaryRepresentation:];
    goto LABEL_11;
  }

  v9 = [(CMContinuityCaptureControl *)v7 integerValue];
  v10 = [v4 objectForKeyedSubscript:@"minimumSupportedVersionMajor"];

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"minimumSupportedVersionMajor"];
    v12 = [v11 intValue];
    v13 = [v4 objectForKeyedSubscript:@"minimumSupportedVersionMinor"];

    v14 = [v13 intValue];
    v10 = [v4 objectForKeyedSubscript:@"minimumSupportedVersionPatch"];

    v15 = [v10 intValue];
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v12 = 1;
  }

  v23[0] = v12;
  v23[1] = v14;
  v23[2] = v15;
  self = [(CMContinuityCaptureControl *)self initWithName:v5 attributes:v6 entity:v9 minimumSupportedVersion:v23 value:0];
  v16 = [v4 objectForKeyedSubscript:@"class"];
  v17 = self->_class;
  self->_class = v16;

  if (self->_class)
  {
    v18 = [v4 objectForKeyedSubscript:@"value"];

    if (v18)
    {
      if (![(NSString *)self->_class isEqualToString:@"CVPixelBufferRef"])
      {
        v19 = self;
        objc_sync_enter(v19);
        v20 = [v4 objectForKeyedSubscript:@"value"];
        value = v19->_value;
        v19->_value = v20;

        objc_sync_exit(v19);
      }

      goto LABEL_10;
    }

    [(CMContinuityCaptureControl *)v10 initWithDictionaryRepresentation:v8];
LABEL_16:
    v8 = 0;
    goto LABEL_11;
  }

LABEL_10:
  self = self;

  v8 = self;
LABEL_11:

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:self->_name forKeyedSubscript:@"name"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_entity];
  [v3 setObject:v4 forKeyedSubscript:@"entity"];

  attributes = self->_attributes;
  if (attributes)
  {
    [v3 setObject:attributes forKeyedSubscript:@"attributes"];
  }

  v6 = self->_class;
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"class"];
    if (![(NSString *)self->_class isEqualToString:@"CVPixelBufferRef"])
    {
      v7 = self;
      objc_sync_enter(v7);
      [v3 setObject:v7->_value forKeyedSubscript:@"value"];
      objc_sync_exit(v7);
    }
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumSupportedVersion.major];
  [v3 setObject:v8 forKeyedSubscript:@"minimumSupportedVersionMajor"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumSupportedVersion.minor];
  [v3 setObject:v9 forKeyedSubscript:@"minimumSupportedVersionMinor"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumSupportedVersion.patch];
  [v3 setObject:v10 forKeyedSubscript:@"minimumSupportedVersionPatch"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CMContinuityCaptureControl *)self name];
  [v7 encodeObject:v4 forKey:@"name"];

  [v7 encodeInt64:-[CMContinuityCaptureControl entity](self forKey:{"entity"), @"entity"}];
  [v7 encodeObject:self->_class forKey:@"class"];
  v5 = [(NSString *)self->_class isEqualToString:@"CVPixelBufferRef"];
  v6 = [(CMContinuityCaptureControl *)self value];
  if (v5)
  {
    [v7 encodeCVPixelBuffer:v6 forKey:@"value"];
  }

  else
  {
    [v7 encodeObject:v6 forKey:@"value"];
  }

  [v7 encodeInt64:self->_minimumSupportedVersion.major forKey:@"minimumSupportedVersionMajor"];
  [v7 encodeInt64:self->_minimumSupportedVersion.minor forKey:@"minimumSupportedVersionMinor"];
  [v7 encodeInt64:self->_minimumSupportedVersion.patch forKey:@"minimumSupportedVersionPatch"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = v3->_value;
  objc_sync_exit(v3);

  v5 = [CMContinuityCaptureControl alloc];
  entity = v3->_entity;
  attributes = v3->_attributes;
  name = v3->_name;
  v11 = *&v3->_minimumSupportedVersion.major;
  patch = v3->_minimumSupportedVersion.patch;
  v9 = [(CMContinuityCaptureControl *)v5 initWithName:name attributes:attributes entity:entity minimumSupportedVersion:&v11 value:v4];

  return v9;
}

- (NSString)debugDescription
{
  v3 = [(CMContinuityCaptureControl *)self name];
  v4 = [v3 isEqualToString:@"kCMContinuityCaptureControlDebugInfo"];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(CMContinuityCaptureControl *)self name];
  v7 = [(CMContinuityCaptureControl *)self entity];
  if (v4)
  {
    v8 = self->_class;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%ld.%ld.%ld]", self->_minimumSupportedVersion.major, self->_minimumSupportedVersion.minor, self->_minimumSupportedVersion.patch];
    v10 = [v5 stringWithFormat:@"%@ entity:%u %@ minimumSupportedVersion: %@", v6, v7, v8, v9];
  }

  else
  {
    v9 = [(CMContinuityCaptureControl *)self value];
    v11 = self->_class;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%ld.%ld.%ld]", self->_minimumSupportedVersion.major, self->_minimumSupportedVersion.minor, self->_minimumSupportedVersion.patch];
    v10 = [v5 stringWithFormat:@"%@ entity:%u value:%@ %@ minimumSupportedVersion: %@", v6, v7, v9, v11, v12];
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_value;
  objc_sync_exit(v2);

  return v3;
}

- (void)setValue:(id)a3
{
  v5 = a3;
  if (v5)
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
      v9 = self;
      objc_sync_enter(v9);
      objc_storeStrong(&v9->_value, a3);
      objc_sync_exit(v9);

      goto LABEL_10;
    }

    v10 = CFGetTypeID(v5);
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
        v18 = self;
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
      v18 = self;
      v14 = "%@ Unhandled value unknown type";
      v15 = v12;
      v16 = 12;
      goto LABEL_18;
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (CMContinuityCaptureControl)initWithName:(id)a3 attributes:(id)a4 entity:(int64_t)a5 minimumSupportedVersion:(id *)a6 value:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = CMContinuityCaptureControl;
  v16 = [(CMContinuityCaptureControl *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, a3);
    objc_storeStrong(&v17->_attributes, a4);
    v17->_entity = a5;
    v18 = *&a6->var0;
    v17->_minimumSupportedVersion.patch = a6->var2;
    *&v17->_minimumSupportedVersion.major = v18;
    [(CMContinuityCaptureControl *)v17 setValue:v15];
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