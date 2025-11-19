@interface MXMMutableSampleData
- (id)appendDoubleValue:(double)a3 tag:(id)a4 timestamp:(unint64_t)a5;
- (id)appendFloatValue:(float)a3 tag:(id)a4 timestamp:(unint64_t)a5;
- (id)appendIntegerValue:(int64_t)a3 tag:(id)a4 timestamp:(unint64_t)a5;
- (id)appendSample:(id)a3;
- (id)appendUnsignedIntegerValue:(unint64_t)a3 tag:(id)a4 timestamp:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendAttributes:(id)a3;
- (void)appendData:(id)a3;
- (void)appendSet:(id)a3;
@end

@implementation MXMMutableSampleData

- (void)appendAttributes:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(MXMSampleData *)self _appendAttribute:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)appendData:(id)a3
{
  v3.receiver = self;
  v3.super_class = MXMMutableSampleData;
  [(MXMSampleData *)&v3 _appendData:a3];
}

- (void)appendSet:(id)a3
{
  v3.receiver = self;
  v3.super_class = MXMMutableSampleData;
  [(MXMSampleData *)&v3 _appendSet:a3];
}

- (id)appendSample:(id)a3
{
  v4 = a3;
  v5 = [v4 tag];
  v6 = [v4 attributes];
  v7 = [(MXMSampleData *)self sampleSetWithTag:v5 attributes:v6];

  if (!v7)
  {
    v8 = [MXMMutableSampleSet alloc];
    v6 = [v4 tag];
    v9 = [v4 unit];
    v10 = [v4 attributes];
    v11 = [(MXMSampleSet *)v8 initWithTag:v6 unit:v9 attributes:v10];
    [(MXMSampleData *)self _appendSet:v11];
  }

  v12 = [v4 valueType];
  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 != 1)
      {
        goto LABEL_11;
      }

      v13 = [v4 integerValue];
      v14 = [v4 tag];
      v15 = -[MXMMutableSampleData appendIntegerValue:tag:timestamp:](self, "appendIntegerValue:tag:timestamp:", v13, v14, [v4 timestamp]);
    }

    else
    {
      [v4 floatValue];
      v18 = v17;
      v14 = [v4 tag];
      v15 = -[MXMMutableSampleData appendDoubleValue:tag:timestamp:](self, "appendDoubleValue:tag:timestamp:", v14, [v4 timestamp], v18);
    }

    goto LABEL_10;
  }

  if (v12 == 2)
  {
    v16 = [v4 unsignedValue];
    v14 = [v4 tag];
    v15 = -[MXMMutableSampleData appendUnsignedIntegerValue:tag:timestamp:](self, "appendUnsignedIntegerValue:tag:timestamp:", v16, v14, [v4 timestamp]);
LABEL_10:
    v6 = v15;

    goto LABEL_11;
  }

  if (v12 == 3)
  {
    v20 = objc_opt_new();
    objc_exception_throw(v20);
  }

LABEL_11:

  return v6;
}

- (id)appendFloatValue:(float)a3 tag:(id)a4 timestamp:(unint64_t)a5
{
  v7 = [(MXMSampleData *)self sampleSetsWithTag:a4];
  v8 = [v7 firstObject];

  if (!v8)
  {
    [MXMMutableSampleData appendFloatValue:tag:timestamp:];
  }

  *&v9 = a3;
  [v8 appendFloatValue:a5 timestamp:v9];

  return v8;
}

- (id)appendDoubleValue:(double)a3 tag:(id)a4 timestamp:(unint64_t)a5
{
  v7 = [(MXMSampleData *)self sampleSetsWithTag:a4];
  v8 = [v7 firstObject];

  if (!v8)
  {
    [MXMMutableSampleData appendDoubleValue:tag:timestamp:];
  }

  [v8 appendDoubleValue:a5 timestamp:a3];

  return v8;
}

- (id)appendIntegerValue:(int64_t)a3 tag:(id)a4 timestamp:(unint64_t)a5
{
  v7 = [(MXMSampleData *)self sampleSetsWithTag:a4];
  v8 = [v7 firstObject];

  if (!v8)
  {
    [MXMMutableSampleData appendIntegerValue:tag:timestamp:];
  }

  [v8 appendIntegerValue:a3 timestamp:a5];

  return v8;
}

- (id)appendUnsignedIntegerValue:(unint64_t)a3 tag:(id)a4 timestamp:(unint64_t)a5
{
  v7 = [(MXMSampleData *)self sampleSetsWithTag:a4];
  v8 = [v7 firstObject];

  if (!v8)
  {
    [MXMMutableSampleData appendUnsignedIntegerValue:tag:timestamp:];
  }

  [v8 appendUnsignedIntegerValue:a3 timestamp:a5];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = MXMMutableSampleData;
  return [(MXMSampleData *)&v4 mutableCopyWithZone:a3];
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