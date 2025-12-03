@interface SUUITemplateDefinitionViewElement
- (NSString)definitionMode;
- (NSString)definitionType;
@end

@implementation SUUITemplateDefinitionViewElement

- (NSString)definitionMode
{
  attributes = [(SUUITemplateDefinitionViewElement *)self attributes];
  v3 = [attributes objectForKey:@"mode"];

  return v3;
}

- (NSString)definitionType
{
  attributes = [(SUUITemplateDefinitionViewElement *)self attributes];
  v3 = [attributes objectForKey:@"type"];

  return v3;
}

@end