@interface SUUITemplatedBadgeImageConsumer
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SUUITemplatedBadgeImageConsumer

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v12.receiver = self;
  v12.super_class = SUUITemplatedBadgeImageConsumer;
  v6 = [(SUUIImageDataConsumer *)&v12 objectForData:a3 response:a4 error:a5];
  if (v6)
  {
    v7 = v6;
    v8 = [(SUUITemplatedBadgeImageConsumer *)self templateColor];

    if (v8)
    {
      v9 = [(SUUITemplatedBadgeImageConsumer *)self templateColor];
      v10 = [v7 _flatImageWithColor:v9];

      v7 = v9;
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