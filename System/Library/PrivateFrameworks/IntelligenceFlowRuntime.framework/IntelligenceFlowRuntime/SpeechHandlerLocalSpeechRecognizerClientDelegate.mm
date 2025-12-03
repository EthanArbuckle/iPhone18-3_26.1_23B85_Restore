@interface SpeechHandlerLocalSpeechRecognizerClientDelegate
- (void)localSpeechRecognizerClient:(id)client didAcceptedEagerResultWithRequestId:(id)id rcId:(int64_t)rcId mitigationSignal:(BOOL)signal featuresToLog:(id)log;
- (void)localSpeechRecognizerClient:(id)client receivedContinuityEndDetected:(id)detected;
- (void)localSpeechRecognizerClient:(id)client receivedFinalResultWithRequestId:(id)id speechPackage:(id)package;
- (void)localSpeechRecognizerClient:(id)client receivedPartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens;
- (void)localSpeechRecognizerClient:(id)client receivedTRPCandidatePackage:(id)package;
@end

@implementation SpeechHandlerLocalSpeechRecognizerClientDelegate

- (void)localSpeechRecognizerClient:(id)client receivedPartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens
{
  v8 = sub_22BDBABF4();
  v10 = v9;
  sub_22BDBABF4();
  sub_22BBED848(0, &qword_27D8E6A38, 0x277CEF4B0);
  v11 = sub_22BDBAD64();
  clientCopy = client;
  selfCopy = self;
  sub_22BD874FC(selfCopy, v8, v10, v14, v15, v11);
}

- (void)localSpeechRecognizerClient:(id)client receivedFinalResultWithRequestId:(id)id speechPackage:(id)package
{
  sub_22BDBABF4();
}

- (void)localSpeechRecognizerClient:(id)client receivedTRPCandidatePackage:(id)package
{
  clientCopy = client;
  packageCopy = package;
  selfCopy = self;
  sub_22BD87EBC();
}

- (void)localSpeechRecognizerClient:(id)client didAcceptedEagerResultWithRequestId:(id)id rcId:(int64_t)rcId mitigationSignal:(BOOL)signal featuresToLog:(id)log
{
  sub_22BDBABF4();
  sub_22BBED848(0, &qword_281428750, 0x277CCABB0);
  sub_22BDBAD64();
}

- (void)localSpeechRecognizerClient:(id)client receivedContinuityEndDetected:(id)detected
{
  clientCopy = client;
  detectedCopy = detected;
  selfCopy = self;
  sub_22BD88BBC();
}

@end