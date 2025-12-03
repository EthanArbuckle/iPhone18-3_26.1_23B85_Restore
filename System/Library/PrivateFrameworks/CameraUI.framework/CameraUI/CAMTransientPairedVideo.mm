@interface CAMTransientPairedVideo
- (CAMTransientPairedVideo)initWithURL:(id)l stillDisplayTime:(id *)time filterType:(int64_t)type;
@end

@implementation CAMTransientPairedVideo

- (CAMTransientPairedVideo)initWithURL:(id)l stillDisplayTime:(id *)time filterType:(int64_t)type
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = CAMTransientPairedVideo;
  v9 = [(CAMTransientPairedVideo *)&v15 init];
  if (v9)
  {
    v10 = [lCopy copy];
    v11 = *(v9 + 1);
    *(v9 + 1) = v10;

    v12 = *&time->var0;
    *(v9 + 5) = time->var3;
    *(v9 + 24) = v12;
    *(v9 + 2) = type;
    v13 = v9;
  }

  return v9;
}

@end