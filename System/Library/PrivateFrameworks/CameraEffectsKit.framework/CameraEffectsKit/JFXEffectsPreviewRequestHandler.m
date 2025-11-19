@interface JFXEffectsPreviewRequestHandler
- (JFXEffectsPreviewRequestHandler)initWithRequest:(id)a3;
- (id)buildCallbackMap:(id)a3;
- (id)buildPVRenderRequestWithOutputColorSpace:(id)a3;
@end

@implementation JFXEffectsPreviewRequestHandler

- (JFXEffectsPreviewRequestHandler)initWithRequest:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = JFXEffectsPreviewRequestHandler;
  v6 = [(JFXEffectsPreviewRequestHandler *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_req, a3);
    job = v7->_job;
    v7->_job = 0;
  }

  return v7;
}

- (id)buildPVRenderRequestWithOutputColorSpace:(id)a3
{
  v4 = a3;
  v5 = [JFXInstructionGraphBuilder alloc];
  [(JFXEffectsPreviewGenerationRequest *)self->_req outputSize];
  v7 = v6;
  v9 = v8;
  [(JFXEffectsPreviewGenerationRequest *)self->_req frameSize];
  v12 = [(JFXInstructionGraphBuilder *)v5 initWithOutputSize:v4 frameSize:v7 outputColorSpace:v9, v10, v11];

  v13 = [(JFXEffectsPreviewGenerationRequest *)self->_req generatorJobWithGraphBuilder:v12];
  job = self->_job;
  self->_job = v13;

  v15 = objc_alloc(MEMORY[0x277D416A0]);
  v16 = [(JFXEffectsPreviewGeneratorJob *)self->_job outputNodes];
  req = self->_req;
  if (req)
  {
    [(JFXEffectsPreviewGenerationRequest *)req renderTime];
    req = self->_req;
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  [(JFXEffectsPreviewGenerationRequest *)req outputSize];
  v18 = [v15 initWithOutputs:v16 atTime:v20 outputSize:?];

  [v18 setHighQuality:{-[JFXEffectsPreviewGenerationRequest highQuality](self->_req, "highQuality")}];
  [v18 setPriority:{-[JFXEffectsPreviewGenerationRequest priority](self->_req, "priority")}];
  if ([(JFXEffectsPreviewGenerationRequest *)self->_req parentCode]!= -1)
  {
    [v18 setParentCode:{-[JFXEffectsPreviewGenerationRequest parentCode](self->_req, "parentCode")}];
  }

  [v18 setChildCode:{-[JFXEffectsPreviewGenerationRequest childCode](self->_req, "childCode")}];

  return v18;
}

- (id)buildCallbackMap:(id)a3
{
  v4 = MEMORY[0x277CCAB00];
  v5 = a3;
  v6 = [[v4 alloc] initWithKeyOptions:0 valueOptions:0 capacity:{objc_msgSend(v5, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__JFXEffectsPreviewRequestHandler_buildCallbackMap___block_invoke;
  v11[3] = &unk_278D7D0C0;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v5 enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __52__JFXEffectsPreviewRequestHandler_buildCallbackMap___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [*(*(a1 + 32) + 16) callbackKeys];
  v6 = [v5 objectAtIndexedSubscript:a3];

  if (v7 && v6)
  {
    [*(a1 + 40) setObject:v7 forKey:v6];
  }
}

@end