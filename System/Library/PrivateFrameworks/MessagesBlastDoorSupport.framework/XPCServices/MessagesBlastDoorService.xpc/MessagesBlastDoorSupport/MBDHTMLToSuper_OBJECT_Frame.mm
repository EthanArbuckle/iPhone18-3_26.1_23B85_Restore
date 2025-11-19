@interface MBDHTMLToSuper_OBJECT_Frame
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation MBDHTMLToSuper_OBJECT_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v14 = a4;
  v15 = a8;
  v19.receiver = self;
  v19.super_class = MBDHTMLToSuper_OBJECT_Frame;
  [(MBDToSuperParserFrame *)&v19 parser:a3 context:v14 didStartElement:a5 namespaceURI:a6 qualifiedName:a7 attributes:v15];
  v16 = [v15 objectForKey:@"breadcrumbText"];
  if (v16)
  {
    v17 = [v15 _stringForKey:@"breadcrumbOptions"];
    v18 = [v17 unsignedIntValue];

    [v14 appendBreadcrumbText:v16 withOptions:v18];
  }
}

@end