@interface CKRecipientAvailabilities
- (BOOL)hasIDStatus:(int64_t)status forRecipient:(id)recipient forServicesWithCapability:(id)capability;
- (BOOL)hasResultsForRecipient:(id)recipient;
- (CKRecipientAvailabilities)init;
- (CKRecipientAvailabilities)initWithReachabilityController:(id)controller;
- (NSString)description;
- (id)availabilitiesForRecipients:(id)recipients service:(id)service;
- (id)reachabilityForRecipient:(id)recipient service:(id)service;
- (id)reachabilityForRecipient:(id)recipient service:(id)service isFinal:(BOOL *)final;
- (id)recipientsWithoutResults:(id)results onService:(id)service;
- (int64_t)idStatusForRecipient:(id)recipient service:(id)service;
- (void)addEntriesFromIDSResults:(id)results;
- (void)refreshAvailabilityForRecipients:(id)recipients context:(id)context resultHandler:(id)handler;
@end

@implementation CKRecipientAvailabilities

- (CKRecipientAvailabilities)initWithReachabilityController:(id)controller
{
  *(&self->super.isa + OBJC_IVAR___CKRecipientAvailabilities_reachabilityController) = controller;
  controllerCopy = controller;
  *(&self->super.isa + OBJC_IVAR___CKRecipientAvailabilities_reachabilities) = sub_190822674(MEMORY[0x1E69E7CC0]);
  v7.receiver = self;
  v7.super_class = CKRecipientAvailabilities;
  v5 = [(CKRecipientAvailabilities *)&v7 init];

  return v5;
}

- (CKRecipientAvailabilities)init
{
  sharedController = [objc_opt_self() sharedController];
  v4 = [(CKRecipientAvailabilities *)self initWithReachabilityController:sharedController];

  return v4;
}

- (NSString)description
{
  swift_beginAccess();
  selfCopy = self;
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD584A0);
  sub_190D56DA0();

  v4 = sub_190D56ED0();

  return v4;
}

- (void)refreshAvailabilityForRecipients:(id)recipients context:(id)context resultHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_190D57180();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  contextCopy = context;
  selfCopy = self;
  sub_190985938(v8, contextCopy, sub_19098773C, v9);
}

- (BOOL)hasResultsForRecipient:(id)recipient
{
  v4 = sub_190D56F10();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_190985EFC(v4, v6);

  return v4 & 1;
}

- (id)recipientsWithoutResults:(id)results onService:(id)service
{
  v5 = sub_190D57180();
  v6 = sub_190D56F10();
  v8 = v7;
  selfCopy = self;
  sub_190985FF8(v5, v6, v8);

  v10 = sub_190D57160();

  return v10;
}

- (id)reachabilityForRecipient:(id)recipient service:(id)service
{
  v5 = sub_190D56F10();
  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;
  selfCopy = self;
  v12 = sub_190986274(v5, v7, v8, v10);

  return v12;
}

- (id)reachabilityForRecipient:(id)recipient service:(id)service isFinal:(BOOL *)final
{
  v7 = sub_190D56F10();
  v9 = v8;
  v10 = sub_190D56F10();
  v12 = v11;
  selfCopy = self;
  v14 = sub_1909863FC(v7, v9, v10, v12, final);

  return v14;
}

- (int64_t)idStatusForRecipient:(id)recipient service:(id)service
{
  sub_190D56F10();
  sub_190D56F10();
  selfCopy = self;
  v6 = sub_190D56ED0();
  v7 = sub_190D56ED0();
  v8 = [(CKRecipientAvailabilities *)selfCopy reachabilityForRecipient:v6 service:v7];

  if (v8)
  {
    isReachable = [v8 isReachable];

    if (isReachable)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 0;
  }
}

- (id)availabilitiesForRecipients:(id)recipients service:(id)service
{
  v5 = sub_190D57180();
  sub_190D56F10();
  selfCopy = self;
  sub_1909866A0(v5);

  sub_1902188FC(0, &qword_1EAD46510);
  v7 = sub_190D56D60();

  return v7;
}

- (BOOL)hasIDStatus:(int64_t)status forRecipient:(id)recipient forServicesWithCapability:(id)capability
{
  v7 = sub_190D56F10();
  v9 = v8;
  sub_190D56F10();
  selfCopy = self;
  sub_190986A24(status, v7, v9);
  v12 = v11;

  return v12 & 1;
}

- (void)addEntriesFromIDSResults:(id)results
{
  sub_1902188FC(0, &qword_1EAD46510);
  v4 = sub_190D56D90();
  selfCopy = self;
  sub_190986D28(v4);
}

@end