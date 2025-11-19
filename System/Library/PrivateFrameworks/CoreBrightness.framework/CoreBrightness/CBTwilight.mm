@interface CBTwilight
- (CBTwilight)initWithParams:(id)a3;
@end

@implementation CBTwilight

- (CBTwilight)initWithParams:(id)a3
{
  context = objc_autoreleasePoolPush();
  v6 = [[CBTwilightPolicy alloc] initWithParams:a3];
  v5 = -[CBChromaticCorrection initWithBacklightParams:andPolicy:andRamp:](self, "initWithBacklightParams:andPolicy:andRamp:", a3, v6, -[CBLuxRamp initWithPolicy:andLuxShape:]([CBLuxRamp alloc], "initWithPolicy:andLuxShape:", v6, -[CBBezierCurve initWithAnchors:]([CBBezierCurve alloc], "initWithAnchors:", [a3 rampBezierAnchors])));
  objc_autoreleasePoolPop(context);
  return v5;
}

@end