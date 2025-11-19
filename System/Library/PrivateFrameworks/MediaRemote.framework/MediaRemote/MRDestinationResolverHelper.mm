@interface MRDestinationResolverHelper
- (void)destinationResolver:(id)a3 didFailWithError:(id)a4;
- (void)destinationResolver:(id)a3 endpointDidChange:(id)a4;
- (void)destinationResolver:(id)a3 originDidChange:(id)a4;
- (void)destinationResolver:(id)a3 playerPathDidChange:(id)a4;
- (void)destinationResolverDestinationDidInvalidate:(id)a3;
@end

@implementation MRDestinationResolverHelper

- (void)destinationResolver:(id)a3 originDidChange:(id)a4
{
  v9 = a3;
  v6 = a4;
  callback = self->_callback;
  if (callback && !self->_level)
  {
    v8 = [v9 destination];
    callback[2](callback, v8, 0);
  }
}

- (void)destinationResolver:(id)a3 endpointDidChange:(id)a4
{
  v9 = a3;
  v6 = a4;
  callback = self->_callback;
  if (callback && self->_level == 1)
  {
    v8 = [v9 destination];
    callback[2](callback, v8, 0);
  }
}

- (void)destinationResolverDestinationDidInvalidate:(id)a3
{
  callback = self->_callback;
  if (callback)
  {
    v4 = [a3 destination];
    callback[2](callback, v4, 0);
  }
}

- (void)destinationResolver:(id)a3 playerPathDidChange:(id)a4
{
  v5 = a3;
  callback = self->_callback;
  if (callback && (self->_level | 2) == 2)
  {
    v8 = v5;
    v7 = [v5 destination];
    callback[2](callback, v7, 0);

    v5 = v8;
  }
}

- (void)destinationResolver:(id)a3 didFailWithError:(id)a4
{
  callback = self->_callback;
  if (callback)
  {
    v6 = a4;
    v7 = [a3 destination];
    callback[2](callback, v7, v6);
  }
}

@end