@interface MBDSMSToSuper_AUDIO_Frame
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDSMSToSuper_AUDIO_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v12 = MBDIMCopyNormalizedAttributes(attributes, 1, 0);
  v11 = [v12 objectForKey:@"src"];
  [(MBDSMSToSuper_Default_Frame *)self _addAttachmentPartWithSource:v11 toContext:contextCopy];
}

@end