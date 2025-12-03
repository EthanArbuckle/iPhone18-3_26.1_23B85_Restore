@interface FTNetworkDescriptor
- (FTNetworkDescriptor)init;
- (id)onlyImageInput;
@end

@implementation FTNetworkDescriptor

- (FTNetworkDescriptor)init
{
  v6.receiver = self;
  v6.super_class = FTNetworkDescriptor;
  v2 = [(FTNetworkDescriptor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(FTNetworkDescriptor *)v2 setOutputNames:MEMORY[0x277CBEBF8]];
    v4 = v3;
  }

  return v3;
}

- (id)onlyImageInput
{
  inputImages = [(FTNetworkDescriptor *)self inputImages];
  v4 = [inputImages count];

  if (v4 != 1)
  {
    NSLog(&cfstr_ExpectedExactl.isa, v4);
  }

  inputImages2 = [(FTNetworkDescriptor *)self inputImages];
  firstObject = [inputImages2 firstObject];

  return firstObject;
}

@end