@interface RequestUserForAppLaunch
@end

@implementation RequestUserForAppLaunch

uint64_t ___genericMFi_appLaunch_RequestUserForAppLaunch_block_invoke_2(uint64_t a1)
{
  result = genericMFi_endpoint_getFeature(*(a1 + 32), 2u);
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

void ___genericMFi_appLaunch_RequestUserForAppLaunch_block_invoke(uint64_t a1, int a2)
{
  (*(*(a1 + 32) + 16))(*(a1 + 32), a2 == 0);
  EndpointWithUUID = acc_manager_getEndpointWithUUID(*(a1 + 40));
  if (EndpointWithUUID)
  {
    v4 = EndpointWithUUID;
    if (acc_endpoint_getProtocol(EndpointWithUUID) == 4)
    {
      v5 = v4[7];
      if (v5)
      {
        v6 = *(v5 + 32);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = ___genericMFi_appLaunch_RequestUserForAppLaunch_block_invoke_2;
        block[3] = &__block_descriptor_tmp_19_1;
        block[4] = v5;
        dispatch_sync(v6, block);
      }
    }
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
  }
}

@end