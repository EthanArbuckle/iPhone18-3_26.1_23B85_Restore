@interface FlexMLSegment
- (FlexMLSegment)initWithDuration:(id *)a3 trackTime:(id *)a4 summaryTime:(id *)a5 gainFunction:(id)a6;
@end

@implementation FlexMLSegment

- (FlexMLSegment)initWithDuration:(id *)a3 trackTime:(id *)a4 summaryTime:(id *)a5 gainFunction:(id)a6
{
  v11 = a6;
  v18.receiver = self;
  v18.super_class = FlexMLSegment;
  v12 = [(FlexMLSegment *)&v18 init];
  v13 = v12;
  if (v12)
  {
    v14 = *&a3->var0;
    *(v12 + 4) = a3->var3;
    *(v12 + 1) = v14;
    v15 = *&a4->var0;
    *(v12 + 7) = a4->var3;
    *(v12 + 40) = v15;
    v16 = *&a5->var0;
    *(v12 + 10) = a5->var3;
    *(v12 + 4) = v16;
    objc_storeStrong(v12 + 1, a6);
  }

  return v13;
}

@end