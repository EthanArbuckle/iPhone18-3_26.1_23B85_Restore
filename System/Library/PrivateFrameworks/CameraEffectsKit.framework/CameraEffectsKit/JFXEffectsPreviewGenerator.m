@interface JFXEffectsPreviewGenerator
- (JFXEffectsPreviewGenerator)init;
- (JFXEffectsPreviewGenerator)initWithRendererOptions:(id)a3;
- (id)colorSpace;
- (void)_renderJob:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)generatePreviewRequest:(id)a3 completionHandler:(id)a4;
- (void)setName:(id)a3;
@end

@implementation JFXEffectsPreviewGenerator

- (JFXEffectsPreviewGenerator)init
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D41AC0];
  v3 = [MEMORY[0x277D415E0] rec709GammaColorSpace];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = [(JFXEffectsPreviewGenerator *)self initWithRendererOptions:v4];
  return v5;
}

- (JFXEffectsPreviewGenerator)initWithRendererOptions:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = JFXEffectsPreviewGenerator;
  v5 = [(JFXEffectsPreviewGenerator *)&v12 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D416A8]) initWithOptions:v4];
    renderer = v5->_renderer;
    v5->_renderer = v6;

    [(PVRenderer *)v5->_renderer trackStats:1];
    v8 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.clips.previewRenderCompleteQueue", v8);
    renderCompleteQueue = v5->_renderCompleteQueue;
    v5->_renderCompleteQueue = v9;
  }

  return v5;
}

- (void)dealloc
{
  [(PVRenderer *)self->_renderer printAndClearStats:1];
  v3.receiver = self;
  v3.super_class = JFXEffectsPreviewGenerator;
  [(JFXEffectsPreviewGenerator *)&v3 dealloc];
}

- (void)generatePreviewRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[JFXEffectsPreviewRequestHandler alloc] initWithRequest:v7];

  [(JFXEffectsPreviewGenerator *)self _renderJob:v8 completionHandler:v6];
}

- (void)_renderJob:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PVRenderer *)self->_renderer compositingContext];
  v9 = [v8 outputColorSpace];

  v10 = [v6 buildPVRenderRequestWithOutputColorSpace:v9];
  renderer = self->_renderer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__JFXEffectsPreviewGenerator__renderJob_completionHandler___block_invoke;
  v14[3] = &unk_278D7CD48;
  v15 = v6;
  v16 = v7;
  v14[4] = self;
  v12 = v6;
  v13 = v7;
  [(PVRenderer *)renderer startRenderRequest:v10 completionHandler:v14];
}

void __59__JFXEffectsPreviewGenerator__renderJob_completionHandler___block_invoke(id *a1, void *a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = [a1[4] renderCompleteQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__JFXEffectsPreviewGenerator__renderJob_completionHandler___block_invoke_2;
  v9[3] = &unk_278D7CD20;
  v10 = v6;
  v13 = a4;
  v12 = a1[6];
  v11 = a1[5];
  v8 = v6;
  dispatch_async(v7, v9);
}

void __59__JFXEffectsPreviewGenerator__renderJob_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [v2 count])
  {
    v3 = [*(a1 + 40) buildCallbackMap:*(a1 + 32)];
    v4 = *(*(a1 + 48) + 16);
    v7 = v3;
  }

  else
  {
    if (*(a1 + 56))
    {
      v5 = &unk_28556DAD8;
    }

    else
    {
      v5 = &unk_28556DB00;
    }

    v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.clips.JFXEffectsPreviewGenerator" code:199 userInfo:v5];
    v4 = *(*(a1 + 48) + 16);
    v7 = v6;
  }

  v4();
}

- (void)setName:(id)a3
{
  objc_storeStrong(&self->_name, a3);
  v5 = a3;
  [(PVRenderer *)self->_renderer setName:self->_name];
}

- (id)colorSpace
{
  v2 = [(PVRenderer *)self->_renderer compositingContext];
  v3 = [v2 outputColorSpace];

  return v3;
}

@end