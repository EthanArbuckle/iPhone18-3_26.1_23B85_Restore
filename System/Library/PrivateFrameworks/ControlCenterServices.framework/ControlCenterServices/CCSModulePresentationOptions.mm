@interface CCSModulePresentationOptions
+ (id)defaultOptions;
- (BOOL)isEqual:(id)equal;
- (CCSModulePresentationOptions)initWithBlurBackground:(BOOL)background animatePresentation:(BOOL)presentation animateDismissal:(BOOL)dismissal;
- (CCSModulePresentationOptions)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CCSModulePresentationOptions

+ (id)defaultOptions
{
  v2 = [[self alloc] initWithBlurBackground:1 animatePresentation:1 animateDismissal:1];

  return v2;
}

- (CCSModulePresentationOptions)initWithBlurBackground:(BOOL)background animatePresentation:(BOOL)presentation animateDismissal:(BOOL)dismissal
{
  v9.receiver = self;
  v9.super_class = CCSModulePresentationOptions;
  result = [(CCSModulePresentationOptions *)&v9 init];
  if (result)
  {
    result->_blurBackground = background;
    result->_animatePresentation = presentation;
    result->_animateDismissal = dismissal;
  }

  return result;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendBool:self->_blurBackground];
  v5 = [builder appendBool:self->_animatePresentation];
  v6 = [builder appendBool:self->_animateDismissal];
  v7 = [builder hash];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    blurBackground = [(CCSModulePresentationOptions *)self blurBackground];
    v7 = blurBackground ^ [v5 blurBackground];
    animatePresentation = [(CCSModulePresentationOptions *)self animatePresentation];
    v9 = v7 | animatePresentation ^ [v5 animatePresentation];
    animateDismissal = [(CCSModulePresentationOptions *)self animateDismissal];
    LOBYTE(animatePresentation) = [v5 animateDismissal];

    v11 = (v9 | animateDismissal ^ animatePresentation) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_blurBackground withName:@"blurBackground"];
  v5 = [v3 appendBool:self->_animatePresentation withName:@"animatePresentation"];
  v6 = [v3 appendBool:self->_animateDismissal withName:@"animateDismissal"];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CCSModulePresentationOptions blurBackground](self forKey:{"blurBackground"), @"blurBackground"}];
  [coderCopy encodeBool:-[CCSModulePresentationOptions animatePresentation](self forKey:{"animatePresentation"), @"animatePresentation"}];
  [coderCopy encodeBool:-[CCSModulePresentationOptions animateDismissal](self forKey:{"animateDismissal"), @"animateDismissal"}];
}

- (CCSModulePresentationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"blurBackground"];
  v6 = [coderCopy decodeBoolForKey:@"animatePresentation"];
  v7 = [coderCopy decodeBoolForKey:@"animateDismissal"];

  return [(CCSModulePresentationOptions *)self initWithBlurBackground:v5 animatePresentation:v6 animateDismissal:v7];
}

@end