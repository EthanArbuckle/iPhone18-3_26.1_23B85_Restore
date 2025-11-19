@interface HMBModelField
+ (HMBModelField)fieldWithClass:(Class)a3;
+ (HMBModelField)fieldWithClass:(Class)a3 options:(id)a4;
+ (id)deprecatedField;
+ (id)optionalFieldWithClass:(Class)a3;
+ (id)optionalFieldWithClass:(Class)a3 options:(id)a4;
- (HMBModelField)initWithClass:(Class)a3;
- (HMBModelField)initWithClass:(Class)a3 options:(id)a4;
- (id)decodeQueryableValue:(id)a3;
- (id)description;
- (id)descriptionForEncodedQueryableValue:(id)a3;
- (id)encodeQueryableValue:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setDefaultValue:(id)a3;
@end

@implementation HMBModelField

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(HMBModelField *)[HMBMutableModelField allocWithZone:?], "initWithClass:", [(HMBModelField *)self classObj]];
  [(HMBModelField *)v4 setOptional:[(HMBModelField *)self isOptional]];
  [(HMBModelField *)v4 setLoggingVisibility:[(HMBModelField *)self loggingVisibility]];
  v5 = [(HMBModelField *)self defaultValue];
  [(HMBModelField *)v4 setDefaultValue:v5];

  v6 = [(HMBModelField *)self readonlyVersion];
  [(HMBModelField *)v4 setReadonlyVersion:v6];

  v7 = [(HMBModelField *)self unavailableVersion];
  [(HMBModelField *)v4 setUnavailableVersion:v7];

  v8 = [(HMBModelField *)self externalRecordField];
  [(HMBModelField *)v4 setExternalRecordField:v8];

  [(HMBModelField *)v4 setConformsToHMBModelNativeCKWrapper:[(HMBModelField *)self conformsToHMBModelNativeCKWrapper]];
  [(HMBModelField *)v4 setExcludeFromCloudStorage:[(HMBModelField *)self excludeFromCloudStorage]];
  v9 = [(HMBModelField *)self encodeBlock];
  [(HMBModelField *)v4 setEncodeBlock:v9];

  v10 = [(HMBModelField *)self decodeBlock];
  [(HMBModelField *)v4 setDecodeBlock:v10];

  v11 = [(HMBModelField *)self descriptionBlock];
  [(HMBModelField *)v4 setDescriptionBlock:v11];

  return v4;
}

+ (id)deprecatedField
{
  v2 = [HMBMutableModelField alloc];
  v3 = [(HMBModelField *)v2 initWithClass:objc_opt_class() options:MEMORY[0x277CBEBF8]];
  [(HMBModelField *)v3 setLoggingVisibility:1];
  v4 = [(HMBMutableModelField *)v3 copy];

  return v4;
}

+ (id)optionalFieldWithClass:(Class)a3 options:(id)a4
{
  v5 = a4;
  v6 = [(HMBModelField *)[HMBMutableModelField alloc] initWithClass:a3 options:v5];

  [(HMBModelField *)v6 setOptional:1];
  v7 = [(HMBMutableModelField *)v6 copy];

  return v7;
}

+ (HMBModelField)fieldWithClass:(Class)a3 options:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithClass:a3 options:v6];

  return v7;
}

+ (id)optionalFieldWithClass:(Class)a3
{
  v4 = [HMBMutableModelField alloc];
  v5 = [(HMBModelField *)v4 initWithClass:a3 options:MEMORY[0x277CBEBF8]];
  [(HMBModelField *)v5 setOptional:1];
  v6 = [(HMBMutableModelField *)v5 copy];

  return v6;
}

+ (HMBModelField)fieldWithClass:(Class)a3
{
  v4 = [a1 alloc];
  v5 = [v4 initWithClass:a3 options:MEMORY[0x277CBEBF8]];

  return v5;
}

- (id)descriptionForEncodedQueryableValue:(id)a3
{
  v4 = a3;
  v5 = [(HMBModelField *)self descriptionBlock];

  if (v5)
  {
    v6 = [(HMBModelField *)self descriptionBlock];
    v7 = (v6)[2](v6, v4);

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMBModelField *)v9 decodeQueryableValue:v10, v11];
  }
}

