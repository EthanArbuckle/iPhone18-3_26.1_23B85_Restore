@interface MBDSMSToSuper_PAR_Frame
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDSMSToSuper_PAR_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v9 = objc_alloc_init(SMSPart);
  [contextCopy _addPart:v9];
}

@end