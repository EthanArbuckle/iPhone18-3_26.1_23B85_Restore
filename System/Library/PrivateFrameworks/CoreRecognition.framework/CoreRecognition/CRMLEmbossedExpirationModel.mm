@interface CRMLEmbossedExpirationModel
- (id)decodeActivations:(void *)activations;
@end

@implementation CRMLEmbossedExpirationModel

- (id)decodeActivations:(void *)activations
{
  codeMap = [(CRMLEmbossedExpirationModel *)self codeMap];
  classCount = [(CRMLEmbossedExpirationModel *)self classCount];

  return decodeCreditCardExpirationActivations(activations, codeMap, classCount);
}

@end