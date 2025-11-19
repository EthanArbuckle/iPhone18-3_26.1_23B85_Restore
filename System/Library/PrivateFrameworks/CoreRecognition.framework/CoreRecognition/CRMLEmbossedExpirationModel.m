@interface CRMLEmbossedExpirationModel
- (id)decodeActivations:(void *)a3;
@end

@implementation CRMLEmbossedExpirationModel

- (id)decodeActivations:(void *)a3
{
  v5 = [(CRMLEmbossedExpirationModel *)self codeMap];
  v6 = [(CRMLEmbossedExpirationModel *)self classCount];

  return decodeCreditCardExpirationActivations(a3, v5, v6);
}

@end