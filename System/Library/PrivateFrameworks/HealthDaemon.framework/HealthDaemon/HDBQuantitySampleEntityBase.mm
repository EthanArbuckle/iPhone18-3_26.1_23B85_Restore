@interface HDBQuantitySampleEntityBase
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDBQuantitySampleEntityBase

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  dCopy = d;
  v10 = objc_opt_class();
  if (([v10 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDBQuantitySampleEntityBase.m" lineNumber:39 description:{@"Subclasses must override %s", "+[HDBQuantitySampleEntityBase insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  return dCopy;
}

@end