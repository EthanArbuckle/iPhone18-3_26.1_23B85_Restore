@interface RWIProtocolPageFrame(IKJSInspector)
+ (id)ik_pageFrameFromDOMDocument:()IKJSInspector;
@end

@implementation RWIProtocolPageFrame(IKJSInspector)

+ (id)ik_pageFrameFromDOMDocument:()IKJSInspector
{
  v3 = a3;
  v4 = [v3 documentElement];
  v5 = [v4 ik_templateName];
  v6 = v5;
  v7 = &stru_2866C1E60;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v3 _requestLoader];
  v10 = [v9 identifier];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"Page";
  }

  v13 = v12;

  v14 = MEMORY[0x277D7B798];
  v15 = [v3 documentURI];

  if (v15)
  {
    v16 = v15;
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