@interface CKCallStateResult
+ (id)callStateResultWithButtonStyle:(int64_t)a3 isFaceTimeVideoAvailable:(BOOL)a4 isFaceTimeAudioAvailable:(BOOL)a5 isTelephonyAvailable:(BOOL)a6 isScreenSharingAvailable:(BOOL)a7;
- (BOOL)shouldShowUnifiedCallButton;
- (int64_t)callMode;
@end

@implementation CKCallStateResult

+ (id)callStateResultWithButtonStyle:(int64_t)a3 isFaceTimeVideoAvailable:(BOOL)a4 isFaceTimeAudioAvailable:(BOOL)a5 isTelephonyAvailable:(BOOL)a6 isScreenSharingAvailable:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = objc_alloc_init(CKCallStateResult);
  [(CKCallStateResult *)v12 setCallButtonStyle:a3];
  [(CKCallStateResult *)v12 setIsFaceTimeVideoAvailable:v10];
  [(CKCallStateResult *)v12 setIsFaceTimeAudioAvailable:v9];
  [(CKCallStateResult *)v12 setIsTelephonyAvailable:v8];
  [(CKCallStateResult *)v12 setIsScreenSharingAvailable:v7];

  return v12;
}

- (BOOL)shouldShowUnifiedCallButton
{
  if ([(CKCallStateResult *)self callButtonStyle]|| [(CKCallStateResult *)self isFaceTimeVideoAvailable])
  {
    return 1;
  }

  return [(CKCallStateResult *)self isFaceTimeAudioAvailable];
}

- (int64_t)callMode
{
  result = [(CKCallStateResult *)self callButtonStyle];
  if ((result - 1) >= 6)
  {
    return 0;
  }

  return result;
}

@end