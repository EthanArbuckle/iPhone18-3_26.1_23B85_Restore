@interface DADeviceAccessoryServiceInfo
- (BOOL)isEqual:(id)a3;
- (DADeviceAccessoryServiceInfo)initWithCoder:(id)a3;
- (DADeviceAccessoryServiceInfo)initWithName:(id)a3 authorizationLevel:(unint64_t)a4 bundleID:(id)a5 deviceID:(id)a6;
- (DADeviceAccessoryServiceInfo)initWithPersistentDictionaryRepresentation:(id)a3 deviceID:(id)a4 error:(id *)a5;
- (DADeviceAccessoryServiceInfo)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)persistentDictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DADeviceAccessoryServiceInfo

- (DADeviceAccessoryServiceInfo)initWithName:(id)a3 authorizationLevel:(unint64_t)a4 bundleID:(id)a5 deviceID:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = DADeviceAccessoryServiceInfo;
  v14 = [(DADeviceAccessoryServiceInfo *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_authorizationLevel = a4;
    objc_storeStrong(&v14->_associatedBundleID, a5);
    objc_storeStrong(&v15->_associatedDeviceID, a6);
    objc_storeStrong(&v15->_name, a3);
    v16 = v15;
  }

  return v15;
}

- (DADeviceAccessoryServiceInfo)initWithPersistentDictionaryRepresentation:(id)a3 deviceID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = DADeviceAccessoryServiceInfo;
  v10 = [(DADeviceAccessoryServiceInfo *)&v17 init];
  if (v10)
  {
    v10->_authorizationLevel = CFDictionaryGetInt64();
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    associatedBundleID = v10->_associatedBundleID;
    v10->_associatedBundleID = v11;

    objc_storeStrong(&v10->_associatedDeviceID, a4);
    CFStringGetTypeID();
    v13 = CFDictionaryGetTypedValue();
    name = v10->_name;
    v10->_name = v13;

    v15 = v10;
  }

  else
  {
    [DADeviceAppAccessInfo initWithPersistentDictionaryRepresentation:a5 error:?];
  }

  return v10;
}

- (id)persistentDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_authorizationLevel];
  [v3 setObject:v4 forKeyedSubscript:@"authorizationLevel"];

  associatedBundleID = self->_associatedBundleID;
  if (associatedBundleID)
  {
    [v3 setObject:associatedBundleID forKeyedSubscript:@"deviceAppBundleID"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  v7 = [v3 copy];

  return v7;
}

- (DADeviceAccessoryServiceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DADeviceAccessoryServiceInfo *)self init];
  if (v5)
  {
    v6 = v4;
    if ([v6 containsValueForKey:@"auL"])
    {
      v5->_authorizationLevel = [v6 decodeIntegerForKey:@"auL"];
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v5;
  }

  else
  {
    [DADeviceAccessoryServiceInfo initWithCoder:v4];
  }

  return v5;
}

