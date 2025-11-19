@interface HTMLToSuper_OBJECT_Frame
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation HTMLToSuper_OBJECT_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  if ([a8 objectForKey:{@"breadcrumbText", a4, a5, a6, a7}])
  {
    [objc_msgSend(a8 _stringForKey:{@"breadcrumbOptions", "unsignedIntValue"}];

    MEMORY[0x1EEE66B58](a4, sel_appendBreadcrumbText_withOptions_);
  }
}

@end