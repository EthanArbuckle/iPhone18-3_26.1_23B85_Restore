@interface MADImageVisionRequest
+ (id)allocWithZone:(_NSZone *)zone;
@end

@implementation MADImageVisionRequest

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MADImageVisionRequest;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[MADImageVisionRequest allocWithZone:];
    }

    return 0;
  }
}

@end