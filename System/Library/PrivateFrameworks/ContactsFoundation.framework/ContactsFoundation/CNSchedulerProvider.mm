@interface CNSchedulerProvider
+ (CNSchedulerProvider)defaultProvider;
+ (CNSchedulerProvider)providerWithBackgroundConcurrencyLimit:(int64_t)limit;
+ (id)makeDefaultProvider;
- (CNSchedulerProvider)initWithBackgroundScheduler:(id)scheduler mainThreadScheduler:(id)threadScheduler immediateScheduler:(id)immediateScheduler serialSchedulerProvider:(id)provider synchronousSerialSchedulerProvider:(id)schedulerProvider readerWriterSchedulerProvider:(id)writerSchedulerProvider;
- (CNSchedulerProvider)initWithBackgroundScheduler:(id)scheduler mainThreadScheduler:(id)threadScheduler inlineScheduler:(id)inlineScheduler immediateScheduler:(id)immediateScheduler serialSchedulerProvider:(id)provider workloopSchedulerProvider:(id)schedulerProvider synchronousSerialSchedulerProvider:(id)serialSchedulerProvider readerWriterSchedulerProvider:(id)self0;
- (id)backgroundSchedulerWithQualityOfService:(unint64_t)service;
- (id)newReaderWriterSchedulerWithName:(id)name;
- (id)newSerialSchedulerWithName:(id)name;
- (id)newSynchronousSerialSchedulerWithName:(id)name;
- (id)newWorkloopSchedulerWithName:(id)name;
@end

@implementation CNSchedulerProvider

+ (CNSchedulerProvider)defaultProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CNSchedulerProvider_defaultProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  v2 = [self alloc];
  v3 = +[CNScheduler globalAsyncScheduler];
  v4 = +[CNScheduler mainThreadScheduler];
  v5 = +[CNScheduler inlineScheduler];
  v6 = +[CNScheduler immediateScheduler];
  v7 = [v2 initWithBackgroundScheduler:v3 mainThreadScheduler:v4 inlineScheduler:v5 immediateScheduler:v6 serialSchedulerProvider:&__block_literal_global_79 workloopSchedulerProvider:&__block_literal_global_3_1 synchronousSerialSchedulerProvider:&__block_literal_global_5_3 readerWriterSchedulerProvider:&__block_literal_global_8_2];

  return v7;
}

+ (CNSchedulerProvider)providerWithBackgroundConcurrencyLimit:(int64_t)limit
{
  v4 = [self alloc];
  v5 = [CNScheduler operationQueueSchedulerWithMaxConcurrentOperationCount:limit];
  v6 = +[CNScheduler mainThreadScheduler];
  v7 = +[CNScheduler inlineScheduler];
  v8 = +[CNScheduler immediateScheduler];
  v9 = [v4 initWithBackgroundScheduler:v5 mainThreadScheduler:v6 inlineScheduler:v7 immediateScheduler:v8 serialSchedulerProvider:&__block_literal_global_79 workloopSchedulerProvider:&__block_literal_global_3_1 synchronousSerialSchedulerProvider:&__block_literal_global_5_3 readerWriterSchedulerProvider:&__block_literal_global_8_2];

  return v9;
}

- (CNSchedulerProvider)initWithBackgroundScheduler:(id)scheduler mainThreadScheduler:(id)threadScheduler immediateScheduler:(id)immediateScheduler serialSchedulerProvider:(id)provider synchronousSerialSchedulerProvider:(id)schedulerProvider readerWriterSchedulerProvider:(id)writerSchedulerProvider
{
  writerSchedulerProviderCopy = writerSchedulerProvider;
  schedulerProviderCopy = schedulerProvider;
  providerCopy = provider;
  immediateSchedulerCopy = immediateScheduler;
  threadSchedulerCopy = threadScheduler;
  schedulerCopy = scheduler;
  v20 = +[CNScheduler inlineScheduler];
  v21 = [(CNSchedulerProvider *)self initWithBackgroundScheduler:schedulerCopy mainThreadScheduler:threadSchedulerCopy inlineScheduler:v20 immediateScheduler:immediateSchedulerCopy serialSchedulerProvider:providerCopy workloopSchedulerProvider:&__block_literal_global_3_1 synchronousSerialSchedulerProvider:schedulerProviderCopy readerWriterSchedulerProvider:writerSchedulerProviderCopy];

  return v21;
}

