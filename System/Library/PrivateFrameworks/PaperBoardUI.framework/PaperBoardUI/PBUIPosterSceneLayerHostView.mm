@interface PBUIPosterSceneLayerHostView
- (void)dealloc;
- (void)setContextID:(unsigned int)a3 scene:(id)a4;
@end

@implementation PBUIPosterSceneLayerHostView

- (void)setContextID:(unsigned int)a3 scene:(id)a4
{
  v4 = *&a3;
  v14 = a4;
  if ([(PBUIPosterSceneLayerHostView *)self contextID]!= v4)
  {
    [(PBUIPosterSceneLayerHostView *)self setContextID:v4];
    [(UIScenePresenter *)self->_presenter invalidate];
    presenter = self->_presenter;
    self->_presenter = 0;

    [(PBUIPosterSceneLayerHostView *)self setScene:v14];
    if ([(PBUIPosterSceneLayerHostView *)self contextID])
    {
      v7 = [MEMORY[0x277D75968] targetForContextID:{-[PBUIPosterSceneLayerHostView contextID](self, "contextID")}];
      v8 = [(PBUIPosterSceneLayerHostView *)self scene];
      v9 = [v8 uiPresentationManager];
      v10 = [(PBUIPosterSceneLayerHostView *)self identifier];
      v11 = [v9 createPresenterForLayerTarget:v7 identifier:v10 priority:100];
      v12 = self->_presenter;
      self->_presenter = v11;

      [(UIScenePresenter *)self->_presenter modifyPresentationContext:&__block_literal_global_1];
      [(UIScenePresenter *)self->_presenter activate];
      v13 = [(UIScenePresenter *)self->_presenter presentationView];
      [(PBUIPosterSceneLayerHostView *)self addSubview:v13];
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