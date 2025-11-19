@interface CKCustomAcknowledgementDebouncer
- (CKConversation)conversation;
- (CKCustomAcknowledgementDebouncer)init;
- (void)dealloc;
- (void)setConversation:(id)a3;
@end

@implementation CKCustomAcknowledgementDebouncer

- (CKConversation)conversation
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setConversation:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_19099ACAC(a3);
  swift_unknownObjectWeakAssign();
}

- (void)dealloc
{
  v2 = self;
  sub_19099AEEC();
  v3.receiver = v2;
  v3.super_class = CKCustomAcknowledgementDebouncer;
  [(CKCustomAcknowledgementDebouncer *)&v3 dealloc];
}

- (CKCustomAcknowledgementDebouncer)init
{
  v3 = (self + OBJC_IVAR___CKCustomAcknowledgementDebouncer_debounceInterval);
  *v3 = sub_190D58940();
  v3[1] = v4;
  v5 = MEMORY[0x1E69E7CC8];
  *(self + OBJC_IVAR___CKCustomAcknowledgementDebouncer_currentTasks) = MEMORY[0x1E69E7CC8];
  *(self + OBJC_IVAR___CKCustomAcknowledgementDebouncer_currentMessages) = v5;
  swift_unknownObjectWeakInit();
  v7.receiver = self;
  v7.super_class = CKCustomAcknowledgementDebouncer;
  return [(CKCustomAcknowledgementDebouncer *)&v7 init];
}

@end