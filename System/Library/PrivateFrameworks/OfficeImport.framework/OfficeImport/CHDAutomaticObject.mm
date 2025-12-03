@interface CHDAutomaticObject
+ (id)automaticEffects;
+ (id)automaticFill;
+ (id)automaticStroke;
- (CHDAutomaticObject)initWithName:(id)name;
- (id)description;
@end

@implementation CHDAutomaticObject

+ (id)automaticEffects
{
  if (+[CHDAutomaticObject automaticEffects]::once != -1)
  {
    +[CHDAutomaticObject automaticEffects];
  }

  v3 = +[CHDAutomaticObject automaticEffects]::automaticEffects;

  return v3;
}

+ (id)automaticStroke
{
  if (+[CHDAutomaticObject automaticStroke]::once != -1)
  {
    +[CHDAutomaticObject automaticStroke];
  }

  v3 = +[CHDAutomaticObject automaticStroke]::automaticStroke;

  return v3;
}

+ (id)automaticFill
{
  if (+[CHDAutomaticObject automaticFill]::once != -1)
  {
    +[CHDAutomaticObject automaticFill];
  }

  v3 = +[CHDAutomaticObject automaticFill]::automaticFill;

  return v3;
}

- (CHDAutomaticObject)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = CHDAutomaticObject;
  v6 = [(CHDAutomaticObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mName, name);
  }

  return v7;
}

void __35__CHDAutomaticObject_automaticFill__block_invoke()
{
  v0 = [[CHDAutomaticObject alloc] initWithName:@"autoFill"];
  v1 = +[CHDAutomaticObject automaticFill]::automaticFill;
  +[CHDAutomaticObject automaticFill]::automaticFill = v0;
}

void __37__CHDAutomaticObject_automaticStroke__block_invoke()
{
  v0 = [[CHDAutomaticObject alloc] initWithName:@"autoStroke"];
  v1 = +[CHDAutomaticObject automaticStroke]::automaticStroke;
  +[CHDAutomaticObject automaticStroke]::automaticStroke = v0;
}

void __38__CHDAutomaticObject_automaticEffects__block_invoke()
{
  v0 = [[CHDAutomaticObject alloc] initWithName:@"autoEffects"];
  v1 = +[CHDAutomaticObject automaticEffects]::automaticEffects;
  +[CHDAutomaticObject automaticEffects]::automaticEffects = v0;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDAutomaticObject;
  v2 = [(CHDAutomaticObject *)&v4 description];

  return v2;
}

@end