@interface ASKLoadResourceOperation
- (ASKLoadResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5;
- (void)didCompleteWithResource:(id)a3 error:(id)a4;
@end

@implementation ASKLoadResourceOperation

- (ASKLoadResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5
{
  v6.receiver = self;
  v6.super_class = ASKLoadResourceOperation;
  return [(ASKLoadResourceOperation *)&v6 init:a3];
}

- (void)didCompleteWithResource:(id)a3 error:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(ASKLoadResourceOperation *)self outputBlock];
  if (v7)
  {
    [(ASKLoadResourceOperation *)self setOutputBlock:0];
    (v7)[2](v7, v8, v6);
  }
}

@end