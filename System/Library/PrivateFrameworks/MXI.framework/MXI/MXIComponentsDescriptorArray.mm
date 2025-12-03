@interface MXIComponentsDescriptorArray
- (MXIComponentsDescriptorArray)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MXIComponentsDescriptorArray

- (MXIComponentsDescriptorArray)init
{
  v17.receiver = self;
  v17.super_class = MXIComponentsDescriptorArray;
  v2 = [(MXIComponentsDescriptorArray *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_count = 4;
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    v8 = objc_msgSend_initWithCapacity_(v4, v5, v3->_count, v6, v7);
    components = v3->_components;
    v3->_components = v8;

    if (v3->_count)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = objc_alloc_init(MXIComponentsDescriptor);
        objc_msgSend_setObject_atIndexedSubscript_(v3->_components, v13, v12, v10, v14);

        v10 = v11;
      }

      while (v3->_count > v11++);
    }
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MXIComponentsDescriptorArray);
  v9 = objc_msgSend_copy(self->_components, v5, v6, v7, v8);
  components = v4->_components;
  v4->_components = v9;

  return v4;
}

@end