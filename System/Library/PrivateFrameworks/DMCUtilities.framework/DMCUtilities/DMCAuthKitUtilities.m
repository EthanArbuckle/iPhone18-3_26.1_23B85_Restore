@interface DMCAuthKitUtilities
+ (id)midWithError:(id *)a3;
@end

@implementation DMCAuthKitUtilities

+ (id)midWithError:(id *)a3
{
  if (midWithError__onceToken != -1)
  {
    +[DMCAuthKitUtilities midWithError:];
  }

  v10 = 0;
  v4 = [midWithError__anisetteProvisioningController anisetteDataWithError:&v10];
  v5 = v10;
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = v5;
      v8 = 0;
      *a3 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [v4 machineID];
  }

  return v8;
}

uint64_t __36__DMCAuthKitUtilities_midWithError___block_invoke()
{
  midWithError__anisetteProvisioningController = objc_alloc_init(DMCAKAnisetteProvisioningControllerClass());

  return MEMORY[0x1EEE66BB8]();
}

@end