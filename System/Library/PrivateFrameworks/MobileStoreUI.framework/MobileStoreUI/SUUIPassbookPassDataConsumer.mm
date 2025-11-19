@interface SUUIPassbookPassDataConsumer
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SUUIPassbookPassDataConsumer

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = SUUIPassKitCoreFramework();
  v11 = 0;
  v8 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Pkpass.isa v7))];

  v9 = v11;
  if (a5 && !v8)
  {
    v9 = v9;
    *a5 = v9;
  }

  return v8;
}

@end