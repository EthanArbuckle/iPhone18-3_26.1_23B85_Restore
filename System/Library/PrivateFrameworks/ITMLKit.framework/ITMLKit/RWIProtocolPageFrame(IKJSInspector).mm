@interface RWIProtocolPageFrame(IKJSInspector)
+ (id)ik_pageFrameFromDOMDocument:()IKJSInspector;
@end

@implementation RWIProtocolPageFrame(IKJSInspector)

+ (id)ik_pageFrameFromDOMDocument:()IKJSInspector
{
  v3 = a3;
  documentElement = [v3 documentElement];
  ik_templateName = [documentElement ik_templateName];
  v6 = ik_templateName;
  v7 = &stru_2866C1E60;
  if (ik_templateName)
  {
    v7 = ik_templateName;
  }

  v8 = v7;

  _requestLoader = [v3 _requestLoader];
  identifier = [_requestLoader identifier];
  v11 = identifier;
  if (identifier)
  {
    v12 = identifier;
  }

  else
  {
    v12 = @"Page";
  }

  v13 = v12;

  v14 = MEMORY[0x277D7B798];
  documentURI = [v3 documentURI];

  if (documentURI)
  {
    v16 = documentURI;
  }

  else
  {
    v16 = v8;
  }

  v17 = [v14 safe_initWithIdentifier:@"Page" loaderId:v13 url:v16 securityOrigin:@"Inspector" mimeType:@"text/xml"];

  [v17 setName:v8];

  return v17;
}

@end