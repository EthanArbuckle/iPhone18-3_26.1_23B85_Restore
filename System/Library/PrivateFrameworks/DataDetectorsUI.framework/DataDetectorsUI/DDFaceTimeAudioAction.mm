@interface DDFaceTimeAudioAction
- (DDFaceTimeAudioAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (id)callProvider;
- (id)dialRequest;
- (id)notificationTitle;
@end

@implementation DDFaceTimeAudioAction

- (DDFaceTimeAudioAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  v10.receiver = self;
  v10.super_class = DDFaceTimeAudioAction;
  result = [(DDTelephoneNumberAction *)&v10 initWithURL:l result:result context:context];
  if (l && result && !result->super.super._phoneNumber)
  {
    resultCopy = result;
    v8 = dd_emailFromMailtoScheme(result->super.super.super._url);
    phoneNumber = resultCopy->super.super._phoneNumber;
    resultCopy->super.super._phoneNumber = v8;

    return resultCopy;
  }

  return result;
}

- (id)callProvider
{
  v2 = objc_alloc_init(MEMORY[0x277D6EE28]);
  faceTimeProvider = [v2 faceTimeProvider];

  return faceTimeProvider;
}

- (id)dialRequest
{
  callProvider = [(DDFaceTimeAudioAction *)self callProvider];
  v4 = [(DDCallAction *)self dialRequestWithProvider:callProvider];

  return v4;
}

- (id)notificationTitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = DDLocalizedString(@"FaceTime Audio %@");
  notificationTitleTargetString = [(DDCallAction *)self notificationTitleTargetString];
  v6 = [v3 stringWithFormat:v4, notificationTitleTargetString];

  return v6;
}

@end