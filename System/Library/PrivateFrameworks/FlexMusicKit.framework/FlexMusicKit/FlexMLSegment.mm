@interface FlexMLSegment
- (FlexMLSegment)initWithDuration:(id *)duration trackTime:(id *)time summaryTime:(id *)summaryTime gainFunction:(id)function;
@end

@implementation FlexMLSegment

- (FlexMLSegment)initWithDuration:(id *)duration trackTime:(id *)time summaryTime:(id *)summaryTime gainFunction:(id)function
{
  functionCopy = function;
  v18.receiver = self;
  v18.super_class = FlexMLSegment;
  v12 = [(FlexMLSegment *)&v18 init];
  v13 = v12;
  if (v12)
  {
    v14 = *&duration->var0;
    *(v12 + 4) = duration->var3;
    *(v12 + 1) = v14;
    v15 = *&time->var0;
    *(v12 + 7) = time->var3;
    *(v12 + 40) = v15;
    v16 = *&summaryTime->var0;
    *(v12 + 10) = summaryTime->var3;
    *(v12 + 4) = v16;
    objc_storeStrong(v12 + 1, function);
  }

  return v13;
}

@end