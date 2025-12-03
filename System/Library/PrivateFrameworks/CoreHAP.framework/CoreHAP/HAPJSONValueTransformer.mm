@interface HAPJSONValueTransformer
+ (Class)expectedTransformedClassForFormat:(unint64_t)format;
+ (void)initialize;
- (id)reverseTransformedValue:(id)value format:(unint64_t)format error:(id *)error;
- (id)transformedValue:(id)value format:(unint64_t)format error:(id *)error;
@end

@implementation HAPJSONValueTransformer

- (id)reverseTransformedValue:(id)value format:(unint64_t)format error:(id *)error
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || valueCopy && (v15.receiver = self, v15.super_class = HAPJSONValueTransformer, -[HAPValueTransformer reverseTransformedValue:format:error:](&v15, sel_reverseTransformedValue_format_error_, valueCopy, format, error), v9 = objc_claimAutoreleasedReturnValue(), v10 = [valueCopy isEqual:v9], v9, !v10))
  {
    v13 = 0;
  }

  else
  {
    v11 = [objc_opt_class() expectedClassForFormat:format];
    if (v11 == objc_opt_class() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:valueCopy options:0];
    }

    else
    {
      v12 = valueCopy;
    }

    v13 = v12;
  }

  return v13;
}

- (id)transformedValue:(id)value format:(unint64_t)format error:(id *)error
{
  valueCopy = value;
  if (valueCopy)
  {
    v14.receiver = self;
    v14.super_class = HAPJSONValueTransformer;
    v9 = [(HAPValueTransformer *)&v14 transformedValue:valueCopy format:format error:error];
    v10 = [valueCopy isEqual:v9];

    if (!v10)
    {
      v12 = 0;
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      null = [valueCopy base64EncodedStringWithOptions:0];
    }

    else
    {
      null = valueCopy;
    }
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v12 = null;
LABEL_9:

  return v12;
}

+ (void)initialize
{
  if (!defaultJSONValueTransformer)
  {
    defaultJSONValueTransformer = objc_alloc_init(HAPJSONValueTransformer);

    MEMORY[0x2821F96F8]();
  }
}

+ (Class)expectedTransformedClassForFormat:(unint64_t)format
{
  if (format - 1 > 0xE)
  {
    v5 = 0;
  }

  else
  {
    v4 = **(&unk_2786D44B0 + format - 1);
    v5 = objc_opt_class();
  }

  return v5;
}

@end