@interface MTVoiceUtils
+ (id)loadVoiceBundle:(__CFBundle *)bundle;
@end

@implementation MTVoiceUtils

+ (id)loadVoiceBundle:(__CFBundle *)bundle
{
  v4 = objc_alloc_init(MTFVoice);
  [(MTFVoice *)v4 setPitchCoeff:SpeechChannelManager::ReadVoicePitchCoefficients(bundle, v5)];
  v13 = 0;
  SpeechChannelManager::ReadVoiceDescription(bundle, &v13, v6);
  [(MTFVoice *)v4 setVoiceData:v13];
  v7 = [(MTFVoice *)v4 description][4];
  v10 = 0;
  v11.var0 = 0;
  SpeechChannelManager::ReadPCMVoiceData(bundle, v7, &v12, &v11, &v10, v8);
  [(MTFVoice *)v4 set_pcmData:v10];
  operator new();
}

@end