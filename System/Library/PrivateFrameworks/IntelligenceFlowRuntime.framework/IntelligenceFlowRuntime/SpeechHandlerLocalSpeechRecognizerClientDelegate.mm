@interface SpeechHandlerLocalSpeechRecognizerClientDelegate
- (void)localSpeechRecognizerClient:(id)a3 didAcceptedEagerResultWithRequestId:(id)a4 rcId:(int64_t)a5 mitigationSignal:(BOOL)a6 featuresToLog:(id)a7;
- (void)localSpeechRecognizerClient:(id)a3 receivedContinuityEndDetected:(id)a4;
- (void)localSpeechRecognizerClient:(id)a3 receivedFinalResultWithRequestId:(id)a4 speechPackage:(id)a5;
- (void)localSpeechRecognizerClient:(id)a3 receivedPartialResultWithRequestId:(id)a4 language:(id)a5 tokens:(id)a6;
- (void)localSpeechRecognizerClient:(id)a3 receivedTRPCandidatePackage:(id)a4;
@end

@implementation SpeechHandlerLocalSpeechRecognizerClientDelegate

- (void)localSpeechRecognizerClient:(id)a3 receivedPartialResultWithRequestId:(id)a4 language:(id)a5 tokens:(id)a6
{
  v8 = sub_22BDBABF4();
  v10 = v9;
  sub_22BDBABF4();
  sub_22BBED848(0, &qword_27D8E6A38, 0x277CEF4B0);
  v11 = sub_22BDBAD64();
  v12 = a3;
  v13 = self;
  sub_22BD874FC(v13, v8, v10, v14, v15, v11);
}

- (void)localSpeechRecognizerClient:(id)a3 receivedFinalResultWithRequestId:(id)a4 speechPackage:(id)a5
{
  sub_22BDBABF4();
}

- (void)localSpeechRecognizerClient:(id)a3 receivedTRPCandidatePackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22BD87EBC();
}

- (void)localSpeechRecognizerClient:(id)a3 didAcceptedEagerResultWithRequestId:(id)a4 rcId:(int64_t)a5 mitigationSignal:(BOOL)a6 featuresToLog:(id)a7
{
  sub_22BDBABF4();
  sub_22BBED848(0, &qword_281428750, 0x277CCABB0);
  sub_22BDBAD64();
}

- (void)localSpeechRecognizerClient:(id)a3 receivedContinuityEndDetected:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22BD88BBC();
}

@end