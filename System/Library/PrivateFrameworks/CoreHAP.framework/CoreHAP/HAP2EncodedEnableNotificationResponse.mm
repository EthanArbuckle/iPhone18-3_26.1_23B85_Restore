@interface HAP2EncodedEnableNotificationResponse
- (HAP2EncodedEnableNotificationResponse)initWithNotificationResponses:(id)responses updatedValues:(id)values;
@end

@implementation HAP2EncodedEnableNotificationResponse

- (HAP2EncodedEnableNotificationResponse)initWithNotificationResponses:(id)responses updatedValues:(id)values
{
  valuesCopy = values;
  v11.receiver = self;
  v11.super_class = HAP2EncodedEnableNotificationResponse;
  v8 = [(HAP2EncodedCharacteristicResponse *)&v11 initWithCharacteristics:responses];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_updatedValues, values);
  }

  return v9;
}

@end