@interface OUConfiguration
- (OUConfiguration)init;
- (OUConfiguration)initWithframerate:(float)a3 enable3DOR:(BOOL)a4 rgbRefinemnt:(BOOL)a5 mlRefinement:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
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

- (OUConfiguration)initWithframerate:(float)a3 enable3DOR:(BOOL)a4 rgbRefinemnt:(BOOL)a5 mlRefinement:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = OUConfiguration;
  result = [(OUConfiguration *)&v11 init];
  if (result)
  {
    result->maxFramerate = a3;
    result->enable3DOR = a4;
    result->enableRgbRefinement = a5;
    result->enableMLRefinement = a6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 3) = LODWORD(self->maxFramerate);
  *(result + 8) = self->enable3DOR;
  *(result + 9) = self->enableRgbRefinement;
  *(result + 10) = self->enableMLRefinement;
  return result;
}

@end