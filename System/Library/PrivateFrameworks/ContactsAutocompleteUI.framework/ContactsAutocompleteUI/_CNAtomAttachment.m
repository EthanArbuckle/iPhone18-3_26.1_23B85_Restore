@interface _CNAtomAttachment
+ (id)attachmentWithAtomLayoutView:(id)a3 representedObject:(id)a4;
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (_CNAtomAttachment)initWithAtomLayoutView:(id)a3 representedObject:(id)a4;
@end

@implementation _CNAtomAttachment

+ (id)attachmentWithAtomLayoutView:(id)a3 representedObject:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAtomLayoutView:v7 representedObject:v6];

  return v8;
}

- (_CNAtomAttachment)initWithAtomLayoutView:(id)a3 representedObject:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNAtomAttachment;
  v9 = [(_CNAtomAttachment *)&v13 initWithData:0 ofType:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_atomView, a3);
    objc_storeStrong(&v10->_representedObject, a4);
    v11 = v10;
  }

  return v10;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  [(_CNAtomLayoutView *)self->_atomView boundsForTextContainer:a3 proposedLineFragment:a6 glyphPosition:a4.origin.x characterIndex:a4.origin.y, a4.size.width, a4.size.height, a5.x, a5.y];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end