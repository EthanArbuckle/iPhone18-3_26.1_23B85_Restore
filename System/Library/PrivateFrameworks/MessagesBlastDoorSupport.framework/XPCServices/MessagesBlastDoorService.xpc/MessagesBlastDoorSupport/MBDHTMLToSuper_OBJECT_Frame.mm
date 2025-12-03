@interface MBDHTMLToSuper_OBJECT_Frame
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDHTMLToSuper_OBJECT_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  attributesCopy = attributes;
  v19.receiver = self;
  v19.super_class = MBDHTMLToSuper_OBJECT_Frame;
  [(MBDToSuperParserFrame *)&v19 parser:parser context:contextCopy didStartElement:element namespaceURI:i qualifiedName:name attributes:attributesCopy];
  v16 = [attributesCopy objectForKey:@"breadcrumbText"];
  if (v16)
  {
    v17 = [attributesCopy _stringForKey:@"breadcrumbOptions"];
    unsignedIntValue = [v17 unsignedIntValue];

    [contextCopy appendBreadcrumbText:v16 withOptions:unsignedIntValue];
  }
}

@end