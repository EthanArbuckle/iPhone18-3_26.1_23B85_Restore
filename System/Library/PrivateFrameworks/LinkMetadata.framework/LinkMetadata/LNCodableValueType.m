@interface LNCodableValueType
+ (id)codableValueTypeWithIdentifier:(id)a3;
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)a3;
- (Class)objectClassSubclass;
- (LNCodableValueType)initWithCoder:(id)a3;
- (LNCodableValueType)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 availabilityAnnotations:(id)a5 contentTypeIdentifier:(id)a6;
- (LNCodableValueType)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 availabilityAnnotations:(id)a5 contentTypeIdentifier:(id)a6 displayRepresentation:(id)a7;
- (NSString)contentTypeIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNCodableValueType

+ (id)objectClassesForCoding
{
  if (objectClassesForCoding_onceToken != -1)
  {
    dispatch_once(&objectClassesForCoding_onceToken, &__block_literal_global_2345);
  }

  v3 = objectClassesForCoding_objectClassesForCoding;

  return v3;
}

void __44__LNCodableValueType_objectClassesForCoding__block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{objc_opt_class(), 0}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = +[LNCodableValueType supportedValueTypes];
  v2 = [v1 allValues];

  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [v0 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v6++), "objectClassSubclass")}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = [v0 copy];
  v8 = objectClassesForCoding_objectClassesForCoding;
  objectClassesForCoding_objectClassesForCoding = v7;

  v9 = *MEMORY[0x1E69E9840];
}

- (Class)objectClassSubclass
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v16[0] = v4;
  v5 = [(LNCodableValueType *)self identifier];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  v16[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

  v8 = [v7 componentsJoinedByString:@"_"];
  v9 = NSClassFromString(v8);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    os_unfair_lock_lock(&valueClassRegistrationLock);
    ClassPair = objc_allocateClassPair(v3, [(NSString *)v8 cStringUsingEncoding:4], 0);
    if (ClassPair)
    {
      v12 = ClassPair;
      objc_registerClassPair(ClassPair);
      os_unfair_lock_unlock(&valueClassRegistrationLock);
      v10 = v12;
    }

    else
    {
      os_unfair_lock_unlock(&valueClassRegistrationLock);
      v10 = NSClassFromString(v8);
    }
  }

  v13 = v10;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v12) = 1;
    goto LABEL_14;
  }

  v6 = v4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v25.receiver = self;
    v25.super_class = LNCodableValueType;
    if ([(LNValueType *)&v25 isEqual:v6])
    {
      v7 = [(LNCodableValueType *)self identifier];
      v8 = [(LNCodableValueType *)v6 identifier];
      v9 = v7;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        v13 = v10;
        v14 = v9;
        if (!v9 || !v10)
        {
          goto LABEL_29;
        }

        v15 = [v9 isEqualToString:v10];

        if (!v15)
        {
          LOBYTE(v12) = 0;
LABEL_30:

          goto LABEL_12;
        }
      }

      v17 = [(LNCodableValueType *)self mangledTypeName];
      v18 = [(LNCodableValueType *)v6 mangledTypeName];
      v14 = v17;
      v19 = v18;
      v13 = v19;
      if (v14 == v19)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        v20 = v19;
        v21 = v14;
        if (!v14 || !v19)
        {
LABEL_28:

LABEL_29:
          goto LABEL_30;
        }

        v12 = [v14 isEqualToString:v19];

        if (!v12)
        {
          goto LABEL_29;
        }
      }

      v22 = [(LNCodableValueType *)self availabilityAnnotations];
      v23 = [(LNCodableValueType *)v6 availabilityAnnotations];
      v21 = v22;
      v24 = v23;
      v20 = v24;
      if (v21 == v24)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = 0;
        if (v21 && v24)
        {
          LOBYTE(v12) = [v21 isEqualToDictionary:v24];
        }
      }

      goto LABEL_28;
    }
  }

  else
  {

    v6 = 0;
  }

  LOBYTE(v12) = 0;
LABEL_12:

LABEL_14:
  return v12;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = LNCodableValueType;
  v3 = [(LNValueType *)&v7 hash];
  v4 = [(LNCodableValueType *)self identifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(LNCodableValueType *)self identifier];
  v4 = [v2 stringWithFormat:@"Codable<%@>", v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = LNCodableValueType;
  v4 = a3;
  [(LNValueType *)&v8 encodeWithCoder:v4];
  v5 = [(LNCodableValueType *)self identifier:v8.receiver];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNCodableValueType *)self mangledTypeName];
  [v4 encodeObject:v6 forKey:@"mangledTypeName"];

  v7 = [(LNCodableValueType *)self availabilityAnnotations];
  [v4 encodeObject:v7 forKey:@"availabilityAnnotations"];
}

- (LNCodableValueType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"availabilityAnnotations"];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];

  v13 = 0;
  if (v5 && v6 && v12)
  {
    v14 = [v12 contentType];
    self = [(LNCodableValueType *)self initWithIdentifier:v5 mangledTypeName:v6 availabilityAnnotations:v11 contentTypeIdentifier:v14];

    v13 = self;
  }

  return v13;
}

- (LNCodableValueType)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 availabilityAnnotations:(id)a5 contentTypeIdentifier:(id)a6 displayRepresentation:(id)a7
{
  v12 = a7;
  v13 = [(LNCodableValueType *)self initWithIdentifier:a3 mangledTypeName:a4 availabilityAnnotations:a5 contentTypeIdentifier:a6];
  if (v13)
  {
    v14 = [v12 copy];
    displayRepresentation = v13->_displayRepresentation;
    v13->_displayRepresentation = v14;

    v16 = v13;
  }

  return v13;
}

- (LNCodableValueType)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 availabilityAnnotations:(id)a5 contentTypeIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[LNContentType alloc] initWithContentType:v13];

  v24.receiver = self;
  v24.super_class = LNCodableValueType;
  v15 = [(LNValueType *)&v24 initWithContentType:v14];

  if (v15)
  {
    v16 = [v10 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [v11 copy];
    mangledTypeName = v15->_mangledTypeName;
    v15->_mangledTypeName = v18;

    v20 = [v12 copy];
    availabilityAnnotations = v15->_availabilityAnnotations;
    v15->_availabilityAnnotations = v20;

    v22 = v15;
  }

  return v15;
}

+ (id)codableValueTypeWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"LNCodableValueType.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v6 = +[LNCodableValueType supportedValueTypes];
  v7 = [v6 objectForKeyedSubscript:v5];

  return v7;
}

- (NSString)contentTypeIdentifier
{
  v2 = [(LNValueType *)self contentType];
  v3 = [v2 contentType];

  return v3;
}

@end