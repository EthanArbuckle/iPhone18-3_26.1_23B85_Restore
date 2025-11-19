@interface CUINamedImageDescription
- ($01BB1521EC52D44A8E7628F5261DCEC8)alignmentEdgeInsets;
- ($01BB1521EC52D44A8E7628F5261DCEC8)edgeInsets;
- (void)dealloc;
@end

@implementation CUINamedImageDescription

- ($01BB1521EC52D44A8E7628F5261DCEC8)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.var3 = right;
  result.var2 = bottom;
  result.var1 = left;
  result.var0 = top;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)alignmentEdgeInsets
{
  top = self->_alignmentEdgeInsets.top;
  left = self->_alignmentEdgeInsets.left;
  bottom = self->_alignmentEdgeInsets.bottom;
  right = self->_alignmentEdgeInsets.right;
  result.var3 = right;
  result.var2 = bottom;
  result.var1 = left;
  result.var0 = top;
  return result;
}

- (void)dealloc
{
  [(CUINamedImageDescription *)self setAppearanceName:0];
  v3.receiver = self;
  v3.super_class = CUINamedImageDescription;
  [(CUINamedImageDescription *)&v3 dealloc];
}

@end