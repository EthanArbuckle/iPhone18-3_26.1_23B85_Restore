@interface NTKBundleComplicationMigrationFallbackRequest
+ (id)requestWithComplication:(id)a3 families:(id)a4 device:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NTKBundleComplicationMigrationFallbackRequest)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKBundleComplicationMigrationFallbackRequest

+ (id)requestWithComplication:(id)a3 families:(id)a4 device:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = v10[1];
  v10[1] = v7;
  v12 = v7;

  v13 = [v9 copy];
  v14 = v10[2];
  v10[2] = v13;

  v15 = v10[3];
  v10[3] = v8;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  complication = self->_complication;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__NTKBundleComplicationMigrationFallbackRequest_isEqual___block_invoke;
  v20[3] = &unk_278780340;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendObject:complication counterpart:v20];
  families = self->_families;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__NTKBundleComplicationMigrationFallbackRequest_isEqual___block_invoke_2;
  v18[3] = &unk_278780340;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:families counterpart:v18];
  device = self->_device;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__NTKBundleComplicationMigrationFallbackRequest_isEqual___block_invoke_3;
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
  v5 = [v3 appendObject:self->_families];
  v6 = [v3 appendObject:self->_device];
  v7 = [v3 hash];

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_complication withName:@"complication"];
  v5 = [v3 appendObject:self->_families withName:@"families"];
  v6 = [(CLKDevice *)self->_device pairingID];
  v7 = [v6 UUIDString];
  [v3 appendString:v7 withName:@"deviceUUID" skipIfEmpty:1];

  v8 = [v3 build];

  return v8;
}

- (NTKBundleComplicationMigrationFallbackRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NTKBundleComplicationMigrationFallbackRequest *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NTKBundleComplicationMigrationFallbackRequestComplicationKey"];
    complication = v5->_complication;
    v5->_complication = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"NTKBundleComplicationMigrationFallbackRequestFamiliesKey"];
    families = v5->_families;
    v5->_families = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NTKBundleComplicationMigrationFallbackRequestDeviceDescriptorKey"];
    v11 = [MEMORY[0x277CBBAE8] deviceForDescriptor:v10];
    device = v5->_device;
    v5->_device = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  complication = self->_complication;
  v5 = a3;
  [v5 encodeObject:complication forKey:@"NTKBundleComplicationMigrationFallbackRequestComplicationKey"];
  [v5 encodeObject:self->_families forKey:@"NTKBundleComplicationMigrationFallbackRequestFamiliesKey"];
  v6 = [(CLKDevice *)self->_device descriptor];
  [v5 encodeObject:v6 forKey:@"NTKBundleComplicationMigrationFallbackRequestDeviceDescriptorKey"];
}

@end