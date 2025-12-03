@interface CKCallStateResult
+ (id)callStateResultWithButtonStyle:(int64_t)style isFaceTimeVideoAvailable:(BOOL)available isFaceTimeAudioAvailable:(BOOL)audioAvailable isTelephonyAvailable:(BOOL)telephonyAvailable isScreenSharingAvailable:(BOOL)sharingAvailable;
- (BOOL)shouldShowUnifiedCallButton;
- (int64_t)callMode;
@end

@implementation CKCallStateResult

+ (id)callStateResultWithButtonStyle:(int64_t)style isFaceTimeVideoAvailable:(BOOL)available isFaceTimeAudioAvailable:(BOOL)audioAvailable isTelephonyAvailable:(BOOL)telephonyAvailable isScreenSharingAvailable:(BOOL)sharingAvailable
{
  sharingAvailableCopy = sharingAvailable;
  telephonyAvailableCopy = telephonyAvailable;
  audioAvailableCopy = audioAvailable;
  availableCopy = available;
  v12 = objc_alloc_init(CKCallStateResult);
  [(CKCallStateResult *)v12 setCallButtonStyle:style];
  [(CKCallStateResult *)v12 setIsFaceTimeVideoAvailable:availableCopy];
  [(CKCallStateResult *)v12 setIsFaceTimeAudioAvailable:audioAvailableCopy];
  [(CKCallStateResult *)v12 setIsTelephonyAvailable:telephonyAvailableCopy];
  [(CKCallStateResult *)v12 setIsScreenSharingAvailable:sharingAvailableCopy];

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