@interface BRLTBrailleMusicParser
+ (id)sharedParser;
- (BRLTBrailleMusicParser)initWithUnderlyingObject:(id)a3;
@end

@implementation BRLTBrailleMusicParser

- (BRLTBrailleMusicParser)initWithUnderlyingObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRLTBrailleMusicParser;
  v6 = [(BRLTBrailleMusicParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingObject, a3);
  }

  return v7;
}

+ (id)sharedParser
{
  v2 = [BRLTBrailleMusicParser alloc];
  v3 = +[BRLTBrailleMusicParserInternal shared];
  v4 = [(BRLTBrailleMusicParser *)v2 initWithUnderlyingObject:v3];

  return v4;
}

@end