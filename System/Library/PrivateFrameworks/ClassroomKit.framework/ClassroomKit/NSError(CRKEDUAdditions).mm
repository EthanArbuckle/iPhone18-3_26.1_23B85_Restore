@interface NSError(CRKEDUAdditions)
+ (id)crk_EDUProfileErrorWithCode:()CRKEDUAdditions errorField:andValue:;
+ (id)crk_allOrNoneKeysErrorWithProvidedKeys:()CRKEDUAdditions allOrNoneKeys:;
+ (id)crk_badFieldTypeErrorWithField:()CRKEDUAdditions;
+ (id)crk_missingFieldErrorWithField:()CRKEDUAdditions;
+ (id)crk_topLevelUserIsBothLeaderAndMemberErrorWithUserIdentifier:()CRKEDUAdditions;
+ (id)crk_topLevelUserIsNeitherLeaderNorMemberErrorWithUserIdentifier:()CRKEDUAdditions;
@end

@implementation NSError(CRKEDUAdditions)

+ (id)crk_badFieldTypeErrorWithField:()CRKEDUAdditions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"CRKEDUProfileErrorField";
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [a1 crk_EDUProfileErrorWithCode:2 errorDictionary:v6];

  return v7;
}

+ (id)crk_missingFieldErrorWithField:()CRKEDUAdditions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"CRKEDUProfileErrorField";
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [a1 crk_EDUProfileErrorWithCode:1 errorDictionary:v6];

  return v7;
}

+ (id)crk_allOrNoneKeysErrorWithProvidedKeys:()CRKEDUAdditions allOrNoneKeys:
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"ProvidedKeys";
  v12[1] = @"AllOrNoneKeys";
  v13[0] = a3;
  v13[1] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [a1 crk_EDUProfileErrorWithCode:5 errorDictionary:v9];

  return v10;
}

+ (id)crk_topLevelUserIsBothLeaderAndMemberErrorWithUserIdentifier:()CRKEDUAdditions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"TopLevelUserIdentifier";
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [a1 crk_EDUProfileErrorWithCode:7 errorDictionary:v6];

  return v7;
}

+ (id)crk_topLevelUserIsNeitherLeaderNorMemberErrorWithUserIdentifier:()CRKEDUAdditions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"TopLevelUserIdentifier";
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [a1 crk_EDUProfileErrorWithCode:6 errorDictionary:v6];

  return v7;
}

+ (id)crk_EDUProfileErrorWithCode:()CRKEDUAdditions errorField:andValue:
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"CRKEDUProfileErrorField";
  v14[1] = @"CRKEDUProfileErrorValue";
  v15[0] = a4;
  v15[1] = a5;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = [v8 dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = [a1 crk_EDUProfileErrorWithCode:a3 errorDictionary:v11];

  return v12;
}

@end