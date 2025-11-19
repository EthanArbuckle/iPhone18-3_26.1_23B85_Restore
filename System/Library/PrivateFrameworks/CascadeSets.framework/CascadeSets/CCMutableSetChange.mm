@interface CCMutableSetChange
- (BOOL)containsChangesAfterDeduplication;
- (BOOL)containsContentHash:(id)a3;
- (CCMutableSetChange)initWithSharedItem:(id)a3 changeType:(unsigned __int16)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendAddedDevices:(id)a3;
- (void)appendAddedLocalInstances:(id)a3;
- (void)appendAllDevices:(id)a3;
- (void)appendAllLocalInstances:(id)a3;
- (void)appendRemovedDevices:(id)a3;
- (void)appendRemovedLocalInstances:(id)a3;
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

- (CCMutableSetChange)initWithSharedItem:(id)a3 changeType:(unsigned __int16)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CCMutableSetChange;
  v8 = [(CCMutableSetChange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sharedItem, a3);
    v9->_sharedItemChangeType = a4;
  }

  return v9;
}

- (void)appendAllDevices:(id)a3
{
  v4 = a3;
  allDevices = self->_allDevices;
  v8 = v4;
  if (!allDevices)
  {
    v6 = objc_opt_new();
    v7 = self->_allDevices;
    self->_allDevices = v6;

    v4 = v8;
    allDevices = self->_allDevices;
  }

  [(NSMutableSet *)allDevices addObject:v4];
}

- (void)appendAddedDevices:(id)a3
{
  v4 = a3;
  addedDevices = self->_addedDevices;
  v8 = v4;
  if (!addedDevices)
  {
    v6 = objc_opt_new();
    v7 = self->_addedDevices;
    self->_addedDevices = v6;

    v4 = v8;
    addedDevices = self->_addedDevices;
  }

  [(NSMutableSet *)addedDevices addObject:v4];
}

- (void)appendRemovedDevices:(id)a3
{
  v4 = a3;
  removedDevices = self->_removedDevices;
  v8 = v4;
  if (!removedDevices)
  {
    v6 = objc_opt_new();
    v7 = self->_removedDevices;
    self->_removedDevices = v6;

    v4 = v8;
    removedDevices = self->_removedDevices;
  }

  [(NSMutableSet *)removedDevices addObject:v4];
}

- (void)appendAllLocalInstances:(id)a3
{
  v4 = a3;
  allLocalInstances = self->_allLocalInstances;
  v8 = v4;
  if (!allLocalInstances)
  {
    v6 = objc_opt_new();
    v7 = self->_allLocalInstances;
    self->_allLocalInstances = v6;

    v4 = v8;
    allLocalInstances = self->_allLocalInstances;
  }

  [(NSMutableSet *)allLocalInstances addObject:v4];
}

- (void)appendAddedLocalInstances:(id)a3
{
  v4 = a3;
  addedLocalInstances = self->_addedLocalInstances;
  v8 = v4;
  if (!addedLocalInstances)
  {
    v6 = objc_opt_new();
    v7 = self->_addedLocalInstances;
    self->_addedLocalInstances = v6;

    v4 = v8;
    addedLocalInstances = self->_addedLocalInstances;
  }

  [(NSMutableSet *)addedLocalInstances addObject:v4];
}

- (void)appendRemovedLocalInstances:(id)a3
{
  v4 = a3;
  removedLocalInstances = self->_removedLocalInstances;
  v8 = v4;
  if (!removedLocalInstances)
  {
    v6 = objc_opt_new();
    v7 = self->_removedLocalInstances;
    self->_removedLocalInstances = v6;

    v4 = v8;
    removedLocalInstances = self->_removedLocalInstances;
  }

  [(NSMutableSet *)removedLocalInstances addObject:v4];
}

- (BOOL)containsContentHash:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  sharedItem = self->_sharedItem;
  v4 = a3;
  v5 = [(CCSharedItem *)sharedItem sharedIdentifier];
  v6 = [v5 isEqualToNumber:v4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v29 = [CCSetChange alloc];
  sharedItemChangeType = self->_sharedItemChangeType;
  sharedItem = self->_sharedItem;
  v4 = [(NSMutableSet *)self->_allDevices allObjects];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v26 = v7;
  v8 = [(NSMutableSet *)self->_addedDevices allObjects];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v25 = v10;
  v11 = [(NSMutableSet *)self->_removedDevices allObjects];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v6;
  }

  v14 = [(NSMutableSet *)self->_allLocalInstances allObjects];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v6;
  }

  v17 = [(NSMutableSet *)self->_addedLocalInstances allObjects];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v6;
  }

  v20 = [(NSMutableSet *)self->_removedLocalInstances allObjects];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v6;
  }

  v23 = [(CCSetChange *)v29 initWithSharedItem:sharedItem sharedItemChangeType:sharedItemChangeType allDevices:v26 addedDevices:v25 removedDevices:v13 allLocalInstances:v16 addedLocalInstances:v19 removedLocalInstances:v22];

  return v23;
}

@end