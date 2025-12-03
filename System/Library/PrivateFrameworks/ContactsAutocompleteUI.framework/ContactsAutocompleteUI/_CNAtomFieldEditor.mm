@interface _CNAtomFieldEditor
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (CGRect)_rectForScrollToVisible:(_NSRange)visible;
- (CGRect)convertGlyphRect:(CGRect)rect;
- (_CNAtomFieldEditor)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)_enclosingScrollView;
- (id)selectionRectsForRange:(id)range;
- (id)textInputTraits;
- (id)undoManager;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)paste:(id)paste;
- (void)scrollRectToVisible:(CGRect)visible animated:(BOOL)animated;
@end

@implementation _CNAtomFieldEditor

- (_CNAtomFieldEditor)initWithFrame:(CGRect)frame textContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = _CNAtomFieldEditor;
  v4 = [(_CNAtomFieldEditor *)&v9 initWithFrame:container textContainer:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(_CNAtomFieldEditor *)v4 setClipsToBounds:0];
    textContainer = [(_CNAtomFieldEditor *)v5 textContainer];
    [textContainer setLineFragmentPadding:3.0];

    textContainer2 = [(_CNAtomFieldEditor *)v5 textContainer];
    [textContainer2 setMaximumNumberOfLines:1];

    [(_CNAtomFieldEditor *)v5 setTextContainerInset:3.0, 0.0, 3.0, 0.0];
  }

  return v5;
}

- (id)_enclosingScrollView
{
  superview = [(_CNAtomFieldEditor *)self superview];
  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
    }

    while (v2Superview);
  }

  return superview;
}

- (id)textInputTraits
{
  _hostView = [(_CNAtomFieldEditor *)self _hostView];
  textInputTraits = [_hostView textInputTraits];

  return textInputTraits;
}

- (CGRect)convertGlyphRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(_CNAtomFieldEditor *)self textContainerInset];
  v9 = x + v8;
  [(_CNAtomFieldEditor *)self textContainerInset];
  v11 = y + v10;
  v12 = v9;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (id)undoManager
{
  _hostView = [(_CNAtomFieldEditor *)self _hostView];
  undoManager = [_hostView undoManager];

  return undoManager;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_paste_ == action)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    _hostView = [(_CNAtomFieldEditor *)self _hostView];
    _supportedPasteboardTypes = [_hostView _supportedPasteboardTypes];

    v12 = [generalPasteboard containsPasteboardTypes:_supportedPasteboardTypes inItemSet:0];
  }

  else if (sel__define_ == action || sel__share_ == action || sel__lookup_ == action)
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _CNAtomFieldEditor;
    v12 = [(_CNAtomFieldEditor *)&v14 canPerformAction:action withSender:senderCopy];
  }

  return v12;
}

- (void)cut:(id)cut
{
  [(_CNAtomFieldEditor *)self copy:cut];
  _hostView = [(_CNAtomFieldEditor *)self _hostView];
  selectedRange = [(_CNAtomFieldEditor *)self selectedRange];
  [_hostView _removeRepresentedObjectsInCharacterRange:{selectedRange, v5}];
}

- (void)copy:(id)copy
{
  _hostView = [(_CNAtomFieldEditor *)self _hostView];
  selectedRepresentedObjects = [_hostView selectedRepresentedObjects];
  if ([selectedRepresentedObjects count])
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    [_hostView _storeRepresentedObjects:selectedRepresentedObjects onPasteboard:generalPasteboard];
  }
}

- (void)paste:(id)paste
{
  _hostView = [(_CNAtomFieldEditor *)self _hostView];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  v5 = [_hostView _representedObjectsFromPasteboard:generalPasteboard];
  if ([v5 count])
  {
    selectedRange = [(_CNAtomFieldEditor *)self selectedRange];
    [_hostView _insertRepresentedObjects:v5 atCharacterRange:{selectedRange, v7}];
  }
}

- (id)selectionRectsForRange:(id)range
{
  rangeCopy = range;
  array = [MEMORY[0x1E695DF70] array];
  beginningOfDocument = [(_CNAtomFieldEditor *)self beginningOfDocument];
  start = [rangeCopy start];
  v8 = [(_CNAtomFieldEditor *)self offsetFromPosition:beginningOfDocument toPosition:start];
  start2 = [rangeCopy start];
  v10 = [rangeCopy end];
  v11 = [(_CNAtomFieldEditor *)self offsetFromPosition:start2 toPosition:v10];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __45___CNAtomFieldEditor_selectionRectsForRange___block_invoke;
  v26[3] = &unk_1E7CD2260;
  v12 = array;
  v27 = v12;
  v13 = MEMORY[0x1B8CB9350](v26);
  textStorage = [(_CNAtomFieldEditor *)self textStorage];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __45___CNAtomFieldEditor_selectionRectsForRange___block_invoke_2;
  v21[3] = &unk_1E7CD22C8;
  v24 = v8;
  v25 = v11;
  v21[4] = self;
  v15 = v13;
  v23 = v15;
  v16 = v12;
  v22 = v16;
  [textStorage enumerateAttributesInRange:v8 options:v11 usingBlock:{0, v21}];

  if ([v16 count])
  {
    v17 = v16;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = _CNAtomFieldEditor;
    v17 = [(_CNAtomFieldEditor *)&v20 selectionRectsForRange:rangeCopy];
  }

  v18 = v17;

  return v18;
}

- (void)scrollRectToVisible:(CGRect)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  _enclosingScrollView = [(_CNAtomFieldEditor *)self _enclosingScrollView];
  [_enclosingScrollView convertRect:self fromView:{x, y, width, height}];
  [_enclosingScrollView scrollRectToVisible:animatedCopy animated:?];
}

- (CGRect)_rectForScrollToVisible:(_NSRange)visible
{
  length = visible.length;
  location = visible.location;
  layoutManager = [(_CNAtomFieldEditor *)self layoutManager];
  textContainer = [(_CNAtomFieldEditor *)self textContainer];
  textStorage = [(_CNAtomFieldEditor *)self textStorage];
  v9 = [textStorage length];

  if (location + length > v9)
  {
    textStorage2 = [(_CNAtomFieldEditor *)self textStorage];
    location = [textStorage2 length] - 1;
    length = 1;
  }

  v11 = [layoutManager glyphRangeForCharacterRange:location actualCharacterRange:{length, 0}];
  [layoutManager boundingRectForGlyphRange:v11 inTextContainer:{v12, textContainer}];
  [(_CNAtomFieldEditor *)self textContainerInset];
  [(UIView *)self cnaui_currentScreenScale];
  UIRectIntegralWithScale();
  v26 = CGRectInset(v25, -5.0, 0.0);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  [(_CNAtomFieldEditor *)self bounds];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v28 = CGRectIntersection(v27, v30);
  v17 = v28.origin.x;
  v18 = v28.origin.y;
  v19 = v28.size.width;
  v20 = v28.size.height;

  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

@end