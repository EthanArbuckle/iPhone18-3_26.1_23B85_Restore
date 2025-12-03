@interface OADShapeGeometry
- (BOOL)hasAdjustValueAtIndex:(unsigned int)index;
- (OADShapeGeometry)init;
- (id)description;
- (id)equivalentCustomGeometry;
- (int)adjustValueAtIndex:(unsigned int)index;
- (int)type;
- (void)setAdjustValue:(int)value atIndex:(unsigned int)index;
@end

@implementation OADShapeGeometry

- (OADShapeGeometry)init
{
  v6.receiver = self;
  v6.super_class = OADShapeGeometry;
  v2 = [(OADShapeGeometry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mAdjustValues = v2->mAdjustValues;
    v2->mAdjustValues = v3;
  }

  return v2;
}

- (int)type
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADShapeGeometry type]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADShapeGeometry.mm"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:23 isFatal:0 description:"Abstract method not overridden by %@", v5];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"Abstract method not overridden by %@: %s", v9, "-[OADShapeGeometry type]"];
  v11 = [v6 exceptionWithName:*MEMORY[0x277CBE658] reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (id)equivalentCustomGeometry
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADShapeGeometry equivalentCustomGeometry]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADShapeGeometry.mm"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:28 isFatal:0 description:"Abstract method not overridden by %@", v5];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"Abstract method not overridden by %@: %s", v9, "-[OADShapeGeometry equivalentCustomGeometry]"];
  v11 = [v6 exceptionWithName:*MEMORY[0x277CBE658] reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)setAdjustValue:(int)value atIndex:(unsigned int)index
{
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*&index];
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:value];
  [(NSMutableDictionary *)self->mAdjustValues setObject:v6 forKey:v7];
}

- (int)adjustValueAtIndex:(unsigned int)index
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*&index];
  v5 = [(NSMutableDictionary *)self->mAdjustValues objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    longValue = [v5 longValue];
  }

  else
  {
    longValue = 0;
  }

  return longValue;
}

- (BOOL)hasAdjustValueAtIndex:(unsigned int)index
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*&index];
  v5 = [(NSMutableDictionary *)self->mAdjustValues objectForKey:v4];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADShapeGeometry;
  v2 = [(OADShapeGeometry *)&v4 description];

  return v2;
}

@end