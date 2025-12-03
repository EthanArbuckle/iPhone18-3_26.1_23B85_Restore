@interface ODDStyleDefinition
- (ODDStyleDefinition)init;
- (id)labelForName:(id)name;
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

- (id)labelForName:(id)name
{
  v3 = [(NSMutableDictionary *)self->mStyleLabels objectForKey:name];

  return v3;
}

@end