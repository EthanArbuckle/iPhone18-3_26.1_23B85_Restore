@interface DIStackParams
- (DIStackParams)initWithURL:(id)l error:(id *)error;
@end

@implementation DIStackParams

- (DIStackParams)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = DIStackParams;
  v7 = [(DIBaseParams *)&v11 initWithURL:lCopy error:error];
  v8 = v7;
  if (v7 && ![(DIBaseParams *)v7 openExistingImageWithError:error])
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