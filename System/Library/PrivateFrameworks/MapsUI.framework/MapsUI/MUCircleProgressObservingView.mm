@interface MUCircleProgressObservingView
- (CGSize)intrinsicContentSize;
- (MUCircleProgressObservingView)initWithFrame:(CGRect)frame;
- (void)_updateProgressView;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setProgress:(id)progress;
@end

@implementation MUCircleProgressObservingView

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (_ProgressKVOContext == context)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {

      [(MUCircleProgressObservingView *)self _updateProgressView];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__MUCircleProgressObservingView_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_1E821A268;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MUCircleProgressObservingView;
    [(MUCircleProgressObservingView *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_updateProgressView
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(MUCircleProgressView *)self->_progressView setIndeterminate:[(NSProgress *)self->_progress isIndeterminate]];
  [(NSProgress *)self->_progress fractionCompleted];
  progressView = self->_progressView;

  [(MUCircleProgressView *)progressView setProgress:?];
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  progress = self->_progress;
  if (progress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)progress removeObserver:self forKeyPath:@"fractionCompleted" context:_ProgressKVOContext];
    [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"indeterminate" context:_ProgressKVOContext];
    objc_storeStrong(&self->_progress, progress);
    [(NSProgress *)self->_progress addObserver:self forKeyPath:@"fractionCompleted" options:0 context:_ProgressKVOContext];
    [(NSProgress *)self->_progress addObserver:self forKeyPath:@"indeterminate" options:0 context:_ProgressKVOContext];
    progress = [(MUCircleProgressObservingView *)self _updateProgressView];
    progressCopy = v7;
  }

  MEMORY[0x1EEE66BB8](progress, progressCopy);
}

- (CGSize)intrinsicContentSize
{
  [(MUCircleProgressView *)self->_progressView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)dealloc
{
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted" context:_ProgressKVOContext];
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"indeterminate" context:_ProgressKVOContext];
  v3.receiver = self;
  v3.super_class = MUCircleProgressObservingView;
  [(MUCircleProgressObservingView *)&v3 dealloc];
}

- (MUCircleProgressObservingView)initWithFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = [[MUCircleProgressView alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(MUCircleProgressView *)v6 frame];
  v8 = v7;
  [(MUCircleProgressView *)v6 frame];
  v16.receiver = self;
  v16.super_class = MUCircleProgressObservingView;
  v9 = [(MUCircleProgressObservingView *)&v16 initWithFrame:x, y, v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_progressView, v6);
    [(MUCircleProgressObservingView *)v10 addSubview:v10->_progressView];
    v11 = [[MUEdgeLayout alloc] initWithItem:v10->_progressView container:v10];
    [(MUConstraintLayout *)v11 activate];

    LODWORD(v12) = 1148846080;
    [(MUCircleProgressView *)v10->_progressView setContentHuggingPriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [(MUCircleProgressView *)v10->_progressView setContentHuggingPriority:1 forAxis:v13];
    v14 = v10;
  }

  return v10;
}

@end