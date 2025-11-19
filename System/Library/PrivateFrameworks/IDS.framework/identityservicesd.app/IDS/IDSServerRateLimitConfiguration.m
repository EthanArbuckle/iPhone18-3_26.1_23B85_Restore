@interface IDSServerRateLimitConfiguration
- (int64_t)rateLimitActionWithOptions:(id)a3;
- (void)dealloc;
@end

@implementation IDSServerRateLimitConfiguration

- (void)dealloc
{
  sub_100022B2C(self + OBJC_IVAR___IDSServerRateLimitConfiguration_notificationCenter, v10);
  v3 = v11;
  v4 = v12;
  sub_1000226D4(v10, v11);
  v5 = type metadata accessor for ServerRateLimitConfiguration();
  v9[3] = v5;
  v9[0] = self;
  v6 = *(v4 + 16);
  v7 = self;
  v6(v9, v3, v4);
  sub_100012970(v9);
  sub_100012970(v10);
  v8.receiver = v7;
  v8.super_class = v5;
  [(IDSServerRateLimitConfiguration *)&v8 dealloc];
}

- (int64_t)rateLimitActionWithOptions:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1007E15D4(v4);

  return v6;
}

@end