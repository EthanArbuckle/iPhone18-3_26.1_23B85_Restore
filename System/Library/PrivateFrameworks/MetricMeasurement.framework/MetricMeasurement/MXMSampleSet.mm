@interface MXMSampleSet
- (MXMSample)distance;
- (MXMSample)geoMean;
- (MXMSample)max;
- (MXMSample)min;
- (MXMSample)relativeStandardDeviation;
- (MXMSample)standardDeviation;
- (MXMSample)sum;
- (MXMSampleSet)initWithCoder:(id)a3;
- (MXMSampleSet)initWithTag:(id)a3 unit:(id)a4 attributes:(id)a5;
- (MXMSampleSet)initWithTime:(id)a3 tag:(id)a4 unit:(id)a5 attributes:(id)a6 values:(void *)a7 length:(unint64_t)a8 valueSize:(unint64_t)a9;
- (MXMSampleSet)range;
- (NSArray)samples;
- (NSSet)attributes;
- (id)attributeWithName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)_appendAttribute:(id)a3;
- (void)_appendDoubleValue:(double)a3 timestamp:(unint64_t)a4;
- (void)_appendSample:(id)a3;
- (void)_appendSet:(id)a3;
- (void)_prepareUnderlyingBufferSizeWithAdditionalBytes:(unint64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXMSampleSet

- (MXMSample)min
{
  if ([(MXMSampleSet *)self length])
  {
    __C = 0.0;
    vDSP_minvD([(MXMSampleSet *)self doubleValues], 1, &__C, [(MXMSampleSet *)self length]);
    v3 = [MXMSample alloc];
    v4 = [(MXMSampleSet *)self tag];
    v5 = [(MXMSampleSet *)self attributes];
    v6 = __C;
    v7 = [(MXMSampleSet *)self unit];
    v8 = [(MXMSample *)v3 initWithTag:v4 attributes:v5 doubleValue:v7 unit:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MXMSample)max
{
  if ([(MXMSampleSet *)self length])
  {
    __C = 0.0;
    vDSP_maxvD([(MXMSampleSet *)self doubleValues], 1, &__C, [(MXMSampleSet *)self length]);
    v3 = [MXMSample alloc];
    v4 = [(MXMSampleSet *)self tag];
    v5 = [(MXMSampleSet *)self attributes];
    v6 = __C;
    v7 = [(MXMSampleSet *)self unit];
    v8 = [(MXMSample *)v3 initWithTag:v4 attributes:v5 doubleValue:v7 unit:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MXMSample)distance
{
  if ([(MXMSampleSet *)self length]== 2)
  {
    v4 = [(MXMSampleSet *)self firstDoubleValue];
    v5 = [(MXMSampleSet *)self lastDoubleValue];
    v6 = v5;
    if (!v4 || !v5)
    {
      [(MXMSampleSet(Stats) *)a2 distance];
    }

    v7 = vabdd_f64(*v4, *v6);
    v8 = [MXMSample alloc];
    v9 = [(MXMSampleSet *)self tag];
    v10 = [(MXMSampleSet *)self attributes];
    v11 = [(MXMSampleSet *)self unit];
    v12 = [(MXMSample *)v8 initWithTag:v9 attributes:v10 doubleValue:v11 unit:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (MXMSampleSet)range
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([(MXMSampleSet *)self length])
  {
    v3 = [(MXMSampleSet *)self min];
    [v3 floatValue];
    v5 = v4;

    v6 = [(MXMSampleSet *)self max];
    [v6 floatValue];
    v8 = v7;

    v17[0] = v5;
    v17[1] = v8;
    v9 = [MXMSampleSet alloc];
    v10 = [(MXMSampleSet *)self timeIndex];
    v11 = [(MXMSampleSet *)self tag];
    v12 = [(MXMSampleSet *)self unit];
    v13 = [(MXMSampleSet *)self attributes];
    v14 = [(MXMSampleSet *)v9 initWithTime:v10 tag:v11 unit:v12 attributes:v13 doubleValues:v17 length:2];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (MXMSample)geoMean
{
  __Mean = 0.0;
  vDSP_normalizeD([(MXMSampleSet *)self doubleValues], 1, 0, 0, &__Mean, &v10, [(MXMSampleSet *)self length]);
  v3 = [MXMSample alloc];
  v4 = [(MXMSampleSet *)self tag];
  v5 = [(MXMSampleSet *)self attributes];
  v6 = __Mean;
  v7 = [(MXMSampleSet *)self unit];
  v8 = [(MXMSample *)v3 initWithTag:v4 attributes:v5 doubleValue:v7 unit:v6];

  return v8;
}

- (MXMSample)standardDeviation
{
  v10 = 0.0;
  __Mean = 0.0;
  vDSP_normalizeD([(MXMSampleSet *)self doubleValues], 1, 0, 0, &__Mean, &v10, [(MXMSampleSet *)self length]);
  v3 = [MXMSample alloc];
  v4 = [(MXMSampleSet *)self tag];
  v5 = [(MXMSampleSet *)self attributes];
  v6 = v10;
  v7 = [(MXMSampleSet *)self unit];
  v8 = [(MXMSample *)v3 initWithTag:v4 attributes:v5 doubleValue:v7 unit:v6];

  return v8;
}

- (MXMSample)relativeStandardDeviation
{
  v10 = 0.0;
  __Mean = 0.0;
  vDSP_normalizeD([(MXMSampleSet *)self doubleValues], 1, 0, 0, &__Mean, &v10, [(MXMSampleSet *)self length]);
  v3 = [MXMSample alloc];
  v4 = [(MXMSampleSet *)self tag];
  v5 = [(MXMSampleSet *)self attributes];
  v6 = v10 / __Mean;
  v7 = [(MXMSampleSet *)self unit];
  v8 = [(MXMSample *)v3 initWithTag:v4 attributes:v5 doubleValue:v7 unit:v6];

  return v8;
}

- (MXMSample)sum
{
  __C = 0.0;
  vDSP_sveD([(MXMSampleSet *)self doubleValues], 1, &__C, [(MXMSampleSet *)self length]);
  v3 = [MXMSample alloc];
  v4 = [(MXMSampleSet *)self tag];
  v5 = [(MXMSampleSet *)self attributes];
  v6 = __C;
  v7 = [(MXMSampleSet *)self unit];
  v8 = [(MXMSample *)v3 initWithTag:v4 attributes:v5 doubleValue:v7 unit:v6];

  return v8;
}

- (NSArray)samples
{
  v3 = [(MXMSampleSet *)self cachedSamples];

  if (v3)
  {
    p_cachedSamples = &self->_cachedSamples;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_index->var1];
    p_cachedSamples = &self->_cachedSamples;
    cachedSamples = self->_cachedSamples;
    self->_cachedSamples = v5;

    if (self->_index->var1)
    {
      v7 = 0;
      do
      {
        v8 = self->_cachedSamples;
        v9 = [MXMSample alloc];
        v10 = [(MXMSampleSet *)self tag];
        v11 = [(MXMSampleSet *)self attributes];
        v12 = [(MXMSampleSet *)self doubleValues][8 * v7];
        v13 = [(MXMSampleSet *)self unit];
        v14 = [(MXMSampleSet *)self timeIndex];
        v15 = -[MXMSample initWithTag:attributes:doubleValue:unit:timestamp:](v9, "initWithTag:attributes:doubleValue:unit:timestamp:", v10, v11, v13, *([v14 doubleValues] + 8 * v7), v12);
        [(NSArray *)v8 addObject:v15];

        ++v7;
      }

      while (v7 < self->_index->var1);
    }
  }

  v16 = *p_cachedSamples;

  return v16;
}

- (NSSet)attributes
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(MXMSampleSet *)self attributesMap];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)attributeWithName:(id)a3
{
  v4 = a3;
  v5 = [(MXMSampleSet *)self attributesMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (MXMSampleSet)initWithTag:(id)a3 unit:(id)a4 attributes:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(MXMSampleTimeSeries);
  v12 = [(MXMSampleSet *)self initWithTime:v11 tag:v10 unit:v9 attributes:v8];

  return v12;
}

- (MXMSampleSet)initWithTime:(id)a3 tag:(id)a4 unit:(id)a5 attributes:(id)a6 values:(void *)a7 length:(unint64_t)a8 valueSize:(unint64_t)a9
{
  v51 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v49.receiver = self;
  v49.super_class = MXMSampleSet;
  v20 = [(MXMSampleSet *)&v49 init];
  v21 = v20;
  if (v20)
  {
    __src = a7;
    v44 = v16;
    objc_storeStrong(&v20->_timeIndex, a3);
    v42 = v17;
    v22 = [v17 copy];
    tag = v21->_tag;
    v21->_tag = v22;

    v41 = v18;
    v24 = [v18 copy];
    unit = v21->_unit;
    v21->_unit = v24;

    v26 = [MEMORY[0x277CBEB38] dictionary];
    attributesMap = v21->_attributesMap;
    v21->_attributesMap = v26;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = v19;
    v29 = [v28 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v46;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v45 + 1) + 8 * i);
          v34 = [v33 copy];
          v35 = v21->_attributesMap;
          v36 = [v33 name];
          [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:v36];
        }

        v30 = [v28 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v30);
    }

    v37 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    v21->_index = v37;
    v37->var0 = a9;
    v37->var1 = a8;
    v21->_underlyingBufferLength = a9 * a8;
    v38 = malloc_type_malloc(a9 * a8, 0xF7BB96BuLL);
    v21->_underlyingBuffer = v38;
    memcpy(v38, __src, v21->_index->var0 * a8);
    v16 = v44;
    v18 = v41;
    v17 = v42;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v21;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(MXMSampleSet *)self samples];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(MXMSampleSet *)self timeIndex];

  if (v4 != self)
  {
    [v5 encodeObject:self->_timeIndex forKey:@"_timeIndex"];
  }

  [v5 encodeObject:self->_tag forKey:@"_tag"];
  [v5 encodeObject:self->_unit forKey:@"_unit"];
  [v5 encodeBytes:self->_index length:16 forKey:@"_index"];
  [v5 encodeBytes:self->_underlyingBuffer length:self->_index->var1 * self->_index->var0 forKey:@"_underlyingBuffer"];
  [v5 encodeObject:self->_attributesMap forKey:@"_attributesMap"];
}

- (MXMSampleSet)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = MXMSampleSet;
  v5 = [(MXMSampleSet *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timeIndex"];
    timeIndex = v5->_timeIndex;
    v5->_timeIndex = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tag"];
    tag = v5->_tag;
    v5->_tag = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_unit"];
    unit = v5->_unit;
    v5->_unit = v10;

    v5->_index = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    v26 = 0;
    v12 = [v4 decodeBytesForKey:@"_index" returnedLength:&v26];
    if (v26 < 0x10 || (*v5->_index = *v12, var0 = v5->_index->var0, var1 = v5->_index->var1, !is_mul_ok(var1, var0)) || (v15 = var1 * var0, v5->_underlyingBuffer = malloc_type_malloc(var1 * var0, 0x64F765A8uLL), v25 = 0, v16 = [v4 decodeBytesForKey:@"_underlyingBuffer" returnedLength:&v25], v15 != v25))
    {
      v23 = 0;
      goto LABEL_8;
    }

    memcpy(v5->_underlyingBuffer, v16, v15);
    v5->_underlyingBufferLength = v15;
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"_attributesMap"];
    attributesMap = v5->_attributesMap;
    v5->_attributesMap = v21;
  }

  v23 = v5;
LABEL_8:

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MXMSampleSet alloc];
  v5 = [(MXMSampleSet *)self timeIndex];
  v6 = [(MXMSampleSet *)self tag];
  v7 = [(MXMSampleSet *)self unit];
  v8 = [(MXMSampleSet *)self attributes];
  v9 = [(MXMSampleSet *)v4 initWithTime:v5 tag:v6 unit:v7 attributes:v8 values:self->_underlyingBuffer length:self->_index->var1 valueSize:self->_index->var0];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MXMMutableSampleSet alloc];
  v5 = [(MXMSampleSet *)self timeIndex];
  v6 = [(MXMSampleSet *)self tag];
  v7 = [(MXMSampleSet *)self unit];
  v8 = [(MXMSampleSet *)self attributes];
  v9 = [(MXMSampleSet *)v4 initWithTime:v5 tag:v6 unit:v7 attributes:v8 values:self->_underlyingBuffer length:self->_index->var1 valueSize:self->_index->var0];

  return v9;
}

