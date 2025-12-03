@interface LAUICheckmarkLayer
- (CGSize)aspectSize;
- (CGSize)defaultSizeForCircleWithDiameter:(double)diameter scale:(double)scale;
- (LAUICheckmarkLayer)init;
- (id).cxx_construct;
- (void)_animationsDidResolve;
- (void)_executeCompletions:(BOOL)completions;
- (void)_updateRevealedAnimated:(BOOL)animated;
- (void)dealloc;
- (void)layoutSublayers;
- (void)setColor:(CGColor *)color animated:(BOOL)animated;
- (void)setLineWidthScale:(double)scale;
- (void)setPrimaryColor:(id)color animated:(BOOL)animated;
- (void)setRevealed:(BOOL)revealed animated:(BOOL)animated withCompletion:(id)completion;
@end

@implementation LAUICheckmarkLayer

- (LAUICheckmarkLayer)init
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = MEMORY[0x277CD9F28];
  v6 = [v4 URLForResource:@"checkmark" withExtension:@"caml"];
  v7 = [v5 packageWithContentsOfURL:v6 type:*MEMORY[0x277CDA800] options:0 error:0];

  rootLayer = [v7 rootLayer];
  null = [MEMORY[0x277CBEB68] null];
  *&b.m11 = @"position";
  *&b.m12 = @"bounds";
  *&a.m11 = null;
  *&a.m12 = null;
  *&b.m13 = @"transform";
  *&b.m14 = @"backgroundColor";
  *&a.m13 = null;
  *&a.m14 = null;
  *&b.m21 = @"cornerRadius";
  *&b.m22 = @"contents";
  *&a.m21 = null;
  *&a.m22 = null;
  *&b.m23 = @"anchorPoint";
  *&b.m24 = @"opacity";
  *&a.m23 = null;
  *&a.m24 = null;
  *&b.m31 = @"strokeStart";
  *&b.m32 = @"strokeEnd";
  *&a.m31 = null;
  *&a.m32 = null;
  *&b.m33 = @"strokeColor";
  *&b.m34 = @"fillColor";
  *&a.m33 = null;
  *&a.m34 = null;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a forKeys:&b count:12];

  [rootLayer setActions:v10];
  [rootLayer setAnchorPoint:{0.5, 0.5}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = rootLayer;
  }

  else
  {
    v12 = 0;
  }
  v13 = ;

  objc_autoreleasePoolPop(v3);
  if (v13)
  {
    v25.receiver = self;
    v25.super_class = LAUICheckmarkLayer;
    v14 = [(LAUICheckmarkLayer *)&v25 init];
    v15 = v14;
    v16 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_shape_layer, v13);
      shape_layer = v15->_shape_layer;
      if (shape_layer)
      {
        [(CAShapeLayer *)shape_layer transform];
      }

      else
      {
        memset(&a, 0, sizeof(a));
      }

      v19 = *(MEMORY[0x277CD9DE8] + 80);
      *&b.m31 = *(MEMORY[0x277CD9DE8] + 64);
      *&b.m33 = v19;
      v20 = *(MEMORY[0x277CD9DE8] + 112);
      *&b.m41 = *(MEMORY[0x277CD9DE8] + 96);
      *&b.m43 = v20;
      v21 = *(MEMORY[0x277CD9DE8] + 16);
      *&b.m11 = *MEMORY[0x277CD9DE8];
      *&b.m13 = v21;
      v22 = *(MEMORY[0x277CD9DE8] + 48);
      *&b.m21 = *(MEMORY[0x277CD9DE8] + 32);
      *&b.m23 = v22;
      if (!CATransform3DEqualToTransform(&a, &b))
      {
        __assert_rtn("[LAUICheckmarkLayer init]", "LAUICheckmarkLayer.mm", 119, "CATransform3DEqualToTransform([_shape_layer transform], CATransform3DIdentity)");
      }

      [(CAShapeLayer *)v15->_shape_layer bounds];
      v16->_line_width = v23 * 0.144021524;
      v16->_effective_line_width = v23 * 0.144021524;
      v16->_line_width_scale = 1.0;
      [(CAShapeLayer *)v15->_shape_layer setLineWidth:v16->_line_width];
      if (v15->_shape_layer)
      {
        [(LAUICheckmarkLayer *)v16 addSublayer:?];
        [(LAUICheckmarkLayer *)v16 _updateRevealedAnimated:0];
      }
    }

    self = v16;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  LAUI_CA_utilities::animation_completion_handler_container::execute(&self->_completions, 0);
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = LAUICheckmarkLayer;
  [(LAUICheckmarkLayer *)&v3 dealloc];
}

