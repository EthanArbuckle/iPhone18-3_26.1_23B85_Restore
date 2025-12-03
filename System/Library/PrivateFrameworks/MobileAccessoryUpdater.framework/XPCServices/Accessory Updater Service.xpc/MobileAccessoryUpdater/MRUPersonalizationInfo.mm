@interface MRUPersonalizationInfo
- (MRUPersonalizationInfo)initWithCoder:(id)coder;
- (MRUPersonalizationInfo)initWithHardwareInfo:(id)info componentName:(id)name objectName:(id)objectName nonce:(id)nonce;
- (MRUPersonalizationInfo)initWithHardwareInfo:(id)info componentName:(id)name objectName:(id)objectName nonce:(id)nonce tagNumber:(id)number;
- (MRUPersonalizationInfo)initWithOptions:(id)options error:(id *)error;
- (NSDictionary)asDictionary;
- (NSString)_componentNameSuffix;
- (NSString)_propertyNameSuffix;
- (NSString)boardIDPropertyName;
- (NSString)chipIDPropertyName;
- (NSString)ecidPropertyName;
- (NSString)noncePropertyName;
- (NSString)productionModePropertyName;
- (NSString)securityDomainPropertyName;
- (NSString)securityModePropertyName;
- (NSString)tag;
- (NSString)ticketName;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRUPersonalizationInfo

- (MRUPersonalizationInfo)initWithHardwareInfo:(id)info componentName:(id)name objectName:(id)objectName nonce:(id)nonce
{
  infoCopy = info;
  nameCopy = name;
  objectNameCopy = objectName;
  nonceCopy = nonce;
  v19.receiver = self;
  v19.super_class = MRUPersonalizationInfo;
  v15 = [(MRUPersonalizationInfo *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_hardwareInfo, info);
    objc_storeStrong(&v16->_componentName, name);
    objc_storeStrong(&v16->_objectName, objectName);
    objc_storeStrong(&v16->_nonce, nonce);
    tagNumber = v16->_tagNumber;
    v16->_tagNumber = 0;
  }

  return v16;
}

- (MRUPersonalizationInfo)initWithHardwareInfo:(id)info componentName:(id)name objectName:(id)objectName nonce:(id)nonce tagNumber:(id)number
{
  numberCopy = number;
  v14 = [(MRUPersonalizationInfo *)self initWithHardwareInfo:info componentName:name objectName:objectName nonce:nonce];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_tagNumber, number);
  }

  return v15;
}

- (MRUPersonalizationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MRUPersonalizationInfo;
  v5 = [(MRUPersonalizationInfo *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"hardwareInfo"];
    hardwareInfo = v5->_hardwareInfo;
    v5->_hardwareInfo = v6;

    v8 = [coderCopy decodeObjectForKey:@"componentName"];
    componentName = v5->_componentName;
    v5->_componentName = v8;

    v10 = [coderCopy decodeObjectForKey:@"objectName"];
    objectName = v5->_objectName;
    v5->_objectName = v10;

    v12 = [coderCopy decodeObjectForKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v12;

    if ([coderCopy containsValueForKey:@"tagNumber"])
    {
      v14 = [coderCopy decodeObjectForKey:@"tagNumber"];
    }

    else
    {
      v14 = 0;
    }

    tagNumber = v5->_tagNumber;
    v5->_tagNumber = v14;
  }

  return v5;
}

- (MRUPersonalizationInfo)initWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v31.receiver = self;
  v31.super_class = MRUPersonalizationInfo;
  v7 = [(MRUPersonalizationInfo *)&v31 init];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = [optionsCopy objectForKeyedSubscript:@"HardwareInfo"];
  if (!v8)
  {
    if (*error)
    {
      v40 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithFormat:@"No hardwareInfo in options dict"];
      v41 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v20];
    }

    goto LABEL_19;
  }

  v9 = v8;
  v30 = 0;
  v10 = [[MRUHardwareInfo alloc] initWithOptions:v8 error:&v30];
  v11 = v30;
  if (!v10)
  {
    if (*error)
    {
      v38[0] = NSLocalizedDescriptionKey;
      v21 = [NSString stringWithFormat:@"Failed to create hardwareInfo, options: %@", v9];
      v38[1] = NSUnderlyingErrorKey;
      v39[0] = v21;
      v39[1] = v11;
      v22 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
      *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:3 userInfo:v22];
    }

    goto LABEL_18;
  }

  objc_storeStrong(&v7->_hardwareInfo, v10);
  v12 = [optionsCopy objectForKeyedSubscript:@"ComponentName"];
  if (!v12)
  {
    if (*error)
    {
      v36 = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithFormat:@"No component name in options dict"];
      v37 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v24];
    }

    goto LABEL_17;
  }

  v13 = v12;
  objc_storeStrong(&v7->_componentName, v12);
  v14 = [optionsCopy objectForKeyedSubscript:@"ObjectName"];
  if (!v14)
  {
    if (*error)
    {
      v34 = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithFormat:@"No object name in options dict"];
      v35 = v25;
      v26 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v26];
    }

