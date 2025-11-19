@interface _DPUploadHelper
+ (id)submissionFilePathInDirectory:(id)a3 uploadName:(id)a4 forDate:(id)a5 useGMT:(BOOL)a6 suffix:(id)a7;
+ (id)writeDediscoSubmission:(id)a3 withReportName:(id)a4 inDirectory:(id)a5;
+ (id)writeFileForDA:(id)a3;
+ (id)writeFileForDedisco:(id)a3 withReportName:(id)a4;
+ (id)writeFileForParsec:(id)a3;
+ (id)writeFileForParsec:(id)a3 inDirectory:(id)a4;
@end

@implementation _DPUploadHelper

+ (id)writeFileForDA:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [a1 ipsFilePathForDate:v5 useGMT:0];

  if (v6)
  {
    if ([v4 writeToFile:v6 atomically:1 encoding:4 error:0])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)writeFileForParsec:(id)a3 inDirectory:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CBEAA8];
  v8 = a4;
  v9 = [v7 date];
  v10 = [a1 submissionFilePathInDirectory:v8 uploadName:@"DifferentialPrivacy" forDate:v9 useGMT:1 suffix:@"json.anon"];

  if (v10)
  {
    v14 = 0;
    if ([v6 writeToFile:v10 atomically:1 encoding:4 error:&v14])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)writeFileForParsec:(id)a3
{
  v4 = a3;
  v5 = +[_DPStrings reportsDirectoryPath];
  v6 = [a1 writeFileForParsec:v4 inDirectory:v5];

  return v6;
}

+ (id)writeDediscoSubmission:(id)a3 withReportName:(id)a4 inDirectory:(id)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEAA8];
  v10 = a5;
  v11 = a4;
  v12 = [v9 date];
  v13 = [a1 submissionFilePathInDirectory:v10 uploadName:v11 forDate:v12 useGMT:0 suffix:@"json.anon"];

  if (v13)
  {
    if ([v8 writeToFile:v13 atomically:1 encoding:4 error:0])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)writeFileForDedisco:(id)a3 withReportName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_DPStrings transparencyLogDirectoryPath];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [a1 submissionFilePathInDirectory:v8 uploadName:v7 forDate:v9 useGMT:0 suffix:@"json.anon"];

  if (v10)
  {
    if ([v6 writeToFile:v10 atomically:1])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)submissionFilePathInDirectory:(id)a3 uploadName:(id)a4 forDate:(id)a5 useGMT:(BOOL)a6 suffix:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = objc_autoreleasePoolPush();
  v16 = objc_opt_new();
  [v16 setDateFormat:@"yyyy'-'MM'-'dd'-'HHmmss"];
  if (v8)
  {
    v17 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v16 setTimeZone:v17];
  }

  v18 = [v16 stringFromDate:v13];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@_%@.%@", v11, v12, v18, v14];

  objc_autoreleasePoolPop(v15);

  return v19;
}

@end