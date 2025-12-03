@interface ICDocCamImageQuadEditPanGestureRecognizer
- (ICDocCamImageQuadEditPanGestureRecognizerDelegate)quadEditorDelegate;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation ICDocCamImageQuadEditPanGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = ICDocCamImageQuadEditPanGestureRecognizer;
  [(ICDocCamImageQuadEditPanGestureRecognizer *)&v6 touchesBegan:began withEvent:event];
  if ([(ICDocCamImageQuadEditPanGestureRecognizer *)self state]<= 0)
  {
    [(ICDocCamImageQuadEditPanGestureRecognizer *)self setState:1];
    quadEditorDelegate = [(ICDocCamImageQuadEditPanGestureRecognizer *)self quadEditorDelegate];
    [quadEditorDelegate touchesBeganOnQuadEditPanGestureRecognizerDelegate:self];
  }
}

- (ICDocCamImageQuadEditPanGestureRecognizerDelegate)quadEditorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_quadEditorDelegate);

  return WeakRetained;
}

@end