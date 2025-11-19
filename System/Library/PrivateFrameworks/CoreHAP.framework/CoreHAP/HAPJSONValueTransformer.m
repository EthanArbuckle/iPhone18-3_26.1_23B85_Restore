@interface HAPJSONValueTransformer
+ (Class)expectedTransformedClassForFormat:(unint64_t)a3;
+ (void)initialize;
- (id)reverseTransformedValue:(id)a3 format:(unint64_t)a4 error:(id *)a5;
- (id)transformedValue:(id)a3 format:(unint64_t)a4 error:(id *)a5;
@end

@implementation HAPJSONValueTransformer

- (id)reverseTransformedValue:(id)a3 format:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || v8 && (v15.receiver = self, v15.super_class = HAPJSONValueTransformer, -[HAPValueTransformer reverseTransformedValue:format:error:](&v15, sel_reverseTransformedValue_format_error_, v8, a4, a5), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqual:v9], v9, !v10))
  {
    v13 = 0;
  }

  else
  {
    v11 = [objc_opt_class() expectedClassForFormat:a4];
    if (v11 == objc_opt_class() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
    }

    else
    {
      v12 = v8;
    }

    v13 = v12;
  }

  return v13;
}

- (id)transformedValue:(id)a3 format:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (v8)
  {
    v14.receiver = self;
    v14.super_class = HAPJSONValueTransformer;
    v9 = [(HAPValueTransformer *)&v14 transformedValue:v8 format:a4 error:a5];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      v12 = 0;
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v8 base64EncodedStringWithOptions:0];
    }

    else
    {
      v11 = v8;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v12 = v11;
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

+ (Class)expectedTransformedClassForFormat:(unint64_t)a3
{
  if (a3 - 1 > 0xE)
  {
    v5 = 0;
  }

  else
  {
    v4 = **(&unk_2786D44B0 + a3 - 1);
    v5 = objc_opt_class();
  }

  return v5;
}

@end