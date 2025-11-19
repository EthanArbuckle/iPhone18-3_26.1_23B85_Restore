@interface CKSignatureGenerator(BRAdditions)
+ (id)br_signatureWithFileDescriptor:()BRAdditions boundaryKey:error:;
@end

@implementation CKSignatureGenerator(BRAdditions)

+ (id)br_signatureWithFileDescriptor:()BRAdditions boundaryKey:error:
{
  if (a4)
  {
    [MEMORY[0x1E695BAE0] signatureWithFileDescriptor:? boundaryKey:? error:?];
  }

  else
  {
    [MEMORY[0x1E695BAE0] signatureWithFileDescriptor:a3 error:a5];
  }
  v5 = ;

  return v5;
}

@end