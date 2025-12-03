@interface _CNAtomTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (CNComposeRecipient)recipient;
- (_CNAtomTextAttachment)initWithAtomView:(id)view;
- (id)attributedStringWithBaseAttributes:(id)attributes;
@end

@implementation _CNAtomTextAttachment

- (_CNAtomTextAttachment)initWithAtomView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = _CNAtomTextAttachment;
  v5 = [(_CNAtomTextAttachment *)&v8 initWithData:0 ofType:0];
  v6 = v5;
  if (v5)
  {
    [(_CNAtomTextAttachment *)v5 setIsPlaceholder:0];
    [(_CNAtomTextAttachment *)v6 setAtomView:viewCopy];
  }

  return v6;
}

- (CNComposeRecipient)recipient
{
  atomView = [(_CNAtomTextAttachment *)self atomView];
  recipient = [atomView recipient];

  return recipient;
}

- (id)attributedStringWithBaseAttributes:(id)attributes
{
  attributesCopy = attributes;
  v10 = -4;
  v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v10 length:1];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self forKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  v7 = +[CNAtomView defaultFont];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  if (attributesCopy)
  {
    [dictionary setValuesForKeysWithDictionary:attributesCopy];
  }

  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:dictionary];

  return v8;
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  height = fragment.size.height;
  width = fragment.size.width;
  if ([(_CNAtomTextAttachment *)self isPlaceholder:container])
  {
    [(_CNAtomTextAttachment *)self bounds];
    v10 = v9;
  }

  else
  {
    [(CNAtomView *)self->_atomView intrinsicContentSize];
    v10 = v11;
  }

  atomView = [(_CNAtomTextAttachment *)self atomView];
  if (([atomView presentationOptions] & 0x4000) != 0)
  {
    v13 = 0.2;
  }

  else
  {
    v13 = 2.0;
  }

  v14 = *MEMORY[0x1E695F058];
  v15 = +[CNAtomView defaultFont];
  [v15 descender];
  v17 = v16;

  if (v10 >= width)
  {
    v18 = width;
  }

  else
  {
    v18 = v10;
  }

  v19 = v18 + v13;
  v20 = v14;
  v21 = v17;
  v22 = height;
  result.size.height = v22;
  result.size.width = v19;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

@end