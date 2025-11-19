@interface HAP2EncodedEnableNotificationResponse
- (HAP2EncodedEnableNotificationResponse)initWithNotificationResponses:(id)a3 updatedValues:(id)a4;
@end

@implementation HAP2EncodedEnableNotificationResponse

- (HAP2EncodedEnableNotificationResponse)initWithNotificationResponses:(id)a3 updatedValues:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HAP2EncodedEnableNotificationResponse;
  v8 = [(HAP2EncodedCharacteristicResponse *)&v11 initWithCharacteristics:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_updatedValues, a4);
  }

  return v9;
}

@end