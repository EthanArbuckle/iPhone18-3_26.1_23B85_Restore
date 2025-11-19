@interface FTAuthKitManager
+ (id)sharedInstance;
- (FTAuthKitManager)init;
- (void)anisetteHeadersForRequest:(id)a3 completionBlockQueue:(id)a4 completionBlock:(id)a5;
- (void)handleResponse:(id)a3 forRequest:(id)a4 completionBlock:(id)a5;
@end

@implementation FTAuthKitManager

+ (id)sharedInstance
{
  if (qword_1ED7687A0 != -1)
  {
    sub_19592BF2C();
  }

  v3 = qword_1ED768700;

  return v3;
}

- (FTAuthKitManager)init
{
  v11.receiver = self;
  v11.super_class = FTAuthKitManager;
  v2 = [(FTAuthKitManager *)&v11 init];
  if (v2)
  {
    qword_1ED768650 = MEMORY[0x19A8B8550](@"AKAppleIDSession", @"AuthKit");
    v3 = [qword_1ED768650 alloc];
    v4 = IMGetMainBundleIdentifier();
    v5 = [v3 initWithIdentifier:v4];
    akAppleIDSession = v2->_akAppleIDSession;
    v2->_akAppleIDSession = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.ids.ftauthkitmanager", v7);
    queue = v2->_queue;
    v2->_queue = v8;
  }

  return v2;
}

- (void)anisetteHeadersForRequest:(id)a3 completionBlockQueue:(id)a4 completionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [a3 copy];
    queue = self->_queue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19593EB8C;
    v13[3] = &unk_1E7435298;
    v13[4] = self;
    v14 = v10;
    v15 = v8;
    v16 = v9;
    v12 = v10;
    dispatch_async(queue, v13);
  }
}

- (void)handleResponse:(id)a3 forRequest:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19593EEF8;
    v12[3] = &unk_1E7435298;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    dispatch_async(queue, v12);
  }
}

@end