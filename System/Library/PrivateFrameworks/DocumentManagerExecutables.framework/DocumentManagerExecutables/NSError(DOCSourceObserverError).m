@interface NSError(DOCSourceObserverError)
+ (id)observerErrorWithUnderlyingErrors:()DOCSourceObserverError;
@end

@implementation NSError(DOCSourceObserverError)

+ (id)observerErrorWithUnderlyingErrors:()DOCSourceObserverError
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA578];
  v10[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = objc_alloc(MEMORY[0x277CCA9B8]);

  v7 = [v6 initWithDomain:@"com.apple.DocumentManager.SourceObserver" code:1 userInfo:v5];

  return v7;
}

@end