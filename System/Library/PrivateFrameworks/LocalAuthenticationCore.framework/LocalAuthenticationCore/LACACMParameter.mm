@interface LACACMParameter
+ (id)acmParameterDoNotStartDTOTimers;
+ (id)acmParameterSecureIntentSupport;
- (LACACMParameter)initWithACMParamType:(unsigned int)type bytes:(void *)bytes length:(unint64_t)length description:(id)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation LACACMParameter

- (LACACMParameter)initWithACMParamType:(unsigned int)type bytes:(void *)bytes length:(unint64_t)length description:(id)description
{
  descriptionCopy = description;
  v17.receiver = self;
  v17.super_class = LACACMParameter;
  v12 = [(LACACMParameter *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = type;
    v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:bytes length:length];
    data = v13->_data;
    v13->_data = v14;

    objc_storeStrong(&v13->_description, description);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  data = [(LACACMParameter *)self data];
  v6 = [data mutableCopy];
  v7 = *(v4 + 24);
  *(v4 + 24) = v6;

  v8 = [(NSString *)self->_description copy];
  v9 = *(v4 + 8);
  *(v4 + 8) = v8;

  *(v4 + 16) = [(LACACMParameter *)self type];
  return v4;
}

+ (id)acmParameterSecureIntentSupport
{
  v4 = 1;
  v2 = [[LACACMParameter alloc] initWithACMParamType:8 bytes:&v4 length:1 description:@"SecureIntentSupport"];

  return v2;
}

+ (id)acmParameterDoNotStartDTOTimers
{
  v2 = [[LACACMParameter alloc] initWithACMParamType:12 bytes:0 length:0 description:@"DoNotStartDTOTimers"];

  return v2;
}

@end