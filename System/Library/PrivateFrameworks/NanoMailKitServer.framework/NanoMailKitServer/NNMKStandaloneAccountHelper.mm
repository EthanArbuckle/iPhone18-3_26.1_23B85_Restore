@interface NNMKStandaloneAccountHelper
+ (void)saveLocalAccountProperties:(id)properties withCompletion:(id)completion;
@end

@implementation NNMKStandaloneAccountHelper

+ (void)saveLocalAccountProperties:(id)properties withCompletion:(id)completion
{
  v5 = MEMORY[0x277D28280];
  completionCopy = completion;
  propertiesCopy = properties;
  localId = [propertiesCopy localId];
  v9 = [v5 accountWithUniqueId:localId];
  persistentAccount = [v9 persistentAccount];

  emailAddressToken = [propertiesCopy emailAddressToken];
  [persistentAccount setAccountProperty:emailAddressToken forKey:@"NNMKEmailAddressTokenKey"];

  pccEmailAddress = [propertiesCopy pccEmailAddress];

  [persistentAccount setAccountProperty:pccEmailAddress forKey:@"NNMKPCCEmailAddressKey"];
  mEMORY[0x277D281E8] = [MEMORY[0x277D281E8] sharedAccountStore];
  persistentStore = [mEMORY[0x277D281E8] persistentStore];
  [persistentStore saveAccount:persistentAccount withCompletionHandler:completionCopy];
}

@end