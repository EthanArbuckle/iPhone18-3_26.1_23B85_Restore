@interface ICNoteEditorInputAccessoryContainerView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation ICNoteEditorInputAccessoryContainerView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = ICNoteEditorInputAccessoryContainerView;
  v5 = [(ICNoteEditorInputAccessoryContainerView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

@end