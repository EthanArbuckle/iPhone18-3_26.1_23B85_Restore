@interface NTKBundleComplicationMigrationSingleRequest
+ (id)requestWithComplication:(id)complication family:(int64_t)family device:(id)device;
- (BOOL)isEqual:(id)equal;
- (NTKBundleComplicationMigrationSingleRequest)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKBundleComplicationMigrationSingleRequest

+ (id)requestWithComplication:(id)complication family:(int64_t)family device:(id)device
{
  complicationCopy = complication;
  deviceCopy = device;
  v9 = objc_alloc_init(objc_opt_class());
  v10 = v9[1];
  v9[1] = complicationCopy;
  v11 = complicationCopy;

  v9[2] = family;
  v12 = v9[3];
  v9[3] = deviceCopy;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  complication = self->_complication;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__NTKBundleComplicationMigrationSingleRequest_isEqual___block_invoke;
  v20[3] = &unk_278780340;
  v7 = equalCopy;
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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_complication];
  v5 = [builder appendUnsignedInteger:self->_family];
  v6 = [builder appendObject:self->_device];
  v7 = [builder hash];

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_complication withName:@"complication"];
  v5 = CLKComplicationFamilyDescription();
  [v3 appendString:v5 withName:@"family"];

  pairingID = [(CLKDevice *)self->_device pairingID];
  uUIDString = [pairingID UUIDString];
  [v3 appendString:uUIDString withName:@"deviceUUID" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

- (NTKBundleComplicationMigrationSingleRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NTKBundleComplicationMigrationSingleRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NTKBundleComplicationMigrationSingleRequestComplicationKey"];
    complication = v5->_complication;
    v5->_complication = v6;

    v5->_family = [coderCopy decodeIntegerForKey:@"NTKBundleComplicationMigrationSingleRequestFamilyKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NTKBundleComplicationMigrationSingleRequestDeviceDescriptorKey"];
    v9 = [MEMORY[0x277CBBAE8] deviceForDescriptor:v8];
    device = v5->_device;
    v5->_device = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  complication = self->_complication;
  coderCopy = coder;
  [coderCopy encodeObject:complication forKey:@"NTKBundleComplicationMigrationSingleRequestComplicationKey"];
  [coderCopy encodeInteger:self->_family forKey:@"NTKBundleComplicationMigrationSingleRequestFamilyKey"];
  descriptor = [(CLKDevice *)self->_device descriptor];
  [coderCopy encodeObject:descriptor forKey:@"NTKBundleComplicationMigrationSingleRequestDeviceDescriptorKey"];
}

@end