@interface DOCOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (void)cancel;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation DOCOperation

- (void)start
{
  v2 = self;
  DOCOperation.start()();
}

- (BOOL)isFinished
{
  v2 = self;
  v3 = DOCOperation.isFinished.getter();

  return v3 & 1;
}

- (void)setFinished:(BOOL)a3
{
  v4 = self;
  DOCOperation.isFinished.setter(a3);
}

- (BOOL)isExecuting
{
  v2 = self;
  v3 = DOCOperation.isExecuting.getter();

  return v3 & 1;
}

- (void)setExecuting:(BOOL)a3
{
  v4 = self;
  DOCOperation.isExecuting.setter(a3);
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCOperation();
  v2 = v3.receiver;
  [(DOCOperation *)&v3 cancel];
  DOCOperation._finishIfCanceled()();
}

@end