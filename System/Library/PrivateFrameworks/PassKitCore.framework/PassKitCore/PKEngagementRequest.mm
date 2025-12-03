@interface PKEngagementRequest
+ (id)malformedRequest;
+ (id)noCommandError;
+ (id)noPropertyError;
+ (id)unrecognizedCommandError;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEngagementRequest:(id)request;
- (PKEngagementRequest)initWithDictionary:(id)dictionary error:(id *)error;
- (id)description;
- (unint64_t)propertySource;
@end

@implementation PKEngagementRequest

+ (id)noCommandError
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A278];
  v7[0] = @"No command found in request";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"PKEngagementErrorDomain" code:1 userInfo:v3];

  return v4;
}

+ (id)unrecognizedCommandError
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A278];
  v7[0] = @"Unrecognized command found in request";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"PKEngagementErrorDomain" code:2 userInfo:v3];

  return v4;
}

+ (id)noPropertyError
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A278];
  v7[0] = @"No propertyName found in request";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"PKEngagementErrorDomain" code:3 userInfo:v3];

  return v4;
}

+ (id)malformedRequest
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A278];
  v7[0] = @"Request is malformed";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"PKEngagementErrorDomain" code:0 userInfo:v3];

  return v4;
}

- (PKEngagementRequest)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = PKEngagementRequest;
  v7 = [(PKEngagementRequest *)&v22 init];
  if (v7)
  {
    v8 = [dictionaryCopy PKDictionaryForKey:@"request"];
    v9 = v8;
    if (v8 && [v8 count])
    {
      v10 = [v9 PKStringForKey:@"command"];
      v11 = v10;
      if (v10)
      {
        v12 = PKEngagementRequestCommandFromString(v10);
        command = v7->_command;
        v7->_command = v12;

        if (v7->_command)
        {
          v14 = [v9 PKStringForKey:@"propertyName"];
          propertyName = v7->_propertyName;
          v7->_propertyName = v14;

          if (v7->_propertyName)
          {
            v16 = [v9 PKDictionaryForKey:@"parameters"];
            v17 = [v16 count];
            if (v17)
            {
              v17 = v16;
            }

            parameters = v7->_parameters;
            v7->_parameters = v17;

            goto LABEL_10;
          }

          v20 = +[PKEngagementRequest noPropertyError];
        }

        else
        {
          v20 = +[PKEngagementRequest unrecognizedCommandError];
        }
      }

      else
      {
        v20 = +[PKEngagementRequest noCommandError];
      }

      *error = v20;
    }

    else
    {
      *error = +[PKEngagementRequest malformedRequest];
    }

    v19 = 0;
    goto LABEL_17;
  }

LABEL_10:
  v19 = v7;
LABEL_17:

  return v19;
}

- (unint64_t)propertySource
{
  v3 = self->_command;
  if (v3 == @"fetchProperty" || (v4 = v3) != 0 && (v5 = [(__CFString *)v3 isEqualToString:@"fetchProperty"], v4, v5))
  {
    v6 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"propertySource"];
    if (v6 != @"FinHealth")
    {
      v7 = v6;
      if (!v6)
      {
        return 1;
      }

      v8 = [(__CFString *)v6 isEqualToString:@"FinHealth"];

      if (!v8)
      {
        return 1;
      }
    }

    return 2;
  }

  v10 = self->_command;
  if (v10 == @"fetchFinHealthProperty")
  {
    return 2;
  }

  v11 = v10;
  if (v10)
  {
    v12 = [(__CFString *)v10 isEqualToString:@"fetchFinHealthProperty"];

    if (v12)
    {
      return 2;
    }
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKEngagementRequest *)self isEqualToEngagementRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToEngagementRequest:(id)request
{
  requestCopy = request;
  command = self->_command;
  v6 = requestCopy[1];
  if (command)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (command != v6)
    {
      goto LABEL_16;
    }
  }

  else if (([(NSString *)command isEqual:?]& 1) == 0)
  {
    goto LABEL_16;
  }

  propertyName = self->_propertyName;
  v9 = requestCopy[2];
  if (!propertyName || !v9)
  {
    if (propertyName == v9)
    {
      goto LABEL_12;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if (([(NSString *)propertyName isEqual:?]& 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  parameters = self->_parameters;
  v11 = requestCopy[3];
  if (parameters && v11)
  {
    v12 = [(NSDictionary *)parameters isEqual:?];
  }

  else
  {
    v12 = parameters == v11;
  }

LABEL_17:

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"command: '%@'; ", self->_command];
  [v3 appendFormat:@"propertyName: '%@'; ", self->_propertyName];
  [v3 appendFormat:@"parameters: '%@'; ", self->_parameters];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

@end