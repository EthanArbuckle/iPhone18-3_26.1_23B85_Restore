@interface MSPContainerPersister
- (MSPContainerPersisterDelegate)delegate;
- (void)commitByMergingWithStateSnapshot:(id)snapshot mergeOptions:(id)options completion:(id)completion;
- (void)eraseWithCompletion:(id)completion;
@end

@implementation MSPContainerPersister

- (void)commitByMergingWithStateSnapshot:(id)snapshot mergeOptions:(id)options completion:(id)completion
{
  if (completion)
  {
    v6 = MEMORY[0x277CCA9B8];
    completionCopy = completion;
    v8 = [v6 errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:6 userInfo:0];
    (*(completion + 2))(completionCopy, 0, 0, v8);
  }
}

- (void)eraseWithCompletion:(id)completion
{
  if (completion)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = *MEMORY[0x277CCA050];
    completionCopy = completion;
    v7 = [v4 errorWithDomain:v5 code:3072 userInfo:0];
    (*(completion + 2))(completionCopy, v7);
  }
}

- (MSPContainerPersisterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end