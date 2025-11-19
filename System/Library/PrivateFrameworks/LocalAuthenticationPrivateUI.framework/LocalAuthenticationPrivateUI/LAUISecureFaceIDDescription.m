@interface LAUISecureFaceIDDescription
- (LAUISecureFaceIDDescription)initWithContainerView:(id)a3;
- (LAUISecureFaceIDDescriptionObserver)observer;
- (void)dispatchAfterFrames:(unint64_t)a3 block:(id)a4;
- (void)fadeIn:(BOOL)a3 orOut:(BOOL)a4 view:(id)a5 frames:(unint64_t)a6;
@end

@implementation LAUISecureFaceIDDescription

- (LAUISecureFaceIDDescription)initWithContainerView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAUISecureFaceIDDescription;
  v6 = [(LAUISecureFaceIDDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerView, a3);
  }

  return v7;
}

- (void)dispatchAfterFrames:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  [(LAUISecureFaceIDDescription *)self framesToSeconds:a3];
  v9 = dispatch_time(0, (v8 * 1000000000.0));
  dispatch_source_set_timer(v7, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__LAUISecureFaceIDDescription_dispatchAfterFrames_block___block_invoke;
  v12[3] = &unk_2798218D0;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_source_set_event_handler(v11, v12);
  dispatch_resume(v11);
}

uint64_t __57__LAUISecureFaceIDDescription_dispatchAfterFrames_block___block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)fadeIn:(BOOL)a3 orOut:(BOOL)a4 view:(id)a5 frames:(unint64_t)a6
{
  v7 = a4;
  v10 = a5;
  if (a3 || v7)
  {
    v11 = MEMORY[0x277D75D18];
    [(LAUISecureFaceIDDescription *)self framesToSeconds:a6];
    v13 = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__LAUISecureFaceIDDescription_fadeIn_orOut_view_frames___block_invoke;
    v14[3] = &unk_2798218F8;
    v15 = v10;
    v16 = v7;
    [v11 animateWithDuration:v14 animations:v13];
  }
}

uint64_t __56__LAUISecureFaceIDDescription_fadeIn_orOut_view_frames___block_invoke(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

- (LAUISecureFaceIDDescriptionObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end