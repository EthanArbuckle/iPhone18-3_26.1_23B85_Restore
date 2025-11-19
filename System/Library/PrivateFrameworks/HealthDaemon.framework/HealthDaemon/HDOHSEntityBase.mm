@interface HDOHSEntityBase
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
@end

@implementation HDOHSEntityBase

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v9 = a6;
  v10 = objc_opt_class();
  if (([v10 isEqual:objc_opt_class()] & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"HDOHSEntityBase.m" lineNumber:39 description:{@"Subclasses must override %s", "+[HDOHSEntityBase insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  return v9;
}

@end