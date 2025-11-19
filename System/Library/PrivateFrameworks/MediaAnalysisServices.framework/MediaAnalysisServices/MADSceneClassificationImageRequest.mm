@interface MADSceneClassificationImageRequest
+ (id)allocWithZone:(_NSZone *)a3;
@end

@implementation MADSceneClassificationImageRequest

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MADSceneClassificationImageRequest;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[MADSceneClassificationImageRequest allocWithZone:];
    }

    return 0;
  }
}

@end