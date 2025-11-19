@interface CKDAdopterProcessScopedStateManager
- (void)globalDeviceIdentifierWithCompletionHandler:(id)a3;
- (void)reportSymptomDiagnosticsWithType:(NSString *)a3 subType:(NSString *)a4 reason:(NSString *)a5 context:(NSString *)a6 processName:(NSString *)a7 completionHandler:(id)a8;
- (void)reportTelemetryEventWithEventType:(NSString *)a3 event:(NSDictionary *)a4 bundleIdentifier:(NSString *)a5 completionHandler:(id)a6;
@end

@implementation CKDAdopterProcessScopedStateManager

- (void)globalDeviceIdentifierWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_22507C7AC(&unk_225445DF0, v5);
}

- (void)reportTelemetryEventWithEventType:(NSString *)a3 event:(NSDictionary *)a4 bundleIdentifier:(NSString *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_22507C7AC(&unk_225445DD8, v11);
}

- (void)reportSymptomDiagnosticsWithType:(NSString *)a3 subType:(NSString *)a4 reason:(NSString *)a5 context:(NSString *)a6 processName:(NSString *)a7 completionHandler:(id)a8
{
  v14 = _Block_copy(a8);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = v14;
  v15[8] = self;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = self;

  sub_22507C7AC(&unk_225445DC0, v15);
}

@end