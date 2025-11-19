@interface PMSlideMapper
- (CGRect)slideRect;
- (PMSlideMapper)initWithPDSlide:(id)a3 slideRect:(CGRect)a4 parent:(id)a5;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapBackgroundAt:(id)a3 recursive:(BOOL)a4 withState:(id)a5;
- (void)mapDrawablesAt:(id)a3 withState:(id)a4;
- (void)mapMasterSlideAt:(id)a3 withState:(id)a4;
@end

@implementation PMSlideMapper

- (PMSlideMapper)initWithPDSlide:(id)a3 slideRect:(CGRect)a4 parent:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v16.receiver = self;
  v16.super_class = PMSlideMapper;
  v13 = [(CMMapper *)&v16 initWithParent:a5];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mSlide, a3);
    v14->mRect.origin.x = x;
    v14->mRect.origin.y = y;
    v14->mRect.size.width = width;
    v14->mRect.size.height = height;
  }

  return v14;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v15 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PDSlideChild *)self->mSlide colorMap];
    [v15 setColorMap:v5];

    v6 = [(PDSlideChild *)self->mSlide colorScheme];
    [v15 setColorScheme:v6];
  }

  v7 = [OIXMLElement elementWithType:3];
  v8 = [OIXMLAttribute attributeWithName:@"class" stringValue:@"slide"];
  [v7 addAttribute:v8];

  v9 = objc_alloc_init(CMStyle);
  [(CMStyle *)v9 appendOriginInfoFromPoint:self->mRect.origin.x, self->mRect.origin.y];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v7 style:v9 embedStyle:1];
  [(PMSlideMapper *)self mapMasterSlideAt:v7 withState:v15];
  [(PMSlideMapper *)self mapDrawablesAt:v7 withState:v15];
  v10 = [(CMMapper *)self archiver];
  v11 = [v10 isProgressive];

  if (v11)
  {
    v12 = [(CMMapper *)self archiver];
    [v12 pushCssToPath:0];

    v13 = [(CMMapper *)self archiver];
    v14 = [v7 XMLString];
    [v13 pushText:v14 toPath:0];
  }
}

- (CGRect)slideRect
{
  x = self->mRect.origin.x;
  y = self->mRect.origin.y;
  width = self->mRect.size.width;
  height = self->mRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)mapMasterSlideAt:(id)a3 withState:(id)a4
{
  v11 = a3;
  v6 = a4;
  [(PMSlideMapper *)self mapBackgroundAt:v11 recursive:1 withState:v6];
  if ([(PDSlideChild *)self->mSlide showMasterShapes])
  {
    v7 = [(PDSlide *)self->mSlide slideLayout];
    if ([v7 showMasterShapes])
    {
      v8 = [v7 slideMaster];
      if (v8)
      {
        v9 = [[PMMasterSlideMapper alloc] initWithPDSlide:v8 parent:self];
        [(PMMasterSlideMapper *)v9 mapMasterGraphicsAt:v11 withState:v6];
      }

      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
      if (!v7)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    v10 = [[PMMasterSlideMapper alloc] initWithPDSlide:v7 parent:self];
    [(PMMasterSlideMapper *)v10 mapMasterGraphicsAt:v11 withState:v6];

    goto LABEL_9;
  }

LABEL_10:
}

- (void)mapBackgroundAt:(id)a3 recursive:(BOOL)a4 withState:(id)a5
{
  v6 = a4;
  v14 = a3;
  v8 = a5;
  v9 = [(PDSlide *)self->mSlide background];
  v10 = self->mSlide;
  if (v6)
  {
    if (!v9)
    {
      goto LABEL_5;
    }

    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1 | (v10 == 0))
      {
        break;
      }

      while (1)
      {
        v11 = [(PDSlide *)v10 parentSlideBase];

        v12 = [(PDSlide *)v11 background];

        v10 = v11;
        v9 = v12;
        if (v12)
        {
          break;
        }

LABEL_5:
        if (!v10)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }
    }
  }

  else if (!v9)
  {
    goto LABEL_11;
  }

  v13 = [[PMBackgroundMapper alloc] initWithOadBackground:v9 parent:self];
  [(PMBackgroundMapper *)v13 mapAt:v14 withState:v8];

LABEL_11:
}

- (void)mapDrawablesAt:(id)a3 withState:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(PDSlideBase *)self->mSlide drawables];
  v8 = [v7 objectEnumerator];
  while (1)
  {
    v9 = [v8 nextObject];
    if (!v9)
    {
      break;
    }

    v10 = [(CMDrawableMapper *)[PMDrawableMapper alloc] initWithOadDrawable:v9 parent:self];
    [(PMDrawableMapper *)v10 mapAt:v11 withState:v6];
  }
}

@end