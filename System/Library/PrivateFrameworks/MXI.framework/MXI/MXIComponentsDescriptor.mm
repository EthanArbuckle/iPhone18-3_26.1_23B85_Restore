@interface MXIComponentsDescriptor
- ($340E233F617FB3D5D9EFCE5A6F22D754)destination;
- (MXIComponentsDescriptor)init;
- (void)setDestination:(id *)a3;
@end

@implementation MXIComponentsDescriptor

- (MXIComponentsDescriptor)init
{
  v15.receiver = self;
  v15.super_class = MXIComponentsDescriptor;
  v2 = [(MXIComponentsDescriptor *)&v15 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_setSemantic_(v2, v3, 0, v4, v5);
    memset(v14, 0, sizeof(v14));
    objc_msgSend_setDestination_(v6, v7, v14, v8, v9);
    objc_msgSend_setExtendedTextureIndex_(v6, v10, 0xFFFFFFFFLL, v11, v12);
  }

  return v6;
}

- ($340E233F617FB3D5D9EFCE5A6F22D754)destination
{
  v3 = *&self[1].var1;
  *&retstr->var0 = *&self->var3;
  *&retstr->var2 = v3;
  return self;
}

- (void)setDestination:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_destination.b = *&a3->var2;
  *&self->_destination.r = v3;
}

@end