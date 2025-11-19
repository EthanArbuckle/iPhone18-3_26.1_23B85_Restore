@interface IDEDataProvider
- (id)initialQueryTimeForPidDictionary;
@end

@implementation IDEDataProvider

- (id)initialQueryTimeForPidDictionary
{
  initialQueryTimeForPidDictionary = self->_initialQueryTimeForPidDictionary;
  if (!initialQueryTimeForPidDictionary)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = self->_initialQueryTimeForPidDictionary;
    self->_initialQueryTimeForPidDictionary = v4;

    initialQueryTimeForPidDictionary = self->_initialQueryTimeForPidDictionary;
  }

  return initialQueryTimeForPidDictionary;
}

@end