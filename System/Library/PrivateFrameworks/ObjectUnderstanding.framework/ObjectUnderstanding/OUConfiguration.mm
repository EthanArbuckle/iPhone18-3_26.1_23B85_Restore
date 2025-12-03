@interface OUConfiguration
- (OUConfiguration)init;
- (OUConfiguration)initWithframerate:(float)withframerate enable3DOR:(BOOL)r rgbRefinemnt:(BOOL)refinemnt mlRefinement:(BOOL)refinement;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation OUConfiguration

- (OUConfiguration)init
{
  v3.receiver = self;
  v3.super_class = OUConfiguration;
  result = [(OUConfiguration *)&v3 init];
  if (result)
  {
    result->maxFramerate = 2.0;
    *&result->enable3DOR = 257;
    result->enableMLRefinement = 0;
  }

  return result;
}

- (OUConfiguration)initWithframerate:(float)withframerate enable3DOR:(BOOL)r rgbRefinemnt:(BOOL)refinemnt mlRefinement:(BOOL)refinement
{
  v11.receiver = self;
  v11.super_class = OUConfiguration;
  result = [(OUConfiguration *)&v11 init];
  if (result)
  {
    result->maxFramerate = withframerate;
    result->enable3DOR = r;
    result->enableRgbRefinement = refinemnt;
    result->enableMLRefinement = refinement;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = LODWORD(self->maxFramerate);
  *(result + 8) = self->enable3DOR;
  *(result + 9) = self->enableRgbRefinement;
  *(result + 10) = self->enableMLRefinement;
  return result;
}

@end