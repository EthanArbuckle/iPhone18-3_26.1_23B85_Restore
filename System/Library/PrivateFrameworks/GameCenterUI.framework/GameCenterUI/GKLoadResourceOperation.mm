@interface GKLoadResourceOperation
- (void)didCompleteWithResource:(id)resource error:(id)error;
@end

@implementation GKLoadResourceOperation

- (void)didCompleteWithResource:(id)resource error:(id)error
{
  resourceCopy = resource;
  errorCopy = error;
  outputBlock = [(GKLoadResourceOperation *)self outputBlock];
  if (outputBlock)
  {
    [(GKLoadResourceOperation *)self setOutputBlock:0];
    (outputBlock)[2](outputBlock, resourceCopy, errorCopy);
  }
}

@end