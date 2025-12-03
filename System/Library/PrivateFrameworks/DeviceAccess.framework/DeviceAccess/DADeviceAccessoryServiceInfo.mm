@interface DADeviceAccessoryServiceInfo
- (BOOL)isEqual:(id)equal;
- (DADeviceAccessoryServiceInfo)initWithCoder:(id)coder;
- (DADeviceAccessoryServiceInfo)initWithName:(id)name authorizationLevel:(unint64_t)level bundleID:(id)d deviceID:(id)iD;
- (DADeviceAccessoryServiceInfo)initWithPersistentDictionaryRepresentation:(id)representation deviceID:(id)d error:(id *)error;
- (DADeviceAccessoryServiceInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (id)persistentDictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DADeviceAccessoryServiceInfo

- (DADeviceAccessoryServiceInfo)initWithName:(id)name authorizationLevel:(unint64_t)level bundleID:(id)d deviceID:(id)iD
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = DADeviceAccessoryServiceInfo;
  v14 = [(DADeviceAccessoryServiceInfo *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_authorizationLevel = level;
    objc_storeStrong(&v14->_associatedBundleID, d);
    objc_storeStrong(&v15->_associatedDeviceID, iD);
    objc_storeStrong(&v15->_name, name);
    v16 = v15;
  }

  return v15;
}

- (DADeviceAccessoryServiceInfo)initWithPersistentDictionaryRepresentation:(id)representation deviceID:(id)d error:(id *)error
{
  representationCopy = representation;
  dCopy = d;
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

    objc_storeStrong(&v10->_associatedDeviceID, d);
    CFStringGetTypeID();
    v13 = CFDictionaryGetTypedValue();
    name = v10->_name;
    v10->_name = v13;

    v15 = v10;
  }

  else
  {
    [DADeviceAppAccessInfo initWithPersistentDictionaryRepresentation:error error:?];
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

- (DADeviceAccessoryServiceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DADeviceAccessoryServiceInfo *)self init];
  if (v5)
  {
    v6 = coderCopy;
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
    [DADeviceAccessoryServiceInfo initWithCoder:coderCopy];
  }

  return v5;
}

- (DADeviceAccessoryServiceInfo)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(DADeviceAccessoryServiceInfo *)self init];
  if (!v7)
  {
    if (error)
    {
      v23 = objc_opt_class();
      DAErrorF(350001, "%@ init failed", v16, v17, v18, v19, v20, v21, v23);
LABEL_11:
      *error = v14 = 0;
      goto LABEL_6;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_6;
  }

  if (MEMORY[0x24C1DC9E0](objectCopy) != MEMORY[0x277D86468])
  {
    if (error)
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  authorizationLevel = self->_authorizationLevel;
  v9 = coderCopy;
  if (authorizationLevel)
  {
    [coderCopy encodeInteger:authorizationLevel forKey:@"auL"];
    coderCopy = v9;
  }

  associatedBundleID = self->_associatedBundleID;
  if (associatedBundleID)
  {
    [v9 encodeObject:associatedBundleID forKey:@"bndI"];
    coderCopy = v9;
  }

  associatedDeviceID = self->_associatedDeviceID;
  if (associatedDeviceID)
  {
    [v9 encodeObject:associatedDeviceID forKey:@"asdID"];
    coderCopy = v9;
  }

  name = self->_name;
  if (name)
  {
    [v9 encodeObject:name forKey:@"name"];
    coderCopy = v9;
  }
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  authorizationLevel = self->_authorizationLevel;
  if (authorizationLevel)
  {
    xpc_dictionary_set_uint64(objectCopy, "auL", authorizationLevel);
  }

  associatedBundleID = self->_associatedBundleID;
  v8 = v5;
  uTF8String = [(NSString *)associatedBundleID UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v8, "bndI", uTF8String);
  }

  associatedDeviceID = self->_associatedDeviceID;
  v11 = v8;
  uTF8String2 = [(NSString *)associatedDeviceID UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v11, "asdID", uTF8String2);
  }

  name = self->_name;
  xdict = v11;
  uTF8String3 = [(NSString *)name UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(xdict, "name", uTF8String3);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[2] = self->_authorizationLevel;
  v6 = [(NSString *)self->_associatedBundleID copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_associatedDeviceID copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_name copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    authorizationLevel = self->_authorizationLevel;
    if (authorizationLevel != [(DADeviceAccessoryServiceInfo *)v6 authorizationLevel])
    {
      v14 = 0;
LABEL_27:

      goto LABEL_28;
    }

    associatedBundleID = self->_associatedBundleID;
    associatedBundleID = [(DADeviceAccessoryServiceInfo *)v6 associatedBundleID];
    v10 = associatedBundleID;
    v11 = associatedBundleID;
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
    associatedDeviceID = [(DADeviceAccessoryServiceInfo *)v6 associatedDeviceID];
    v17 = associatedDeviceID;
    v18 = associatedDeviceID;
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
    name = [(DADeviceAccessoryServiceInfo *)v6 name];
    v22 = name;
    v23 = name;
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

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
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