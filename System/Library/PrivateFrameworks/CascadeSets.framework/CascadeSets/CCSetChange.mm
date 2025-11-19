@interface CCSetChange
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSetChange:(id)a3;
- (CCSetChange)initWithSharedItem:(id)a3 sharedItemChangeType:(unsigned __int16)a4 allDevices:(id)a5 addedDevices:(id)a6 removedDevices:(id)a7 allLocalInstances:(id)a8 addedLocalInstances:(id)a9 removedLocalInstances:(id)a10;
- (id)description;
- (unint64_t)hash;
@end

@implementation CCSetChange

- (CCSetChange)initWithSharedItem:(id)a3 sharedItemChangeType:(unsigned __int16)a4 allDevices:(id)a5 addedDevices:(id)a6 removedDevices:(id)a7 allLocalInstances:(id)a8 addedLocalInstances:(id)a9 removedLocalInstances:(id)a10
{
  v26 = a3;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v16 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = CCSetChange;
  v18 = [(CCSetChange *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_sharedItemChangeType = a4;
    objc_storeStrong(&v18->_sharedItem, a3);
    objc_storeStrong(&v19->_allDevices, a5);
    objc_storeStrong(&v19->_addedDevices, a6);
    objc_storeStrong(&v19->_removedDevices, a7);
    objc_storeStrong(&v19->_allLocalInstances, a8);
    objc_storeStrong(&v19->_addedLocalInstances, a9);
    objc_storeStrong(&v19->_removedLocalInstances, a10);
  }

  return v19;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CCSetChange *)self sharedItem];
  v7 = [v6 sharedIdentifier];
  v8 = [v3 initWithFormat:@"\n%@ with sharedIdentifier: %@", v5, v7];

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [(CCSetChange *)self sharedItemChangeType];
  v11 = @"None";
  if (!v10)
  {
    v11 = @"SharedItemAdded";
  }

  if (v10 == 2)
  {
    v11 = @"SharedItemRemoved";
  }

  v12 = [v9 initWithFormat:@"sharedItemChangeType: %@", v11];
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [(CCSetChange *)self sharedItem];
  v15 = [v13 initWithFormat:@"sharedItem: %@", v14];

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [(CCSetChange *)self addedDevices];
  v18 = [v16 initWithFormat:@"addedDevices: %@", v17];

  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  v20 = [(CCSetChange *)self removedDevices];
  v39 = [v19 initWithFormat:@"removedDevices: %@", v20];

  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  v22 = [(CCSetChange *)self addedLocalInstances];
  v23 = [v21 initWithFormat:@"addedLocalInstances: %@", v22];

  v24 = objc_alloc(MEMORY[0x1E696AEC0]);
  v25 = [(CCSetChange *)self removedLocalInstances];
  v26 = [v24 initWithFormat:@"removedLocalInstances: %@", v25];

  v27 = objc_opt_new();
  v40 = v8;
  [v27 addObject:v8];
  [v27 addObject:v15];
  v28 = v12;
  [v27 addObject:v12];
  v29 = [(CCSetChange *)self addedDevices];
  v30 = [v29 count];

  if (v30)
  {
    [v27 addObject:v18];
  }

  v31 = [(CCSetChange *)self addedLocalInstances];
  v32 = [v31 count];

  if (v32)
  {
    [v27 addObject:v23];
  }

  v33 = [(CCSetChange *)self removedDevices];
  v34 = [v33 count];

  if (v34)
  {
    [v27 addObject:v39];
  }

  v35 = [(CCSetChange *)self removedLocalInstances];
  v36 = [v35 count];

  if (v36)
  {
    [v27 addObject:v26];
  }

  v37 = [v27 componentsJoinedByString:@"\n"];

  return v37;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCSetChange *)self isEqualToSetChange:v5];
  }

  return v6;
}

- (BOOL)isEqualToSetChange:(id)a3
{
  v4 = a3;
  v5 = [(CCSetChange *)self sharedItem];
  v6 = [v4 sharedItem];
  v28 = [v5 isEqual:v6];

  sharedItemChangeType = self->_sharedItemChangeType;
  LOWORD(v5) = [v4 sharedItemChangeType];
  allDevices = self->_allDevices;
  v9 = [v4 allDevices];
  v10 = [(NSArray *)allDevices isEqualToArray:v9];

  addedDevices = self->_addedDevices;
  v12 = [v4 addedDevices];
  v13 = [(NSArray *)addedDevices isEqualToArray:v12];

  removedDevices = self->_removedDevices;
  v15 = [v4 removedDevices];
  v16 = [(NSArray *)removedDevices isEqualToArray:v15];

  allLocalInstances = self->_allLocalInstances;
  v18 = [v4 allLocalInstances];
  v19 = [(NSArray *)allLocalInstances isEqualToArray:v18];

  addedLocalInstances = self->_addedLocalInstances;
  v21 = [v4 addedLocalInstances];
  v22 = [(NSArray *)addedLocalInstances isEqualToArray:v21];

  removedLocalInstances = self->_removedLocalInstances;
  v24 = [v4 removedLocalInstances];

  v25 = [(NSArray *)removedLocalInstances isEqualToArray:v24];
  v26 = v28;
  if (sharedItemChangeType != v5)
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