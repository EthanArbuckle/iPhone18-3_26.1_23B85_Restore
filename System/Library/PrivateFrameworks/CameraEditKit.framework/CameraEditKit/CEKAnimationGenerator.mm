@interface CEKAnimationGenerator
- (BOOL)isAnimating;
- (BOOL)isAnimatingForIdentifier:(id)a3;
- (CEKAnimationGenerator)init;
- (void)_handleDisplayLinkFired:(id)a3;
- (void)_stopAnimationForIdentifier:(id)a3 didComplete:(BOOL)a4;
- (void)_updateAnimationForIdentifer:(id)a3 timestamp:(double)a4;
- (void)dealloc;
- (void)startAnimationForIdentifier:(id)a3 duration:(double)a4 updateHandler:(id)a5 completionHandler:(id)a6;
- (void)stopAllAnimations;
@end

@implementation CEKAnimationGenerator

- (CEKAnimationGenerator)init
{
  v7.receiver = self;
  v7.super_class = CEKAnimationGenerator;
  v2 = [(CEKAnimationGenerator *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    animations = v2->__animations;
    v2->__animations = v3;

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(CADisplayLink *)self->__displayLink setPaused:1];
  [(CADisplayLink *)self->__displayLink invalidate];
  displayLink = self->__displayLink;
  self->__displayLink = 0;

  v4.receiver = self;
  v4.super_class = CEKAnimationGenerator;
  [(CEKAnimationGenerator *)&v4 dealloc];
}

- (void)startAnimationForIdentifier:(id)a3 duration:(double)a4 updateHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  [(CEKAnimationGenerator *)self stopAnimationForIdentifier:v12];
  v17 = [[CEKAnimationGeneratorAnimation alloc] initWithStartTime:v11 duration:v10 updateHandler:CACurrentMediaTime() completionHandler:a4];

  [(NSMutableDictionary *)self->__animations setObject:v17 forKeyedSubscript:v12];
  if (!self->__displayLink)
  {
    v13 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__handleDisplayLinkFired_];
    displayLink = self->__displayLink;
    self->__displayLink = v13;

    v15 = self->__displayLink;
    v16 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v15 addToRunLoop:v16 forMode:*MEMORY[0x1E695DA28]];

    [(CADisplayLink *)self->__displayLink setPaused:0];
  }
}

- (void)_stopAnimationForIdentifier:(id)a3 didComplete:(BOOL)a4
{
  v4 = a4;
  animations = self->__animations;
  v7 = a3;
  v11 = [(NSMutableDictionary *)animations objectForKeyedSubscript:v7];
  [(NSMutableDictionary *)self->__animations removeObjectForKey:v7];

  v8 = [v11 completionHandler];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v4);
  }

  if (self->__displayLink && ![(NSMutableDictionary *)self->__animations count])
  {
    [(CADisplayLink *)self->__displayLink setPaused:1];
    [(CADisplayLink *)self->__displayLink invalidate];
    displayLink = self->__displayLink;
    self->__displayLink = 0;
  }
}

- (void)stopAllAnimations
{
  v3 = [(NSMutableDictionary *)self->__animations allKeys];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__CEKAnimationGenerator_stopAllAnimations__block_invoke;
  v4[3] = &unk_1E7CC6E98;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

- (BOOL)isAnimating
{
  v2 = [(CEKAnimationGenerator *)self _animations];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isAnimatingForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CEKAnimationGenerator *)self _animations];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (void)_handleDisplayLinkFired:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->__animations allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CEKAnimationGenerator__handleDisplayLinkFired___block_invoke;
  v7[3] = &unk_1E7CC6EC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __49__CEKAnimationGenerator__handleDisplayLinkFired___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v3 timestamp];
  [v2 _updateAnimationForIdentifer:v4 timestamp:?];
}

- (void)_updateAnimationForIdentifer:(id)a3 timestamp:(double)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->__animations objectForKeyedSubscript:v6];
  [v7 startTime];
  v9 = v8;
  [v7 duration];
  v11 = v10;
  v12 = [v7 updateHandler];
  v13 = v12;
  v14 = (a4 - v9) / v11;
  v15 = 0.0;
  if (v14 >= 0.0)
  {
    v15 = v14;
    if (v14 > 1.0)
    {
      v15 = 1.0;
    }
  }

  v17 = 0;
  if (v12)
  {
    (*(v12 + 16))(v12, &v17, v15);
    v16 = v17;
  }

  else
  {
    v16 = 0;
  }

  if (v15 >= 1.0 || (v16 & 1) != 0)
  {
    [(CEKAnimationGenerator *)self _stopAnimationForIdentifier:v6 didComplete:v15 >= 1.0];
  }
}

@end