- (id)decodeQueryableValue:(id)a3
{
  v4 = a3;
  v5 = [(HMBModelField *)self decodeBlock];

  if (v5)
  {
    v6 = [(HMBModelField *)self decodeBlock];
    v7 = (v6)[2](v6, v4);

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMBModelField *)v9 encodeQueryableValue:v10, v11];
  }
}

- (id)encodeQueryableValue:(id)a3
{
  v4 = a3;
  [(HMBModelField *)self classObj];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v5 = [(HMBModelField *)self encodeBlock];

  if (!v5)
  {
LABEL_7:
    v9 = _HMFPreconditionFailure();
    [(HMBModelField *)v9 setDefaultValue:v10, v11];
    return result;
  }

  v6 = [(HMBModelField *)self encodeBlock];
  v7 = (v6)[2](v6, v4);

  return v7;
}

- (void)setDefaultValue:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 && ([(HMBModelField *)self classObj], (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromClass([(HMBModelField *)v7 classObj]);
      v14 = 138544130;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to set a default value %@ of type %@ when the stored type is %@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    objc_storeStrong(&self->_defaultValue, a3);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = NSStringFromClass([(HMBModelField *)self classObj]);
  v5 = [v3 stringWithFormat:@"<HMBModelField class: %@", v4];

  if ([(HMBModelField *)self isOptional])
  {
    [v5 appendFormat:@" optional: YES"];
  }

  v6 = [(HMBModelField *)self externalRecordField];

  if (v6)
  {
    v7 = [(HMBModelField *)self externalRecordField];
    [v5 appendFormat:@" recordField: %@", v7];
  }

  if ([(HMBModelField *)self loggingVisibility])
  {
    [v5 appendFormat:@" loggingVisibility: %ld", -[HMBModelField loggingVisibility](self, "loggingVisibility")];
  }

  v8 = [(HMBModelField *)self defaultValue];

  if (v8)
  {
    v9 = [(HMBModelField *)self defaultValue];
    [v5 appendFormat:@" defaultValue: %@", v9];
  }

  v10 = [(HMBModelField *)self readonlyVersion];

  if (v10)
  {
    v11 = [(HMBModelField *)self readonlyVersion];
    [v5 appendFormat:@" readonlyVersion: %@", v11];
  }

  v12 = [(HMBModelField *)self unavailableVersion];

  if (v12)
  {
    v13 = [(HMBModelField *)self unavailableVersion];
    [v5 appendFormat:@" unavailableVersion: %@", v13];
  }

  [v5 appendString:@">"];
  v14 = [v5 copy];

  return v14;
}

- (HMBModelField)initWithClass:(Class)a3 options:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v33.receiver = self;
  v33.super_class = HMBModelField;
  v7 = [(HMBModelField *)&v33 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_25;
  }

  objc_storeStrong(&v7->_classObj, a3);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v29 + 1) + 8 * v13++) applyTo:v8];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v11);
  }

  v8->_excludeFromCloudStorage = 0;
  v14 = [(objc_class *)a3 conformsToProtocol:&unk_283EBFD90];
  v8->_conformsToHMBModelNativeCKWrapper = v14;
  v15 = [(HMBModelField *)v8 externalRecordField];

  if (v14)
  {
    if (v15)
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(objc_class *)a3 includeInModelEncoding]^ 1;
LABEL_16:
        v8->_excludeFromCloudStorage = v16;
        goto LABEL_17;
      }

LABEL_15:
      v16 = 1;
      goto LABEL_16;
    }

    _HMFPreconditionFailure();
LABEL_27:
    _HMFPreconditionFailure();
  }

  if (v15)
  {
    if (([(objc_class *)a3 conformsToProtocol:&unk_283ECB100]& 1) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_17:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v25 + 1) + 8 * v21++) applyTo:{v8, v25}];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v19);
  }

  v8->_loggingVisibility = 0;
  v22 = v8;
LABEL_25:

  v23 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HMBModelField)initWithClass:(Class)a3
{
  v8.receiver = self;
  v8.super_class = HMBModelField;
  v4 = [(HMBModelField *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_classObj, a3);
    v5->_loggingVisibility = 0;
    v6 = v5;
  }

  return v5;
}

@end