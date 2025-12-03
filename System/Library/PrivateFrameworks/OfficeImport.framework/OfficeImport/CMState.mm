@interface CMState
- (CMState)init;
- (id)componentByName:(id)name;
- (void)copyFromCMStateWithoutComponents:(id)components;
@end

@implementation CMState

- (CMState)init
{
  v7.receiver = self;
  v7.super_class = CMState;
  v2 = [(CMState *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    components = v2->components;
    v2->components = v3;

    htmlResource = v2->htmlResource;
    v2->htmlResource = 0;

    v2->mSourceFormat = 0;
  }

  return v2;
}

- (id)componentByName:(id)name
{
  v3 = [(NSMutableDictionary *)self->components objectForKey:name];

  return v3;
}

- (void)copyFromCMStateWithoutComponents:(id)components
{
  componentsCopy = components;
  getHtmlResource = [componentsCopy getHtmlResource];
  [(CMState *)self setHtmlResource:getHtmlResource];

  resourceUrlPrefix = [componentsCopy resourceUrlPrefix];
  mResourceUrlPrefix = self->mResourceUrlPrefix;
  self->mResourceUrlPrefix = resourceUrlPrefix;

  self->mSourceFormat = [componentsCopy sourceFormat];
  colorScheme = [componentsCopy colorScheme];
  mColorScheme = self->mColorScheme;
  self->mColorScheme = colorScheme;

  colorMap = [componentsCopy colorMap];
  mColorMap = self->mColorMap;
  self->mColorMap = colorMap;
}

@end