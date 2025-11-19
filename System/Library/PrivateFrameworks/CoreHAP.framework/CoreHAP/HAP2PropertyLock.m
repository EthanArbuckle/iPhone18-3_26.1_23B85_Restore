@interface HAP2PropertyLock
+ (HAP2PropertyLock)lockWithName:(id)a3;
- (void)performReadingBlock:(id)a3;
- (void)performWritingBlock:(id)a3;
@end

@implementation HAP2PropertyLock

+ (HAP2PropertyLock)lockWithName:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [objc_alloc(objc_opt_class()) initWithLock:v4 name:v3];

  return v5;
}

- (void)performWritingBlock:(id)a3
{
  v4 = a3;
  v5 = [(HAP2Lock *)self internalLock];
  [v5 lockForWriting];

  [(HAP2Lock *)self _performBlock:v4 allowRecursive:0];
  v6 = [(HAP2Lock *)self internalLock];
  [v6 unlock];
}

- (void)performReadingBlock:(id)a3
{
  v4 = a3;
  v5 = [(HAP2Lock *)self internalLock];
  [v5 lockForReading];

  [(HAP2Lock *)self _performBlock:v4 allowRecursive:1];
  v6 = [(HAP2Lock *)self internalLock];
  [v6 unlock];
}

@end