- (void)dealloc
{
  free(self->_underlyingBuffer);
  free(self->_index);
  v3.receiver = self;
  v3.super_class = MXMSampleSet;
  [(MXMSampleSet *)&v3 dealloc];
}

- (void)_prepareUnderlyingBufferSizeWithAdditionalBytes:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  index = obj->_index;
  var0 = index->var0;
  v7 = a3 + index->var1 * index->var0;
  if (v7 > obj->_underlyingBufferLength)
  {
    v8 = v7 + 10 * var0;
    obj->_underlyingBufferLength = v8;
    v9 = malloc_type_realloc(obj->_underlyingBuffer, v8, 0x69F0AF5BuLL);
    if (!v9)
    {
      v10 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MetricMeasurement" reason:@"Failed to allocate more space for samples." userInfo:0];
      objc_exception_throw(v10);
    }

    obj->_underlyingBuffer = v9;
    v4 = obj;
  }

  objc_sync_exit(v4);
}

- (void)_appendAttribute:(id)a3
{
  attributesMap = self->_attributesMap;
  v6 = a3;
  v7 = [v6 name];
  v8 = [(NSMutableDictionary *)attributesMap objectForKeyedSubscript:v7];

  if (v8)
  {
    [(MXMSampleSet *)a2 _appendAttribute:?];
  }

  v9 = self->_attributesMap;
  v10 = [v6 name];
  [(NSMutableDictionary *)v9 setObject:v6 forKeyedSubscript:v10];

  [(MXMSampleSet *)self setCachedSamples:0];
}

- (void)_appendDoubleValue:(double)a3 timestamp:(unint64_t)a4
{
  v6 = self;
  objc_sync_enter(v6);
  [(MXMSampleSet *)v6 _prepareUnderlyingBufferSizeWithAdditionalBytes:8];
  v7 = [(MXMSampleSet *)v6 timeIndex];
  [v7 _appendAbsoluteTime:a4];

  index = v6->_index;
  var1 = index->var1;
  *(v6->_underlyingBuffer + var1) = a3;
  index->var1 = var1 + 1;
  objc_sync_exit(v6);

  [(MXMSampleSet *)v6 setCachedSamples:0];
}

- (void)_appendSet:(id)a3
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

        [(MXMSampleSet *)self _appendSample:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_appendSample:(id)a3
{
  v6 = a3;
  if ([v6 valueType])
  {
    v5 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Not implemented" reason:@"Not implemented" userInfo:0];
    objc_exception_throw(v5);
  }

  [v6 floatValue];
  -[MXMSampleSet _appendDoubleValue:timestamp:](self, "_appendDoubleValue:timestamp:", [v6 timestamp], v4);
}

- (void)_appendAttribute:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMSampleSet.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"!_attributesMap[attribute.name]"}];
}

@end