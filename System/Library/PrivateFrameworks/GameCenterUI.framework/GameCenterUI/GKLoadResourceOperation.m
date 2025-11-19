@interface GKLoadResourceOperation
- (void)didCompleteWithResource:(id)a3 error:(id)a4;
@end

@implementation GKLoadResourceOperation

- (void)didCompleteWithResource:(id)a3 error:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(GKLoadResourceOperation *)self outputBlock];
  if (v7)
  {
    [(GKLoadResourceOperation *)self setOutputBlock:0];
    (v7)[2](v7, v8, v6);
  }
}

@end