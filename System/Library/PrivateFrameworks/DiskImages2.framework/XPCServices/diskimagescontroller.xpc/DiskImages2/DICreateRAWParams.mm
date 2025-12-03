@interface DICreateRAWParams
- (DICreateRAWParams)initWithURL:(id)l numBlocks:(unint64_t)blocks error:(id *)error;
- (void)createDiskImageParamsXPC;
@end

@implementation DICreateRAWParams

- (DICreateRAWParams)initWithURL:(id)l numBlocks:(unint64_t)blocks error:(id *)error
{
  v6.receiver = self;
  v6.super_class = DICreateRAWParams;
  return [(DICreateParams *)&v6 initWithURL:l numBlocks:blocks error:error];
}

- (void)createDiskImageParamsXPC
{
  v3 = [FileLocalXPC alloc];
  inputURL = [(DIBaseParams *)self inputURL];
  v6 = [(FileLocalXPC *)v3 initWithURL:inputURL fileOpenFlags:514];

  v5 = [(DiskImageParamsXPC *)[DiskImageParamsRaw_XPC alloc] initWithBackendXPC:v6];
  [(DIBaseParams *)self setDiskImageParamsXPC:v5];
}

@end