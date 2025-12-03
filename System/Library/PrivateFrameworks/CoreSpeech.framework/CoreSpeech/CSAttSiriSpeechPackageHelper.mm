@interface CSAttSiriSpeechPackageHelper
+ (double)getFirstTokenDurationFromSpeechPackage:(id)package;
+ (double)getFirstTokenLeadingSilenceFromSpeechPackage:(id)package;
+ (double)getFirstTokenSilenceStartFromSpeechPackage:(id)package;
+ (double)getLastTokenEndTimeFromSpeechPackage:(id)package;
+ (double)getLastTokenSilenceStartFromSpeechPackage:(id)package;
+ (double)getLastTokenTrailingSilenceFromSpeechPackage:(id)package;
+ (id)_getFirstTokenFromSpeechPackage:(id)package;
+ (id)_getLastTokenFromSpeechPackage:(id)package;
@end

@implementation CSAttSiriSpeechPackageHelper

+ (id)_getLastTokenFromSpeechPackage:(id)package
{
  rawRecognition = [package rawRecognition];
  phrases = [rawRecognition phrases];
  lastObject = [phrases lastObject];

  interpretations = [lastObject interpretations];
  firstObject = [interpretations firstObject];

  tokens = [firstObject tokens];
  lastObject2 = [tokens lastObject];

  return lastObject2;
}

+ (id)_getFirstTokenFromSpeechPackage:(id)package
{
  rawRecognition = [package rawRecognition];
  phrases = [rawRecognition phrases];
  firstObject = [phrases firstObject];

  interpretations = [firstObject interpretations];
  firstObject2 = [interpretations firstObject];

  tokens = [firstObject2 tokens];
  firstObject3 = [tokens firstObject];

  return firstObject3;
}

+ (double)getLastTokenTrailingSilenceFromSpeechPackage:(id)package
{
  if (!package)
  {
    return 0.0;
  }

  v3 = [self _getLastTokenFromSpeechPackage:?];
  [v3 endTime];
  v5 = v4;
  [v3 silenceStartTime];
  v7 = v5 - v6;

  return v7;
}

+ (double)getLastTokenEndTimeFromSpeechPackage:(id)package
{
  if (!package)
  {
    return 0.0;
  }

  v3 = [self _getLastTokenFromSpeechPackage:?];
  [v3 endTime];
  v5 = v4;

  return v5;
}

+ (double)getLastTokenSilenceStartFromSpeechPackage:(id)package
{
  if (!package)
  {
    return 0.0;
  }

  v3 = [self _getLastTokenFromSpeechPackage:?];
  [v3 silenceStartTime];
  v5 = v4;

  return v5;
}

+ (double)getFirstTokenSilenceStartFromSpeechPackage:(id)package
{
  if (!package)
  {
    return 0.0;
  }

  v3 = [self _getFirstTokenFromSpeechPackage:?];
  [v3 silenceStartTime];
  v5 = v4;

  return v5;
}

+ (double)getFirstTokenDurationFromSpeechPackage:(id)package
{
  if (!package)
  {
    return 0.0;
  }

  v3 = [self _getFirstTokenFromSpeechPackage:?];
  [v3 silenceStartTime];
  v5 = v4;
  [v3 startTime];
  v7 = v5 - v6;

  return v7;
}

+ (double)getFirstTokenLeadingSilenceFromSpeechPackage:(id)package
{
  if (!package)
  {
    return 0.0;
  }

  v3 = [self _getFirstTokenFromSpeechPackage:?];
  [v3 startTime];
  v5 = v4;

  return v5;
}

@end