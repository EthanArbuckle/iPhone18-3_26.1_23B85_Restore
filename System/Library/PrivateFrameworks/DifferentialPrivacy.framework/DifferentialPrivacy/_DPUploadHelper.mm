@interface _DPUploadHelper
+ (id)submissionFilePathInDirectory:(id)directory uploadName:(id)name forDate:(id)date useGMT:(BOOL)t suffix:(id)suffix;
+ (id)writeDediscoSubmission:(id)submission withReportName:(id)name inDirectory:(id)directory;
+ (id)writeFileForDA:(id)a;
+ (id)writeFileForDedisco:(id)dedisco withReportName:(id)name;
+ (id)writeFileForParsec:(id)parsec;
+ (id)writeFileForParsec:(id)parsec inDirectory:(id)directory;
@end

@implementation _DPUploadHelper

+ (id)writeFileForDA:(id)a
{
  aCopy = a;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [self ipsFilePathForDate:date useGMT:0];

  if (v6)
  {
    if ([aCopy writeToFile:v6 atomically:1 encoding:4 error:0])
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

+ (id)writeFileForParsec:(id)parsec inDirectory:(id)directory
{
  parsecCopy = parsec;
  v7 = MEMORY[0x277CBEAA8];
  directoryCopy = directory;
  date = [v7 date];
  v10 = [self submissionFilePathInDirectory:directoryCopy uploadName:@"DifferentialPrivacy" forDate:date useGMT:1 suffix:@"json.anon"];

  if (v10)
  {
    v14 = 0;
    if ([parsecCopy writeToFile:v10 atomically:1 encoding:4 error:&v14])
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

+ (id)writeFileForParsec:(id)parsec
{
  parsecCopy = parsec;
  v5 = +[_DPStrings reportsDirectoryPath];
  v6 = [self writeFileForParsec:parsecCopy inDirectory:v5];

  return v6;
}

+ (id)writeDediscoSubmission:(id)submission withReportName:(id)name inDirectory:(id)directory
{
  submissionCopy = submission;
  v9 = MEMORY[0x277CBEAA8];
  directoryCopy = directory;
  nameCopy = name;
  date = [v9 date];
  v13 = [self submissionFilePathInDirectory:directoryCopy uploadName:nameCopy forDate:date useGMT:0 suffix:@"json.anon"];

  if (v13)
  {
    if ([submissionCopy writeToFile:v13 atomically:1 encoding:4 error:0])
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

+ (id)writeFileForDedisco:(id)dedisco withReportName:(id)name
{
  dediscoCopy = dedisco;
  nameCopy = name;
  v8 = +[_DPStrings transparencyLogDirectoryPath];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [self submissionFilePathInDirectory:v8 uploadName:nameCopy forDate:date useGMT:0 suffix:@"json.anon"];

  if (v10)
  {
    if ([dediscoCopy writeToFile:v10 atomically:1])
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

+ (id)submissionFilePathInDirectory:(id)directory uploadName:(id)name forDate:(id)date useGMT:(BOOL)t suffix:(id)suffix
{
  tCopy = t;
  directoryCopy = directory;
  nameCopy = name;
  dateCopy = date;
  suffixCopy = suffix;
  v15 = objc_autoreleasePoolPush();
  v16 = objc_opt_new();
  [v16 setDateFormat:@"yyyy'-'MM'-'dd'-'HHmmss"];
  if (tCopy)
  {
    v17 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v16 setTimeZone:v17];
  }

  v18 = [v16 stringFromDate:dateCopy];
  suffixCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@_%@.%@", directoryCopy, nameCopy, v18, suffixCopy];

  objc_autoreleasePoolPop(v15);

  return suffixCopy;
}

@end