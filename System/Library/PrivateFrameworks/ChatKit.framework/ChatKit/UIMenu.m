@interface UIMenu
@end

@implementation UIMenu

uint64_t __72__UIMenu_ChatKit__ck_indexOfMenuWithMenuIdentifier_inMenuElementsArray___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 identifier];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    *a4 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __75__UIMenu_ChatKit__ck_indexAfterMenuWithMenuIdentifier_inMenuElementsArray___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  v9 = *(*(a1 + 40) + 8);
  if ((*(v9 + 24) & 1) != 0 || !v8)
  {
    if (!(v8 & 1 | ((*(v9 + 24) & 1) == 0)))
    {
      v10 = 1;
      *a4 = 1;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
  *(v9 + 24) = 1;
LABEL_7:

  return v10;
}

@end