@interface SUUITemplatedBadgeImageConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SUUITemplatedBadgeImageConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  v12.receiver = self;
  v12.super_class = SUUITemplatedBadgeImageConsumer;
  v6 = [(SUUIImageDataConsumer *)&v12 objectForData:data response:response error:error];
  if (v6)
  {
    v7 = v6;
    templateColor = [(SUUITemplatedBadgeImageConsumer *)self templateColor];

    if (templateColor)
    {
      templateColor2 = [(SUUITemplatedBadgeImageConsumer *)self templateColor];
      v10 = [v7 _flatImageWithColor:templateColor2];

      v7 = templateColor2;
    }

    else
    {
      v10 = [(SUUIImageDataConsumer *)self imageForImage:v7];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end