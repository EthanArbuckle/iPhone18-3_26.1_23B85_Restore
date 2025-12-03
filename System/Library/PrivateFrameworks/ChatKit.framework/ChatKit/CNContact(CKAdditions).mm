@interface CNContact(CKAdditions)
- (id)identifierForKey:()CKAdditions withDestination:;
@end

@implementation CNContact(CKAdditions)

- (id)identifierForKey:()CKAdditions withDestination:
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isEqualToString:*MEMORY[0x1E695C208]];
  v9 = 0;
  if (v7 && (v8 & 1) == 0)
  {
    v9 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v7];
  }

  v10 = [self valueForKey:v6];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__CNContact_CKAdditions__identifierForKey_withDestination___block_invoke;
  v19[3] = &unk_1E72EEBA8;
  v11 = v6;
  v20 = v11;
  v21 = v7;
  v22 = v9;
  v12 = v9;
  v13 = v7;
  v14 = [v10 indexOfObjectPassingTest:v19];

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    identifier = 0;
  }

  else
  {
    v16 = [self valueForKey:v11];
    v17 = [v16 objectAtIndex:v14];
    identifier = [v17 identifier];
  }

  return identifier;
}

@end