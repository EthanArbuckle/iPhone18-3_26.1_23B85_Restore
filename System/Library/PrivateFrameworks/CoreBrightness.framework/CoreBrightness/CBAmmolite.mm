@interface CBAmmolite
- (CBAmmolite)initWithParams:(id)params;
@end

@implementation CBAmmolite

- (CBAmmolite)initWithParams:(id)params
{
  context = objc_autoreleasePoolPush();
  v6 = [[CBAmmolitePolicy alloc] initWithParams:params];
  v5 = -[CBChromaticCorrection initWithBacklightParams:andPolicy:andRamp:](self, "initWithBacklightParams:andPolicy:andRamp:", params, v6, -[CBLuxRamp initWithPolicy:andLuxShape:]([CBLuxRamp alloc], "initWithPolicy:andLuxShape:", v6, -[CBBezierCurve initWithAnchors:]([CBBezierCurve alloc], "initWithAnchors:", [params rampBezierAnchors])));
  objc_autoreleasePoolPop(context);
  return v5;
}

@end