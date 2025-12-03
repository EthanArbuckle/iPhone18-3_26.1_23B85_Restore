@interface DIIdentityAnyOfDescriptor
- (DIIdentityAnyOfDescriptor)initWithDescriptors:(id)descriptors;
@end

@implementation DIIdentityAnyOfDescriptor

- (DIIdentityAnyOfDescriptor)initWithDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v9.receiver = self;
  v9.super_class = DIIdentityAnyOfDescriptor;
  v5 = [(DIIdentityAnyOfDescriptor *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:descriptorsCopy copyItems:1];
    descriptors = v5->_descriptors;
    v5->_descriptors = v6;
  }

  return v5;
}

@end