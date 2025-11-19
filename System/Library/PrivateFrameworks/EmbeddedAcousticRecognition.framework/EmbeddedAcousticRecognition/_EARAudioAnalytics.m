@interface _EARAudioAnalytics
- (id)_initWithSpeechRecognitionFeatures:(id)a3 acousticFeatures:(id)a4 snr:(double)a5;
@end

@implementation _EARAudioAnalytics

- (id)_initWithSpeechRecognitionFeatures:(id)a3 acousticFeatures:(id)a4 snr:(double)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = _EARAudioAnalytics;
  v10 = [(_EARAudioAnalytics *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    speechRecognitionFeatures = v10->_speechRecognitionFeatures;
    v10->_speechRecognitionFeatures = v11;

    v13 = [v9 copy];
    acousticFeatures = v10->_acousticFeatures;
    v10->_acousticFeatures = v13;

    v10->_snr = a5;
  }

  return v10;
}

@end