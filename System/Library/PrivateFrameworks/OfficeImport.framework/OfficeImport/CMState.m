@interface CMState
- (CMState)init;
- (id)componentByName:(id)a3;
- (void)copyFromCMStateWithoutComponents:(id)a3;
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

- (id)componentByName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->components objectForKey:a3];

  return v3;
}

- (void)copyFromCMStateWithoutComponents:(id)a3
{
  v11 = a3;
  v4 = [v11 getHtmlResource];
  [(CMState *)self setHtmlResource:v4];

  v5 = [v11 resourceUrlPrefix];
  mResourceUrlPrefix = self->mResourceUrlPrefix;
  self->mResourceUrlPrefix = v5;

  self->mSourceFormat = [v11 sourceFormat];
  v7 = [v11 colorScheme];
  mColorScheme = self->mColorScheme;
  self->mColorScheme = v7;

  v9 = [v11 colorMap];
  mColorMap = self->mColorMap;
  self->mColorMap = v9;
}

@end