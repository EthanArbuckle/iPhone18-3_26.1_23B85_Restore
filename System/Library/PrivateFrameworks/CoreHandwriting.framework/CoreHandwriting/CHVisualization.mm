@interface CHVisualization
- (CHVisualization)initWithRecognitionSession:(id)session;
- (CHVisualizationDelegate)delegate;
@end

@implementation CHVisualization

- (CHVisualization)initWithRecognitionSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = CHVisualization;
  v6 = [(CHVisualization *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recognitionSession, session);
  }

  return v7;
}

- (CHVisualizationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end