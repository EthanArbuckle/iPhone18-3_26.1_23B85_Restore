@interface RTDiagnosticOptions
+ (id)RTDiagnosticOptionsMaskToString:(unint64_t)string;
- (RTDiagnosticOptions)initWithCoder:(id)coder;
- (RTDiagnosticOptions)initWithOptionsMask:(unint64_t)mask;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setMask:(unint64_t)mask;
@end

@implementation RTDiagnosticOptions

+ (id)RTDiagnosticOptionsMaskToString:(unint64_t)string
{
  stringCopy = string;
  array = [MEMORY[0x1E695DF70] array];
  v5 = array;
  if (stringCopy)
  {
    [array addObject:@"CoreRoutine"];
    if ((stringCopy & 2) == 0)
    {
LABEL_3:
      if ((stringCopy & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((stringCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"Location Workout Studies"];
  if ((stringCopy & 4) != 0)
  {
LABEL_4:
    [v5 addObject:@"Location Monitoring Studies"];
  }

LABEL_5:
  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

- (RTDiagnosticOptions)initWithOptionsMask:(unint64_t)mask
{
  v5.receiver = self;
  v5.super_class = RTDiagnosticOptions;
  result = [(RTDiagnosticOptions *)&v5 init];
  if (result)
  {
    result->_optionsMask = mask;
  }

  return result;
}

- (void)setMask:(unint64_t)mask
{
  v4 = [(RTDiagnosticOptions *)self optionsMask]| mask;

  [(RTDiagnosticOptions *)self setOptionsMask:v4];
}

- (RTDiagnosticOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optionsMask"];

  v6 = -[RTDiagnosticOptions initWithOptionsMask:](self, "initWithOptionsMask:", [v5 unsignedIntegerValue]);
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x1E696AD98];
  optionsMask = self->_optionsMask;
  coderCopy = coder;
  v6 = [v3 numberWithUnsignedInteger:optionsMask];
  [coderCopy encodeObject:v6 forKey:@"optionsMask"];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [objc_opt_class() RTDiagnosticOptionsMaskToString:{-[RTDiagnosticOptions optionsMask](self, "optionsMask")}];
  v4 = [v2 stringWithFormat:@"optionsMask, %@", v3];

  return v4;
}

@end