@interface SUUIPassbookPassDataConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SUUIPassbookPassDataConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  v7 = SUUIPassKitCoreFramework();
  v11 = 0;
  v8 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Pkpass.isa v7))];

  v9 = v11;
  if (error && !v8)
  {
    v9 = v9;
    *error = v9;
  }

  return v8;
}

@end