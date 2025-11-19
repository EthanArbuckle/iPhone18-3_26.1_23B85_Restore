@interface CSEndpointerSettings
- (CSEndpointerSettings)initWithCoder:(id)a3;
- (CSEndpointerSettings)initWithDisableEndpointer:(BOOL)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSEndpointerSettings

- (void)encodeWithCoder:(id)a3
{
  disableEndpointer = self->_disableEndpointer;
  v4 = a3;
  v5 = [NSNumber numberWithBool:disableEndpointer];
  [v4 encodeObject:v5 forKey:@"CSEndpointerSettings:::disableEndpointer"];
}

- (CSEndpointerSettings)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"CSEndpointerSettings:::disableEndpointer"];

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

- (CSEndpointerSettings)initWithDisableEndpointer:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CSEndpointerSettings;
  result = [(CSEndpointerSettings *)&v5 init];
  if (result)
  {
    result->_disableEndpointer = a3;
  }

  return result;
}

@end