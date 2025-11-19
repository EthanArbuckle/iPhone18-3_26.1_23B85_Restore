@interface SUUIAttributedStringLayoutRequest
- (SUUIAttributedStringLayoutRequest)initWithAttributedString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUIAttributedStringLayoutRequest

- (SUUIAttributedStringLayoutRequest)initWithAttributedString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUUIAttributedStringLayoutRequest;
  v5 = [(SUUIAttributedStringLayoutRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    attributedString = v5->_attributedString;
    v5->_attributedString = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithAttributedString:", self->_attributedString}];
  *(result + 2) = self->_numberOfLines;
  *(result + 24) = self->_wantsBaselineOffset;
  *(result + 4) = *&self->_width;
  return result;
}

@end