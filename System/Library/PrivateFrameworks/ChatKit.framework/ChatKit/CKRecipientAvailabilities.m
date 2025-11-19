@interface CKRecipientAvailabilities
- (BOOL)hasIDStatus:(int64_t)a3 forRecipient:(id)a4 forServicesWithCapability:(id)a5;
- (BOOL)hasResultsForRecipient:(id)a3;
- (CKRecipientAvailabilities)init;
- (CKRecipientAvailabilities)initWithReachabilityController:(id)a3;
- (NSString)description;
- (id)availabilitiesForRecipients:(id)a3 service:(id)a4;
- (id)reachabilityForRecipient:(id)a3 service:(id)a4;
- (id)reachabilityForRecipient:(id)a3 service:(id)a4 isFinal:(BOOL *)a5;
- (id)recipientsWithoutResults:(id)a3 onService:(id)a4;
- (int64_t)idStatusForRecipient:(id)a3 service:(id)a4;
- (void)addEntriesFromIDSResults:(id)a3;
- (void)refreshAvailabilityForRecipients:(id)a3 context:(id)a4 resultHandler:(id)a5;
@end

@implementation CKRecipientAvailabilities

- (CKRecipientAvailabilities)initWithReachabilityController:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___CKRecipientAvailabilities_reachabilityController) = a3;
  v4 = a3;
  *(&self->super.isa + OBJC_IVAR___CKRecipientAvailabilities_reachabilities) = sub_190822674(MEMORY[0x1E69E7CC0]);
  v7.receiver = self;
  v7.super_class = CKRecipientAvailabilities;
  v5 = [(CKRecipientAvailabilities *)&v7 init];

  return v5;
}

- (CKRecipientAvailabilities)init
{
  v3 = [objc_opt_self() sharedController];
  v4 = [(CKRecipientAvailabilities *)self initWithReachabilityController:v3];

  return v4;
}

- (NSString)description
{
  swift_beginAccess();
  v3 = self;
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD584A0);
  sub_190D56DA0();

  v4 = sub_190D56ED0();

  return v4;
}

- (void)refreshAvailabilityForRecipients:(id)a3 context:(id)a4 resultHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_190D57180();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a4;
  v11 = self;
  sub_190985938(v8, v10, sub_19098773C, v9);
}

- (BOOL)hasResultsForRecipient:(id)a3
{
  v4 = sub_190D56F10();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_190985EFC(v4, v6);

  return v4 & 1;
}

- (id)recipientsWithoutResults:(id)a3 onService:(id)a4
{
  v5 = sub_190D57180();
  v6 = sub_190D56F10();
  v8 = v7;
  v9 = self;
  sub_190985FF8(v5, v6, v8);

  v10 = sub_190D57160();

  return v10;
}

- (id)reachabilityForRecipient:(id)a3 service:(id)a4
{
  v5 = sub_190D56F10();
  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;
  v11 = self;
  v12 = sub_190986274(v5, v7, v8, v10);

  return v12;
}

- (id)reachabilityForRecipient:(id)a3 service:(id)a4 isFinal:(BOOL *)a5
{
  v7 = sub_190D56F10();
  v9 = v8;
  v10 = sub_190D56F10();
  v12 = v11;
  v13 = self;
  v14 = sub_1909863FC(v7, v9, v10, v12, a5);

  return v14;
}

- (int64_t)idStatusForRecipient:(id)a3 service:(id)a4
{
  sub_190D56F10();
  sub_190D56F10();
  v5 = self;
  v6 = sub_190D56ED0();
  v7 = sub_190D56ED0();
  v8 = [(CKRecipientAvailabilities *)v5 reachabilityForRecipient:v6 service:v7];

  if (v8)
  {
    v9 = [v8 isReachable];

    if (v9)
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

- (id)availabilitiesForRecipients:(id)a3 service:(id)a4
{
  v5 = sub_190D57180();
  sub_190D56F10();
  v6 = self;
  sub_1909866A0(v5);

  sub_1902188FC(0, &qword_1EAD46510);
  v7 = sub_190D56D60();

  return v7;
}

- (BOOL)hasIDStatus:(int64_t)a3 forRecipient:(id)a4 forServicesWithCapability:(id)a5
{
  v7 = sub_190D56F10();
  v9 = v8;
  sub_190D56F10();
  v10 = self;
  sub_190986A24(a3, v7, v9);
  v12 = v11;

  return v12 & 1;
}

- (void)addEntriesFromIDSResults:(id)a3
{
  sub_1902188FC(0, &qword_1EAD46510);
  v4 = sub_190D56D90();
  v5 = self;
  sub_190986D28(v4);
}

@end