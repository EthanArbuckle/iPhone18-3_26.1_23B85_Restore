@interface JFXEffectsPreviewGenerator
- (JFXEffectsPreviewGenerator)init;
- (JFXEffectsPreviewGenerator)initWithRendererOptions:(id)options;
- (id)colorSpace;
- (void)_renderJob:(id)job completionHandler:(id)handler;
- (void)dealloc;
- (void)generatePreviewRequest:(id)request completionHandler:(id)handler;
- (void)setName:(id)name;
@end

@implementation JFXEffectsPreviewGenerator

- (JFXEffectsPreviewGenerator)init
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D41AC0];
  rec709GammaColorSpace = [MEMORY[0x277D415E0] rec709GammaColorSpace];
  v8[0] = rec709GammaColorSpace;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = [(JFXEffectsPreviewGenerator *)self initWithRendererOptions:v4];
  return v5;
}

- (JFXEffectsPreviewGenerator)initWithRendererOptions:(id)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = JFXEffectsPreviewGenerator;
  v5 = [(JFXEffectsPreviewGenerator *)&v12 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D416A8]) initWithOptions:optionsCopy];
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

- (void)generatePreviewRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v8 = [[JFXEffectsPreviewRequestHandler alloc] initWithRequest:requestCopy];

  [(JFXEffectsPreviewGenerator *)self _renderJob:v8 completionHandler:handlerCopy];
}

- (void)_renderJob:(id)job completionHandler:(id)handler
{
  jobCopy = job;
  handlerCopy = handler;
  compositingContext = [(PVRenderer *)self->_renderer compositingContext];
  outputColorSpace = [compositingContext outputColorSpace];

  v10 = [jobCopy buildPVRenderRequestWithOutputColorSpace:outputColorSpace];
  renderer = self->_renderer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__JFXEffectsPreviewGenerator__renderJob_completionHandler___block_invoke;
  v14[3] = &unk_278D7CD48;
  v15 = jobCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v12 = jobCopy;
  v13 = handlerCopy;
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

- (void)setName:(id)name
{
  objc_storeStrong(&self->_name, name);
  nameCopy = name;
  [(PVRenderer *)self->_renderer setName:self->_name];
}

- (id)colorSpace
{
  compositingContext = [(PVRenderer *)self->_renderer compositingContext];
  outputColorSpace = [compositingContext outputColorSpace];

  return outputColorSpace;
}

@end