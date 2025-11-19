@interface GPMagicPaperState
- (CGRect)frame;
- (GPMagicPaperState)initWithFrame:(CGRect)a3 isEditing:(BOOL)a4;
@end

@implementation GPMagicPaperState

- (GPMagicPaperState)initWithFrame:(CGRect)a3 isEditing:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = GPMagicPaperState;
  v9 = [(GPMagicPaperState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(GPMagicPaperState *)v9 setFrame:x, y, width, height];
    [(GPMagicPaperState *)v10 setIsEditing:v4];
  }

  return v10;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end