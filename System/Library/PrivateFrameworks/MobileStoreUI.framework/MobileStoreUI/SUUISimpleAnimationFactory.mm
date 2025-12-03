@interface SUUISimpleAnimationFactory
+ (id)backOutTimingFunction;
+ (id)easeQuadInOutTimingFunction;
+ (id)easeQuadInTimingFunction;
+ (id)easeQuadOutTimingFunction;
+ (id)factoryWithTimingFunction:(id)function;
@end

@implementation SUUISimpleAnimationFactory

+ (id)backOutTimingFunction
{
  LODWORD(v2) = 1047233823;
  LODWORD(v3) = 1068457001;
  return [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :0.0 :v2 :v3];
}

+ (id)easeQuadInTimingFunction
{
  LODWORD(v2) = 1054615798;
  LODWORD(v3) = 1062333317;
  LODWORD(v4) = 1058642330;
  return [MEMORY[0x277CD9EF8] functionWithControlPoints:v2 :0.0 :v3 :v4];
}

+ (id)easeQuadInOutTimingFunction
{
  LODWORD(v2) = 1054615798;
  LODWORD(v3) = 1058139013;
  LODWORD(v4) = 1.0;
  return [MEMORY[0x277CD9EF8] functionWithControlPoints:v2 :0.0 :v3 :v4];
}

+ (id)easeQuadOutTimingFunction
{
  LODWORD(v2) = 1043878380;
  LODWORD(v3) = 1053609165;
  LODWORD(v4) = 1058139013;
  LODWORD(v5) = 1.0;
  return [MEMORY[0x277CD9EF8] functionWithControlPoints:v2 :v3 :v4 :v5];
}

+ (id)factoryWithTimingFunction:(id)function
{
  functionCopy = function;
  v5 = objc_alloc_init(self);
  v6 = v5[1];
  v5[1] = functionCopy;

  return v5;
}

@end