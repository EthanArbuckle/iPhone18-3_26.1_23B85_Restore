@interface BWPointCloudFormatRequirements
- (BOOL)isEqual:(id)a3;
- (BWPointCloudFormatRequirements)init;
- (BWPointCloudFormatRequirements)initWithCoder:(id)a3;
- (NSDictionary)dataBufferAttributes;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BWPointCloudFormatRequirements

- (BWPointCloudFormatRequirements)init
{
  v3.receiver = self;
  v3.super_class = BWPointCloudFormatRequirements;
  return [(BWFormatRequirements *)&v3 init];
}

- (NSDictionary)dataBufferAttributes
{
  v3 = *MEMORY[0x1E6965C90];
  v4 = MEMORY[0x1E695E118];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPointCloudFormatRequirements;
  [(BWPointCloudFormatRequirements *)&v3 dealloc];
}

- (BWPointCloudFormatRequirements)initWithCoder:(id)a3
{
  v4 = [(BWPointCloudFormatRequirements *)self init];
  if (v4)
  {
    v4->_maxPoints = [a3 decodeInt64ForKey:@"maxPoints"];
    v4->_dataBufferSize = [a3 decodeInt64ForKey:@"dataBufferSize"];
    v5 = MEMORY[0x1E695DFD8];
    v8[0] = objc_opt_class();
    v8[1] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
    v4->_supportedDataFormats = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", v6, v8[0]), @"supportedDataFormats"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:self->_maxPoints forKey:@"maxPoints"];
  [a3 encodeInt64:self->_dataBufferSize forKey:@"dataBufferSize"];
  supportedDataFormats = self->_supportedDataFormats;

  [a3 encodeObject:supportedDataFormats forKey:@"supportedDataFormats"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:0];
  v4 = v3;
  if (self->_maxPoints)
  {
    [v3 appendFormat:@"%i", self->_maxPoints];
  }

  else
  {
    [v3 appendString:@"[any points]"];
  }

  [v4 appendString:{@", "}];
  if ([(NSArray *)self->_supportedDataFormats count])
  {
    if ([(NSArray *)self->_supportedDataFormats count]== 1)
    {
      v5 = BWStringFromCVPixelFormatType([-[NSArray objectAtIndexedSubscript:](self->_supportedDataFormats objectAtIndexedSubscript:{0), "unsignedIntValue"}]);
    }

    else
    {
      [v4 appendString:@"["];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      supportedDataFormats = self->_supportedDataFormats;
      v7 = [(NSArray *)supportedDataFormats countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v16;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(supportedDataFormats);
            }

            v12 = *(*(&v15 + 1) + 8 * i);
            if (-v9 != i)
            {
              [v4 appendString:{@", "}];
            }

            [v4 appendString:{BWStringFromCVPixelFormatType(objc_msgSend(v12, "unsignedIntValue"))}];
          }

          v9 += v8;
          v8 = [(NSArray *)supportedDataFormats countByEnumeratingWithState:&v15 objects:v14 count:16];
        }

        while (v8);
      }

      v5 = @"]";
    }
  }

  else
  {
    v5 = @"[any format]";
  }

  [v4 appendString:v5];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && [a3 maxPoints] == self->_maxPoints && objc_msgSend(a3, "dataBufferSize") == self->_dataBufferSize && (objc_msgSend(a3, "supportedDataFormats") == self->_supportedDataFormats || (objc_msgSend(objc_msgSend(a3, "supportedDataFormats"), "isEqual:", self->_supportedDataFormats) & 1) != 0);
}

@end