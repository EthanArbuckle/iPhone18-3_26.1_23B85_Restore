@interface _CPLPushRepositoryClassCount
- (id)description;
@end

@implementation _CPLPushRepositoryClassCount

- (id)description
{
  trashed = self->_trashed;
  v4 = [NSString alloc];
  adds = self->_adds;
  if (trashed)
  {
    v6 = [v4 initWithFormat:@"+%lu/%lu/-%lu (%lu trashed)", adds, self->_modifies, self->_deletes, self->_trashed];
  }

  else
  {
    v6 = [v4 initWithFormat:@"+%lu/%lu/-%lu", adds, self->_modifies, self->_deletes, v8];
  }

  return v6;
}

@end