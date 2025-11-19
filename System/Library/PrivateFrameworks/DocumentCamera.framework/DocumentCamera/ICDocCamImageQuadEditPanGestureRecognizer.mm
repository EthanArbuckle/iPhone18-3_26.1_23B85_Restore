@interface ICDocCamImageQuadEditPanGestureRecognizer
- (ICDocCamImageQuadEditPanGestureRecognizerDelegate)quadEditorDelegate;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation ICDocCamImageQuadEditPanGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = ICDocCamImageQuadEditPanGestureRecognizer;
  [(ICDocCamImageQuadEditPanGestureRecognizer *)&v6 touchesBegan:a3 withEvent:a4];
  if ([(ICDocCamImageQuadEditPanGestureRecognizer *)self state]<= 0)
  {
    [(ICDocCamImageQuadEditPanGestureRecognizer *)self setState:1];
    v5 = [(ICDocCamImageQuadEditPanGestureRecognizer *)self quadEditorDelegate];
    [v5 touchesBeganOnQuadEditPanGestureRecognizerDelegate:self];
  }
}

- (ICDocCamImageQuadEditPanGestureRecognizerDelegate)quadEditorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_quadEditorDelegate);

  return WeakRetained;
}

@end