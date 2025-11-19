@interface DMTimeManager
+ (double)intervalFromStart:(unint64_t)a3 toEnd:(unint64_t)a4;
+ (double)intervalSinceTimestamp:(unint64_t)a3;
@end

@implementation DMTimeManager

+ (double)intervalFromStart:(unint64_t)a3 toEnd:(unint64_t)a4
{
  if (qword_100030A30 != -1)
  {
    sub_100012B60();
  }

  *&v7 = a3;
  LODWORD(v7) = dword_100030A28;
  LODWORD(v4) = *algn_100030A2C;
  return (a4 - a3) * v7 / v4 / 1000000000.0;
}

+ (double)intervalSinceTimestamp:(unint64_t)a3
{
  v5 = [a1 currentTimestamp];

  [a1 intervalFromStart:a3 toEnd:v5];
  return result;
}

@end