@interface MediaControlsInteractionRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation MediaControlsInteractionRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  [(MediaControlsInteractionRecognizer *)self setState:1];
  [(MSVTimer *)self->_interactionTimer invalidate];
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E69B14D8]);
  v9 = MEMORY[0x1E69E96A0];
  v10 = MEMORY[0x1E69E96A0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__MediaControlsInteractionRecognizer_touchesBegan_withEvent___block_invoke;
  v13[3] = &unk_1E7663AE8;
  objc_copyWeak(&v14, &location);
  v11 = [v8 initWithInterval:v9 queue:v13 block:1.0];
  interactionTimer = self->_interactionTimer;
  self->_interactionTimer = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __61__MediaControlsInteractionRecognizer_touchesBegan_withEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setState:2];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  [(MediaControlsInteractionRecognizer *)self setState:3, event];
  [(MSVTimer *)self->_interactionTimer invalidate];
  interactionTimer = self->_interactionTimer;
  self->_interactionTimer = 0;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(MediaControlsInteractionRecognizer *)self setState:4, event];
  [(MSVTimer *)self->_interactionTimer invalidate];
  interactionTimer = self->_interactionTimer;
  self->_interactionTimer = 0;
}

@end