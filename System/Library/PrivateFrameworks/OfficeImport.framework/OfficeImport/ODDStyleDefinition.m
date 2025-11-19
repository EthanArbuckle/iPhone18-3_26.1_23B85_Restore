@interface ODDStyleDefinition
- (ODDStyleDefinition)init;
- (id)labelForName:(id)a3;
@end

@implementation ODDStyleDefinition

- (ODDStyleDefinition)init
{
  v6.receiver = self;
  v6.super_class = ODDStyleDefinition;
  v2 = [(ODDStyleDefinition *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mStyleLabels = v2->mStyleLabels;
    v2->mStyleLabels = v3;
  }

  return v2;
}

- (id)labelForName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mStyleLabels objectForKey:a3];

  return v3;
}

@end