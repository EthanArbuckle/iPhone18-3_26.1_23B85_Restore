@interface PKContactFieldConfiguration
+ (id)contactFieldConfigurationWithDictionary:(id)dictionary;
- (PKContactFieldConfiguration)initWithCoder:(id)coder;
- (PKContactFieldConfiguration)initWithType:(int64_t)type;
- (id)description;
@end

@implementation PKContactFieldConfiguration

+ (id)contactFieldConfigurationWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy PKStringForKey:@"type"];
  if ([@"text" isEqualToString:v4])
  {

    v5 = off_1E79C1B00;
LABEL_5:
    v7 = [objc_alloc(*v5) initWithDictionary:dictionaryCopy];
    goto LABEL_7;
  }

  v6 = [@"picker" isEqualToString:v4];

  if (v6)
  {
    v5 = off_1E79C13D0;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (PKContactFieldConfiguration)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = PKContactFieldConfiguration;
  result = [(PKContactFieldConfiguration *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  v4 = v3;
  type = self->_type;
  v6 = @"unknown";
  if (type == 2)
  {
    v6 = @"picker";
  }

  if (type == 1)
  {
    v7 = @"text";
  }

  else
  {
    v7 = v6;
  }

  [v3 appendFormat:@"%@: '%@'; ", @"type", v7];
  [v4 appendFormat:@">"];
  v8 = [v4 copy];

  return v8;
}

- (PKContactFieldConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKContactFieldConfiguration;
  v5 = [(PKContactFieldConfiguration *)&v7 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

@end