- (void)layoutSublayers
{
  v40.receiver = self;
  v40.super_class = LAUICheckmarkLayer;
  [(LAUICheckmarkLayer *)&v40 layoutSublayers];
  [(CAShapeLayer *)self->_shape_layer bounds];
  v4 = v3;
  v5 = self->_effective_line_width * 0.5;
  v6 = v5 + v3 + v5;
  v35 = v7;
  v8 = v5 + v7 + v5;
  [(LAUICheckmarkLayer *)self bounds];
  v33 = v10;
  v34 = v11;
  v13 = v12;
  v14 = v9;
  v15 = v12 / v6;
  v16 = 1.0;
  if (v6 == 0.0)
  {
    v15 = 1.0;
  }

  if (v8 != 0.0)
  {
    v16 = v9 / v8;
  }

  if (v16 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = 0uLL;
  memset(&v39, 0, sizeof(v39));
  shape_layer = self->_shape_layer;
  if (shape_layer)
  {
    [(CAShapeLayer *)shape_layer transform];
    v18 = 0uLL;
  }

  *&v38.m41 = v18;
  *&v38.m43 = v18;
  *&v38.m31 = v18;
  *&v38.m33 = v18;
  *&v38.m21 = v18;
  *&v38.m23 = v18;
  *&v38.m11 = v18;
  *&v38.m13 = v18;
  CATransform3DMakeScale(&v38, v17, v17, 1.0);
  a = v39;
  b = v38;
  if (!CATransform3DEqualToTransform(&a, &b))
  {
    v20 = self->_shape_layer;
    a = v38;
    [(CAShapeLayer *)v20 setTransform:&a];
  }

  v21 = v6 * v17;
  v22 = v8 * v17;
  [(LAUICheckmarkLayer *)self contentsScale];
  v24 = v33 + (v13 - v21) * 0.5;
  if (v23 == 0.0)
  {
    v25 = round(v24);
    v26 = round(v34 + (v14 - v22) * 0.5);
  }

  else
  {
    v25 = round(v24 * v23) / v23;
    v26 = round((v34 + (v14 - v22) * 0.5) * v23) / v23;
  }

  v27 = v25 + v17 * v5;
  v28 = v26 + v17 * v5;
  v29 = v4 * v17;
  v30 = self->_shape_layer;
  v31 = v35 * v17;
  v41.origin.x = v27;
  v41.origin.y = v28;
  v41.size.width = v29;
  v41.size.height = v35 * v17;
  MidX = CGRectGetMidX(v41);
  v42.origin.x = v27;
  v42.origin.y = v28;
  v42.size.width = v29;
  v42.size.height = v31;
  [(CAShapeLayer *)v30 setPosition:MidX, CGRectGetMidY(v42)];
}

- (void)setLineWidthScale:(double)scale
{
  if (self->_line_width_scale != scale)
  {
    v8 = v3;
    self->_line_width_scale = scale;
    if (scale < 0.0)
    {
      scale = 0.0;
    }

    self->_effective_line_width = scale * self->_line_width;
    [(CAShapeLayer *)self->_shape_layer setLineWidth:v4, v8, v5];

    [(LAUICheckmarkLayer *)self setNeedsLayout];
  }
}

- (void)setPrimaryColor:(id)color animated:(BOOL)animated
{
  animatedCopy = animated;
  colorCopy = color;
  primary_color = self->_primary_color;
  v10 = colorCopy;
  if (primary_color != colorCopy && (!colorCopy || !primary_color || ([(UIColor *)primary_color isEqual:colorCopy]& 1) == 0))
  {
    v8 = [(UIColor *)v10 copy];
    v9 = self->_primary_color;
    self->_primary_color = v8;

    [(LAUICheckmarkLayer *)self setColor:[(UIColor *)self->_primary_color CGColor] animated:animatedCopy];
  }
}

- (void)setColor:(CGColor *)color animated:(BOOL)animated
{
  color = self->_color;
  if (color != color)
  {
    animatedCopy = animated;
    if (color && color)
    {
      if (CGColorEqualToColor(color, color))
      {
        return;
      }

      color = self->_color;
    }

    CGColorRelease(color);
    v8 = CGColorRetain(color);
    self->_color = v8;
    if (animatedCopy)
    {
      [(CAShapeLayer *)self->_shape_layer removeAnimationForKey:@"strokeColor"];
      v9 = objc_alloc(MEMORY[0x277CD9EF8]);
      LODWORD(v10) = 1043928040;
      LODWORD(v11) = 1058272560;
      LODWORD(v12) = 1063980840;
      v13 = [v9 initWithControlPoints:v10 :0.0 :v11 :v12];
      LAUI_CA_utilities::spring_factory::spring_factory(v19, 2.0, 300.0, 400.0, 0.0, v13);

      presentationLayer = [(CAShapeLayer *)self->_shape_layer presentationLayer];
      shape_layer = presentationLayer;
      if (!presentationLayer)
      {
        shape_layer = self->_shape_layer;
      }

      v16 = shape_layer;

      strokeColor = [(CAShapeLayer *)v16 strokeColor];
      animation = LAUI_CA_utilities::spring_factory::create_animation(v19, &cfstr_Strokecolor.isa);
      [animation setAdditive:0];
      [animation setFromValue:strokeColor];
      [animation setToValue:self->_color];
      [(CAShapeLayer *)self->_shape_layer addAnimation:animation forKey:@"strokeColor"];

      v8 = self->_color;
    }

    [(CAShapeLayer *)self->_shape_layer setStrokeColor:v8];
  }
}

- (void)setRevealed:(BOOL)revealed animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  revealedCopy = revealed;
  completionCopy = completion;
  v18 = completionCopy;
  if (self->_revealed == revealedCopy)
  {
    v9 = completionCopy;
    if (completionCopy)
    {
      if (self->_animating)
      {
        p_completions = &self->_completions;
        end = p_completions->__end_;
        if (end >= p_completions->__cap_)
        {
          v12 = std::vector<LAUI_CA_utilities::animation_completion_handler_container>::__emplace_back_slow_path<void({block_pointer} {__strong}&)(BOOL)>(p_completions, &v18);
        }

        else
        {
          v12 = (LAUI_CA_utilities::animation_completion_handler_container::animation_completion_handler_container(end, v9) + 1);
        }

        p_completions->__end_ = v12;
      }

      else
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3321888768;
        v16[2] = __58__LAUICheckmarkLayer_setRevealed_animated_withCompletion___block_invoke;
        v16[3] = &__block_descriptor_40_ea8_32c71_ZTSKZ58__LAUICheckmarkLayer_setRevealed_animated_withCompletion__E3__0_e5_v8__0l;
        v15 = MEMORY[0x259C5AE60](completionCopy);
        v17 = MEMORY[0x259C5AE60]();
        dispatch_async(MEMORY[0x277D85CD0], v16);
      }
    }
  }

  else
  {
    [(LAUICheckmarkLayer *)self _executeCompletions:0];
    self->_revealed = revealedCopy;
    if (v18)
    {
      v13 = self->_completions.__end_;
      if (v13 >= self->_completions.__cap_)
      {
        v14 = std::vector<LAUI_CA_utilities::animation_completion_handler_container>::__emplace_back_slow_path<void({block_pointer} {__strong}&)(BOOL)>(&self->_completions, &v18);
      }

      else
      {
        v14 = (LAUI_CA_utilities::animation_completion_handler_container::animation_completion_handler_container(v13, v18) + 1);
      }

      self->_completions.__end_ = v14;
    }

    [(LAUICheckmarkLayer *)self _updateRevealedAnimated:animatedCopy];
  }
}

