@interface HMICamera
- (BOOL)isEqual:(id)a3;
- (HMICamera)initWithCoder:(id)a3;
- (HMICamera)initWithIdentifier:(id)a3 name:(id)a4 manufacturer:(id)a5 model:(id)a6 firmwareVersion:(id)a7 hasBattery:(BOOL)a8;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMICamera

- (HMICamera)initWithIdentifier:(id)a3 name:(id)a4 manufacturer:(id)a5 model:(id)a6 firmwareVersion:(id)a7 hasBattery:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!v14)
  {
    [HMICamera initWithIdentifier:name:manufacturer:model:firmwareVersion:hasBattery:];
    goto LABEL_7;
  }

  if (!v15)
  {
LABEL_7:
    v32 = [HMICamera initWithIdentifier:name:manufacturer:model:firmwareVersion:hasBattery:];
    return +[(HMICamera *)v32];
  }

  v19 = v18;
  v34.receiver = self;
  v34.super_class = HMICamera;
  v20 = [(HMICamera *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [v15 copy];
    name = v20->_name;
    v20->_name = v23;

    v25 = [v16 copy];
    manufacturer = v20->_manufacturer;
    v20->_manufacturer = v25;

    v27 = [v17 copy];
    model = v20->_model;
    v20->_model = v27;

    v29 = [v19 copy];
    firmwareVersion = v20->_firmwareVersion;
    v20->_firmwareVersion = v29;

    v20->_hasBattery = a8;
  }

  return v20;
}

- (id)attributeDescriptions
{
  v23[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [(HMICamera *)self identifier];
  v21 = [v3 initWithName:@"Identifier" value:v22];
  v23[0] = v21;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v20 = [(HMICamera *)self name];
  v5 = [v4 initWithName:@"Name" value:v20];
  v23[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMICamera *)self manufacturer];
  v8 = [v6 initWithName:@"Manufacturer" value:v7];
  v23[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMICamera *)self model];
  v11 = [v9 initWithName:@"Model" value:v10];
  v23[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMICamera *)self firmwareVersion];
  v14 = [v12 initWithName:@"Firmware Version" value:v13];
  v23[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMICamera hasBattery](self, "hasBattery")}];
  v17 = [v15 initWithName:@"Has Battery" value:v16];
  v23[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:6];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMICamera *)self identifier];
      v7 = [(HMICamera *)v5 identifier];
      v8 = HMFEqualObjects();

      v9 = [(HMICamera *)self name];
      v10 = [(HMICamera *)v5 name];
      v11 = HMFEqualObjects();

      v12 = v8 & v11;
      v13 = [(HMICamera *)self manufacturer];
      v14 = [(HMICamera *)v5 manufacturer];
      v15 = HMFEqualObjects();

      v16 = [(HMICamera *)self model];
      v17 = [(HMICamera *)v5 model];
      v18 = HMFEqualObjects();

      v19 = v12 & v15 & v18;
      v20 = [(HMICamera *)self firmwareVersion];
      v21 = [(HMICamera *)v5 firmwareVersion];
      v22 = HMFEqualObjects();

      v23 = [(HMICamera *)self hasBattery];
      LOBYTE(v20) = [(HMICamera *)v5 hasBattery];

      v24 = v19 & v22 & (v23 ^ v20 ^ 1);
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
  v2 = [(HMICamera *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (HMICamera)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_name);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_manufacturer);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_model);
  v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_firmwareVersion);
  v19 = [v4 decodeObjectOfClass:v17 forKey:v18];

  v20 = NSStringFromSelector(sel_hasBattery);
  v21 = [v4 decodeBoolForKey:v20];

  v22 = [(HMICamera *)self initWithIdentifier:v7 name:v10 manufacturer:v13 model:v16 firmwareVersion:v19 hasBattery:v21];
  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMICamera *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(HMICamera *)self name];
  v8 = NSStringFromSelector(sel_name);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(HMICamera *)self manufacturer];
  v10 = NSStringFromSelector(sel_manufacturer);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(HMICamera *)self model];
  v12 = NSStringFromSelector(sel_model);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(HMICamera *)self firmwareVersion];
  v14 = NSStringFromSelector(sel_firmwareVersion);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(HMICamera *)self hasBattery];
  v16 = NSStringFromSelector(sel_hasBattery);
  [v4 encodeBool:v15 forKey:v16];
}

@end