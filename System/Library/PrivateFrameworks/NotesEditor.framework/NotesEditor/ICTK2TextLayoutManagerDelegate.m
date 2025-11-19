@interface ICTK2TextLayoutManagerDelegate
- (id)textLayoutManager:(id)a3 textLayoutFragmentForLocation:(id)a4 inTextElement:(id)a5;
@end

@implementation ICTK2TextLayoutManagerDelegate

- (id)textLayoutManager:(id)a3 textLayoutFragmentForLocation:(id)a4 inTextElement:(id)a5
{
  v5 = a5;
  v6 = [ICTextLayoutFragment alloc];
  v7 = [v5 elementRange];
  v8 = [(ICTextLayoutFragment *)v6 initWithTextElement:v5 range:v7];

  return v8;
}

@end