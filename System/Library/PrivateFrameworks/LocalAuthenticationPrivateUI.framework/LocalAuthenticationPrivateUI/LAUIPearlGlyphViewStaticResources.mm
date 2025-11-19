@interface LAUIPearlGlyphViewStaticResources
- (id).cxx_construct;
- (id)initWithState:(void *)a1;
@end

@implementation LAUIPearlGlyphViewStaticResources

- (id)initWithState:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = LAUIPearlGlyphViewStaticResources;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    std::optional<LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t>::operator=[abi:ne200100]<LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t const&,void>(v3 + 8, a2);
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 112) = 0;
  return self;
}

@end