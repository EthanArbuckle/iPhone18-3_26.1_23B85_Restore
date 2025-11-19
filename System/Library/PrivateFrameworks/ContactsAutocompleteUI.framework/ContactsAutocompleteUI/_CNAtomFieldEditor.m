@interface _CNAtomFieldEditor
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGRect)_rectForScrollToVisible:(_NSRange)a3;
- (CGRect)convertGlyphRect:(CGRect)a3;
- (_CNAtomFieldEditor)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)_enclosingScrollView;
- (id)selectionRectsForRange:(id)a3;
- (id)textInputTraits;
- (id)undoManager;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)paste:(id)a3;
- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4;
@end

@implementation _CNAtomFieldEditor

- (_CNAtomFieldEditor)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  v9.receiver = self;
  v9.super_class = _CNAtomFieldEditor;
  v4 = [(_CNAtomFieldEditor *)&v9 initWithFrame:a4 textContainer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(_CNAtomFieldEditor *)v4 setClipsToBounds:0];
    v6 = [(_CNAtomFieldEditor *)v5 textContainer];
    [v6 setLineFragmentPadding:3.0];

    v7 = [(_CNAtomFieldEditor *)v5 textContainer];
    [v7 setMaximumNumberOfLines:1];

    [(_CNAtomFieldEditor *)v5 setTextContainerInset:3.0, 0.0, 3.0, 0.0];
  }

  return v5;
}

- (id)_enclosingScrollView
{
  v2 = [(_CNAtomFieldEditor *)self superview];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (id)textInputTraits
{
  v2 = [(_CNAtomFieldEditor *)self _hostView];
  v3 = [v2 textInputTraits];

  return v3;
}

- (CGRect)convertGlyphRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v2 = [(_CNAtomFieldEditor *)self _hostView];
  v3 = [v2 undoManager];

  return v3;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_paste_ == a3)
  {
    v9 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v10 = [(_CNAtomFieldEditor *)self _hostView];
    v11 = [v10 _supportedPasteboardTypes];

    v12 = [v9 containsPasteboardTypes:v11 inItemSet:0];
  }

  else if (sel__define_ == a3 || sel__share_ == a3 || sel__lookup_ == a3)
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _CNAtomFieldEditor;
    v12 = [(_CNAtomFieldEditor *)&v14 canPerformAction:a3 withSender:v6];
  }

  return v12;
}

- (void)cut:(id)a3
{
  [(_CNAtomFieldEditor *)self copy:a3];
  v6 = [(_CNAtomFieldEditor *)self _hostView];
  v4 = [(_CNAtomFieldEditor *)self selectedRange];
  [v6 _removeRepresentedObjectsInCharacterRange:{v4, v5}];
}

- (void)copy:(id)a3
{
  v5 = [(_CNAtomFieldEditor *)self _hostView];
  v3 = [v5 selectedRepresentedObjects];
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v5 _storeRepresentedObjects:v3 onPasteboard:v4];
  }
}

- (void)paste:(id)a3
{
  v8 = [(_CNAtomFieldEditor *)self _hostView];
  v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v5 = [v8 _representedObjectsFromPasteboard:v4];
  if ([v5 count])
  {
    v6 = [(_CNAtomFieldEditor *)self selectedRange];
    [v8 _insertRepresentedObjects:v5 atCharacterRange:{v6, v7}];
  }
}

- (id)selectionRectsForRange:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(_CNAtomFieldEditor *)self beginningOfDocument];
  v7 = [v4 start];
  v8 = [(_CNAtomFieldEditor *)self offsetFromPosition:v6 toPosition:v7];
  v9 = [v4 start];
  v10 = [v4 end];
  v11 = [(_CNAtomFieldEditor *)self offsetFromPosition:v9 toPosition:v10];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __45___CNAtomFieldEditor_selectionRectsForRange___block_invoke;
  v26[3] = &unk_1E7CD2260;
  v12 = v5;
  v27 = v12;
  v13 = MEMORY[0x1B8CB9350](v26);
  v14 = [(_CNAtomFieldEditor *)self textStorage];
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
  [v14 enumerateAttributesInRange:v8 options:v11 usingBlock:{0, v21}];

  if ([v16 count])
  {
    v17 = v16;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = _CNAtomFieldEditor;
    v17 = [(_CNAtomFieldEditor *)&v20 selectionRectsForRange:v4];
  }

  v18 = v17;

  return v18;
}

- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(_CNAtomFieldEditor *)self _enclosingScrollView];
  [v10 convertRect:self fromView:{x, y, width, height}];
  [v10 scrollRectToVisible:v4 animated:?];
}

- (CGRect)_rectForScrollToVisible:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(_CNAtomFieldEditor *)self layoutManager];
  v7 = [(_CNAtomFieldEditor *)self textContainer];
  v8 = [(_CNAtomFieldEditor *)self textStorage];
  v9 = [v8 length];

  if (location + length > v9)
  {
    v10 = [(_CNAtomFieldEditor *)self textStorage];
    location = [v10 length] - 1;
    length = 1;
  }

  v11 = [v6 glyphRangeForCharacterRange:location actualCharacterRange:{length, 0}];
  [v6 boundingRectForGlyphRange:v11 inTextContainer:{v12, v7}];
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