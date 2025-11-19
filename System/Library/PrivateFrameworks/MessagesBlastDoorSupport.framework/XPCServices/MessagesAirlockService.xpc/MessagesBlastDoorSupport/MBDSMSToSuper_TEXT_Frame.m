@interface MBDSMSToSuper_TEXT_Frame
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
- (void)parser:(id)a3 context:(id)a4 foundCharacters:(id)a5;
@end

@implementation MBDSMSToSuper_TEXT_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v15 = a4;
  v9 = MBDIMCopyNormalizedAttributes(a8, 1, 0);
  v10 = [v15 orderedParts];
  v11 = [v10 lastObject];

  if (!v11)
  {
    v11 = objc_alloc_init(SMSPart);
    [v15 _addPart:v11];
  }

  v12 = [v9 objectForKey:@"src"];
  v13 = SMSCopySanitizedContentLocation(v12);

  v14 = [[SMSTextPart alloc] initWithContentLocation:v13];
  [(SMSPart *)v11 addTextPart:v14];
}

- (void)parser:(id)a3 context:(id)a4 foundCharacters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 orderedParts];
  v12 = [v11 lastObject];

  v13 = [v12 textParts];
  v14 = [v13 lastObject];

  if (v14)
  {
    [v14 appendText:v10];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = MBDSMSToSuper_TEXT_Frame;
    [(MBDSMSToSuper_Default_Frame *)&v15 parser:v8 context:v9 foundCharacters:v10];
  }
}

@end