LABEL_17:
LABEL_18:

    goto LABEL_19;
  }

  v15 = v14;
  objc_storeStrong(&v7->_objectName, v14);
  v16 = [optionsCopy objectForKeyedSubscript:@"Nonce"];
  if (v16)
  {
    objc_storeStrong(&v7->_nonce, v16);
    v17 = [optionsCopy objectForKeyedSubscript:@"TagNumber"];
    tagNumber = v7->_tagNumber;
    v7->_tagNumber = v17;
  }

  else
  {
    if (!*error)
    {
      goto LABEL_23;
    }

    v32 = NSLocalizedDescriptionKey;
    tagNumber = [NSString stringWithFormat:@"No nonce in options dict"];
    v33 = tagNumber;
    v29 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:2 userInfo:v29];
  }

LABEL_23:
  if (v16)
  {
LABEL_24:
    v27 = v7;
    goto LABEL_25;
  }

LABEL_19:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_hardwareInfo forKey:@"hardwareInfo"];
  [coderCopy encodeObject:self->_componentName forKey:@"componentName"];
  [coderCopy encodeObject:self->_objectName forKey:@"objectName"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    [coderCopy encodeObject:tagNumber forKey:@"tagNumber"];
  }
}

- (NSDictionary)asDictionary
{
  v9[0] = @"HardwareInfo";
  asDictionary = [(MRUHardwareInfo *)self->_hardwareInfo asDictionary];
  v10 = asDictionary;
  v11 = *&self->_componentName;
  v9[1] = @"ComponentName";
  v9[2] = @"ObjectName";
  v9[3] = @"Nonce";
  nonce = self->_nonce;
  v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:v9 count:4];
  v5 = [v4 mutableCopy];

  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    [v5 setObject:tagNumber forKey:@"TagNumber"];
  }

  v7 = [NSDictionary dictionaryWithDictionary:v5];

  return v7;
}

- (NSString)_componentNameSuffix
{
  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    v4 = [NSString stringWithFormat:@"%d", [(NSNumber *)tagNumber intValue]];
  }

  else
  {
    v4 = &stru_1000ABB18;
  }

  return v4;
}

- (NSString)_propertyNameSuffix
{
  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    v4 = [NSString stringWithFormat:@", %d", [(NSNumber *)tagNumber intValue]];
  }

  else
  {
    v4 = &stru_1000ABB18;
  }

  return v4;
}

- (NSString)ticketName
{
  componentName = self->_componentName;
  _componentNameSuffix = [(MRUPersonalizationInfo *)self _componentNameSuffix];
  v4 = [NSString stringWithFormat:@"%@%@, Ticket", componentName, _componentNameSuffix];

  return v4;
}

- (NSString)tag
{
  componentName = self->_componentName;
  objectName = self->_objectName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v5 = [NSString stringWithFormat:@"%@, %@%@", componentName, objectName, _propertyNameSuffix];

  return v5;
}

- (NSString)boardIDPropertyName
{
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, BoardID%@", componentName, _propertyNameSuffix];

  return v4;
}

- (NSString)chipIDPropertyName
{
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, ChipID%@", componentName, _propertyNameSuffix];

  return v4;
}

- (NSString)ecidPropertyName
{
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, ECID%@", componentName, _propertyNameSuffix];

  return v4;
}

- (NSString)noncePropertyName
{
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, Nonce%@", componentName, _propertyNameSuffix];

  return v4;
}

- (NSString)productionModePropertyName
{
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, ProductionMode%@", componentName, _propertyNameSuffix];

  return v4;
}

- (NSString)securityDomainPropertyName
{
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, SecurityDomain%@", componentName, _propertyNameSuffix];

  return v4;
}

- (NSString)securityModePropertyName
{
  componentName = self->_componentName;
  _propertyNameSuffix = [(MRUPersonalizationInfo *)self _propertyNameSuffix];
  v4 = [NSString stringWithFormat:@"%@, SecurityMode%@", componentName, _propertyNameSuffix];

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"%@(\n"), v4;

  v6 = [(MRUHardwareInfo *)self->_hardwareInfo description];
  [v5 appendFormat:@"\thardwareInfo: %s\n", objc_msgSend(v6, "UTF8String")];

  ticketName = [(MRUPersonalizationInfo *)self ticketName];
  [v5 appendFormat:@"\tticketName: %s\n", objc_msgSend(ticketName, "UTF8String")];

  v8 = [(MRUPersonalizationInfo *)self tag];
  [v5 appendFormat:@"\ttagName: %s\n", objc_msgSend(v8, "UTF8String")];

  v9 = [(NSData *)self->_nonce description];
  [v5 appendFormat:@"\tnonce: %s\n", objc_msgSend(v9, "UTF8String")];

  tagNumber = self->_tagNumber;
  if (tagNumber)
  {
    v11 = [(NSNumber *)tagNumber description];
    [v5 appendFormat:@"\ttagNumber: %s\n", objc_msgSend(v11, "UTF8String")];
  }

  [v5 appendString:@""]);
  v12 = [NSString stringWithString:v5];

  return v12;
}

@end