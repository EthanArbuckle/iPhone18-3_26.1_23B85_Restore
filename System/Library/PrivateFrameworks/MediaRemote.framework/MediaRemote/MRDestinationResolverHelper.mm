@interface MRDestinationResolverHelper
- (void)destinationResolver:(id)resolver didFailWithError:(id)error;
- (void)destinationResolver:(id)resolver endpointDidChange:(id)change;
- (void)destinationResolver:(id)resolver originDidChange:(id)change;
- (void)destinationResolver:(id)resolver playerPathDidChange:(id)change;
- (void)destinationResolverDestinationDidInvalidate:(id)invalidate;
@end

@implementation MRDestinationResolverHelper

- (void)destinationResolver:(id)resolver originDidChange:(id)change
{
  resolverCopy = resolver;
  changeCopy = change;
  callback = self->_callback;
  if (callback && !self->_level)
  {
    destination = [resolverCopy destination];
    callback[2](callback, destination, 0);
  }
}

- (void)destinationResolver:(id)resolver endpointDidChange:(id)change
{
  resolverCopy = resolver;
  changeCopy = change;
  callback = self->_callback;
  if (callback && self->_level == 1)
  {
    destination = [resolverCopy destination];
    callback[2](callback, destination, 0);
  }
}

- (void)destinationResolverDestinationDidInvalidate:(id)invalidate
{
  callback = self->_callback;
  if (callback)
  {
    destination = [invalidate destination];
    callback[2](callback, destination, 0);
  }
}

- (void)destinationResolver:(id)resolver playerPathDidChange:(id)change
{
  resolverCopy = resolver;
  callback = self->_callback;
  if (callback && (self->_level | 2) == 2)
  {
    v8 = resolverCopy;
    destination = [resolverCopy destination];
    callback[2](callback, destination, 0);

    resolverCopy = v8;
  }
}

- (void)destinationResolver:(id)resolver didFailWithError:(id)error
{
  callback = self->_callback;
  if (callback)
  {
    errorCopy = error;
    destination = [resolver destination];
    callback[2](callback, destination, errorCopy);
  }
}

@end