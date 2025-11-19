@interface WFWebViewLink
- (CGRect)rect;
- (WFWebViewLink)initWithHref:(id)a3 rect:(CGRect)a4;
@end

@implementation WFWebViewLink

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (WFWebViewLink)initWithHref:(id)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v15.receiver = self;
  v15.super_class = WFWebViewLink;
  v11 = [(WFWebViewLink *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_href, a3);
    v12->_rect.origin.x = x;
    v12->_rect.origin.y = y;
    v12->_rect.size.width = width;
    v12->_rect.size.height = height;
    v13 = v12;
  }

  return v12;
}

@end