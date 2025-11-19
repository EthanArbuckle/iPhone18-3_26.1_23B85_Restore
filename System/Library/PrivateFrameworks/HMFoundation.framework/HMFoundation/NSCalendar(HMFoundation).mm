@interface NSCalendar(HMFoundation)
+ (id)hmf_unarchiveFromData:()HMFoundation error:;
@end

@implementation NSCalendar(HMFoundation)

+ (id)hmf_unarchiveFromData:()HMFoundation error:
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = a3;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:a4];

  return v7;
}

@end