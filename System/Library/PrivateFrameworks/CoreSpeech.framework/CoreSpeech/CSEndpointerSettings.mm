@interface CSEndpointerSettings
- (CSEndpointerSettings)initWithCoder:(id)coder;
- (CSEndpointerSettings)initWithDisableEndpointer:(BOOL)endpointer;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSEndpointerSettings

- (void)encodeWithCoder:(id)coder
{
  disableEndpointer = self->_disableEndpointer;
  coderCopy = coder;
  v5 = [NSNumber numberWithBool:disableEndpointer];
  [coderCopy encodeObject:v5 forKey:@"CSEndpointerSettings:::disableEndpointer"];
}

- (CSEndpointerSettings)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CSEndpointerSettings:::disableEndpointer"];

  return [(CSEndpointerSettings *)self initWithDisableEndpointer:v4];
}

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = v3;
  if (self->_disableEndpointer)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"[disableEndpointer = %@]", v5];

  return v4;
}

- (CSEndpointerSettings)initWithDisableEndpointer:(BOOL)endpointer
{
  v5.receiver = self;
  v5.super_class = CSEndpointerSettings;
  result = [(CSEndpointerSettings *)&v5 init];
  if (result)
  {
    result->_disableEndpointer = endpointer;
  }

  return result;
}

@end