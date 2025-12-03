@interface HMFMessage(HMDApplicationData)
- (id)appDataDictionaryWithError:()HMDApplicationData;
@end

@implementation HMFMessage(HMDApplicationData)

- (id)appDataDictionaryWithError:()HMDApplicationData
{
  messagePayload = [self messagePayload];
  v5 = [messagePayload hmd_appDataDictionaryWithError:a3];

  return v5;
}

@end