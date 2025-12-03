@interface CRKConcreteStudentConnectionPrimitives
- (void)connectWithCompletion:(id)completion invalidationHandler:(id)handler;
@end

@implementation CRKConcreteStudentConnectionPrimitives

- (void)connectWithCompletion:(id)completion invalidationHandler:(id)handler
{
  completionCopy = completion;
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__CRKConcreteStudentConnectionPrimitives_connectWithCompletion_invalidationHandler___block_invoke;
  v9[3] = &unk_278DC2D18;
  v10 = handlerCopy;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = handlerCopy;
  [CRKConnectedStudentDaemonProxyFactory makeConnectedStudentDaemonProxyWithCompletion:v9];
}

void __84__CRKConcreteStudentConnectionPrimitives_connectWithCompletion_invalidationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [CRKConcreteStudentConnection connectionWithStudentDaemonProxy:a2 invalidationHandler:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

@end