@interface InitializeAccelerationStructures
@end

@implementation InitializeAccelerationStructures

void __InitializeAccelerationStructures_block_invoke(id a1)
{
  v1 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:5 capacity:1024];
  v2 = s_accelerationStructuresByStreamRef;
  s_accelerationStructuresByStreamRef = v1;

  v3 = [[NSMutableDictionary alloc] initWithCapacity:1024];
  v4 = s_accelerationStructureGPUResourceIDToStreamRef;
  s_accelerationStructureGPUResourceIDToStreamRef = v3;

  s_accelerationStructuresLock = 0;
}

@end