- (DADeviceAccessoryServiceInfo)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DADeviceAccessoryServiceInfo *)self init];
  if (!v7)
  {
    if (a4)
    {
      v23 = objc_opt_class();
      DAErrorF(350001, "%@ init failed", v16, v17, v18, v19, v20, v21, v23);
LABEL_11:
      *a4 = v14 = 0;
      goto LABEL_6;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_6;
  }

  if (MEMORY[0x24C1DC9E0](v6) != MEMORY[0x277D86468])
  {
    if (a4)
    {
      DAErrorF(350004, "XPC non-dict", v8, v9, v10, v11, v12, v13, v22);
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (CUXPCDecodeUInt64RangedEx() == 6)
  {
    v7->_authorizationLevel = 0;
  }

  CUXPCDecodeNSString();
  CUXPCDecodeNSString();
  CUXPCDecodeNSString();
  v14 = v7;
LABEL_6:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  authorizationLevel = self->_authorizationLevel;
  v9 = v4;
  if (authorizationLevel)
  {
    [v4 encodeInteger:authorizationLevel forKey:@"auL"];
    v4 = v9;
  }

  associatedBundleID = self->_associatedBundleID;
  if (associatedBundleID)
  {
    [v9 encodeObject:associatedBundleID forKey:@"bndI"];
    v4 = v9;
  }

  associatedDeviceID = self->_associatedDeviceID;
  if (associatedDeviceID)
  {
    [v9 encodeObject:associatedDeviceID forKey:@"asdID"];
    v4 = v9;
  }

  name = self->_name;
  if (name)
  {
    [v9 encodeObject:name forKey:@"name"];
    v4 = v9;
  }
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  authorizationLevel = self->_authorizationLevel;
  if (authorizationLevel)
  {
    xpc_dictionary_set_uint64(v4, "auL", authorizationLevel);
  }

  associatedBundleID = self->_associatedBundleID;
  v8 = v5;
  v9 = [(NSString *)associatedBundleID UTF8String];
  if (v9)
  {
    xpc_dictionary_set_string(v8, "bndI", v9);
  }

  associatedDeviceID = self->_associatedDeviceID;
  v11 = v8;
  v12 = [(NSString *)associatedDeviceID UTF8String];
  if (v12)
  {
    xpc_dictionary_set_string(v11, "asdID", v12);
  }

  name = self->_name;
  xdict = v11;
  v14 = [(NSString *)name UTF8String];
  if (v14)
  {
    xpc_dictionary_set_string(xdict, "name", v14);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[2] = self->_authorizationLevel;
  v6 = [(NSString *)self->_associatedBundleID copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_associatedDeviceID copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_name copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    authorizationLevel = self->_authorizationLevel;
    if (authorizationLevel != [(DADeviceAccessoryServiceInfo *)v6 authorizationLevel])
    {
      v14 = 0;
LABEL_27:

      goto LABEL_28;
    }

    associatedBundleID = self->_associatedBundleID;
    v9 = [(DADeviceAccessoryServiceInfo *)v6 associatedBundleID];
    v10 = associatedBundleID;
    v11 = v9;
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      if ((v10 != 0) == (v11 == 0))
      {
        v14 = 0;
        v17 = v11;
LABEL_24:

        goto LABEL_25;
      }

      v13 = [(NSString *)v10 isEqual:v11];

      if (!v13)
      {
        v14 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    associatedDeviceID = self->_associatedDeviceID;
    v16 = [(DADeviceAccessoryServiceInfo *)v6 associatedDeviceID];
    v17 = associatedDeviceID;
    v18 = v16;
    v10 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      if ((v17 != 0) == (v18 == 0))
      {
        v14 = 0;
        v22 = v18;
LABEL_23:

        goto LABEL_24;
      }

      v19 = [(NSString *)v17 isEqual:v18];

      if (!v19)
      {
        v14 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    name = self->_name;
    v21 = [(DADeviceAccessoryServiceInfo *)v6 name];
    v22 = name;
    v23 = v21;
    v17 = v23;
    if (v22 == v23)
    {
      v14 = 1;
    }

    else if ((v22 != 0) == (v23 == 0))
    {
      v14 = 0;
    }

    else
    {
      v14 = [(NSString *)v22 isEqual:v23];
    }

    goto LABEL_23;
  }

  v14 = 1;
LABEL_28:

  return v14;
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  name = self->_name;
  if (name)
  {
    v15 = name;
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  if (self->_authorizationLevel)
  {
    authorizationLevel = self->_authorizationLevel;
    CUAppendF();
    v7 = v4;

    v4 = v7;
  }

  associatedBundleID = self->_associatedBundleID;
  if (associatedBundleID)
  {
    v17 = associatedBundleID;
    CUAppendF();
    v9 = v4;

    v4 = v9;
  }

  associatedDeviceID = self->_associatedDeviceID;
  if (associatedDeviceID)
  {
    v18 = associatedDeviceID;
    CUAppendF();
    v11 = v4;

    v4 = v11;
  }

  v12 = &stru_285B4C350;
  if (v4)
  {
    v12 = v4;
  }

  v13 = v12;

  return v13;
}

- (unint64_t)hash
{
  name = self->_name;
  if (name)
  {
    v4 = [(NSString *)name hash]^ 0x13;
  }

  else
  {
    v4 = 19;
  }

  associatedBundleID = self->_associatedBundleID;
  v6 = self->_authorizationLevel + v4;
  if (associatedBundleID)
  {
    v6 ^= [(NSString *)associatedBundleID hash];
  }

  associatedDeviceID = self->_associatedDeviceID;
  if (associatedDeviceID)
  {
    v6 ^= [(NSString *)associatedDeviceID hash];
  }

  return v6;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v2 = objc_opt_class();
  v9 = DAErrorF(350000, "%@ init failed", v3, v4, v5, v6, v7, v8, v2);
  [a1 failWithError:v9];
}

@end