@interface NSXPCInterface(Entity)
- (uint64_t)ln_updateWithEntityInterface;
@end

@implementation NSXPCInterface(Entity)

- (uint64_t)ln_updateWithEntityInterface
{
  [a1 setClass:objc_opt_class() forSelector:sel_fetchValueForPropertyWithIdentifier_entity_completionHandler_ argumentIndex:0 ofReply:1];
  [a1 setClass:objc_opt_class() forSelector:sel_fetchValueForPropertyWithIdentifier_entity_completionHandler_ argumentIndex:1 ofReply:1];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [a1 setClasses:v4 forSelector:sel_updateProperties_withQuery_completionHandler_ argumentIndex:0 ofReply:0];

  [a1 setClass:objc_opt_class() forSelector:sel_updateProperties_withQuery_completionHandler_ argumentIndex:1 ofReply:0];
  [a1 setClass:objc_opt_class() forSelector:sel_updateProperties_withQuery_completionHandler_ argumentIndex:0 ofReply:1];
  [a1 setClass:objc_opt_class() forSelector:sel_fetchEntityURL_completionHandler_ argumentIndex:0 ofReply:1];
  [a1 setClass:objc_opt_class() forSelector:sel_fetchEntityURL_completionHandler_ argumentIndex:1 ofReply:1];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [a1 setClasses:v7 forSelector:sel_exportTransientEntities_withConfiguration_completionHandler_ argumentIndex:0 ofReply:0];

  [a1 setClass:objc_opt_class() forSelector:sel_exportTransientEntities_withConfiguration_completionHandler_ argumentIndex:0 ofReply:1];
  v8 = objc_opt_class();

  return [a1 setClass:v8 forSelector:sel_exportTransientEntities_withConfiguration_completionHandler_ argumentIndex:1 ofReply:1];
}

@end