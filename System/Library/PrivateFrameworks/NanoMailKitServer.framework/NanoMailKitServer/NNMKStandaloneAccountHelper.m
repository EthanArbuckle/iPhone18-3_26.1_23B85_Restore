@interface NNMKStandaloneAccountHelper
+ (void)saveLocalAccountProperties:(id)a3 withCompletion:(id)a4;
@end

@implementation NNMKStandaloneAccountHelper

+ (void)saveLocalAccountProperties:(id)a3 withCompletion:(id)a4
{
  v5 = MEMORY[0x277D28280];
  v6 = a4;
  v7 = a3;
  v8 = [v7 localId];
  v9 = [v5 accountWithUniqueId:v8];
  v14 = [v9 persistentAccount];

  v10 = [v7 emailAddressToken];
  [v14 setAccountProperty:v10 forKey:@"NNMKEmailAddressTokenKey"];

  v11 = [v7 pccEmailAddress];

  [v14 setAccountProperty:v11 forKey:@"NNMKPCCEmailAddressKey"];
  v12 = [MEMORY[0x277D281E8] sharedAccountStore];
  v13 = [v12 persistentStore];
  [v13 saveAccount:v14 withCompletionHandler:v6];
}

@end