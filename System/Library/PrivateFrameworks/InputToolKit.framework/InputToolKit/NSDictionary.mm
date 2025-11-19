@interface NSDictionary
@end

@implementation NSDictionary

void __55__NSDictionary_ITK__itk_prettyDescriptionWithTabLevel___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = ITKDynamicCast(v6, v5);
  v8 = v7;
  v9 = a1[4];
  v10 = a1[5];
  if (v7)
  {
    v11 = [v7 itk_prettyDescriptionWithTabLevel:a1[6] + 1];
    [v9 appendFormat:@"%@%@ = %@\n", v10, v12, v11];
  }

  else
  {
    [v9 appendFormat:@"%@%@ = %@\n", v10, v12, v5];
  }
}

@end