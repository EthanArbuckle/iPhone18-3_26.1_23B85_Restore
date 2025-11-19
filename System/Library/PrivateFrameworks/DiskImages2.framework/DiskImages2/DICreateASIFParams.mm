@interface DICreateASIFParams
- (DICreateASIFParams)initWithURL:(id)a3 numBlocks:(unint64_t)a4 error:(id *)a5;
- (void)createDiskImageParamsXPC;
@end

@implementation DICreateASIFParams

- (DICreateASIFParams)initWithURL:(id)a3 numBlocks:(unint64_t)a4 error:(id *)a5
{
  v6.receiver = self;
  v6.super_class = DICreateASIFParams;
  return [(DICreateParams *)&v6 initWithURL:a3 numBlocks:a4 error:a5];
}

- (void)createDiskImageParamsXPC
{
  v3 = [FileLocalXPC alloc];
  v4 = [(DIBaseParams *)self inputURL];
  v5 = [(FileLocalXPC *)v3 initWithURL:v4 fileOpenFlags:514];

  v8 = 0;
  v6 = [[DiskImageParamsASIF_XPC alloc] initWithBackendXPC:v5 header:&v8];
  [(DIBaseParams *)self setDiskImageParamsXPC:v6];

  v7 = v8;
  v8 = 0;
  if (v7)
  {
    MEMORY[0x24C1ED730](v7, 0x1000C40F139FF95);
  }
}

@end