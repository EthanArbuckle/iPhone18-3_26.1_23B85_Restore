@interface _MSPContainerEditContentUpdate
- (NSString)description;
- (_MSPContainerEditContentUpdate)initWithUpdatedImmutableObject:(id)object;
- (_MSPContainerEditContentUpdate)initWithUpdatedObject:(id)object;
- (void)useImmutableObjectsFromMap:(id)map intermediateMutableObjectTransferBlock:(id)block;
@end

@implementation _MSPContainerEditContentUpdate

- (_MSPContainerEditContentUpdate)initWithUpdatedObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = _MSPContainerEditContentUpdate;
  v6 = [(_MSPContainerEditContentUpdate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_updatedObject, object);
  }

  return v7;
}

- (_MSPContainerEditContentUpdate)initWithUpdatedImmutableObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = _MSPContainerEditContentUpdate;
  v6 = [(_MSPContainerEditContentUpdate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_updatedImmutableObject, object);
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = _MSPContainerEditContentUpdate;
  v4 = [(_MSPContainerEditContentUpdate *)&v8 description];
  updatedObject = [(_MSPContainerEditContentUpdate *)self updatedObject];
  v6 = [v3 stringWithFormat:@"%@ { updated contents of object = %@ }", v4, updatedObject];

  return v6;
}

- (void)useImmutableObjectsFromMap:(id)map intermediateMutableObjectTransferBlock:(id)block
{
  blockCopy = block;
  mapCopy = map;
  updatedObject = [(_MSPContainerEditContentUpdate *)self updatedObject];
  v8 = [mapCopy objectForKey:updatedObject];

  updatedImmutableObject = self->_updatedImmutableObject;
  self->_updatedImmutableObject = v8;

  if (!self->_updatedImmutableObject)
  {
    updatedObject2 = [(_MSPContainerEditContentUpdate *)self updatedObject];
    v11 = blockCopy[2](blockCopy, updatedObject2);
    v12 = self->_updatedImmutableObject;
    self->_updatedImmutableObject = v11;
  }
}

@end