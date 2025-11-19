@interface MFPStringFormat
- (MFPStringFormat)init;
- (void)dealloc;
@end

@implementation MFPStringFormat

- (MFPStringFormat)init
{
  v3.receiver = self;
  v3.super_class = MFPStringFormat;
  result = [(MFPStringFormat *)&v3 init];
  if (result)
  {
    result->mTrimming = 1;
  }

  return result;
}

- (void)dealloc
{
  mTabStops = self->mTabStops;
  if (mTabStops)
  {
    MEMORY[0x25F896FE0](mTabStops, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = MFPStringFormat;
  [(MFPStringFormat *)&v4 dealloc];
}

@end