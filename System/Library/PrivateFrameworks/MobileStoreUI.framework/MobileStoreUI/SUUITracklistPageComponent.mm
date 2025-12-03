@interface SUUITracklistPageComponent
- (SUUITracklistPageComponent)initWithViewElement:(id)element;
@end

@implementation SUUITracklistPageComponent

- (SUUITracklistPageComponent)initWithViewElement:(id)element
{
  v4.receiver = self;
  v4.super_class = SUUITracklistPageComponent;
  return [(SUUIPageComponent *)&v4 initWithViewElement:element];
}

@end