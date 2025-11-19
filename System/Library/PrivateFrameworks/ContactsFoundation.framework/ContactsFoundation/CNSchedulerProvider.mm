@interface CNSchedulerProvider
+ (CNSchedulerProvider)defaultProvider;
+ (CNSchedulerProvider)providerWithBackgroundConcurrencyLimit:(int64_t)a3;
+ (id)makeDefaultProvider;
- (CNSchedulerProvider)initWithBackgroundScheduler:(id)a3 mainThreadScheduler:(id)a4 immediateScheduler:(id)a5 serialSchedulerProvider:(id)a6 synchronousSerialSchedulerProvider:(id)a7 readerWriterSchedulerProvider:(id)a8;
- (CNSchedulerProvider)initWithBackgroundScheduler:(id)a3 mainThreadScheduler:(id)a4 inlineScheduler:(id)a5 immediateScheduler:(id)a6 serialSchedulerProvider:(id)a7 workloopSchedulerProvider:(id)a8 synchronousSerialSchedulerProvider:(id)a9 readerWriterSchedulerProvider:(id)a10;
- (id)backgroundSchedulerWithQualityOfService:(unint64_t)a3;
- (id)newReaderWriterSchedulerWithName:(id)a3;
- (id)newSerialSchedulerWithName:(id)a3;
- (id)newSynchronousSerialSchedulerWithName:(id)a3;
- (id)newWorkloopSchedulerWithName:(id)a3;
@end

@implementation CNSchedulerProvider

+ (CNSchedulerProvider)defaultProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CNSchedulerProvider_defaultProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultProvider_cn_once_token_1 != -1)
  {
    dispatch_once(&defaultProvider_cn_once_token_1, block);
  }

  v2 = defaultProvider_cn_once_object_1;

  return v2;
}

uint64_t __38__CNSchedulerProvider_defaultProvider__block_invoke(uint64_t a1)
{
  defaultProvider_cn_once_object_1 = [*(a1 + 32) makeDefaultProvider];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)makeDefaultProvider
{
  v2 = [a1 alloc];
  v3 = +[CNScheduler globalAsyncScheduler];
  v4 = +[CNScheduler mainThreadScheduler];
  v5 = +[CNScheduler inlineScheduler];
  v6 = +[CNScheduler immediateScheduler];
  v7 = [v2 initWithBackgroundScheduler:v3 mainThreadScheduler:v4 inlineScheduler:v5 immediateScheduler:v6 serialSchedulerProvider:&__block_literal_global_79 workloopSchedulerProvider:&__block_literal_global_3_1 synchronousSerialSchedulerProvider:&__block_literal_global_5_3 readerWriterSchedulerProvider:&__block_literal_global_8_2];

  return v7;
}

+ (CNSchedulerProvider)providerWithBackgroundConcurrencyLimit:(int64_t)a3
{
  v4 = [a1 alloc];
  v5 = [CNScheduler operationQueueSchedulerWithMaxConcurrentOperationCount:a3];
  v6 = +[CNScheduler mainThreadScheduler];
  v7 = +[CNScheduler inlineScheduler];
  v8 = +[CNScheduler immediateScheduler];
  v9 = [v4 initWithBackgroundScheduler:v5 mainThreadScheduler:v6 inlineScheduler:v7 immediateScheduler:v8 serialSchedulerProvider:&__block_literal_global_79 workloopSchedulerProvider:&__block_literal_global_3_1 synchronousSerialSchedulerProvider:&__block_literal_global_5_3 readerWriterSchedulerProvider:&__block_literal_global_8_2];

  return v9;
}

- (CNSchedulerProvider)initWithBackgroundScheduler:(id)a3 mainThreadScheduler:(id)a4 immediateScheduler:(id)a5 serialSchedulerProvider:(id)a6 synchronousSerialSchedulerProvider:(id)a7 readerWriterSchedulerProvider:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = +[CNScheduler inlineScheduler];
  v21 = [(CNSchedulerProvider *)self initWithBackgroundScheduler:v19 mainThreadScheduler:v18 inlineScheduler:v20 immediateScheduler:v17 serialSchedulerProvider:v16 workloopSchedulerProvider:&__block_literal_global_3_1 synchronousSerialSchedulerProvider:v15 readerWriterSchedulerProvider:v14];

  return v21;
}

- (CNSchedulerProvider)initWithBackgroundScheduler:(id)a3 mainThreadScheduler:(id)a4 inlineScheduler:(id)a5 immediateScheduler:(id)a6 serialSchedulerProvider:(id)a7 workloopSchedulerProvider:(id)a8 synchronousSerialSchedulerProvider:(id)a9 readerWriterSchedulerProvider:(id)a10
{
  v36 = a3;
  v35 = a4;
  v34 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v37.receiver = self;
  v37.super_class = CNSchedulerProvider;
  v22 = [(CNSchedulerProvider *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_backgroundScheduler, a3);
    objc_storeStrong(&v23->_mainThreadScheduler, a4);
    objc_storeStrong(&v23->_inlineScheduler, a5);
    objc_storeStrong(&v23->_immediateScheduler, a6);
    v24 = [v18 copy];
    serialSchedulerProvider = v23->_serialSchedulerProvider;
    v23->_serialSchedulerProvider = v24;

    v26 = [v19 copy];
    workloopSchedulerProvider = v23->_workloopSchedulerProvider;
    v23->_workloopSchedulerProvider = v26;

    v28 = [v20 copy];
    synchronousSerialSchedulerProvider = v23->_synchronousSerialSchedulerProvider;
    v23->_synchronousSerialSchedulerProvider = v28;

    v30 = [v21 copy];
    readerWriterSchedulerProvider = v23->_readerWriterSchedulerProvider;
    v23->_readerWriterSchedulerProvider = v30;

    v32 = v23;
  }

  return v23;
}

- (id)newSerialSchedulerWithName:(id)a3
{
  v4 = a3;
  v5 = [(CNSchedulerProvider *)self serialSchedulerProvider];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (id)newWorkloopSchedulerWithName:(id)a3
{
  v4 = a3;
  v5 = [(CNSchedulerProvider *)self workloopSchedulerProvider];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (id)newSynchronousSerialSchedulerWithName:(id)a3
{
  v4 = a3;
  v5 = [(CNSchedulerProvider *)self synchronousSerialSchedulerProvider];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (id)newReaderWriterSchedulerWithName:(id)a3
{
  v4 = a3;
  v5 = [(CNSchedulerProvider *)self readerWriterSchedulerProvider];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (id)backgroundSchedulerWithQualityOfService:(unint64_t)a3
{
  v5 = [CNQualityOfServiceSchedulerDecorator alloc];
  v6 = [(CNSchedulerProvider *)self backgroundScheduler];
  v7 = [(CNQualityOfServiceSchedulerDecorator *)v5 initWithScheduler:v6 qualityOfService:a3];

  return v7;
}

@end