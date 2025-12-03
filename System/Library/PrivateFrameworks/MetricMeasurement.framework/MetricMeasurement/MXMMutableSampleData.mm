@interface MXMMutableSampleData
- (id)appendDoubleValue:(double)value tag:(id)tag timestamp:(unint64_t)timestamp;
- (id)appendFloatValue:(float)value tag:(id)tag timestamp:(unint64_t)timestamp;
- (id)appendIntegerValue:(int64_t)value tag:(id)tag timestamp:(unint64_t)timestamp;
- (id)appendSample:(id)sample;
- (id)appendUnsignedIntegerValue:(unint64_t)value tag:(id)tag timestamp:(unint64_t)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendAttributes:(id)attributes;
- (void)appendData:(id)data;
- (void)appendSet:(id)set;
@end

@implementation MXMMutableSampleData

- (void)appendAttributes:(id)attributes
{
  v15 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [attributesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(attributesCopy);
        }

        [(MXMSampleData *)self _appendAttribute:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [attributesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)appendData:(id)data
{
  v3.receiver = self;
  v3.super_class = MXMMutableSampleData;
  [(MXMSampleData *)&v3 _appendData:data];
}

- (void)appendSet:(id)set
{
  v3.receiver = self;
  v3.super_class = MXMMutableSampleData;
  [(MXMSampleData *)&v3 _appendSet:set];
}

- (id)appendSample:(id)sample
{
  sampleCopy = sample;
  v5 = [sampleCopy tag];
  attributes = [sampleCopy attributes];
  v7 = [(MXMSampleData *)self sampleSetWithTag:v5 attributes:attributes];

  if (!v7)
  {
    v8 = [MXMMutableSampleSet alloc];
    attributes = [sampleCopy tag];
    unit = [sampleCopy unit];
    attributes2 = [sampleCopy attributes];
    v11 = [(MXMSampleSet *)v8 initWithTag:attributes unit:unit attributes:attributes2];
    [(MXMSampleData *)self _appendSet:v11];
  }

  valueType = [sampleCopy valueType];
  if (valueType <= 1)
  {
    if (valueType)
    {
      if (valueType != 1)
      {
        goto LABEL_11;
      }

      integerValue = [sampleCopy integerValue];
      v14 = [sampleCopy tag];
      v15 = -[MXMMutableSampleData appendIntegerValue:tag:timestamp:](self, "appendIntegerValue:tag:timestamp:", integerValue, v14, [sampleCopy timestamp]);
    }

    else
    {
      [sampleCopy floatValue];
      v18 = v17;
      v14 = [sampleCopy tag];
      v15 = -[MXMMutableSampleData appendDoubleValue:tag:timestamp:](self, "appendDoubleValue:tag:timestamp:", v14, [sampleCopy timestamp], v18);
    }

    goto LABEL_10;
  }

  if (valueType == 2)
  {
    unsignedValue = [sampleCopy unsignedValue];
    v14 = [sampleCopy tag];
    v15 = -[MXMMutableSampleData appendUnsignedIntegerValue:tag:timestamp:](self, "appendUnsignedIntegerValue:tag:timestamp:", unsignedValue, v14, [sampleCopy timestamp]);
LABEL_10:
    attributes = v15;

    goto LABEL_11;
  }

  if (valueType == 3)
  {
    v20 = objc_opt_new();
    objc_exception_throw(v20);
  }

LABEL_11:

  return attributes;
}

- (id)appendFloatValue:(float)value tag:(id)tag timestamp:(unint64_t)timestamp
{
  v7 = [(MXMSampleData *)self sampleSetsWithTag:tag];
  firstObject = [v7 firstObject];

  if (!firstObject)
  {
    [MXMMutableSampleData appendFloatValue:tag:timestamp:];
  }

  *&v9 = value;
  [firstObject appendFloatValue:timestamp timestamp:v9];

  return firstObject;
}

- (id)appendDoubleValue:(double)value tag:(id)tag timestamp:(unint64_t)timestamp
{
  v7 = [(MXMSampleData *)self sampleSetsWithTag:tag];
  firstObject = [v7 firstObject];

  if (!firstObject)
  {
    [MXMMutableSampleData appendDoubleValue:tag:timestamp:];
  }

  [firstObject appendDoubleValue:timestamp timestamp:value];

  return firstObject;
}

- (id)appendIntegerValue:(int64_t)value tag:(id)tag timestamp:(unint64_t)timestamp
{
  v7 = [(MXMSampleData *)self sampleSetsWithTag:tag];
  firstObject = [v7 firstObject];

  if (!firstObject)
  {
    [MXMMutableSampleData appendIntegerValue:tag:timestamp:];
  }

  [firstObject appendIntegerValue:value timestamp:timestamp];

  return firstObject;
}

- (id)appendUnsignedIntegerValue:(unint64_t)value tag:(id)tag timestamp:(unint64_t)timestamp
{
  v7 = [(MXMSampleData *)self sampleSetsWithTag:tag];
  firstObject = [v7 firstObject];

  if (!firstObject)
  {
    [MXMMutableSampleData appendUnsignedIntegerValue:tag:timestamp:];
  }

  [firstObject appendUnsignedIntegerValue:value timestamp:timestamp];

  return firstObject;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleData;
  return [(MXMSampleData *)&v4 mutableCopyWithZone:zone];
}

- (void)appendFloatValue:tag:timestamp:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"set" object:? file:? lineNumber:? description:?];
}

- (void)appendDoubleValue:tag:timestamp:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"set" object:? file:? lineNumber:? description:?];
}

- (void)appendUnsignedIntValue:tag:timestamp:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"set" object:? file:? lineNumber:? description:?];
}

- (void)appendIntValue:tag:timestamp:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"set" object:? file:? lineNumber:? description:?];
}

- (void)appendIntegerValue:tag:timestamp:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"set" object:? file:? lineNumber:? description:?];
}

- (void)appendUnsignedIntegerValue:tag:timestamp:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"set" object:? file:? lineNumber:? description:?];
}

@end