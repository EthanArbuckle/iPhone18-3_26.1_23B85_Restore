@interface MRDActiveUserController
- (MRDActiveUserController)init;
- (id)activeUserIdentifier;
- (void)dealloc;
- (void)fetchActiveUserWithQueue:(id)a3 completion:(id)a4;
- (void)setActiveUserIdentifier:(id)a3;
@end

@implementation MRDActiveUserController

- (MRDActiveUserController)init
{
  v3.receiver = self;
  v3.super_class = MRDActiveUserController;
  result = [(MRDActiveUserController *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  [(MRDActiveUserController *)self stopObserving];
  v3.receiver = self;
  v3.super_class = MRDActiveUserController;
  [(MRDActiveUserController *)&v3 dealloc];
}

- (id)activeUserIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_activeUserIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setActiveUserIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  activeUserIdentifier = self->_activeUserIdentifier;
  self->_activeUserIdentifier = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)fetchActiveUserWithQueue:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10019BCDC;
  v7[3] = &unk_1004C0B08;
  v8 = a4;
  v6 = v8;
  [(MRDActiveUserController *)self _fetchActiveUserWithQueue:a3 completion:v7];
}

@end