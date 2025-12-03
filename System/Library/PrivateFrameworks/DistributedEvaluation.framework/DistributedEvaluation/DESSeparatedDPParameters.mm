@interface DESSeparatedDPParameters
- (DESSeparatedDPParameters)initWithRecipe:(id)recipe;
- (id)description;
@end

@implementation DESSeparatedDPParameters

- (DESSeparatedDPParameters)initWithRecipe:(id)recipe
{
  recipeCopy = recipe;
  v5 = recipeCopy;
  if (!recipeCopy)
  {
    goto LABEL_8;
  }

  maxNorm = [recipeCopy maxNorm];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_8;
  }

  normBinCount = [v5 normBinCount];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

  v15.receiver = self;
  v15.super_class = DESSeparatedDPParameters;
  v9 = [(DESSeparatedDPParameters *)&v15 init];
  if (v9)
  {
    maxNorm2 = [v5 maxNorm];
    [maxNorm2 doubleValue];
    v9->_maxNorm = v11;

    normBinCount2 = [v5 normBinCount];
    v9->_normBinCount = [normBinCount2 integerValue];
  }

  self = v9;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@(%f, %ld)", v5, *&self->_maxNorm, self->_normBinCount];

  return v6;
}

@end