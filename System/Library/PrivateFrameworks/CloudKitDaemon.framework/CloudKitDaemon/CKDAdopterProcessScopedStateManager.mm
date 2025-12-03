@interface CKDAdopterProcessScopedStateManager
- (void)globalDeviceIdentifierWithCompletionHandler:(id)handler;
- (void)reportSymptomDiagnosticsWithType:(NSString *)type subType:(NSString *)subType reason:(NSString *)reason context:(NSString *)context processName:(NSString *)name completionHandler:(id)handler;
- (void)reportTelemetryEventWithEventType:(NSString *)type event:(NSDictionary *)event bundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
@end

@implementation CKDAdopterProcessScopedStateManager

- (void)globalDeviceIdentifierWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_22507C7AC(&unk_225445DF0, v5);
}

- (void)reportTelemetryEventWithEventType:(NSString *)type event:(NSDictionary *)event bundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = type;
  v11[3] = event;
  v11[4] = identifier;
  v11[5] = v10;
  v11[6] = self;
  typeCopy = type;
  eventCopy = event;
  identifierCopy = identifier;
  selfCopy = self;

  sub_22507C7AC(&unk_225445DD8, v11);
}

- (void)reportSymptomDiagnosticsWithType:(NSString *)type subType:(NSString *)subType reason:(NSString *)reason context:(NSString *)context processName:(NSString *)name completionHandler:(id)handler
{
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = type;
  v15[3] = subType;
  v15[4] = reason;
  v15[5] = context;
  v15[6] = name;
  v15[7] = v14;
  v15[8] = self;
  typeCopy = type;
  subTypeCopy = subType;
  reasonCopy = reason;
  contextCopy = context;
  nameCopy = name;
  selfCopy = self;

  sub_22507C7AC(&unk_225445DC0, v15);
}

@end