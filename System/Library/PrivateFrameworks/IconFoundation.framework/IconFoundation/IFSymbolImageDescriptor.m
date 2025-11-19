@interface IFSymbolImageDescriptor
- (IFSymbolImageDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)digest;
@end

@implementation IFSymbolImageDescriptor

- (IFSymbolImageDescriptor)init
{
  v8.receiver = self;
  v8.super_class = IFSymbolImageDescriptor;
  v2 = [(IFSymbolImageDescriptor *)&v8 init];
  if (v2)
  {
    MGGetFloat32Answer();
    *(v2 + 2) = v3;
    *(v2 + 1) = 0x4031000000000000;
    *(v2 + 24) = xmmword_1B9E3B5D0;
    *(v2 + 5) = 5;
    v4 = MEMORY[0x1E695DF58];
    v5 = [MEMORY[0x1E695DF58] _deviceLanguage];
    v6 = [v4 characterDirectionForLanguage:v5];

    if (v6 == 2)
    {
      *(v2 + 5) = 4;
    }
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 1) = *&self->_pointSize;
  *(result + 2) = *&self->_scale;
  *(result + 4) = self->_symbolWeight;
  *(result + 3) = self->_symbolSize;
  *(result + 5) = self->_layoutDirection;
  return result;
}

- (id)digest
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f:%.0f:%ld:%ld", *&self->_pointSize, *&self->_scale, self->_symbolSize, self->_symbolWeight];
  v3 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v2];

  return v3;
}

@end