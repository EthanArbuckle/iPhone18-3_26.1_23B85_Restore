@interface ACAccountStore
- (id)mb_accountForPersonaIdentifier:(id)identifier;
@end

@implementation ACAccountStore

- (id)mb_accountForPersonaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    __assert_rtn("[ACAccountStore(MBPersonaHelpers) mb_accountForPersonaIdentifier:]", "ACAccountStore+MBPersonaHelpers.m", 14, "personaIdentifier");
  }

  v5 = identifierCopy;
  v6 = [(ACAccountStore *)self accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierAppleAccount];
  [(ACAccountStore *)self accountsWithAccountType:v6];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        personaIdentifier = [v11 personaIdentifier];
        v13 = [personaIdentifier isEqualToString:v5];

        if (v13)
        {
          v8 = v11;
          goto LABEL_12;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v8;
}

@end