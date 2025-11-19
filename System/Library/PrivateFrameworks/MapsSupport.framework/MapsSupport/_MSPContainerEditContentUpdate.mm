@interface _MSPContainerEditContentUpdate
- (NSString)description;
- (_MSPContainerEditContentUpdate)initWithUpdatedImmutableObject:(id)a3;
- (_MSPContainerEditContentUpdate)initWithUpdatedObject:(id)a3;
- (void)useImmutableObjectsFromMap:(id)a3 intermediateMutableObjectTransferBlock:(id)a4;
@end

@implementation _MSPContainerEditContentUpdate

- (_MSPContainerEditContentUpdate)initWithUpdatedObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MSPContainerEditContentUpdate;
  v6 = [(_MSPContainerEditContentUpdate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_updatedObject, a3);
  }

  return v7;
}

- (_MSPContainerEditContentUpdate)initWithUpdatedImmutableObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MSPContainerEditContentUpdate;
  v6 = [(_MSPContainerEditContentUpdate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_updatedImmutableObject, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = _MSPContainerEditContentUpdate;
  v4 = [(_MSPContainerEditContentUpdate *)&v8 description];
  v5 = [(_MSPContainerEditContentUpdate *)self updatedObject];
  v6 = [v3 stringWithFormat:@"%@ { updated contents of object = %@ }", v4, v5];

  return v6;
}

- (void)useImmutableObjectsFromMap:(id)a3 intermediateMutableObjectTransferBlock:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = [(_MSPContainerEditContentUpdate *)self updatedObject];
  v8 = [v6 objectForKey:v7];

  updatedImmutableObject = self->_updatedImmutableObject;
  self->_updatedImmutableObject = v8;

  if (!self->_updatedImmutableObject)
  {
    v10 = [(_MSPContainerEditContentUpdate *)self updatedObject];
    v11 = v13[2](v13, v10);
    v12 = self->_updatedImmutableObject;
    self->_updatedImmutableObject = v11;
  }
}

@end