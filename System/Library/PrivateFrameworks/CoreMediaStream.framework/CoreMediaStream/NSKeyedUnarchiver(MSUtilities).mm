@interface NSKeyedUnarchiver(MSUtilities)
+ (id)MSSafeUnarchiveAllowedClasses;
+ (id)MSSafeUnarchiveObjectWithData:()MSUtilities outError:;
+ (id)MSSafeUnarchiveObjectWithFile:()MSUtilities outError:;
@end

@implementation NSKeyedUnarchiver(MSUtilities)

+ (id)MSSafeUnarchiveObjectWithFile:()MSUtilities outError:
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
  v7 = [objc_opt_class() MSSafeUnarchiveObjectWithData:v6 outError:a4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)MSSafeUnarchiveObjectWithData:()MSUtilities outError:
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = MEMORY[0x277CCAAC8];
    mSSafeUnarchiveAllowedClasses = [self MSSafeUnarchiveAllowedClasses];
    v9 = [v7 unarchivedObjectOfClasses:mSSafeUnarchiveAllowedClasses fromData:v6 error:a4];
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] MSErrorWithDomain:@"MSArchiverUtilitiesErrorDomain" code:0 description:@"Empty data"];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)MSSafeUnarchiveAllowedClasses
{
  if (MSSafeUnarchiveAllowedClasses_onceToken != -1)
  {
    dispatch_once(&MSSafeUnarchiveAllowedClasses_onceToken, &__block_literal_global_6593);
  }

  v1 = MSSafeUnarchiveAllowedClasses_allowedClasses;

  return v1;
}

@end