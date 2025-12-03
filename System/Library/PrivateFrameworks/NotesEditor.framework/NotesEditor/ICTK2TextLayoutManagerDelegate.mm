@interface ICTK2TextLayoutManagerDelegate
- (id)textLayoutManager:(id)manager textLayoutFragmentForLocation:(id)location inTextElement:(id)element;
@end

@implementation ICTK2TextLayoutManagerDelegate

- (id)textLayoutManager:(id)manager textLayoutFragmentForLocation:(id)location inTextElement:(id)element
{
  elementCopy = element;
  v6 = [ICTextLayoutFragment alloc];
  elementRange = [elementCopy elementRange];
  v8 = [(ICTextLayoutFragment *)v6 initWithTextElement:elementCopy range:elementRange];

  return v8;
}

@end