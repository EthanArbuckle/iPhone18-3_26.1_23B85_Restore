@interface GKGameKitDirectoryServicePrivateInterface
+ (void)configureInterface:(id)a3;
@end

@implementation GKGameKitDirectoryServicePrivateInterface

+ (void)configureInterface:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [v4 setClasses:v6 forSelector:sel_listGameKitDirectoriesForBundleID_completionHandler_ argumentIndex:0 ofReply:1];
}

@end