@interface OSLogEventSerializationMetadata
@end

@implementation OSLogEventSerializationMetadata

void __63___OSLogEventSerializationMetadata_initWithDataRepresentation___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v10 = v7;
  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v9];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end