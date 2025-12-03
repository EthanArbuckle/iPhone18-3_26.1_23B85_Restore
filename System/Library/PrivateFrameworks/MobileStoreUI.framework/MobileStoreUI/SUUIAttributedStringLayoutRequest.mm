@interface SUUIAttributedStringLayoutRequest
- (SUUIAttributedStringLayoutRequest)initWithAttributedString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUUIAttributedStringLayoutRequest

- (SUUIAttributedStringLayoutRequest)initWithAttributedString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = SUUIAttributedStringLayoutRequest;
  v5 = [(SUUIAttributedStringLayoutRequest *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    attributedString = v5->_attributedString;
    v5->_attributedString = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithAttributedString:", self->_attributedString}];
  *(result + 2) = self->_numberOfLines;
  *(result + 24) = self->_wantsBaselineOffset;
  *(result + 4) = *&self->_width;
  return result;
}

@end