- (CGSize)aspectSize
{
  [(CAShapeLayer *)self->_shape_layer bounds];
  v4 = 1.0;
  if (v2 >= 1.0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 1.0;
  }

  if (v3 >= 1.0)
  {
    v4 = v3;
  }

  result.height = v4;
  result.width = v5;
  return result;
}

- (CGSize)defaultSizeForCircleWithDiameter:(double)diameter scale:(double)scale
{
  [(LAUICheckmarkLayer *)self aspectSize];
  v8 = v7;
  v9 = diameter * 0.434065934;
  if (scale == 0.0)
  {
    v10 = round(v9);
    v11 = round(v6 * (v10 / v8));
  }

  else
  {
    v10 = round(v9 * scale) / scale;
    v11 = round(v6 * (v10 / v8) * scale) / scale;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_updateRevealedAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = 1.0;
  if (!self->_revealed)
  {
    [(CAShapeLayer *)self->_shape_layer strokeStart];
    v5 = v6;
  }

  animating = self->_animating;
  self->_animating = animatedCopy;
  v8 = self->_animation_index + 1;
  self->_animation_index = v8;
  if (animatedCopy)
  {
    v9 = objc_alloc(MEMORY[0x277CD9EF8]);
    LODWORD(v10) = 1043928040;
    LODWORD(v11) = 1058272560;
    LODWORD(v12) = 1063980840;
    v13 = [v9 initWithControlPoints:v10 :0.0 :v11 :v12];
    LAUI_CA_utilities::spring_factory::spring_factory(v43, 2.0, 300.0, 400.0, 0.0, v13);

    if (self->_revealed)
    {
      if (animating)
      {
        p_transient_shape_layers = &self->_transient_shape_layers;
        var0 = self->_transient_shape_layers.var0;
        var1 = self->_transient_shape_layers.var1;
        if (var0 >= var1)
        {
          v28 = var0 - p_transient_shape_layers->__begin_;
          if ((v28 + 1) >> 61)
          {
            std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
          }

          v29 = var1 - p_transient_shape_layers->__begin_;
          v30 = v29 >> 2;
          if (v29 >> 2 <= (v28 + 1))
          {
            v30 = v28 + 1;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF8)
          {
            v31 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = v30;
          }

          v49 = &self->_transient_shape_layers;
          if (v31)
          {
            std::allocator<UIView * {__strong}>::allocate_at_least[abi:ne200100](&self->_transient_shape_layers, v31);
          }

          to = 0;
          v46 = 8 * v28;
          v48 = 0;
          *(8 * v28) = self->_shape_layer;
          v47 = 8 * v28 + 8;
          std::vector<UIView * {__strong}>::__swap_out_circular_buffer(&self->_transient_shape_layers, &to);
          v19 = self->_transient_shape_layers.var0;
          std::__split_buffer<UIView * {__strong}>::~__split_buffer(&to);
        }

        else
        {
          *var0 = self->_shape_layer;
          v19 = var0 + 1;
        }

        v32 = self->_transient_shape_layers.var0 = v19;
        shape_layer = self->_shape_layer;
        self->_shape_layer = v32;

        if (self->_shape_layer)
        {
          [(LAUICheckmarkLayer *)self addSublayer:?];
        }
      }

      LODWORD(v14) = 1.0;
      [(CAShapeLayer *)self->_shape_layer setOpacity:v14];
      animation = LAUI_CA_utilities::spring_factory::create_animation(v43, &cfstr_Strokeend.isa);
      [(CAShapeLayer *)self->_shape_layer strokeStart];
      v36 = v35;
      v24 = animation;
      v37 = [MEMORY[0x277CCABB0] numberWithDouble:v36 - v5];
      [(CAAnimation *)v24 setFromValue:v37];

      [(CAAnimation *)v24 setToValue:&unk_28682FCA8];
      [(CAShapeLayer *)self->_shape_layer setStrokeEnd:v5];
      v27 = @"strokeEnd";
      if (!v24)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v21 = LAUI_CA_utilities::spring_factory::create_animation(v43, &cfstr_Opacity.isa);
      [(CAShapeLayer *)self->_shape_layer opacity];
      v23 = v22;
      v24 = v21;
      LODWORD(v25) = v23;
      v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
      [(CAAnimation *)v24 setFromValue:v26];

      [(CAAnimation *)v24 setToValue:&unk_28682FCA8];
      [(CAShapeLayer *)self->_shape_layer setOpacity:0.0];
      v27 = @"opacity";
      if (!v24)
      {
        goto LABEL_27;
      }
    }

    if (self->_shape_layer)
    {
      objc_initWeak(&location, self);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3321888768;
      v39[2] = __46__LAUICheckmarkLayer__updateRevealedAnimated___block_invoke;
      v39[3] = &__block_descriptor_48_ea8_32c59_ZTSKZ46__LAUICheckmarkLayer__updateRevealedAnimated__E3__1_e8_v12__0B8l;
      objc_copyWeak(&to, &location);
      LODWORD(v46) = v8;
      objc_copyWeak(&v40, &to);
      v41 = v46;
      [(CAAnimation *)v24 laui_setDidStopHandler:v39];
      objc_destroyWeak(&to);
      v38 = LAUILayerAddAdditiveAnimation(&self->_shape_layer->super, &v27->isa, v24);
      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
LABEL_28:

      return;
    }

LABEL_27:
    self->_animating = 0;
    [(LAUICheckmarkLayer *)self _executeCompletions:1];
    [(LAUICheckmarkLayer *)self _animationsDidResolve];
    goto LABEL_28;
  }

  [(CAShapeLayer *)self->_shape_layer setStrokeEnd:v5];
  LODWORD(v20) = 1.0;
  [(CAShapeLayer *)self->_shape_layer setOpacity:v20];
  [(CAShapeLayer *)self->_shape_layer removeAllAnimations];
  [(LAUICheckmarkLayer *)self _executeCompletions:1];

  [(LAUICheckmarkLayer *)self _animationsDidResolve];
}

void __46__LAUICheckmarkLayer__updateRevealedAnimated___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 21) == *(a1 + 40))
  {
    WeakRetained[80] = 0;
    [WeakRetained _executeCompletions:a2];
    [WeakRetained _animationsDidResolve];
  }
}

