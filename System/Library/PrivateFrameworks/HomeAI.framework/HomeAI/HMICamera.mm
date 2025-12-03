@interface HMICamera
- (BOOL)isEqual:(id)equal;
- (HMICamera)initWithCoder:(id)coder;
- (HMICamera)initWithIdentifier:(id)identifier name:(id)name manufacturer:(id)manufacturer model:(id)model firmwareVersion:(id)version hasBattery:(BOOL)battery;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMICamera

- (HMICamera)initWithIdentifier:(id)identifier name:(id)name manufacturer:(id)manufacturer model:(id)model firmwareVersion:(id)version hasBattery:(BOOL)battery
{
  identifierCopy = identifier;
  nameCopy = name;
  manufacturerCopy = manufacturer;
  modelCopy = model;
  versionCopy = version;
  if (!identifierCopy)
  {
    [HMICamera initWithIdentifier:name:manufacturer:model:firmwareVersion:hasBattery:];
    goto LABEL_7;
  }

  if (!nameCopy)
  {
LABEL_7:
    v32 = [HMICamera initWithIdentifier:name:manufacturer:model:firmwareVersion:hasBattery:];
    return +[(HMICamera *)v32];
  }

  v19 = versionCopy;
  v34.receiver = self;
  v34.super_class = HMICamera;
  v20 = [(HMICamera *)&v34 init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v23;

    v25 = [manufacturerCopy copy];
    manufacturer = v20->_manufacturer;
    v20->_manufacturer = v25;

    v27 = [modelCopy copy];
    model = v20->_model;
    v20->_model = v27;

    v29 = [v19 copy];
    firmwareVersion = v20->_firmwareVersion;
    v20->_firmwareVersion = v29;

    v20->_hasBattery = battery;
  }

  return v20;
}

- (id)attributeDescriptions
{
  v23[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMICamera *)self identifier];
  v21 = [v3 initWithName:@"Identifier" value:identifier];
  v23[0] = v21;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMICamera *)self name];
  v5 = [v4 initWithName:@"Name" value:name];
  v23[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  manufacturer = [(HMICamera *)self manufacturer];
  v8 = [v6 initWithName:@"Manufacturer" value:manufacturer];
  v23[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  model = [(HMICamera *)self model];
  v11 = [v9 initWithName:@"Model" value:model];
  v23[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  firmwareVersion = [(HMICamera *)self firmwareVersion];
  v14 = [v12 initWithName:@"Firmware Version" value:firmwareVersion];
  v23[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMICamera hasBattery](self, "hasBattery")}];
  v17 = [v15 initWithName:@"Has Battery" value:v16];
  v23[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:6];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(HMICamera *)self identifier];
      identifier2 = [(HMICamera *)v5 identifier];
      v8 = HMFEqualObjects();

      name = [(HMICamera *)self name];
      name2 = [(HMICamera *)v5 name];
      v11 = HMFEqualObjects();

      v12 = v8 & v11;
      manufacturer = [(HMICamera *)self manufacturer];
      manufacturer2 = [(HMICamera *)v5 manufacturer];
      v15 = HMFEqualObjects();

      model = [(HMICamera *)self model];
      model2 = [(HMICamera *)v5 model];
      v18 = HMFEqualObjects();

      v19 = v12 & v15 & v18;
      firmwareVersion = [(HMICamera *)self firmwareVersion];
      firmwareVersion2 = [(HMICamera *)v5 firmwareVersion];
      v22 = HMFEqualObjects();

      hasBattery = [(HMICamera *)self hasBattery];
      LOBYTE(firmwareVersion) = [(HMICamera *)v5 hasBattery];

      v24 = v19 & v22 & (hasBattery ^ firmwareVersion ^ 1);
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (unint64_t)hash
{
  identifier = [(HMICamera *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (HMICamera)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_name);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_manufacturer);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_model);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_firmwareVersion);
  v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];

  v20 = NSStringFromSelector(sel_hasBattery);
  v21 = [coderCopy decodeBoolForKey:v20];

  v22 = [(HMICamera *)self initWithIdentifier:v7 name:v10 manufacturer:v13 model:v16 firmwareVersion:v19 hasBattery:v21];
  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMICamera *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v6];

  name = [(HMICamera *)self name];
  v8 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:name forKey:v8];

  manufacturer = [(HMICamera *)self manufacturer];
  v10 = NSStringFromSelector(sel_manufacturer);
  [coderCopy encodeObject:manufacturer forKey:v10];

  model = [(HMICamera *)self model];
  v12 = NSStringFromSelector(sel_model);
  [coderCopy encodeObject:model forKey:v12];

  firmwareVersion = [(HMICamera *)self firmwareVersion];
  v14 = NSStringFromSelector(sel_firmwareVersion);
  [coderCopy encodeObject:firmwareVersion forKey:v14];

  hasBattery = [(HMICamera *)self hasBattery];
  v16 = NSStringFromSelector(sel_hasBattery);
  [coderCopy encodeBool:hasBattery forKey:v16];
}

@end