@interface SUUITextLayoutRequest
- (SUUITextLayoutRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUITextLayoutRequest

- (SUUITextLayoutRequest)init
{
  v3.receiver = self;
  v3.super_class = SUUITextLayoutRequest;
  result = [(SUUITextLayoutRequest *)&v3 init];
  if (result)
  {
    result->_fontSize = 12.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSAttributedString *)self->_attributedText copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 24) = self->_fontWeight;
  *(v5 + 16) = self->_fontSize;
  *(v5 + 32) = self->_numberOfLines;
  v8 = [(NSString *)self->_text copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  *(v5 + 48) = self->_textAlignment;
  *(v5 + 56) = self->_width;
  return v5;
}

@end