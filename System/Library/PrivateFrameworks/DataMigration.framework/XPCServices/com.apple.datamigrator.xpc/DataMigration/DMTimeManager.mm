@interface DMTimeManager
+ (double)intervalFromStart:(unint64_t)start toEnd:(unint64_t)end;
+ (double)intervalSinceTimestamp:(unint64_t)timestamp;
@end

@implementation DMTimeManager

+ (double)intervalFromStart:(unint64_t)start toEnd:(unint64_t)end
{
  if (qword_100030A30 != -1)
  {
    sub_100012B60();
  }

  *&v7 = start;
  LODWORD(v7) = dword_100030A28;
  LODWORD(v4) = *algn_100030A2C;
  return (end - start) * v7 / v4 / 1000000000.0;
}

+ (double)intervalSinceTimestamp:(unint64_t)timestamp
{
  currentTimestamp = [self currentTimestamp];

  [self intervalFromStart:timestamp toEnd:currentTimestamp];
  return result;
}

@end