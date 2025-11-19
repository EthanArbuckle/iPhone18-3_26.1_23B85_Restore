@interface ACAccount
@end

@implementation ACAccount

id __46__ACAccount_SyncPrivate__applySyncProperties___block_invoke()
{
  result = [MEMORY[0x277CBEB98] setWithObjects:{@"__Password__", @"AccountType", 0}];
  applySyncProperties__accountKeysToIgnore = result;
  return result;
}

uint64_t __46__ACAccount_SyncPrivate__applySyncProperties___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  result = [applySyncProperties__accountKeysToIgnore containsObject:a2];
  if ((result & 1) == 0)
  {
    if ([a2 isEqualToString:@"Username"])
    {
      v7 = [*(a1 + 32) _usernameFromProperties:*(a1 + 40)];
      v8 = *(a1 + 32);

      return [v8 setUsername:v7];
    }

    else
    {
      v9 = [a2 isEqualToString:@"AccountName"];
      v10 = *(a1 + 32);
      if (v9)
      {

        return [v10 setAccountDescription:a3];
      }

      else
      {

        return [v10 setAccountProperty:a3 forKey:a2];
      }
    }
  }

  return result;
}

@end