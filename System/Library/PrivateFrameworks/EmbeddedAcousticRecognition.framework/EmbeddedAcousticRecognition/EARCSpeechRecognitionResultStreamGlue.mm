@interface EARCSpeechRecognitionResultStreamGlue
- (EARCSpeechRecognitionResultStreamGlue)initWithStream:(EARCSpeechRecognitionResultStream *)stream;
- (void)dealloc;
- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error;
- (void)speechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResults:(id)results tokenSausage:(id)sausage nBestChoices:(id)choices;
- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result;
@end

@implementation EARCSpeechRecognitionResultStreamGlue

- (EARCSpeechRecognitionResultStreamGlue)initWithStream:(EARCSpeechRecognitionResultStream *)stream
{
  v7.receiver = self;
  v7.super_class = EARCSpeechRecognitionResultStreamGlue;
  result = [(EARCSpeechRecognitionResultStreamGlue *)&v7 init];
  if (result)
  {
    v5 = *&stream->ctx;
    v6 = *&stream->DidRecognizePartialResultTokens;
    *&result->_stream.DidRecognizeFinalResults = *&stream->DidRecognizeFinalResults;
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

- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result
{
  if (self->_stream.DidRecognizePartialResultTokens)
  {
    ctx = self->_stream.ctx;
    DidRecognizePartialResultTokens = self->_stream.DidRecognizePartialResultTokens;
    tokens = [result tokens];

    DidRecognizePartialResultTokens(ctx, tokens);
  }
}

- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error
{
  DidFinishRecognitionWithError = self->_stream.DidFinishRecognitionWithError;
  if (DidFinishRecognitionWithError)
  {
    DidFinishRecognitionWithError(self->_stream.ctx, error);
  }
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResults:(id)results tokenSausage:(id)sausage nBestChoices:(id)choices
{
  DidRecognizeFinalResults = self->_stream.DidRecognizeFinalResults;
  if (DidRecognizeFinalResults)
  {
    DidRecognizeFinalResults(self->_stream.ctx, sausage, choices, results);
  }
}

- (void)speechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration
{
  DidProcessAudioDuration = self->_stream.DidProcessAudioDuration;
  if (DidProcessAudioDuration)
  {
    DidProcessAudioDuration(self->_stream.ctx, duration);
  }
}

@end