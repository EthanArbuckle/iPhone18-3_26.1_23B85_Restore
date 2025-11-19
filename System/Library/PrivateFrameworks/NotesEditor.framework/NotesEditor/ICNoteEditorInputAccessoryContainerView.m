@interface ICNoteEditorInputAccessoryContainerView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation ICNoteEditorInputAccessoryContainerView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = ICNoteEditorInputAccessoryContainerView;
  v5 = [(ICNoteEditorInputAccessoryContainerView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
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