@interface CCMutableSetChange
- (BOOL)containsChangesAfterDeduplication;
- (BOOL)containsContentHash:(id)hash;
- (CCMutableSetChange)initWithSharedItem:(id)item changeType:(unsigned __int16)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendAddedDevices:(id)devices;
- (void)appendAddedLocalInstances:(id)instances;
- (void)appendAllDevices:(id)devices;
- (void)appendAllLocalInstances:(id)instances;
- (void)appendRemovedDevices:(id)devices;
- (void)appendRemovedLocalInstances:(id)instances;
@end

@implementation CCMutableSetChange

- (BOOL)containsChangesAfterDeduplication
{
  if (self->_removedDevices && [(NSMutableSet *)self->_addedDevices intersectsSet:?])
  {
    v3 = [(NSMutableSet *)self->_addedDevices copy];
    [(NSMutableSet *)self->_addedDevices minusSet:self->_removedDevices];
    [(NSMutableSet *)self->_removedDevices minusSet:v3];
  }

  if (self->_removedLocalInstances && [(NSMutableSet *)self->_addedLocalInstances intersectsSet:?])
  {
    v4 = [(NSMutableSet *)self->_addedLocalInstances copy];
    [(NSMutableSet *)self->_addedLocalInstances minusSet:self->_removedLocalInstances];
    [(NSMutableSet *)self->_removedLocalInstances minusSet:v4];
  }

  return [(NSMutableSet *)self->_addedDevices count]|| [(NSMutableSet *)self->_removedDevices count]|| [(NSMutableSet *)self->_addedLocalInstances count]|| [(NSMutableSet *)self->_removedLocalInstances count]!= 0;
}

- (CCMutableSetChange)initWithSharedItem:(id)item changeType:(unsigned __int16)type
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = CCMutableSetChange;
  v8 = [(CCMutableSetChange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sharedItem, item);
    v9->_sharedItemChangeType = type;
  }

  return v9;
}

- (void)appendAllDevices:(id)devices
{
  devicesCopy = devices;
  allDevices = self->_allDevices;
  v8 = devicesCopy;
  if (!allDevices)
  {
    v6 = objc_opt_new();
    v7 = self->_allDevices;
    self->_allDevices = v6;

    devicesCopy = v8;
    allDevices = self->_allDevices;
  }

  [(NSMutableSet *)allDevices addObject:devicesCopy];
}

- (void)appendAddedDevices:(id)devices
{
  devicesCopy = devices;
  addedDevices = self->_addedDevices;
  v8 = devicesCopy;
  if (!addedDevices)
  {
    v6 = objc_opt_new();
    v7 = self->_addedDevices;
    self->_addedDevices = v6;

    devicesCopy = v8;
    addedDevices = self->_addedDevices;
  }

  [(NSMutableSet *)addedDevices addObject:devicesCopy];
}

- (void)appendRemovedDevices:(id)devices
{
  devicesCopy = devices;
  removedDevices = self->_removedDevices;
  v8 = devicesCopy;
  if (!removedDevices)
  {
    v6 = objc_opt_new();
    v7 = self->_removedDevices;
    self->_removedDevices = v6;

    devicesCopy = v8;
    removedDevices = self->_removedDevices;
  }

  [(NSMutableSet *)removedDevices addObject:devicesCopy];
}

- (void)appendAllLocalInstances:(id)instances
{
  instancesCopy = instances;
  allLocalInstances = self->_allLocalInstances;
  v8 = instancesCopy;
  if (!allLocalInstances)
  {
    v6 = objc_opt_new();
    v7 = self->_allLocalInstances;
    self->_allLocalInstances = v6;

    instancesCopy = v8;
    allLocalInstances = self->_allLocalInstances;
  }

  [(NSMutableSet *)allLocalInstances addObject:instancesCopy];
}

- (void)appendAddedLocalInstances:(id)instances
{
  instancesCopy = instances;
  addedLocalInstances = self->_addedLocalInstances;
  v8 = instancesCopy;
  if (!addedLocalInstances)
  {
    v6 = objc_opt_new();
    v7 = self->_addedLocalInstances;
    self->_addedLocalInstances = v6;

    instancesCopy = v8;
    addedLocalInstances = self->_addedLocalInstances;
  }

  [(NSMutableSet *)addedLocalInstances addObject:instancesCopy];
}

- (void)appendRemovedLocalInstances:(id)instances
{
  instancesCopy = instances;
  removedLocalInstances = self->_removedLocalInstances;
  v8 = instancesCopy;
  if (!removedLocalInstances)
  {
    v6 = objc_opt_new();
    v7 = self->_removedLocalInstances;
    self->_removedLocalInstances = v6;

    instancesCopy = v8;
    removedLocalInstances = self->_removedLocalInstances;
  }

  [(NSMutableSet *)removedLocalInstances addObject:instancesCopy];
}

- (BOOL)containsContentHash:(id)hash
{
  if (!hash)
  {
    return 0;
  }

  sharedItem = self->_sharedItem;
  hashCopy = hash;
  sharedIdentifier = [(CCSharedItem *)sharedItem sharedIdentifier];
  v6 = [sharedIdentifier isEqualToNumber:hashCopy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = [CCSetChange alloc];
  sharedItemChangeType = self->_sharedItemChangeType;
  sharedItem = self->_sharedItem;
  allObjects = [(NSMutableSet *)self->_allDevices allObjects];
  v5 = allObjects;
  v6 = MEMORY[0x1E695E0F0];
  if (allObjects)
  {
    v7 = allObjects;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v26 = v7;
  allObjects2 = [(NSMutableSet *)self->_addedDevices allObjects];
  v9 = allObjects2;
  if (allObjects2)
  {
    v10 = allObjects2;
  }

  else
  {
    v10 = v6;
  }

  v25 = v10;
  allObjects3 = [(NSMutableSet *)self->_removedDevices allObjects];
  v12 = allObjects3;
  if (allObjects3)
  {
    v13 = allObjects3;
  }

  else
  {
    v13 = v6;
  }

  allObjects4 = [(NSMutableSet *)self->_allLocalInstances allObjects];
  v15 = allObjects4;
  if (allObjects4)
  {
    v16 = allObjects4;
  }

  else
  {
    v16 = v6;
  }

  allObjects5 = [(NSMutableSet *)self->_addedLocalInstances allObjects];
  v18 = allObjects5;
  if (allObjects5)
  {
    v19 = allObjects5;
  }

  else
  {
    v19 = v6;
  }

  allObjects6 = [(NSMutableSet *)self->_removedLocalInstances allObjects];
  v21 = allObjects6;
  if (allObjects6)
  {
    v22 = allObjects6;
  }

  else
  {
    v22 = v6;
  }

  v23 = [(CCSetChange *)v29 initWithSharedItem:sharedItem sharedItemChangeType:sharedItemChangeType allDevices:v26 addedDevices:v25 removedDevices:v13 allLocalInstances:v16 addedLocalInstances:v19 removedLocalInstances:v22];

  return v23;
}

@end