- (CNSchedulerProvider)initWithBackgroundScheduler:(id)scheduler mainThreadScheduler:(id)threadScheduler inlineScheduler:(id)inlineScheduler immediateScheduler:(id)immediateScheduler serialSchedulerProvider:(id)provider workloopSchedulerProvider:(id)schedulerProvider synchronousSerialSchedulerProvider:(id)serialSchedulerProvider readerWriterSchedulerProvider:(id)self0
{
  schedulerCopy = scheduler;
  threadSchedulerCopy = threadScheduler;
  inlineSchedulerCopy = inlineScheduler;
  immediateSchedulerCopy = immediateScheduler;
  providerCopy = provider;
  schedulerProviderCopy = schedulerProvider;
  serialSchedulerProviderCopy = serialSchedulerProvider;
  writerSchedulerProviderCopy = writerSchedulerProvider;
  v37.receiver = self;
  v37.super_class = CNSchedulerProvider;
  v22 = [(CNSchedulerProvider *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_backgroundScheduler, scheduler);
    objc_storeStrong(&v23->_mainThreadScheduler, threadScheduler);
    objc_storeStrong(&v23->_inlineScheduler, inlineScheduler);
    objc_storeStrong(&v23->_immediateScheduler, immediateScheduler);
    v24 = [providerCopy copy];
    serialSchedulerProvider = v23->_serialSchedulerProvider;
    v23->_serialSchedulerProvider = v24;

    v26 = [schedulerProviderCopy copy];
    workloopSchedulerProvider = v23->_workloopSchedulerProvider;
    v23->_workloopSchedulerProvider = v26;

    v28 = [serialSchedulerProviderCopy copy];
    synchronousSerialSchedulerProvider = v23->_synchronousSerialSchedulerProvider;
    v23->_synchronousSerialSchedulerProvider = v28;

    v30 = [writerSchedulerProviderCopy copy];
    readerWriterSchedulerProvider = v23->_readerWriterSchedulerProvider;
    v23->_readerWriterSchedulerProvider = v30;

    v32 = v23;
  }

  return v23;
}

- (id)newSerialSchedulerWithName:(id)name
{
  nameCopy = name;
  serialSchedulerProvider = [(CNSchedulerProvider *)self serialSchedulerProvider];
  v6 = (serialSchedulerProvider)[2](serialSchedulerProvider, nameCopy);

  return v6;
}

- (id)newWorkloopSchedulerWithName:(id)name
{
  nameCopy = name;
  workloopSchedulerProvider = [(CNSchedulerProvider *)self workloopSchedulerProvider];
  v6 = (workloopSchedulerProvider)[2](workloopSchedulerProvider, nameCopy);

  return v6;
}

- (id)newSynchronousSerialSchedulerWithName:(id)name
{
  nameCopy = name;
  synchronousSerialSchedulerProvider = [(CNSchedulerProvider *)self synchronousSerialSchedulerProvider];
  v6 = (synchronousSerialSchedulerProvider)[2](synchronousSerialSchedulerProvider, nameCopy);

  return v6;
}

- (id)newReaderWriterSchedulerWithName:(id)name
{
  nameCopy = name;
  readerWriterSchedulerProvider = [(CNSchedulerProvider *)self readerWriterSchedulerProvider];
  v6 = (readerWriterSchedulerProvider)[2](readerWriterSchedulerProvider, nameCopy);

  return v6;
}

- (id)backgroundSchedulerWithQualityOfService:(unint64_t)service
{
  v5 = [CNQualityOfServiceSchedulerDecorator alloc];
  backgroundScheduler = [(CNSchedulerProvider *)self backgroundScheduler];
  v7 = [(CNQualityOfServiceSchedulerDecorator *)v5 initWithScheduler:backgroundScheduler qualityOfService:service];

  return v7;
}

@end