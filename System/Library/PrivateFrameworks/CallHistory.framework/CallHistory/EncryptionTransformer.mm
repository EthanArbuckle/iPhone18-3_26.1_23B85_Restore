@interface EncryptionTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation EncryptionTransformer

- (id)transformedValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [valueCopy dataUsingEncoding:4];
      goto LABEL_8;
    }

    v5 = +[CHLogServer sharedInstance];
    v6 = [v5 logHandleForDomain:"ch.encrypttransform"];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [EncryptionTransformer transformedValue:v6];
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = valueCopy;
      v6 = [v4 alloc];
      bytes = [v5 bytes];
      v8 = [v5 length];

      v9 = [v6 initWithBytes:bytes length:v8 encoding:4];
      goto LABEL_8;
    }

    v10 = +[CHLogServer sharedInstance];
    v11 = [v10 logHandleForDomain:"ch.encrypttransform"];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [EncryptionTransformer reverseTransformedValue:v11];
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

@end