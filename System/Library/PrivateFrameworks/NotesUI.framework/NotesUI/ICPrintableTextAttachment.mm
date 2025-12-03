@interface ICPrintableTextAttachment
- (CGPoint)frameOffset;
- (CGRect)adjustedBounds:(CGRect)bounds forProposedLineFragment:(CGRect)fragment;
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
@end

@implementation ICPrintableTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  v11.receiver = self;
  v11.super_class = ICPrintableTextAttachment;
  [(ICPrintableTextAttachment *)&v11 attachmentBoundsForTextContainer:container proposedLineFragment:index glyphPosition:fragment.origin.x characterIndex:fragment.origin.y, fragment.size.width, fragment.size.height, position.x, position.y];
  [ICPrintableTextAttachment adjustedBounds:"adjustedBounds:forProposedLineFragment:" forProposedLineFragment:?];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  v12.receiver = self;
  v12.super_class = ICPrintableTextAttachment;
  [(ICPrintableTextAttachment *)&v12 attachmentBoundsForAttributes:attributes location:location textContainer:container proposedLineFragment:fragment.origin.x position:fragment.origin.y, fragment.size.width, fragment.size.height, position.x, position.y];
  [ICPrintableTextAttachment adjustedBounds:"adjustedBounds:forProposedLineFragment:" forProposedLineFragment:?];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)adjustedBounds:(CGRect)bounds forProposedLineFragment:(CGRect)fragment
{
  width = fragment.size.width;
  height = bounds.size.height;
  v6 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(ICPrintableTextAttachment *)self frameOffset:bounds.origin.x];
  v11 = v10;
  [(ICPrintableTextAttachment *)self frameOffset];
  v13 = v12;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = v6;
  v24.size.height = height;
  v25 = CGRectOffset(v24, v11, v13);
  v14 = v25.origin.x;
  v15 = v25.origin.y;
  v16 = v25.size.width;
  v17 = v25.size.height;
  if (width / v25.size.width < 1.0)
  {
    memset(&v23, 0, sizeof(v23));
    CGAffineTransformMakeScale(&v23, width / v25.size.width, width / v25.size.width);
    v22 = v23;
    v26.origin.x = v14;
    v26.origin.y = v15;
    v26.size.width = v16;
    v26.size.height = v17;
    v27 = CGRectApplyAffineTransform(v26, &v22);
    v14 = v27.origin.x;
    v15 = v27.origin.y;
    v16 = v27.size.width;
    v17 = v27.size.height;
  }

  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGPoint)frameOffset
{
  x = self->_frameOffset.x;
  y = self->_frameOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end