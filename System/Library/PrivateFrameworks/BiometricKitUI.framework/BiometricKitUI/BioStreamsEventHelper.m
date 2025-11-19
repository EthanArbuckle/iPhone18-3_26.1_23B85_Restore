@interface BioStreamsEventHelper
- (BioStreamsEventHelper)initWithBKDeviceType:(int64_t)a3 inBuddy:(BOOL)a4;
- (id)containerIdentifier;
- (id)subtype;
- (void)sendSuccessfulEnrollEvent;
@end

@implementation BioStreamsEventHelper

- (BioStreamsEventHelper)initWithBKDeviceType:(int64_t)a3 inBuddy:(BOOL)a4
{
  v20.receiver = self;
  v20.super_class = BioStreamsEventHelper;
  v6 = [(BioStreamsEventHelper *)&v20 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v6->_inBuddy = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v8 = getBKDeviceClass_softClass_0;
  v29 = getBKDeviceClass_softClass_0;
  if (!getBKDeviceClass_softClass_0)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getBKDeviceClass_block_invoke_0;
    v24 = &unk_278D09C88;
    v25 = &v26;
    __getBKDeviceClass_block_invoke_0(&v21);
    v8 = v27[3];
  }

  v9 = v8;
  _Block_object_dispose(&v26, 8);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v10 = getBKDeviceDescriptorClass_softClass_0;
  v29 = getBKDeviceDescriptorClass_softClass_0;
  if (!getBKDeviceDescriptorClass_softClass_0)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getBKDeviceDescriptorClass_block_invoke_0;
    v24 = &unk_278D09C88;
    v25 = &v26;
    __getBKDeviceDescriptorClass_block_invoke_0(&v21);
    v10 = v27[3];
  }

  v11 = v10;
  _Block_object_dispose(&v26, 8);
  v12 = [v10 deviceDescriptorForType:a3];
  v19 = 0;
  v13 = [v8 deviceWithDescriptor:v12 error:&v19];
  v14 = v19;

  v7->_deviceType = a3;
  if (!v14)
  {
    v16 = [v13 identitiesWithError:0];
    v17 = [v16 count];

    v15 = 0;
    if (v17)
    {
      goto LABEL_10;
    }

LABEL_9:
    v15 = v7;
    goto LABEL_10;
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (void)sendSuccessfulEnrollEvent
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v3 = getBMStreamsClass_softClass;
  v21 = getBMStreamsClass_softClass;
  if (!getBMStreamsClass_softClass)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getBMStreamsClass_block_invoke;
    v16 = &unk_278D09C88;
    v17 = &v18;
    __getBMStreamsClass_block_invoke(&v13);
    v3 = v19[3];
  }

  v4 = v3;
  _Block_object_dispose(&v18, 8);
  v5 = [v3 discoverabilitySignal];
  v6 = [v5 source];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v7 = getBMDiscoverabilitySignalEventClass_softClass;
  v21 = getBMDiscoverabilitySignalEventClass_softClass;
  if (!getBMDiscoverabilitySignalEventClass_softClass)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getBMDiscoverabilitySignalEventClass_block_invoke;
    v16 = &unk_278D09C88;
    v17 = &v18;
    __getBMDiscoverabilitySignalEventClass_block_invoke(&v13);
    v7 = v19[3];
  }

  v8 = v7;
  _Block_object_dispose(&v18, 8);
  v9 = [v7 alloc];
  v10 = [(BioStreamsEventHelper *)self containerIdentifier];
  v11 = [(BioStreamsEventHelper *)self subtype];
  v12 = [v9 initWithIdentifier:@"com.apple.biometrickitui.enrollment.success" bundleID:v10 context:v11];

  [v6 sendEvent:v12];
}

- (id)containerIdentifier
{
  if ([(BioStreamsEventHelper *)self inBuddy])
  {
    return @"com.apple.setupassistant";
  }

  else
  {
    return @"com.apple.Preferences";
  }
}

- (id)subtype
{
  if ([(BioStreamsEventHelper *)self deviceType]== 1)
  {
    return @"TouchID";
  }

  else
  {
    return @"FaceID";
  }
}

@end