@interface HDHealthStoreErrorEndpoint
- (void)remote_serverForConfiguration:(id)configuration completion:(id)completion;
@end

@implementation HDHealthStoreErrorEndpoint

- (void)remote_serverForConfiguration:(id)configuration completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, self->_error);
  }
}

@end