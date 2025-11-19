@interface CSAttSiriSpeechPackageHelper
+ (double)getFirstTokenDurationFromSpeechPackage:(id)a3;
+ (double)getFirstTokenLeadingSilenceFromSpeechPackage:(id)a3;
+ (double)getFirstTokenSilenceStartFromSpeechPackage:(id)a3;
+ (double)getLastTokenEndTimeFromSpeechPackage:(id)a3;
+ (double)getLastTokenSilenceStartFromSpeechPackage:(id)a3;
+ (double)getLastTokenTrailingSilenceFromSpeechPackage:(id)a3;
+ (id)_getFirstTokenFromSpeechPackage:(id)a3;
+ (id)_getLastTokenFromSpeechPackage:(id)a3;
@end

@implementation CSAttSiriSpeechPackageHelper

+ (id)_getLastTokenFromSpeechPackage:(id)a3
{
  v3 = [a3 rawRecognition];
  v4 = [v3 phrases];
  v5 = [v4 lastObject];

  v6 = [v5 interpretations];
  v7 = [v6 firstObject];

  v8 = [v7 tokens];
  v9 = [v8 lastObject];

  return v9;
}

+ (id)_getFirstTokenFromSpeechPackage:(id)a3
{
  v3 = [a3 rawRecognition];
  v4 = [v3 phrases];
  v5 = [v4 firstObject];

  v6 = [v5 interpretations];
  v7 = [v6 firstObject];

  v8 = [v7 tokens];
  v9 = [v8 firstObject];

  return v9;
}

+ (double)getLastTokenTrailingSilenceFromSpeechPackage:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = [a1 _getLastTokenFromSpeechPackage:?];
  [v3 endTime];
  v5 = v4;
  [v3 silenceStartTime];
  v7 = v5 - v6;

  return v7;
}

+ (double)getLastTokenEndTimeFromSpeechPackage:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = [a1 _getLastTokenFromSpeechPackage:?];
  [v3 endTime];
  v5 = v4;

  return v5;
}

+ (double)getLastTokenSilenceStartFromSpeechPackage:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = [a1 _getLastTokenFromSpeechPackage:?];
  [v3 silenceStartTime];
  v5 = v4;

  return v5;
}

+ (double)getFirstTokenSilenceStartFromSpeechPackage:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = [a1 _getFirstTokenFromSpeechPackage:?];
  [v3 silenceStartTime];
  v5 = v4;

  return v5;
}

+ (double)getFirstTokenDurationFromSpeechPackage:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = [a1 _getFirstTokenFromSpeechPackage:?];
  [v3 silenceStartTime];
  v5 = v4;
  [v3 startTime];
  v7 = v5 - v6;

  return v7;
}

+ (double)getFirstTokenLeadingSilenceFromSpeechPackage:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = [a1 _getFirstTokenFromSpeechPackage:?];
  [v3 startTime];
  v5 = v4;

  return v5;
}

@end