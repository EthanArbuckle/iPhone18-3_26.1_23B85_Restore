@interface COSignalsClientObserver
- (BOOL)isEqual:(id)equal;
- (COSignalsClientObserver)initWithConnection:(id)connection asAccessory:(id)accessory constraints:(id)constraints cluster:(id)cluster;
@end

@implementation COSignalsClientObserver

- (COSignalsClientObserver)initWithConnection:(id)connection asAccessory:(id)accessory constraints:(id)constraints cluster:(id)cluster
{
  accessoryCopy = accessory;
  constraintsCopy = constraints;
  v12 = [(COSignalsClientObserver *)self initWithConnection:connection cluster:cluster];
  if (v12)
  {
    v13 = [accessoryCopy copy];
    accessory = v12->_accessory;
    v12->_accessory = v13;

    v15 = [constraintsCopy copy];
    constraints = v12->_constraints;
    v12->_constraints = v15;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = COSignalsClientObserver;
  if ([(COClientObserver *)&v9 isEqual:equalCopy])
  {
    constraints = [(COSignalsClientObserver *)self constraints];
    constraints2 = [equalCopy constraints];
    if (constraints == constraints2)
    {
      v7 = 1;
    }

    else
    {
      v7 = [constraints isEqual:constraints2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end