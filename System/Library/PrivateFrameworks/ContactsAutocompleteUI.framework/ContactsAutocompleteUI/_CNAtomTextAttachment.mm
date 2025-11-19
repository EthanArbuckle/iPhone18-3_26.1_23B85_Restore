@interface _CNAtomTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (CNComposeRecipient)recipient;
- (_CNAtomTextAttachment)initWithAtomView:(id)a3;
- (id)attributedStringWithBaseAttributes:(id)a3;
@end

@implementation _CNAtomTextAttachment

- (_CNAtomTextAttachment)initWithAtomView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _CNAtomTextAttachment;
  v5 = [(_CNAtomTextAttachment *)&v8 initWithData:0 ofType:0];
  v6 = v5;
  if (v5)
  {
    [(_CNAtomTextAttachment *)v5 setIsPlaceholder:0];
    [(_CNAtomTextAttachment *)v6 setAtomView:v4];
  }

  return v6;
}

- (CNComposeRecipient)recipient
{
  v2 = [(_CNAtomTextAttachment *)self atomView];
  v3 = [v2 recipient];

  return v3;
}

- (id)attributedStringWithBaseAttributes:(id)a3
{
  v4 = a3;
  v10 = -4;
  v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v10 length:1];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setObject:self forKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  v7 = +[CNAtomView defaultFont];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  if (v4)
  {
    [v6 setValuesForKeysWithDictionary:v4];
  }

  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v6];

  return v8;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  if ([(_CNAtomTextAttachment *)self isPlaceholder:a3])
  {
    [(_CNAtomTextAttachment *)self bounds];
    v10 = v9;
  }

  else
  {
    [(CNAtomView *)self->_atomView intrinsicContentSize];
    v10 = v11;
  }

  v12 = [(_CNAtomTextAttachment *)self atomView];
  if (([v12 presentationOptions] & 0x4000) != 0)
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