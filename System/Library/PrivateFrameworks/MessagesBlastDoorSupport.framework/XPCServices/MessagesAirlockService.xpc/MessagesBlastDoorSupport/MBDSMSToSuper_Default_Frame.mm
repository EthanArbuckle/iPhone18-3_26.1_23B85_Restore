@interface MBDSMSToSuper_Default_Frame
- (void)_addAttachmentPartWithSource:(id)a3 toContext:(id)a4;
- (void)parser:(id)a3 context:(id)a4 foundCharacters:(id)a5;
@end

@implementation MBDSMSToSuper_Default_Frame

- (void)parser:(id)a3 context:(id)a4 foundCharacters:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[NSCharacterSet newlineCharacterSet];
  v12 = [v8 stringByRemovingCharactersFromSet:v11];

  v13.receiver = self;
  v13.super_class = MBDSMSToSuper_Default_Frame;
  [(MBDToSuperParserFrame *)&v13 parser:v10 context:v9 foundCharacters:v12];
}

- (void)_addAttachmentPartWithSource:(id)a3 toContext:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v5 orderedParts];
  v7 = [v6 lastObject];

  if (!v7)
  {
    v7 = objc_alloc_init(SMSPart);
    [v5 _addPart:v7];
  }

  v8 = SMSCopySanitizedContentLocation(v10);
  v9 = [[SMSAttachmentPart alloc] initWithContentLocation:v8];
  [(SMSPart *)v7 addAttachmentPart:v9];
}

@end