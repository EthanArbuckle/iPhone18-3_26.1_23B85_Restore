@interface CKEmbeddedAudioHelper
+ (BOOL)isEasyToRecognizeWord:(id)a3;
@end

@implementation CKEmbeddedAudioHelper

+ (BOOL)isEasyToRecognizeWord:(id)a3
{
  v3 = MEMORY[0x1E699BA28];
  v4 = MEMORY[0x1E695DF58];
  v5 = a3;
  v6 = [v4 currentLocale];
  LOBYTE(v3) = [v3 isEasyToRecognizeWord:v5 forLocale:v6];

  return v3;
}

@end