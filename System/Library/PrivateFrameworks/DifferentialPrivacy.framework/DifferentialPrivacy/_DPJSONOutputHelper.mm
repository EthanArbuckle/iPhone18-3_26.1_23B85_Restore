@interface _DPJSONOutputHelper
+ (id)submissionContentForSegments:(id)segments;
@end

@implementation _DPJSONOutputHelper

+ (id)submissionContentForSegments:(id)segments
{
  segmentsCopy = segments;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"{\nversion: %lu, \nsegments: [\n", 21];
  v6 = [&stru_2839671C8 mutableCopy];
  if ([segmentsCopy count])
  {
    v7 = 0;
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [segmentsCopy objectAtIndexedSubscript:v7];
      jsonSegmentString = [v9 jsonSegmentString];
      [v6 appendString:jsonSegmentString];

      if (v7 >= [segmentsCopy count] - 1)
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

    while (v7 < [segmentsCopy count]);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v5, v6, @"]\n}\n"];

  objc_autoreleasePoolPop(v4);

  return v12;
}

@end