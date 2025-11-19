@interface DICreateRAWParams
- (DICreateRAWParams)initWithURL:(id)a3 numBlocks:(unint64_t)a4 error:(id *)a5;
- (void)createDiskImageParamsXPC;
@end

@implementation DICreateRAWParams

- (DICreateRAWParams)initWithURL:(id)a3 numBlocks:(unint64_t)a4 error:(id *)a5
{
  v6.receiver = self;
  v6.super_class = DICreateRAWParams;
  return [(DICreateParams *)&v6 initWithURL:a3 numBlocks:a4 error:a5];
}

- (void)createDiskImageParamsXPC
{
  v3 = [FileLocalXPC alloc];
  v4 = [(DIBaseParams *)self inputURL];
  v6 = [(FileLocalXPC *)v3 initWithURL:v4 fileOpenFlags:514];

  v5 = [(DiskImageParamsXPC *)[DiskImageParamsRaw_XPC alloc] initWithBackendXPC:v6];
  [(DIBaseParams *)self setDiskImageParamsXPC:v5];
}

@end