- (void)_executeCompletions:(BOOL)completions
{
  LAUI_CA_utilities::animation_completion_handler_container::execute(&self->_completions, completions);
  std::vector<LAUI_CA_utilities::animation_completion_handler_container>::__base_destruct_at_end[abi:ne200100](&self->_completions, self->_completions.__begin_);

  std::vector<LAUI_CA_utilities::animation_completion_handler_container>::shrink_to_fit(&self->_completions);
}

- (void)_animationsDidResolve
{
  p_transient_shape_layers = &self->_transient_shape_layers;
  begin = self->_transient_shape_layers.__begin_;
  var0 = self->_transient_shape_layers.var0;
  if (var0 != begin)
  {
    do
    {
      v7 = *begin++;
      [v7 removeFromSuperlayer];
    }

    while (begin != var0);
    v8 = *p_transient_shape_layers;
    for (i = p_transient_shape_layers[1]; i != v8; i -= 8)
    {
      v10 = *(i - 8);
    }

    p_transient_shape_layers[1] = v8;
    std::vector<CAShapeLayer * {__strong}>::shrink_to_fit(p_transient_shape_layers);
  }

  if (!self->_revealed)
  {
    LODWORD(v2) = 1.0;
    [(CAShapeLayer *)self->_shape_layer setOpacity:v2];
    shape_layer = self->_shape_layer;
    [(CAShapeLayer *)shape_layer strokeStart];

    [(CAShapeLayer *)shape_layer setStrokeEnd:?];
  }
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  return self;
}

@end