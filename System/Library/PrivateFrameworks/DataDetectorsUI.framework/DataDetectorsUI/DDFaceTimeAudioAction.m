@interface DDFaceTimeAudioAction
- (DDFaceTimeAudioAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (id)callProvider;
- (id)dialRequest;
- (id)notificationTitle;
@end

@implementation DDFaceTimeAudioAction

- (DDFaceTimeAudioAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v10.receiver = self;
  v10.super_class = DDFaceTimeAudioAction;
  result = [(DDTelephoneNumberAction *)&v10 initWithURL:a3 result:a4 context:a5];
  if (a3 && result && !result->super.super._phoneNumber)
  {
    v7 = result;
    v8 = dd_emailFromMailtoScheme(result->super.super.super._url);
    phoneNumber = v7->super.super._phoneNumber;
    v7->super.super._phoneNumber = v8;

    return v7;
  }

  return result;
}

- (id)callProvider
{
  v2 = objc_alloc_init(MEMORY[0x277D6EE28]);
  v3 = [v2 faceTimeProvider];

  return v3;
}

- (id)dialRequest
{
  v3 = [(DDFaceTimeAudioAction *)self callProvider];
  v4 = [(DDCallAction *)self dialRequestWithProvider:v3];

  return v4;
}

- (id)notificationTitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = DDLocalizedString(@"FaceTime Audio %@");
  v5 = [(DDCallAction *)self notificationTitleTargetString];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

@end