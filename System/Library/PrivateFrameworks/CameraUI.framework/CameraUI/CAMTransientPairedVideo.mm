@interface CAMTransientPairedVideo
- (CAMTransientPairedVideo)initWithURL:(id)a3 stillDisplayTime:(id *)a4 filterType:(int64_t)a5;
@end

@implementation CAMTransientPairedVideo

- (CAMTransientPairedVideo)initWithURL:(id)a3 stillDisplayTime:(id *)a4 filterType:(int64_t)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = CAMTransientPairedVideo;
  v9 = [(CAMTransientPairedVideo *)&v15 init];
  if (v9)
  {
    v10 = [v8 copy];
    v11 = *(v9 + 1);
    *(v9 + 1) = v10;

    v12 = *&a4->var0;
    *(v9 + 5) = a4->var3;
    *(v9 + 24) = v12;
    *(v9 + 2) = a5;
    v13 = v9;
  }

  return v9;
}

@end