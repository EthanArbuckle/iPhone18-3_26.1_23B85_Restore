@interface NSPersistentHistoryToken(EDAdditions)
+ (id)ed_unarchivedTokenWithData:()EDAdditions error:;
@end

@implementation NSPersistentHistoryToken(EDAdditions)

+ (id)ed_unarchivedTokenWithData:()EDAdditions error:
{
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end