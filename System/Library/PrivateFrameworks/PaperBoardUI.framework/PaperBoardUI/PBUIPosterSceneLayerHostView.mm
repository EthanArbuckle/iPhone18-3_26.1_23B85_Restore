@interface PBUIPosterSceneLayerHostView
- (void)dealloc;
- (void)setContextID:(unsigned int)d scene:(id)scene;
@end

@implementation PBUIPosterSceneLayerHostView

- (void)setContextID:(unsigned int)d scene:(id)scene
{
  v4 = *&d;
  sceneCopy = scene;
  if ([(PBUIPosterSceneLayerHostView *)self contextID]!= v4)
  {
    [(PBUIPosterSceneLayerHostView *)self setContextID:v4];
    [(UIScenePresenter *)self->_presenter invalidate];
    presenter = self->_presenter;
    self->_presenter = 0;

    [(PBUIPosterSceneLayerHostView *)self setScene:sceneCopy];
    if ([(PBUIPosterSceneLayerHostView *)self contextID])
    {
      v7 = [MEMORY[0x277D75968] targetForContextID:{-[PBUIPosterSceneLayerHostView contextID](self, "contextID")}];
      scene = [(PBUIPosterSceneLayerHostView *)self scene];
      uiPresentationManager = [scene uiPresentationManager];
      identifier = [(PBUIPosterSceneLayerHostView *)self identifier];
      v11 = [uiPresentationManager createPresenterForLayerTarget:v7 identifier:identifier priority:100];
      v12 = self->_presenter;
      self->_presenter = v11;

      [(UIScenePresenter *)self->_presenter modifyPresentationContext:&__block_literal_global_1];
      [(UIScenePresenter *)self->_presenter activate];
      presentationView = [(UIScenePresenter *)self->_presenter presentationView];
      [(PBUIPosterSceneLayerHostView *)self addSubview:presentationView];
    }
  }
}

void __51__PBUIPosterSceneLayerHostView_setContextID_scene___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:2];
  [v2 setClippingDisabled:1];
}

- (void)dealloc
{
  [(UIScenePresenter *)self->_presenter invalidate];
  presenter = self->_presenter;
  self->_presenter = 0;

  v4.receiver = self;
  v4.super_class = PBUIPosterSceneLayerHostView;
  [(PBUIPosterSceneLayerHostView *)&v4 dealloc];
}

@end