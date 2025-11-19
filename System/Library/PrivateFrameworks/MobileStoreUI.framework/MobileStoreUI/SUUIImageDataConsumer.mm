@interface SUUIImageDataConsumer
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SUUIImageDataConsumer

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v6 = MEMORY[0x277D755B8];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v10 = [v8 initWithData:v7 scale:?];

  if (v10)
  {
    v11 = [(SUUIImageDataConsumer *)self imageForImage:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end