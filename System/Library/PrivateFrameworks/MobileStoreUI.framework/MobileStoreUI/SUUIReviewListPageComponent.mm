@interface SUUIReviewListPageComponent
- (SUUIReviewListPageComponent)initWithViewElement:(id)element;
@end

@implementation SUUIReviewListPageComponent

- (SUUIReviewListPageComponent)initWithViewElement:(id)element
{
  v4.receiver = self;
  v4.super_class = SUUIReviewListPageComponent;
  return [(SUUIPageComponent *)&v4 initWithViewElement:element];
}

@end