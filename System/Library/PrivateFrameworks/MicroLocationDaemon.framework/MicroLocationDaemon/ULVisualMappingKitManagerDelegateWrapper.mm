@interface ULVisualMappingKitManagerDelegateWrapper
- (ULVisualMappingKitManagerDelegateWrapper)initWithCppInterface:(ULVisualMappingKitManagerDelegateCppInterface *)a3;
- (void)didUpdateLocation:(id)a3 anchors:(id)a4;
@end

@implementation ULVisualMappingKitManagerDelegateWrapper

- (ULVisualMappingKitManagerDelegateWrapper)initWithCppInterface:(ULVisualMappingKitManagerDelegateCppInterface *)a3
{
  v7.receiver = self;
  v7.super_class = ULVisualMappingKitManagerDelegateWrapper;
  v4 = [(ULVisualMappingKitManagerDelegateWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ULVisualMappingKitManagerDelegateWrapper *)v4 setCppInterface:a3];
  }

  return v5;
}

- (void)didUpdateLocation:(id)a3 anchors:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(ULVisualMappingKitManagerDelegateWrapper *)self cppInterface];
  (*(v7->var0 + 2))(v7, v8, v6);
}

@end