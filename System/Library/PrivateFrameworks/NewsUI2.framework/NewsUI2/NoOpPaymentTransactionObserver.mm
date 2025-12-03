@interface NoOpPaymentTransactionObserver
- (_TtC7NewsUI230NoOpPaymentTransactionObserver)init;
- (void)paymentQueue:(id)queue updatedTransactions:(id)transactions;
@end

@implementation NoOpPaymentTransactionObserver

- (_TtC7NewsUI230NoOpPaymentTransactionObserver)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NoOpPaymentTransactionObserver *)&v3 init];
}

- (void)paymentQueue:(id)queue updatedTransactions:(id)transactions
{
  sub_2186C6148(0, qword_27CC24578);
  v6 = sub_219BF5924();
  queueCopy = queue;
  selfCopy = self;
  sub_219B7F3B0(queueCopy, v6);
}

@end