@interface MSPContainerPersister
- (MSPContainerPersisterDelegate)delegate;
- (void)commitByMergingWithStateSnapshot:(id)a3 mergeOptions:(id)a4 completion:(id)a5;
- (void)eraseWithCompletion:(id)a3;
@end

@implementation MSPContainerPersister

- (void)commitByMergingWithStateSnapshot:(id)a3 mergeOptions:(id)a4 completion:(id)a5
{
  if (a5)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = a5;
    v8 = [v6 errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:6 userInfo:0];
    (*(a5 + 2))(v7, 0, 0, v8);
  }
}

- (void)eraseWithCompletion:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = *MEMORY[0x277CCA050];
    v6 = a3;
    v7 = [v4 errorWithDomain:v5 code:3072 userInfo:0];
    (*(a3 + 2))(v6, v7);
  }
}

- (MSPContainerPersisterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end