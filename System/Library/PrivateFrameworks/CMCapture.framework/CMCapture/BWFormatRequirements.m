@interface BWFormatRequirements
- (BOOL)isEmpty;
- (BWFormatRequirements)init;
- (Class)formatClass;
@end

@implementation BWFormatRequirements

- (BWFormatRequirements)init
{
  if ([(BWFormatRequirements *)self isMemberOfClass:objc_opt_class()])
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"BWFormatRequirements is an abstract base class userInfo:{you can't instantiate it directly", 0}]);
  }

  v4.receiver = self;
  v4.super_class = BWFormatRequirements;
  return [(BWFormatRequirements *)&v4 init];
}

- (BOOL)isEmpty
{
  v3 = objc_alloc_init(objc_opt_class());

  return [(BWFormatRequirements *)self isEqual:v3];
}

- (Class)formatClass
{
  if (![(BWFormatRequirements *)self isMemberOfClass:objc_opt_class()])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"BWFormatRequirements is an abstract base class userInfo:{subclasses must implement formatClass", 0}]);
  }

  return objc_opt_class();
}

@end