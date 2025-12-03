@interface _EARAudioAnalytics
- (id)_initWithSpeechRecognitionFeatures:(id)features acousticFeatures:(id)acousticFeatures snr:(double)snr;
@end

@implementation _EARAudioAnalytics

- (id)_initWithSpeechRecognitionFeatures:(id)features acousticFeatures:(id)acousticFeatures snr:(double)snr
{
  featuresCopy = features;
  acousticFeaturesCopy = acousticFeatures;
  v16.receiver = self;
  v16.super_class = _EARAudioAnalytics;
  v10 = [(_EARAudioAnalytics *)&v16 init];
  if (v10)
  {
    v11 = [featuresCopy copy];
    speechRecognitionFeatures = v10->_speechRecognitionFeatures;
    v10->_speechRecognitionFeatures = v11;

    v13 = [acousticFeaturesCopy copy];
    acousticFeatures = v10->_acousticFeatures;
    v10->_acousticFeatures = v13;

    v10->_snr = snr;
  }

  return v10;
}

@end