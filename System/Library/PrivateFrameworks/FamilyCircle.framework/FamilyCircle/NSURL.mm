@interface NSURL
@end

@implementation NSURL

void __49__NSURL_FamilyCircle__fa_URLByAddingQueryParams___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v10 stringValue];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v10;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:
  v8 = *(a1 + 32);
  v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:v5 value:v7];

  [v8 addObject:v9];
}

@end