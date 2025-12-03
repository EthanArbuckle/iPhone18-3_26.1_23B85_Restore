@interface CKEmbeddedAudioHelper
+ (BOOL)isEasyToRecognizeWord:(id)word;
@end

@implementation CKEmbeddedAudioHelper

+ (BOOL)isEasyToRecognizeWord:(id)word
{
  v3 = MEMORY[0x1E699BA28];
  v4 = MEMORY[0x1E695DF58];
  wordCopy = word;
  currentLocale = [v4 currentLocale];
  LOBYTE(v3) = [v3 isEasyToRecognizeWord:wordCopy forLocale:currentLocale];

  return v3;
}

@end