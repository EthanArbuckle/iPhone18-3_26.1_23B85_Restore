@interface SUUITemplateDefinitionViewElement
- (NSString)definitionMode;
- (NSString)definitionType;
@end

@implementation SUUITemplateDefinitionViewElement

- (NSString)definitionMode
{
  v2 = [(SUUITemplateDefinitionViewElement *)self attributes];
  v3 = [v2 objectForKey:@"mode"];

  return v3;
}

- (NSString)definitionType
{
  v2 = [(SUUITemplateDefinitionViewElement *)self attributes];
  v3 = [v2 objectForKey:@"type"];

  return v3;
}

@end