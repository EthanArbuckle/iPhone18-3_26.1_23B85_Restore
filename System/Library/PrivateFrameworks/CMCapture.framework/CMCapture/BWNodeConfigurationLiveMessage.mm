@interface BWNodeConfigurationLiveMessage
+ (id)newMessageWithConfigurationID:(int64_t)d;
+ (id)newMessageWithConfigurationID:(int64_t)d updatedFormat:(id)format;
- (void)_initWithConfigurationID:(void *)d updatedFormat:;
- (void)dealloc;
@end

@implementation BWNodeConfigurationLiveMessage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeConfigurationLiveMessage;
  [(BWNodeConfigurationLiveMessage *)&v3 dealloc];
}

- (void)_initWithConfigurationID:(void *)d updatedFormat:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = BWNodeConfigurationLiveMessage;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    v5[1] = 0x300000001;
    v5[2] = a2;
    v5[3] = d;
  }

  return v6;
}

+ (id)newMessageWithConfigurationID:(int64_t)d
{
  v4 = [BWNodeConfigurationLiveMessage alloc];

  return [(BWNodeConfigurationLiveMessage *)v4 _initWithConfigurationID:d updatedFormat:0];
}

+ (id)newMessageWithConfigurationID:(int64_t)d updatedFormat:(id)format
{
  v6 = [BWNodeConfigurationLiveMessage alloc];

  return [(BWNodeConfigurationLiveMessage *)v6 _initWithConfigurationID:d updatedFormat:format];
}

@end