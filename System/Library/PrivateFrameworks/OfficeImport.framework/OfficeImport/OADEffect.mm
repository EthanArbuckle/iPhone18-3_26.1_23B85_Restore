@interface OADEffect
- (BOOL)isEqual:(id)equal;
- (OADEffect)initWithType:(int)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation OADEffect

- (OADEffect)initWithType:(int)type
{
  v5.receiver = self;
  v5.super_class = OADEffect;
  result = [(OADEffect *)&v5 init];
  if (result)
  {
    result->mType = type;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADEffect copyWithZone:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADEffect.mm"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:27 isFatal:0 description:"Abstract method not overridden by %@", v6];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "-[OADEffect copyWithZone:]"];
  v12 = [v7 exceptionWithName:*MEMORY[0x277CBE658] reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->mType == equalCopy[2];

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADEffect;
  v2 = [(OADEffect *)&v4 description];

  return v2;
}

@end