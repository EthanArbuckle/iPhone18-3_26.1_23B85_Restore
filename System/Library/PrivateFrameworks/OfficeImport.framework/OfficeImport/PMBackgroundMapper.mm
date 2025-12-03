@interface PMBackgroundMapper
- (CGRect)slideRect;
- (PMBackgroundMapper)initWithOadBackground:(id)background parent:(id)parent;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation PMBackgroundMapper

- (CGRect)slideRect
{
  root = [(CMMapper *)self root];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [root slideSize];
    v4 = v3;
    v6 = v5;
    v7 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v4 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v9 = v7;
  v10 = v8;
  v11 = v4;
  v12 = v6;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (PMBackgroundMapper)initWithOadBackground:(id)background parent:(id)parent
{
  backgroundCopy = background;
  v11.receiver = self;
  v11.super_class = PMBackgroundMapper;
  v8 = [(CMMapper *)&v11 initWithParent:parent];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mBackground, background);
  }

  return v9;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  [(PMBackgroundMapper *)self slideRect];
  if (self->mBackground)
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      fill = [(OADBackground *)self->mBackground fill];
      v16 = objc_alloc_init(CMDrawableStyle);
      v17 = [[CMImageFillMapper alloc] initWithOadFill:fill bounds:self parent:v11, v12, v13, v14];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([fill technique], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, (isKindOfClass))
      {
        v20 = [OIXMLElement elementWithType:9];
        [(CMImageFillMapper *)v17 mapImageFillAt:v20 toStyle:v16 withState:stateCopy];
      }

      else
      {
        v20 = [OIXMLElement elementWithType:3];
        [(CMImageFillMapper *)v17 mapNonImageFillAt:atCopy toStyle:v16 withState:stateCopy];
      }

      [(CMStyle *)v16 appendPositionInfoFromRect:v11, v12, v13, v14];
      [(CMStyle *)v16 appendPropertyForName:0x286EF5C90 stringValue:0x286EFDE70];
      [(CMMapper *)self addStyleUsingGlobalCacheTo:v20 style:v16];
      [atCopy addChild:v20];
    }
  }
}

@end