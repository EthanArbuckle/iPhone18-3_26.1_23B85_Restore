@interface NTKArgonExtractorOperation
- (BOOL)isEqual:(id)equal;
- (NTKArgonExtractorOperation)initWithKeyDescriptor:(id)descriptor operationType:(int64_t)type;
- (unint64_t)hash;
@end

@implementation NTKArgonExtractorOperation

- (NTKArgonExtractorOperation)initWithKeyDescriptor:(id)descriptor operationType:(int64_t)type
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = NTKArgonExtractorOperation;
  v7 = [(NTKArgonExtractorOperation *)&v11 init];
  if (v7)
  {
    v8 = [descriptorCopy copy];
    keyDescriptor = v7->_keyDescriptor;
    v7->_keyDescriptor = v8;

    v7->_operationType = type;
  }

  return v7;
}

- (unint64_t)hash
{
  keyDescriptor = [(NTKArgonExtractorOperation *)self keyDescriptor];
  v4 = [keyDescriptor hash];
  operationType = [(NTKArgonExtractorOperation *)self operationType];

  return operationType ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    keyDescriptor = [v7 keyDescriptor];
    keyDescriptor2 = [(NTKArgonExtractorOperation *)self keyDescriptor];
    v10 = [keyDescriptor isEqual:keyDescriptor2];
    if ((v10 & 1) != 0 || ([v7 keyDescriptor], v3 = objc_claimAutoreleasedReturnValue(), -[NTKArgonExtractorOperation keyDescriptor](self, "keyDescriptor"), v4 = objc_claimAutoreleasedReturnValue(), v3 == v4))
    {
      operationType = [v7 operationType];
      v11 = operationType == [(NTKArgonExtractorOperation *)self operationType];
      if (v10)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

@end