@interface NSXPCInterface(Enum)
- (uint64_t)ln_updateWithEnumInterface;
@end

@implementation NSXPCInterface(Enum)

- (uint64_t)ln_updateWithEnumInterface
{
  [a1 setClass:objc_opt_class() forSelector:sel_fetchURLForEnumWithIdentifier_caseIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
  [a1 setClass:objc_opt_class() forSelector:sel_fetchURLForEnumWithIdentifier_caseIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  [a1 setClasses:v5 forSelector:sel_fetchURLsForEnumWithIdentifier_completionHandler_ argumentIndex:0 ofReply:1];

  v6 = objc_opt_class();

  return [a1 setClass:v6 forSelector:sel_fetchURLsForEnumWithIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
}

@end