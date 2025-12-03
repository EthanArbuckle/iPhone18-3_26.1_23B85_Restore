@interface PMSlideMapper
- (CGRect)slideRect;
- (PMSlideMapper)initWithPDSlide:(id)slide slideRect:(CGRect)rect parent:(id)parent;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapBackgroundAt:(id)at recursive:(BOOL)recursive withState:(id)state;
- (void)mapDrawablesAt:(id)at withState:(id)state;
- (void)mapMasterSlideAt:(id)at withState:(id)state;
@end

@implementation PMSlideMapper

- (PMSlideMapper)initWithPDSlide:(id)slide slideRect:(CGRect)rect parent:(id)parent
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  slideCopy = slide;
  v16.receiver = self;
  v16.super_class = PMSlideMapper;
  v13 = [(CMMapper *)&v16 initWithParent:parent];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mSlide, slide);
    v14->mRect.origin.x = x;
    v14->mRect.origin.y = y;
    v14->mRect.size.width = width;
    v14->mRect.size.height = height;
  }

  return v14;
}

- (void)mapAt:(id)at withState:(id)state
{
  stateCopy = state;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    colorMap = [(PDSlideChild *)self->mSlide colorMap];
    [stateCopy setColorMap:colorMap];

    colorScheme = [(PDSlideChild *)self->mSlide colorScheme];
    [stateCopy setColorScheme:colorScheme];
  }

  v7 = [OIXMLElement elementWithType:3];
  v8 = [OIXMLAttribute attributeWithName:@"class" stringValue:@"slide"];
  [v7 addAttribute:v8];

  v9 = objc_alloc_init(CMStyle);
  [(CMStyle *)v9 appendOriginInfoFromPoint:self->mRect.origin.x, self->mRect.origin.y];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v7 style:v9 embedStyle:1];
  [(PMSlideMapper *)self mapMasterSlideAt:v7 withState:stateCopy];
  [(PMSlideMapper *)self mapDrawablesAt:v7 withState:stateCopy];
  archiver = [(CMMapper *)self archiver];
  isProgressive = [archiver isProgressive];

  if (isProgressive)
  {
    archiver2 = [(CMMapper *)self archiver];
    [archiver2 pushCssToPath:0];

    archiver3 = [(CMMapper *)self archiver];
    xMLString = [v7 XMLString];
    [archiver3 pushText:xMLString toPath:0];
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

- (void)mapMasterSlideAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  [(PMSlideMapper *)self mapBackgroundAt:atCopy recursive:1 withState:stateCopy];
  if ([(PDSlideChild *)self->mSlide showMasterShapes])
  {
    slideLayout = [(PDSlide *)self->mSlide slideLayout];
    if ([slideLayout showMasterShapes])
    {
      slideMaster = [slideLayout slideMaster];
      if (slideMaster)
      {
        v9 = [[PMMasterSlideMapper alloc] initWithPDSlide:slideMaster parent:self];
        [(PMMasterSlideMapper *)v9 mapMasterGraphicsAt:atCopy withState:stateCopy];
      }

      if (!slideLayout)
      {
        goto LABEL_9;
      }
    }

    else
    {
      slideMaster = 0;
      if (!slideLayout)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    v10 = [[PMMasterSlideMapper alloc] initWithPDSlide:slideLayout parent:self];
    [(PMMasterSlideMapper *)v10 mapMasterGraphicsAt:atCopy withState:stateCopy];

    goto LABEL_9;
  }

LABEL_10:
}

- (void)mapBackgroundAt:(id)at recursive:(BOOL)recursive withState:(id)state
{
  recursiveCopy = recursive;
  atCopy = at;
  stateCopy = state;
  background = [(PDSlide *)self->mSlide background];
  v10 = self->mSlide;
  if (recursiveCopy)
  {
    if (!background)
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
        parentSlideBase = [(PDSlide *)v10 parentSlideBase];

        background2 = [(PDSlide *)parentSlideBase background];

        v10 = parentSlideBase;
        background = background2;
        if (background2)
        {
          break;
        }

LABEL_5:
        if (!v10)
        {
          background = 0;
          goto LABEL_11;
        }
      }
    }
  }

  else if (!background)
  {
    goto LABEL_11;
  }

  v13 = [[PMBackgroundMapper alloc] initWithOadBackground:background parent:self];
  [(PMBackgroundMapper *)v13 mapAt:atCopy withState:stateCopy];

LABEL_11:
}

- (void)mapDrawablesAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  drawables = [(PDSlideBase *)self->mSlide drawables];
  objectEnumerator = [drawables objectEnumerator];
  while (1)
  {
    nextObject = [objectEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    v10 = [(CMDrawableMapper *)[PMDrawableMapper alloc] initWithOadDrawable:nextObject parent:self];
    [(PMDrawableMapper *)v10 mapAt:atCopy withState:stateCopy];
  }
}

@end