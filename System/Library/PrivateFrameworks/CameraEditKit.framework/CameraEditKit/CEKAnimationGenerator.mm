@interface CEKAnimationGenerator
- (BOOL)isAnimating;
- (BOOL)isAnimatingForIdentifier:(id)identifier;
- (CEKAnimationGenerator)init;
- (void)_handleDisplayLinkFired:(id)fired;
- (void)_stopAnimationForIdentifier:(id)identifier didComplete:(BOOL)complete;
- (void)_updateAnimationForIdentifer:(id)identifer timestamp:(double)timestamp;
- (void)dealloc;
- (void)startAnimationForIdentifier:(id)identifier duration:(double)duration updateHandler:(id)handler completionHandler:(id)completionHandler;
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

- (void)startAnimationForIdentifier:(id)identifier duration:(double)duration updateHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  identifierCopy = identifier;
  [(CEKAnimationGenerator *)self stopAnimationForIdentifier:identifierCopy];
  v17 = [[CEKAnimationGeneratorAnimation alloc] initWithStartTime:handlerCopy duration:completionHandlerCopy updateHandler:CACurrentMediaTime() completionHandler:duration];

  [(NSMutableDictionary *)self->__animations setObject:v17 forKeyedSubscript:identifierCopy];
  if (!self->__displayLink)
  {
    v13 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__handleDisplayLinkFired_];
    displayLink = self->__displayLink;
    self->__displayLink = v13;

    v15 = self->__displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v15 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    [(CADisplayLink *)self->__displayLink setPaused:0];
  }
}

- (void)_stopAnimationForIdentifier:(id)identifier didComplete:(BOOL)complete
{
  completeCopy = complete;
  animations = self->__animations;
  identifierCopy = identifier;
  v11 = [(NSMutableDictionary *)animations objectForKeyedSubscript:identifierCopy];
  [(NSMutableDictionary *)self->__animations removeObjectForKey:identifierCopy];

  completionHandler = [v11 completionHandler];
  v9 = completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 16))(completionHandler, completeCopy);
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
  allKeys = [(NSMutableDictionary *)self->__animations allKeys];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__CEKAnimationGenerator_stopAllAnimations__block_invoke;
  v4[3] = &unk_1E7CC6E98;
  v4[4] = self;
  [allKeys enumerateObjectsUsingBlock:v4];
}

- (BOOL)isAnimating
{
  _animations = [(CEKAnimationGenerator *)self _animations];
  v3 = [_animations count] != 0;

  return v3;
}

- (BOOL)isAnimatingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _animations = [(CEKAnimationGenerator *)self _animations];
  v6 = [_animations objectForKeyedSubscript:identifierCopy];

  return v6 != 0;
}

- (void)_handleDisplayLinkFired:(id)fired
{
  firedCopy = fired;
  allKeys = [(NSMutableDictionary *)self->__animations allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CEKAnimationGenerator__handleDisplayLinkFired___block_invoke;
  v7[3] = &unk_1E7CC6EC0;
  v7[4] = self;
  v8 = firedCopy;
  v6 = firedCopy;
  [allKeys enumerateObjectsUsingBlock:v7];
}

void __49__CEKAnimationGenerator__handleDisplayLinkFired___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v3 timestamp];
  [v2 _updateAnimationForIdentifer:v4 timestamp:?];
}

- (void)_updateAnimationForIdentifer:(id)identifer timestamp:(double)timestamp
{
  identiferCopy = identifer;
  v7 = [(NSMutableDictionary *)self->__animations objectForKeyedSubscript:identiferCopy];
  [v7 startTime];
  v9 = v8;
  [v7 duration];
  v11 = v10;
  updateHandler = [v7 updateHandler];
  v13 = updateHandler;
  v14 = (timestamp - v9) / v11;
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
  if (updateHandler)
  {
    (*(updateHandler + 16))(updateHandler, &v17, v15);
    v16 = v17;
  }

  else
  {
    v16 = 0;
  }

  if (v15 >= 1.0 || (v16 & 1) != 0)
  {
    [(CEKAnimationGenerator *)self _stopAnimationForIdentifier:identiferCopy didComplete:v15 >= 1.0];
  }
}

@end