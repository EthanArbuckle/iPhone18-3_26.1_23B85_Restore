@interface NTKArgonExtractorOperation
- (BOOL)isEqual:(id)a3;
- (NTKArgonExtractorOperation)initWithKeyDescriptor:(id)a3 operationType:(int64_t)a4;
- (unint64_t)hash;
@end

@implementation NTKArgonExtractorOperation

- (NTKArgonExtractorOperation)initWithKeyDescriptor:(id)a3 operationType:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NTKArgonExtractorOperation;
  v7 = [(NTKArgonExtractorOperation *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    keyDescriptor = v7->_keyDescriptor;
    v7->_keyDescriptor = v8;

    v7->_operationType = a4;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NTKArgonExtractorOperation *)self keyDescriptor];
  v4 = [v3 hash];
  v5 = [(NTKArgonExtractorOperation *)self operationType];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 keyDescriptor];
    v9 = [(NTKArgonExtractorOperation *)self keyDescriptor];
    v10 = [v8 isEqual:v9];
    if ((v10 & 1) != 0 || ([v7 keyDescriptor], v3 = objc_claimAutoreleasedReturnValue(), -[NTKArgonExtractorOperation keyDescriptor](self, "keyDescriptor"), v4 = objc_claimAutoreleasedReturnValue(), v3 == v4))
    {
      v12 = [v7 operationType];
      v11 = v12 == [(NTKArgonExtractorOperation *)self operationType];
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