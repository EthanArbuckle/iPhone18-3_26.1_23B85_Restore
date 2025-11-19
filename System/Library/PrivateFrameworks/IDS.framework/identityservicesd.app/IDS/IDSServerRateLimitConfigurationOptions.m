@interface IDSServerRateLimitConfigurationOptions
- (IDSServerRateLimitConfigurationOptions)init;
- (IDSServerRateLimitConfigurationOptions)initWithService:(id)a3;
@end

@implementation IDSServerRateLimitConfigurationOptions

- (IDSServerRateLimitConfigurationOptions)initWithService:(id)a3
{
  v4 = sub_100936B38();
  v5 = (self + OBJC_IVAR___IDSServerRateLimitConfigurationOptions_service);
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ServerRateLimitConfigurationOptions();
  return [(IDSServerRateLimitConfigurationOptions *)&v8 init];
}

- (IDSServerRateLimitConfigurationOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end