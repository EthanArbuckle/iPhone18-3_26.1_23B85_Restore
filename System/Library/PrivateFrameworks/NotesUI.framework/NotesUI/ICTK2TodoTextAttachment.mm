@interface ICTK2TodoTextAttachment
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (CGSize)attachmentSizeForTextContainer:(id)container;
- (ICTK2TodoTextAttachment)initWithTodo:(id)todo;
- (id)viewIdentifier;
@end

@implementation ICTK2TodoTextAttachment

- (ICTK2TodoTextAttachment)initWithTodo:(id)todo
{
  todoCopy = todo;
  v6 = *MEMORY[0x1E69B7460];
  v10.receiver = self;
  v10.super_class = ICTK2TodoTextAttachment;
  v7 = [(ICTextAttachment *)&v10 initWithData:0 ofType:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_todo, todo);
  }

  return v8;
}

- (id)viewIdentifier
{
  todo = [(ICTK2TodoTextAttachment *)self todo];
  uuid = [todo uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (CGSize)attachmentSizeForTextContainer:(id)container
{
  +[ICTodoButton defaultSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  y = position.y;
  height = fragment.size.height;
  width = fragment.size.width;
  v9 = fragment.origin.y;
  x = fragment.origin.x;
  v26.receiver = self;
  v26.super_class = ICTK2TodoTextAttachment;
  [(ICTextAttachment *)&v26 attachmentBoundsForAttributes:attributes location:location textContainer:container proposedLineFragment:fragment.origin.x position:fragment.origin.y, fragment.size.width, fragment.size.height, position.x];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v27.origin.x = x;
  v27.origin.y = v9;
  v27.size.width = width;
  v27.size.height = height;
  v19 = CGRectGetHeight(v27);
  v28.origin.x = v12;
  v28.origin.y = v14;
  v28.size.width = v16;
  v28.size.height = v18;
  v20 = CGRectGetHeight(v28);
  v29.origin.x = v12;
  v29.origin.y = v14;
  v29.size.width = v16;
  v29.size.height = v18;
  v21 = -(v20 - v19 + y - CGRectGetMidY(v29));
  v22 = v12;
  v23 = v16;
  v24 = v18;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v21;
  result.origin.x = v22;
  return result;
}

@end