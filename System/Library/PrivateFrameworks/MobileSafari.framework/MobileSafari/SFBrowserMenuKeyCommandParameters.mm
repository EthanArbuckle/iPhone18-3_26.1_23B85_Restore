@interface SFBrowserMenuKeyCommandParameters
- (unint64_t)property;
- (void)setProperty:(unint64_t)a3;
@end

@implementation SFBrowserMenuKeyCommandParameters

- (void)setProperty:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  propertyList = self->_propertyList;
  self->_propertyList = v4;
}

- (unint64_t)property
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  propertyList = self->_propertyList;

  return [propertyList unsignedIntegerValue];
}

@end