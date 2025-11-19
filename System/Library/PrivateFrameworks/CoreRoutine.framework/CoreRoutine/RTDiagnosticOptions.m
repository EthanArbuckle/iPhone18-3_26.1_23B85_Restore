@interface RTDiagnosticOptions
+ (id)RTDiagnosticOptionsMaskToString:(unint64_t)a3;
- (RTDiagnosticOptions)initWithCoder:(id)a3;
- (RTDiagnosticOptions)initWithOptionsMask:(unint64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setMask:(unint64_t)a3;
@end

@implementation RTDiagnosticOptions

+ (id)RTDiagnosticOptionsMaskToString:(unint64_t)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = v4;
  if (v3)
  {
    [v4 addObject:@"CoreRoutine"];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"Location Workout Studies"];
  if ((v3 & 4) != 0)
  {
LABEL_4:
    [v5 addObject:@"Location Monitoring Studies"];
  }

LABEL_5:
  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

- (RTDiagnosticOptions)initWithOptionsMask:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTDiagnosticOptions;
  result = [(RTDiagnosticOptions *)&v5 init];
  if (result)
  {
    result->_optionsMask = a3;
  }

  return result;
}

- (void)setMask:(unint64_t)a3
{
  v4 = [(RTDiagnosticOptions *)self optionsMask]| a3;

  [(RTDiagnosticOptions *)self setOptionsMask:v4];
}

- (RTDiagnosticOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"optionsMask"];

  v6 = -[RTDiagnosticOptions initWithOptionsMask:](self, "initWithOptionsMask:", [v5 unsignedIntegerValue]);
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  optionsMask = self->_optionsMask;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInteger:optionsMask];
  [v5 encodeObject:v6 forKey:@"optionsMask"];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [objc_opt_class() RTDiagnosticOptionsMaskToString:{-[RTDiagnosticOptions optionsMask](self, "optionsMask")}];
  v4 = [v2 stringWithFormat:@"optionsMask, %@", v3];

  return v4;
}

@end