@interface MRDAVHostedExternalDevicePendingClientStateOutputDeviceModifications
- (id)description;
- (void)addOutputDevice:(id)a3;
- (void)changeOutputDevice:(id)a3;
- (void)removeOutputDevice:(id)a3;
@end

@implementation MRDAVHostedExternalDevicePendingClientStateOutputDeviceModifications

- (id)description
{
  v3 = [[NSMutableString alloc] initWithString:@"{\n"];
  if ([(NSMutableArray *)self->_addedOutputDevices count])
  {
    addedOutputDevices = self->_addedOutputDevices;
    v5 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"   addedOutputDevices = %@\n", v5];
  }

  if ([(NSMutableArray *)self->_changedOutputDevices count])
  {
    changedOutputDevices = self->_changedOutputDevices;
    v7 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    changedOutputDevices = %@\n", v7];
  }

  if ([(NSMutableArray *)self->_removedOutputDevices count])
  {
    removedOutputDevices = self->_removedOutputDevices;
    v9 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    removedOutputDevices = %@\n", v9];
  }

  return v3;
}

- (void)addOutputDevice:(id)a3
{
  v4 = a3;
  addedOutputDevices = self->_addedOutputDevices;
  v8 = v4;
  if (!addedOutputDevices)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_addedOutputDevices;
    self->_addedOutputDevices = v6;

    v4 = v8;
    addedOutputDevices = self->_addedOutputDevices;
  }

  [(NSMutableArray *)addedOutputDevices addObject:v4];
  [(NSMutableArray *)self->_changedOutputDevices removeObject:v8];
  [(NSMutableArray *)self->_removedOutputDevices removeObject:v8];
}

- (void)changeOutputDevice:(id)a3
{
  v8 = a3;
  v4 = [(NSMutableArray *)self->_addedOutputDevices indexOfObject:?];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    changedOutputDevices = self->_changedOutputDevices;
    if (!changedOutputDevices)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = self->_changedOutputDevices;
      self->_changedOutputDevices = v6;

      changedOutputDevices = self->_changedOutputDevices;
    }

    [(NSMutableArray *)changedOutputDevices addObject:v8];
  }

  else
  {
    [(NSMutableArray *)self->_addedOutputDevices replaceObjectAtIndex:v4 withObject:v8];
  }
}

- (void)removeOutputDevice:(id)a3
{
  v8 = a3;
  v4 = [(NSMutableArray *)self->_addedOutputDevices indexOfObject:?];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    removedOutputDevices = self->_removedOutputDevices;
    if (!removedOutputDevices)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = self->_removedOutputDevices;
      self->_removedOutputDevices = v6;

      removedOutputDevices = self->_removedOutputDevices;
    }

    [(NSMutableArray *)removedOutputDevices addObject:v8];
    [(NSMutableArray *)self->_changedOutputDevices removeObject:v8];
  }

  else
  {
    [(NSMutableArray *)self->_addedOutputDevices removeObjectAtIndex:v4];
  }
}

@end