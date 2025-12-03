@interface NSData(IntentsFoundation)
+ (id)if_dataWithAuditToken:()IntentsFoundation;
+ (id)if_dataWithValue:()IntentsFoundation;
- (id)if_valueOfType:()IntentsFoundation;
- (void)if_auditToken;
@end

@implementation NSData(IntentsFoundation)

- (void)if_auditToken
{
  v3 = [self if_valueOfType:"{?=[8I]}"];
  *a2 = 0u;
  a2[1] = 0u;
  [v3 getValue:a2];
}

- (id)if_valueOfType:()IntentsFoundation
{
  v5 = [self length];
  sizep = 0;
  NSGetSizeAndAlignment(a3, &sizep, 0);
  v6 = 0;
  if (v5 == sizep)
  {
    v6 = [MEMORY[0x277CCAE60] valueWithBytes:objc_msgSend(self objCType:{"bytes"), a3}];
  }

  return v6;
}

+ (id)if_dataWithValue:()IntentsFoundation
{
  if (a3)
  {
    sizep = 0;
    v3 = a3;
    NSGetSizeAndAlignment([v3 objCType], &sizep, 0);
    v4 = malloc_type_malloc(sizep, 0x84690B78uLL);
    [v3 getValue:v4];

    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:sizep];
    free(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)if_dataWithAuditToken:()IntentsFoundation
{
  v4 = [MEMORY[0x277CCAE60] value:a3 withObjCType:"{?=[8I]}"];
  v5 = [self if_dataWithValue:v4];

  return v5;
}

@end