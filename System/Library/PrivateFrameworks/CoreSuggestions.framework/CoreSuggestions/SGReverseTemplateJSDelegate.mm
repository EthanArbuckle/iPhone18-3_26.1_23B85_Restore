@interface SGReverseTemplateJSDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation SGReverseTemplateJSDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 valueForEntitlement:@"com.apple.private.reversetemplated"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 BOOLValue])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [NSSet alloc];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v9 initWithObjects:{v10, v11, v12, v13, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    v15 = objc_autoreleasePoolPush();
    v16 = [NSSet alloc];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v16 initWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v15);
    v21 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SGReverseTemplateJS];
    [v21 setClasses:v14 forSelector:"shouldDownloadFull:reply:" argumentIndex:0 ofReply:0];
    [v21 setClasses:v14 forSelector:"emailToOutput:reply:" argumentIndex:0 ofReply:0];
    [v21 setClasses:v14 forSelector:"textMessageToOutput:reply:" argumentIndex:0 ofReply:0];
    [v21 setClasses:v14 forSelector:"eventClassificationForEntity:reply:" argumentIndex:0 ofReply:0];
    [v21 setClasses:v14 forSelector:"resolveCandidatesForJSDict:reply:" argumentIndex:0 ofReply:0];
    [v21 setClasses:v14 forSelector:"privacyAwareLogsForMLExtractions:reply:" argumentIndex:0 ofReply:0];
    [v21 setClasses:v14 forSelector:"diffSchemas:withExpectedSchemas:reply:" argumentIndex:0 ofReply:0];
    [v21 setClasses:v14 forSelector:"mergeSchemas:withExpectedSchemas:reply:" argumentIndex:0 ofReply:0];
    [v21 setClasses:v20 forSelector:"parseHTML:reply:" argumentIndex:0 ofReply:0];
    [v6 setExportedInterface:v21];
    v22 = objc_opt_new();
    [v6 setExportedObject:v22];

    [v6 resume];
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end