@interface ICAttributionViewHighlightConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToICAttributionViewHighlightConfiguration:(id)configuration;
- (CGRect)adjustedFrame;
- (CGRect)frame;
- (ICAttributionViewHighlightConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation ICAttributionViewHighlightConfiguration

- (ICAttributionViewHighlightConfiguration)init
{
  v3.receiver = self;
  v3.super_class = ICAttributionViewHighlightConfiguration;
  result = [(ICAttributionViewHighlightConfiguration *)&v3 init];
  if (result)
  {
    result->_alpha = 1.0;
  }

  return result;
}

- (BOOL)isEqualToICAttributionViewHighlightConfiguration:(id)configuration
{
  configurationCopy = configuration;
  identifier = [(ICAttributionViewHighlightConfiguration *)self identifier];
  identifier2 = [configurationCopy identifier];
  if ([identifier isEqualToString:identifier2] && (-[ICAttributionViewHighlightConfiguration frame](self, "frame"), v8 = v7, v10 = v9, v12 = v11, v14 = v13, objc_msgSend(configurationCopy, "frame"), v24.origin.x = v15, v24.origin.y = v16, v24.size.width = v17, v24.size.height = v18, v23.origin.x = v8, v23.origin.y = v10, v23.size.width = v12, v23.size.height = v14, CGRectEqualToRect(v23, v24)))
  {
    color = [(ICAttributionViewHighlightConfiguration *)self color];
    color2 = [configurationCopy color];
    v21 = [color isEqual:color2];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICAttributionViewHighlightConfiguration *)self isEqualToICAttributionViewHighlightConfiguration:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  identifier = [(ICAttributionViewHighlightConfiguration *)self identifier];
  v4 = [identifier hash];
  color = [(ICAttributionViewHighlightConfiguration *)self color];
  v6 = [color hash];
  v14 = ICHashWithHashKeys(v4, v7, v8, v9, v10, v11, v12, v13, v6);

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICAttributionViewHighlightConfiguration allocWithZone:?]];
  identifier = [(ICAttributionViewHighlightConfiguration *)self identifier];
  [(ICAttributionViewHighlightConfiguration *)v4 setIdentifier:identifier];

  [(ICAttributionViewHighlightConfiguration *)self frame];
  [(ICAttributionViewHighlightConfiguration *)v4 setFrame:?];
  [(ICAttributionViewHighlightConfiguration *)self frame];
  [(ICAttributionViewHighlightConfiguration *)v4 setAdjustedFrame:?];
  [(ICAttributionViewHighlightConfiguration *)self alpha];
  [(ICAttributionViewHighlightConfiguration *)v4 setAlpha:?];
  color = [(ICAttributionViewHighlightConfiguration *)self color];
  [(ICAttributionViewHighlightConfiguration *)v4 setColor:color];

  return v4;
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

- (CGRect)adjustedFrame
{
  x = self->_adjustedFrame.origin.x;
  y = self->_adjustedFrame.origin.y;
  width = self->_adjustedFrame.size.width;
  height = self->_adjustedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end