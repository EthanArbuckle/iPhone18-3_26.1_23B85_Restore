@interface BMPropertyDefinition
- (BMPropertyDefinition)initWithName:(id)a3 type:(int)a4 enumValues:(id)a5 classPropertyDefinitions:(id)a6 comment:(id)a7;
@end

@implementation BMPropertyDefinition

- (BMPropertyDefinition)initWithName:(id)a3 type:(int)a4 enumValues:(id)a5 classPropertyDefinitions:(id)a6 comment:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMPropertyDefinition;
  v17 = [(BMPropertyDefinition *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, a3);
    v18->_type = a4;
    objc_storeStrong(&v18->_enumValues, a5);
    objc_storeStrong(&v18->_classPropertyDefinitions, a6);
    objc_storeStrong(&v18->_comment, a7);
  }

  return v18;
}

@end