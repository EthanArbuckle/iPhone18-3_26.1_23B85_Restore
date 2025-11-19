@interface DASharedAccountProperties
+ (id)leafAccountTypes;
+ (id)leafAccountTypesToCheckForEquality;
+ (id)parentAccountTypes;
@end

@implementation DASharedAccountProperties

+ (id)parentAccountTypes
{
  if (parentAccountTypes_onceToken != -1)
  {
    +[DASharedAccountProperties parentAccountTypes];
  }

  v3 = parentAccountTypes__sParentAccountTypes;

  return v3;
}

uint64_t __47__DASharedAccountProperties_parentAccountTypes__block_invoke()
{
  parentAccountTypes__sParentAccountTypes = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CB8BA0], *MEMORY[0x277CB8C60], *MEMORY[0x277CB8C40], *MEMORY[0x277CB8D38], *MEMORY[0x277CB8B98], *MEMORY[0x277CB8C10], *MEMORY[0x277CB8BC8], *MEMORY[0x277CB8BD8], *MEMORY[0x277CB8CC0], 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)leafAccountTypes
{
  if (leafAccountTypes_onceToken != -1)
  {
    +[DASharedAccountProperties leafAccountTypes];
  }

  v3 = leafAccountTypes__sLeafAccountTypes;

  return v3;
}

uint64_t __45__DASharedAccountProperties_leafAccountTypes__block_invoke()
{
  leafAccountTypes__sLeafAccountTypes = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CB8D10], *MEMORY[0x277CB8BC8], *MEMORY[0x277CB8BD8], *MEMORY[0x277CB8C98], *MEMORY[0x277CB8C70], *MEMORY[0x277CB8C48], *MEMORY[0x277CB8BE8], 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)leafAccountTypesToCheckForEquality
{
  if (leafAccountTypesToCheckForEquality_onceToken != -1)
  {
    +[DASharedAccountProperties leafAccountTypesToCheckForEquality];
  }

  v3 = leafAccountTypesToCheckForEquality__sLeafAccountTypesToCheckForEquality;

  return v3;
}

uint64_t __63__DASharedAccountProperties_leafAccountTypesToCheckForEquality__block_invoke()
{
  v0 = +[DASharedAccountProperties leafAccountTypes];
  v1 = [v0 mutableCopy];
  v2 = leafAccountTypesToCheckForEquality__sLeafAccountTypesToCheckForEquality;
  leafAccountTypesToCheckForEquality__sLeafAccountTypesToCheckForEquality = v1;

  v3 = leafAccountTypesToCheckForEquality__sLeafAccountTypesToCheckForEquality;
  v4 = *MEMORY[0x277CB8C70];

  return [v3 removeObject:v4];
}

@end