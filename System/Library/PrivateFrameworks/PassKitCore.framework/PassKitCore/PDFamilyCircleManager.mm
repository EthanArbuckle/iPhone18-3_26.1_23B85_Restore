@interface PDFamilyCircleManager
- (void)_executeNextRequestIfPossible;
@end

@implementation PDFamilyCircleManager

- (void)_executeNextRequestIfPossible
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_currentRequest)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    firstObject = [(NSMutableArray *)self->_fetchRequests firstObject];
    currentRequest = self->_currentRequest;
    self->_currentRequest = firstObject;

    v5 = self->_currentRequest;
    if (v5)
    {
      [(NSMutableArray *)self->_fetchRequests removeObjectAtIndex:0];
      v5 = self->_currentRequest;
    }

    v6 = v5;
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10000C324;
      v7[3] = &unk_10083C470;
      v7[4] = self;
      [(PDFamilyCircleRequest *)v6 executeRequestWithManager:self completion:v7];
    }
  }
}

@end