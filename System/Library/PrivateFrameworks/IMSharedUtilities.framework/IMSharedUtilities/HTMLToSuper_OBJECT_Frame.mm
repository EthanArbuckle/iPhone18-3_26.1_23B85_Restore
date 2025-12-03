@interface HTMLToSuper_OBJECT_Frame
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation HTMLToSuper_OBJECT_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  if ([attributes objectForKey:{@"breadcrumbText", context, element, i, name}])
  {
    [objc_msgSend(attributes _stringForKey:{@"breadcrumbOptions", "unsignedIntValue"}];

    MEMORY[0x1EEE66B58](context, sel_appendBreadcrumbText_withOptions_);
  }
}

@end