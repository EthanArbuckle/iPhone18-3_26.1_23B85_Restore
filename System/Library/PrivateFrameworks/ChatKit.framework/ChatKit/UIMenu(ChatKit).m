@interface UIMenu(ChatKit)
+ (uint64_t)ck_indexAfterMenuWithMenuIdentifier:()ChatKit inMenuElementsArray:;
+ (uint64_t)ck_indexOfMenuWithMenuIdentifier:()ChatKit inMenuElementsArray:;
+ (unint64_t)ck_menuInsertionIndexAfterIndex:()ChatKit inMenuElementsArray:;
@end

@implementation UIMenu(ChatKit)

+ (uint64_t)ck_indexOfMenuWithMenuIdentifier:()ChatKit inMenuElementsArray:
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__UIMenu_ChatKit__ck_indexOfMenuWithMenuIdentifier_inMenuElementsArray___block_invoke;
  v9[3] = &unk_1E72F5868;
  v10 = v5;
  v6 = v5;
  v7 = [a4 indexOfObjectPassingTest:v9];

  return v7;
}

+ (uint64_t)ck_indexAfterMenuWithMenuIdentifier:()ChatKit inMenuElementsArray:
{
  v5 = a3;
  v6 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__UIMenu_ChatKit__ck_indexAfterMenuWithMenuIdentifier_inMenuElementsArray___block_invoke;
  v10[3] = &unk_1E72F5890;
  v7 = v5;
  v11 = v7;
  v12 = v13;
  v8 = [v6 indexOfObjectPassingTest:v10];

  _Block_object_dispose(v13, 8);
  return v8;
}

+ (unint64_t)ck_menuInsertionIndexAfterIndex:()ChatKit inMenuElementsArray:
{
  v5 = a4;
  v6 = v5;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3 + 1;
    if (v7 > [v5 count])
    {
      v7 = [v6 count];
    }
  }

  return v7;
}

@end