@interface MBDSMSToSuper_PAR_Frame
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation MBDSMSToSuper_PAR_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v8 = a4;
  v9 = objc_alloc_init(SMSPart);
  [v8 _addPart:v9];
}

@end