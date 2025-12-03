@interface DMCAuthKitUtilities
+ (id)midWithError:(id *)error;
@end

@implementation DMCAuthKitUtilities

+ (id)midWithError:(id *)error
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
    if (error)
    {
      v7 = v5;
      machineID = 0;
      *error = v6;
    }

    else
    {
      machineID = 0;
    }
  }

  else
  {
    machineID = [v4 machineID];
  }

  return machineID;
}

uint64_t __36__DMCAuthKitUtilities_midWithError___block_invoke()
{
  midWithError__anisetteProvisioningController = objc_alloc_init(DMCAKAnisetteProvisioningControllerClass());

  return MEMORY[0x1EEE66BB8]();
}

@end