@interface HUControllableCollectionViewLayoutOverrideAttributes
- (CGAffineTransform)transform;
- (HUControllableCollectionViewLayoutOverrideAttributes)init;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation HUControllableCollectionViewLayoutOverrideAttributes

- (HUControllableCollectionViewLayoutOverrideAttributes)init
{
  v5.receiver = self;
  v5.super_class = HUControllableCollectionViewLayoutOverrideAttributes;
  result = [(HUControllableCollectionViewLayoutOverrideAttributes *)&v5 init];
  if (result)
  {
    v3 = MEMORY[0x277CBF2C0];
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    *&result->_transform.a = *MEMORY[0x277CBF2C0];
    *&result->_transform.c = v4;
    *&result->_transform.tx = *(v3 + 32);
    result->_zIndex = 1;
    result->_alpha = 1.0;
  }

  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self->ty;
  *&retstr->a = *&self->d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].b;
  return self;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_transform.tx = *&a3->tx;
  *&self->_transform.c = v4;
  *&self->_transform.a = v3;
}

@end