@interface MSPContainerEditAddition
@end

@implementation MSPContainerEditAddition

id __95___MSPContainerEditAddition_useImmutableObjectsFromMap_intermediateMutableObjectTransferBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  if (!v4)
  {
    v4 = (*(*(a1 + 40) + 16))();
  }

  return v4;
}

@end