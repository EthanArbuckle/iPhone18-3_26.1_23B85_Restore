@interface CCSetChange
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSetChange:(id)change;
- (CCSetChange)initWithSharedItem:(id)item sharedItemChangeType:(unsigned __int16)type allDevices:(id)devices addedDevices:(id)addedDevices removedDevices:(id)removedDevices allLocalInstances:(id)instances addedLocalInstances:(id)localInstances removedLocalInstances:(id)self0;
- (id)description;
- (unint64_t)hash;
@end

@implementation CCSetChange

- (CCSetChange)initWithSharedItem:(id)item sharedItemChangeType:(unsigned __int16)type allDevices:(id)devices addedDevices:(id)addedDevices removedDevices:(id)removedDevices allLocalInstances:(id)instances addedLocalInstances:(id)localInstances removedLocalInstances:(id)self0
{
  itemCopy = item;
  devicesCopy = devices;
  addedDevicesCopy = addedDevices;
  removedDevicesCopy = removedDevices;
  instancesCopy = instances;
  localInstancesCopy = localInstances;
  removedLocalInstancesCopy = removedLocalInstances;
  v27.receiver = self;
  v27.super_class = CCSetChange;
  v18 = [(CCSetChange *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_sharedItemChangeType = type;
    objc_storeStrong(&v18->_sharedItem, item);
    objc_storeStrong(&v19->_allDevices, devices);
    objc_storeStrong(&v19->_addedDevices, addedDevices);
    objc_storeStrong(&v19->_removedDevices, removedDevices);
    objc_storeStrong(&v19->_allLocalInstances, instances);
    objc_storeStrong(&v19->_addedLocalInstances, localInstances);
    objc_storeStrong(&v19->_removedLocalInstances, removedLocalInstances);
  }

  return v19;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sharedItem = [(CCSetChange *)self sharedItem];
  sharedIdentifier = [sharedItem sharedIdentifier];
  v8 = [v3 initWithFormat:@"\n%@ with sharedIdentifier: %@", v5, sharedIdentifier];

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  sharedItemChangeType = [(CCSetChange *)self sharedItemChangeType];
  v11 = @"None";
  if (!sharedItemChangeType)
  {
    v11 = @"SharedItemAdded";
  }

  if (sharedItemChangeType == 2)
  {
    v11 = @"SharedItemRemoved";
  }

  v12 = [v9 initWithFormat:@"sharedItemChangeType: %@", v11];
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  sharedItem2 = [(CCSetChange *)self sharedItem];
  v15 = [v13 initWithFormat:@"sharedItem: %@", sharedItem2];

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  addedDevices = [(CCSetChange *)self addedDevices];
  v18 = [v16 initWithFormat:@"addedDevices: %@", addedDevices];

  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  removedDevices = [(CCSetChange *)self removedDevices];
  v39 = [v19 initWithFormat:@"removedDevices: %@", removedDevices];

  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  addedLocalInstances = [(CCSetChange *)self addedLocalInstances];
  v23 = [v21 initWithFormat:@"addedLocalInstances: %@", addedLocalInstances];

  v24 = objc_alloc(MEMORY[0x1E696AEC0]);
  removedLocalInstances = [(CCSetChange *)self removedLocalInstances];
  v26 = [v24 initWithFormat:@"removedLocalInstances: %@", removedLocalInstances];

  v27 = objc_opt_new();
  v40 = v8;
  [v27 addObject:v8];
  [v27 addObject:v15];
  v28 = v12;
  [v27 addObject:v12];
  addedDevices2 = [(CCSetChange *)self addedDevices];
  v30 = [addedDevices2 count];

  if (v30)
  {
    [v27 addObject:v18];
  }

  addedLocalInstances2 = [(CCSetChange *)self addedLocalInstances];
  v32 = [addedLocalInstances2 count];

  if (v32)
  {
    [v27 addObject:v23];
  }

  removedDevices2 = [(CCSetChange *)self removedDevices];
  v34 = [removedDevices2 count];

  if (v34)
  {
    [v27 addObject:v39];
  }

  removedLocalInstances2 = [(CCSetChange *)self removedLocalInstances];
  v36 = [removedLocalInstances2 count];

  if (v36)
  {
    [v27 addObject:v26];
  }

  v37 = [v27 componentsJoinedByString:@"\n"];

  return v37;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCSetChange *)self isEqualToSetChange:v5];
  }

  return v6;
}

- (BOOL)isEqualToSetChange:(id)change
{
  changeCopy = change;
  sharedItem = [(CCSetChange *)self sharedItem];
  sharedItem2 = [changeCopy sharedItem];
  v28 = [sharedItem isEqual:sharedItem2];

  sharedItemChangeType = self->_sharedItemChangeType;
  LOWORD(sharedItem) = [changeCopy sharedItemChangeType];
  allDevices = self->_allDevices;
  allDevices = [changeCopy allDevices];
  v10 = [(NSArray *)allDevices isEqualToArray:allDevices];

  addedDevices = self->_addedDevices;
  addedDevices = [changeCopy addedDevices];
  v13 = [(NSArray *)addedDevices isEqualToArray:addedDevices];

  removedDevices = self->_removedDevices;
  removedDevices = [changeCopy removedDevices];
  v16 = [(NSArray *)removedDevices isEqualToArray:removedDevices];

  allLocalInstances = self->_allLocalInstances;
  allLocalInstances = [changeCopy allLocalInstances];
  v19 = [(NSArray *)allLocalInstances isEqualToArray:allLocalInstances];

  addedLocalInstances = self->_addedLocalInstances;
  addedLocalInstances = [changeCopy addedLocalInstances];
  v22 = [(NSArray *)addedLocalInstances isEqualToArray:addedLocalInstances];

  removedLocalInstances = self->_removedLocalInstances;
  removedLocalInstances = [changeCopy removedLocalInstances];

  v25 = [(NSArray *)removedLocalInstances isEqualToArray:removedLocalInstances];
  v26 = v28;
  if (sharedItemChangeType != sharedItem)
  {
    v26 = 0;
  }

  return v26 & (v10 && v13 && v16) & (v19 && v22 && v25) & 1;
}

- (unint64_t)hash
{
  v3 = [(CCSharedItem *)self->_sharedItem hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_sharedItemChangeType];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSArray *)self->_allDevices hash];
  v7 = v5 ^ v6 ^ [(NSArray *)self->_addedDevices hash];
  v8 = [(NSArray *)self->_removedDevices hash];
  v9 = v8 ^ [(NSArray *)self->_allLocalInstances hash];
  v10 = v9 ^ [(NSArray *)self->_addedLocalInstances hash];
  v11 = v10 ^ [(NSArray *)self->_removedLocalInstances hash];

  return v7 ^ v11;
}

@end