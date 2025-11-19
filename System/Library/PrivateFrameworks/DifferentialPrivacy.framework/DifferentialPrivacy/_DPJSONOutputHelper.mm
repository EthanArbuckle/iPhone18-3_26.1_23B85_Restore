@interface _DPJSONOutputHelper
+ (id)submissionContentForSegments:(id)a3;
@end

@implementation _DPJSONOutputHelper

+ (id)submissionContentForSegments:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"{\nversion: %lu, \nsegments: [\n", 21];
  v6 = [&stru_2839671C8 mutableCopy];
  if ([v3 count])
  {
    v7 = 0;
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v3 objectAtIndexedSubscript:v7];
      v10 = [v9 jsonSegmentString];
      [v6 appendString:v10];

      if (v7 >= [v3 count] - 1)
      {
        v11 = @"\n";
      }

      else
      {
        v11 = @",\n";
      }

      [v6 appendString:v11];

      objc_autoreleasePoolPop(v8);
      ++v7;
    }

    while (v7 < [v3 count]);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v5, v6, @"]\n}\n"];

  objc_autoreleasePoolPop(v4);

  return v12;
}

@end