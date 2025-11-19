@interface MXIAtlasDescriptor
- (MXIAtlasDescriptor)init;
- (MXIAtlasDescriptor)initWithOption:(id)a3;
@end

@implementation MXIAtlasDescriptor

- (MXIAtlasDescriptor)initWithOption:(id)a3
{
  v4 = a3;
  v12 = objc_msgSend_init(self, v5, v6, v7, v8);
  if (v12)
  {
    v13 = objc_msgSend_valueForKey_(v4, v9, @"atlas_compression", v10, v11);
    v16 = objc_msgSend_parseUInt_defaultValue_(MXIUtilities, v14, v13, 0, v15);
    objc_msgSend_setCompression_(v12, v17, v16, v18, v19);

    v23 = objc_msgSend_valueForKey_(v4, v20, @"atlas_downsample", v21, v22);
    v26 = objc_msgSend_parseUInt_defaultValue_(MXIUtilities, v24, v23, 1, v25);
    objc_msgSend_setDownsample_(v12, v27, v26, v28, v29);

    v33 = objc_msgSend_valueForKey_(v4, v30, @"aspect_transfer_function", v31, v32);
    v36 = objc_msgSend_parseUInt_defaultValue_(MXIUtilities, v34, v33, 0, v35);
    objc_msgSend_setTransferFunction_(v12, v37, v36, v38, v39);
  }

  return v12;
}

- (MXIAtlasDescriptor)init
{
  v6.receiver = self;
  v6.super_class = MXIAtlasDescriptor;
  v2 = [(MXIAtlasDescriptor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MXIComponentsDescriptorArray);
    components = v2->_components;
    v2->_components = v3;
  }

  return v2;
}

@end