@interface NoOpPaymentTransactionObserver
- (_TtC7NewsUI230NoOpPaymentTransactionObserver)init;
- (void)paymentQueue:(id)a3 updatedTransactions:(id)a4;
@end

@implementation NoOpPaymentTransactionObserver

- (_TtC7NewsUI230NoOpPaymentTransactionObserver)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NoOpPaymentTransactionObserver *)&v3 init];
}

- (void)paymentQueue:(id)a3 updatedTransactions:(id)a4
{
  sub_2186C6148(0, qword_27CC24578);
  v6 = sub_219BF5924();
  v7 = a3;
  v8 = self;
  sub_219B7F3B0(v7, v6);
}

@end