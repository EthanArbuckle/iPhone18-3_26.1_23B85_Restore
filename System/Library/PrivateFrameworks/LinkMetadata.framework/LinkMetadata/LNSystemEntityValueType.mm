@interface LNSystemEntityValueType
+ (id)objectClassesForCoding;
+ (id)valueTypeWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (Class)objectClassSubclass;
- (LNSystemEntityValueType)initWithCoder:(id)a3;
- (LNSystemEntityValueType)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 contentTypeIdentifier:(id)a5;
- (NSString)contentTypeIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSystemEntityValueType

+ (id)objectClassesForCoding
{
  if (objectClassesForCoding_onceToken_3979[0] != -1)
  {
    dispatch_once(objectClassesForCoding_onceToken_3979, &__block_literal_global_3980);
  }

  v3 = objectClassesForCoding_objectClassesForCoding_3981;

  return v3;
}

void __49__LNSystemEntityValueType_objectClassesForCoding__block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{objc_opt_class(), 0}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = +[LNSystemEntityValueType supportedValueTypes];
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
  v8 = objectClassesForCoding_objectClassesForCoding_3981;
  objectClassesForCoding_objectClassesForCoding_3981 = v7;

  v9 = *MEMORY[0x1E69E9840];
}

- (Class)objectClassSubclass
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[.-]" options:0 error:0];
  v5 = [(LNEntityValueType *)self identifier];
  v6 = [(LNEntityValueType *)self identifier];
  v7 = [v4 stringByReplacingMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v6, "length"), @"_"}];

  v8 = NSStringFromClass(v3);
  v18[0] = v8;
  v18[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v10 = [v9 componentsJoinedByString:@"_"];
  v11 = NSClassFromString(v10);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    os_unfair_lock_lock(&systemEntityValueClassRegistrationLock);
    ClassPair = objc_allocateClassPair(v3, [(NSString *)v10 cStringUsingEncoding:4], 0);
    if (ClassPair)
    {
      v14 = ClassPair;
      objc_registerClassPair(ClassPair);
      os_unfair_lock_unlock(&systemEntityValueClassRegistrationLock);
      v12 = v14;
    }

    else
    {
      os_unfair_lock_unlock(&systemEntityValueClassRegistrationLock);
      v12 = NSClassFromString(v10);
    }
  }

  v15 = v12;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
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
    v19.receiver = self;
    v19.super_class = LNSystemEntityValueType;
    if ([(LNEntityValueType *)&v19 isEqual:v6])
    {
      v7 = [(LNEntityValueType *)self identifier];
      v8 = [(LNEntityValueType *)v6 identifier];
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
LABEL_22:

LABEL_23:
          goto LABEL_12;
        }

        v12 = [v9 isEqualToString:v10];

        if (!v12)
        {
          goto LABEL_23;
        }
      }

      v16 = [(LNSystemEntityValueType *)self bundleIdentifier];
      v17 = [(LNSystemEntityValueType *)v6 bundleIdentifier];
      v14 = v16;
      v18 = v17;
      v13 = v18;
      if (v14 == v18)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = 0;
        if (v14 && v18)
        {
          LOBYTE(v12) = [v14 isEqualToString:v18];
        }
      }

      goto LABEL_22;
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
  v7.super_class = LNSystemEntityValueType;
  v3 = [(LNEntityValueType *)&v7 hash];
  v4 = [(LNSystemEntityValueType *)self bundleIdentifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LNSystemEntityValueType *)self bundleIdentifier];
  v5 = [(LNEntityValueType *)self identifier];
  v6 = [v3 stringWithFormat:@"SystemEntity<%@.%@>", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LNSystemEntityValueType;
  v4 = a3;
  [(LNEntityValueType *)&v6 encodeWithCoder:v4];
  v5 = [(LNSystemEntityValueType *)self bundleIdentifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];
}

- (LNSystemEntityValueType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v11 = 0;
  }

  else
  {
    v10 = [v7 contentType];
    self = [(LNSystemEntityValueType *)self initWithIdentifier:v5 bundleIdentifier:v6 contentTypeIdentifier:v10];

    v11 = self;
  }

  return v11;
}

- (LNSystemEntityValueType)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 contentTypeIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[LNContentType alloc] initWithContentType:v9];

  v17.receiver = self;
  v17.super_class = LNSystemEntityValueType;
  v12 = [(LNEntityValueType *)&v17 initWithIdentifier:v10 contentType:v11];

  if (v12)
  {
    v13 = [v8 copy];
    bundleIdentifier = v12->_bundleIdentifier;
    v12->_bundleIdentifier = v13;

    v15 = v12;
  }

  return v12;
}

+ (id)valueTypeWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"LNSystemEntityValueType.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v6 = +[LNSystemEntityValueType supportedValueTypes];
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