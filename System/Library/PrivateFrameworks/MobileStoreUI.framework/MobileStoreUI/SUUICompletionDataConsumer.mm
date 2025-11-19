@interface SUUICompletionDataConsumer
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SUUICompletionDataConsumer

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v8 = a3;
  if ([a4 statusCode] != 200)
  {
    if (a5)
    {
      [(SUUICompletionDataConsumer *)self _invalidResponseError];
      *a5 = v14 = 0;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_18;
  }

  v16 = 0;
  v9 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SUUICompletionList alloc] initWithCompletionListDictionary:v9];
      goto LABEL_17;
    }

    if (a5)
    {
      [(SUUICompletionDataConsumer *)self _invalidResponseError];
      *a5 = v14 = 0;
      goto LABEL_17;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (!a5)
  {
    goto LABEL_16;
  }

  v13 = v10;
  v14 = 0;
  *a5 = v11;
LABEL_17:

LABEL_18:

  return v14;
}

@end