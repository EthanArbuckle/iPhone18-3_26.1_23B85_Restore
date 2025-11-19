@interface DIStackParams
- (DIStackParams)initWithURL:(id)a3 error:(id *)a4;
@end

@implementation DIStackParams

- (DIStackParams)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = DIStackParams;
  v7 = [(DIBaseParams *)&v11 initWithURL:v6 error:a4];
  v8 = v7;
  if (v7 && ![(DIBaseParams *)v7 openExistingImageWithError:a4])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

@end