@interface HMFMessage(HMDApplicationData)
- (id)appDataDictionaryWithError:()HMDApplicationData;
@end

@implementation HMFMessage(HMDApplicationData)

- (id)appDataDictionaryWithError:()HMDApplicationData
{
  v4 = [a1 messagePayload];
  v5 = [v4 hmd_appDataDictionaryWithError:a3];

  return v5;
}

@end