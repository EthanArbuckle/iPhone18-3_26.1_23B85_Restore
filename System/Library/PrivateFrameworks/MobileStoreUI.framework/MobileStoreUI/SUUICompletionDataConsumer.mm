@interface SUUICompletionDataConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SUUICompletionDataConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  if ([response statusCode] != 200)
  {
    if (error)
    {
      [(SUUICompletionDataConsumer *)self _invalidResponseError];
      *error = v14 = 0;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (!dataCopy)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_18;
  }

  v16 = 0;
  v9 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:0 error:&v16];
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

    if (error)
    {
      [(SUUICompletionDataConsumer *)self _invalidResponseError];
      *error = v14 = 0;
      goto LABEL_17;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (!error)
  {
    goto LABEL_16;
  }

  v13 = v10;
  v14 = 0;
  *error = v11;
LABEL_17:

LABEL_18:

  return v14;
}

@end