@interface NTKBundleComplicationMigrationSingleRequest
+ (id)requestWithComplication:(id)a3 family:(int64_t)a4 device:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NTKBundleComplicationMigrationSingleRequest)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKBundleComplicationMigrationSingleRequest

+ (id)requestWithComplication:(id)a3 family:(int64_t)a4 device:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(objc_opt_class());
  v10 = v9[1];
  v9[1] = v7;
  v11 = v7;

  v9[2] = a4;
  v12 = v9[3];
  v9[3] = v8;

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  complication = self->_complication;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__NTKBundleComplicationMigrationSingleRequest_isEqual___block_invoke;
  v20[3] = &unk_278780340;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendObject:complication counterpart:v20];
  family = self->_family;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__NTKBundleComplicationMigrationSingleRequest_isEqual___block_invoke_2;
  v18[3] = &unk_278780170;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendInteger:family counterpart:v18];
  device = self->_device;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__NTKBundleComplicationMigrationSingleRequest_isEqual___block_invoke_3;
  v16[3] = &unk_278780340;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendObject:device counterpart:v16];
  LOBYTE(device) = [v5 isEqual];

  return device;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_complication];
  v5 = [v3 appendUnsignedInteger:self->_family];
  v6 = [v3 appendObject:self->_device];
  v7 = [v3 hash];

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_complication withName:@"complication"];
  v5 = CLKComplicationFamilyDescription();
  [v3 appendString:v5 withName:@"family"];

  v6 = [(CLKDevice *)self->_device pairingID];
  v7 = [v6 UUIDString];
  [v3 appendString:v7 withName:@"deviceUUID" skipIfEmpty:1];

  v8 = [v3 build];

  return v8;
}

- (NTKBundleComplicationMigrationSingleRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NTKBundleComplicationMigrationSingleRequest *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NTKBundleComplicationMigrationSingleRequestComplicationKey"];
    complication = v5->_complication;
    v5->_complication = v6;

    v5->_family = [v4 decodeIntegerForKey:@"NTKBundleComplicationMigrationSingleRequestFamilyKey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NTKBundleComplicationMigrationSingleRequestDeviceDescriptorKey"];
    v9 = [MEMORY[0x277CBBAE8] deviceForDescriptor:v8];
    device = v5->_device;
    v5->_device = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  complication = self->_complication;
  v5 = a3;
  [v5 encodeObject:complication forKey:@"NTKBundleComplicationMigrationSingleRequestComplicationKey"];
  [v5 encodeInteger:self->_family forKey:@"NTKBundleComplicationMigrationSingleRequestFamilyKey"];
  v6 = [(CLKDevice *)self->_device descriptor];
  [v5 encodeObject:v6 forKey:@"NTKBundleComplicationMigrationSingleRequestDeviceDescriptorKey"];
}

@end