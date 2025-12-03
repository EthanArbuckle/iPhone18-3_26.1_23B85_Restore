@interface SUUIImageDataConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SUUIImageDataConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  v6 = MEMORY[0x277D755B8];
  dataCopy = data;
  v8 = [v6 alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v10 = [v8 initWithData:dataCopy scale:?];

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