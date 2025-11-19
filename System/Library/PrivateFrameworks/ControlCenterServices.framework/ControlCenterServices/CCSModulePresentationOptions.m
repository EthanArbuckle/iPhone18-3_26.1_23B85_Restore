@interface CCSModulePresentationOptions
+ (id)defaultOptions;
- (BOOL)isEqual:(id)a3;
- (CCSModulePresentationOptions)initWithBlurBackground:(BOOL)a3 animatePresentation:(BOOL)a4 animateDismissal:(BOOL)a5;
- (CCSModulePresentationOptions)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CCSModulePresentationOptions

+ (id)defaultOptions
{
  v2 = [[a1 alloc] initWithBlurBackground:1 animatePresentation:1 animateDismissal:1];

  return v2;
}

- (CCSModulePresentationOptions)initWithBlurBackground:(BOOL)a3 animatePresentation:(BOOL)a4 animateDismissal:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = CCSModulePresentationOptions;
  result = [(CCSModulePresentationOptions *)&v9 init];
  if (result)
  {
    result->_blurBackground = a3;
    result->_animatePresentation = a4;
    result->_animateDismissal = a5;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:self->_blurBackground];
  v5 = [v3 appendBool:self->_animatePresentation];
  v6 = [v3 appendBool:self->_animateDismissal];
  v7 = [v3 hash];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CCSModulePresentationOptions *)self blurBackground];
    v7 = v6 ^ [v5 blurBackground];
    v8 = [(CCSModulePresentationOptions *)self animatePresentation];
    v9 = v7 | v8 ^ [v5 animatePresentation];
    v10 = [(CCSModulePresentationOptions *)self animateDismissal];
    LOBYTE(v8) = [v5 animateDismissal];

    v11 = (v9 | v10 ^ v8) ^ 1;
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
  v7 = [v3 build];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CCSModulePresentationOptions blurBackground](self forKey:{"blurBackground"), @"blurBackground"}];
  [v4 encodeBool:-[CCSModulePresentationOptions animatePresentation](self forKey:{"animatePresentation"), @"animatePresentation"}];
  [v4 encodeBool:-[CCSModulePresentationOptions animateDismissal](self forKey:{"animateDismissal"), @"animateDismissal"}];
}

- (CCSModulePresentationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"blurBackground"];
  v6 = [v4 decodeBoolForKey:@"animatePresentation"];
  v7 = [v4 decodeBoolForKey:@"animateDismissal"];

  return [(CCSModulePresentationOptions *)self initWithBlurBackground:v5 animatePresentation:v6 animateDismissal:v7];
}

@end