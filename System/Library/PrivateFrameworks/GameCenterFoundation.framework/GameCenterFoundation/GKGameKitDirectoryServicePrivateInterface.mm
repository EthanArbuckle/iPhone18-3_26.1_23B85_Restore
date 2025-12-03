@interface GKGameKitDirectoryServicePrivateInterface
+ (void)configureInterface:(id)interface;
@end

@implementation GKGameKitDirectoryServicePrivateInterface

+ (void)configureInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel_listGameKitDirectoriesForBundleID_completionHandler_ argumentIndex:0 ofReply:1];
}

@end