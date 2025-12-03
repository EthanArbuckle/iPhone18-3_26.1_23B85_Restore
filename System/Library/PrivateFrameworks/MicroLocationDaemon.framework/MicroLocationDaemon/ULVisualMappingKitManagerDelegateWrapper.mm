@interface ULVisualMappingKitManagerDelegateWrapper
- (ULVisualMappingKitManagerDelegateWrapper)initWithCppInterface:(ULVisualMappingKitManagerDelegateCppInterface *)interface;
- (void)didUpdateLocation:(id)location anchors:(id)anchors;
@end

@implementation ULVisualMappingKitManagerDelegateWrapper

- (ULVisualMappingKitManagerDelegateWrapper)initWithCppInterface:(ULVisualMappingKitManagerDelegateCppInterface *)interface
{
  v7.receiver = self;
  v7.super_class = ULVisualMappingKitManagerDelegateWrapper;
  v4 = [(ULVisualMappingKitManagerDelegateWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ULVisualMappingKitManagerDelegateWrapper *)v4 setCppInterface:interface];
  }

  return v5;
}

- (void)didUpdateLocation:(id)location anchors:(id)anchors
{
  locationCopy = location;
  anchorsCopy = anchors;
  cppInterface = [(ULVisualMappingKitManagerDelegateWrapper *)self cppInterface];
  (*(cppInterface->var0 + 2))(cppInterface, locationCopy, anchorsCopy);
}

@end