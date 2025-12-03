@interface OADFlattenedGroup
- (OADFlattenedGroup)init;
- (void)addDrawable:(id)drawable;
@end

@implementation OADFlattenedGroup

- (OADFlattenedGroup)init
{
  v6.receiver = self;
  v6.super_class = OADFlattenedGroup;
  v2 = [(OADDrawable *)&v6 initWithPropertiesClass:0];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mDrawables = v2->mDrawables;
    v2->mDrawables = v3;
  }

  return v2;
}

- (void)addDrawable:(id)drawable
{
  drawableCopy = drawable;
  if (drawableCopy)
  {
    [(NSMutableArray *)self->mDrawables addObject:drawableCopy];
  }
}

@end