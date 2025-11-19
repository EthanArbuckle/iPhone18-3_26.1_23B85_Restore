@interface EARCSpeechRecognitionResultStreamGlue
- (EARCSpeechRecognitionResultStreamGlue)initWithStream:(EARCSpeechRecognitionResultStream *)a3;
- (void)dealloc;
- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4;
- (void)speechRecognizer:(id)a3 didProcessAudioDuration:(double)a4;
- (void)speechRecognizer:(id)a3 didRecognizeFinalResults:(id)a4 tokenSausage:(id)a5 nBestChoices:(id)a6;
- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4;
@end

@implementation EARCSpeechRecognitionResultStreamGlue

- (EARCSpeechRecognitionResultStreamGlue)initWithStream:(EARCSpeechRecognitionResultStream *)a3
{
  v7.receiver = self;
  v7.super_class = EARCSpeechRecognitionResultStreamGlue;
  result = [(EARCSpeechRecognitionResultStreamGlue *)&v7 init];
  if (result)
  {
    v5 = *&a3->ctx;
    v6 = *&a3->DidRecognizePartialResultTokens;
    *&result->_stream.DidRecognizeFinalResults = *&a3->DidRecognizeFinalResults;
    *&result->_stream.DidRecognizePartialResultTokens = v6;
    *&result->_stream.ctx = v5;
  }

  return result;
}

- (void)dealloc
{
  DisposeContext = self->_stream.DisposeContext;
  if (DisposeContext)
  {
    DisposeContext(self->_stream.ctx, a2);
  }

  v4.receiver = self;
  v4.super_class = EARCSpeechRecognitionResultStreamGlue;
  [(EARCSpeechRecognitionResultStreamGlue *)&v4 dealloc];
}

- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4
{
  if (self->_stream.DidRecognizePartialResultTokens)
  {
    ctx = self->_stream.ctx;
    DidRecognizePartialResultTokens = self->_stream.DidRecognizePartialResultTokens;
    v5 = [a4 tokens];

    DidRecognizePartialResultTokens(ctx, v5);
  }
}

- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4
{
  DidFinishRecognitionWithError = self->_stream.DidFinishRecognitionWithError;
  if (DidFinishRecognitionWithError)
  {
    DidFinishRecognitionWithError(self->_stream.ctx, a4);
  }
}

- (void)speechRecognizer:(id)a3 didRecognizeFinalResults:(id)a4 tokenSausage:(id)a5 nBestChoices:(id)a6
{
  DidRecognizeFinalResults = self->_stream.DidRecognizeFinalResults;
  if (DidRecognizeFinalResults)
  {
    DidRecognizeFinalResults(self->_stream.ctx, a5, a6, a4);
  }
}

- (void)speechRecognizer:(id)a3 didProcessAudioDuration:(double)a4
{
  DidProcessAudioDuration = self->_stream.DidProcessAudioDuration;
  if (DidProcessAudioDuration)
  {
    DidProcessAudioDuration(self->_stream.ctx, a4);
  }
}

@end