@interface NSData(HMFCalendarCreation)
- (id)decodeArrayOfDateComponents;
@end

@implementation NSData(HMFCalendarCreation)

- (id)decodeArrayOfDateComponents
{
  v2 = MEMORY[0x277CCAAC8];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  v6 = [v2 unarchivedObjectOfClasses:v5 fromData:a1 error:0];

  return v6;
}

@end