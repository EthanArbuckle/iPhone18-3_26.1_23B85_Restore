@interface PMMasterSlideMapper
- (PMMasterSlideMapper)initWithPDSlide:(id)slide parent:(id)parent;
- (void)mapMasterGraphicsAt:(id)at withState:(id)state;
@end

@implementation PMMasterSlideMapper

- (PMMasterSlideMapper)initWithPDSlide:(id)slide parent:(id)parent
{
  slideCopy = slide;
  v11.receiver = self;
  v11.super_class = PMMasterSlideMapper;
  v8 = [(CMMapper *)&v11 initWithParent:parent];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_slide, slide);
  }

  return v9;
}

- (void)mapMasterGraphicsAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  drawables = [(PDSlideBase *)self->_slide drawables];
  objectEnumerator = [drawables objectEnumerator];
  while (1)
  {
    nextObject = [objectEnumerator nextObject];
    v10 = nextObject;
    if (!nextObject)
    {
      break;
    }

    if (([nextObject hidden] & 1) == 0)
    {
      clientData = [v10 clientData];
      v12 = clientData;
      if (!clientData || ([clientData hasPlaceholder] & 1) == 0)
      {
        v13 = [(CMDrawableMapper *)[PMDrawableMapper alloc] initWithOadDrawable:v10 parent:self];
        [(PMDrawableMapper *)v13 mapAt:atCopy withState:stateCopy];
      }
    }
  }
}

@end