@interface CUIPSDLayerEffects
- (CUIPSDLayerEffects)init;
- (void)addLayerEffectComponent:(id)a3;
- (void)dealloc;
@end

@implementation CUIPSDLayerEffects

- (CUIPSDLayerEffects)init
{
  v4.receiver = self;
  v4.super_class = CUIPSDLayerEffects;
  v2 = [(CUIPSDLayerEffects *)&v4 init];
  v2->_effectList = [[NSMutableDictionary alloc] initWithCapacity:4];
  return v2;
}

- (void)addLayerEffectComponent:(id)a3
{
  v5 = [a3 effectType];
  effectList = self->_effectList;
  v7 = [NSNumber numberWithUnsignedInt:v5];

  [(NSMutableDictionary *)effectList setObject:a3 forKey:v7];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEffects;
  [(CUIPSDLayerEffects *)&v3 dealloc];
}

@end