@interface BMPropertyDefinition
- (BMPropertyDefinition)initWithName:(id)name type:(int)type enumValues:(id)values classPropertyDefinitions:(id)definitions comment:(id)comment;
@end

@implementation BMPropertyDefinition

- (BMPropertyDefinition)initWithName:(id)name type:(int)type enumValues:(id)values classPropertyDefinitions:(id)definitions comment:(id)comment
{
  nameCopy = name;
  valuesCopy = values;
  definitionsCopy = definitions;
  commentCopy = comment;
  v20.receiver = self;
  v20.super_class = BMPropertyDefinition;
  v17 = [(BMPropertyDefinition *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, name);
    v18->_type = type;
    objc_storeStrong(&v18->_enumValues, values);
    objc_storeStrong(&v18->_classPropertyDefinitions, definitions);
    objc_storeStrong(&v18->_comment, comment);
  }

  return v18;
}

@end