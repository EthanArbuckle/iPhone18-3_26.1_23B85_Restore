@interface HAP2PropertyLock
+ (HAP2PropertyLock)lockWithName:(id)name;
- (void)performReadingBlock:(id)block;
- (void)performWritingBlock:(id)block;
@end

@implementation HAP2PropertyLock

+ (HAP2PropertyLock)lockWithName:(id)name
{
  nameCopy = name;
  v4 = objc_opt_new();
  v5 = [objc_alloc(objc_opt_class()) initWithLock:v4 name:nameCopy];

  return v5;
}

- (void)performWritingBlock:(id)block
{
  blockCopy = block;
  internalLock = [(HAP2Lock *)self internalLock];
  [internalLock lockForWriting];

  [(HAP2Lock *)self _performBlock:blockCopy allowRecursive:0];
  internalLock2 = [(HAP2Lock *)self internalLock];
  [internalLock2 unlock];
}

- (void)performReadingBlock:(id)block
{
  blockCopy = block;
  internalLock = [(HAP2Lock *)self internalLock];
  [internalLock lockForReading];

  [(HAP2Lock *)self _performBlock:blockCopy allowRecursive:1];
  internalLock2 = [(HAP2Lock *)self internalLock];
  [internalLock2 unlock];
}

@end