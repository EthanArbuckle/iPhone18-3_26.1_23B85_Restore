@interface MXMSampleSet
- (MXMSample)distance;
- (MXMSample)geoMean;
- (MXMSample)max;
- (MXMSample)min;
- (MXMSample)relativeStandardDeviation;
- (MXMSample)standardDeviation;
- (MXMSample)sum;
- (MXMSampleSet)initWithCoder:(id)coder;
- (MXMSampleSet)initWithTag:(id)tag unit:(id)unit attributes:(id)attributes;
- (MXMSampleSet)initWithTime:(id)time tag:(id)tag unit:(id)unit attributes:(id)attributes values:(void *)values length:(unint64_t)length valueSize:(unint64_t)size;
- (MXMSampleSet)range;
- (NSArray)samples;
- (NSSet)attributes;
- (id)attributeWithName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)_appendAttribute:(id)attribute;
- (void)_appendDoubleValue:(double)value timestamp:(unint64_t)timestamp;
- (void)_appendSample:(id)sample;
- (void)_appendSet:(id)set;
- (void)_prepareUnderlyingBufferSizeWithAdditionalBytes:(unint64_t)bytes;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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
    attributes = [(MXMSampleSet *)self attributes];
    v6 = __C;
    unit = [(MXMSampleSet *)self unit];
    v8 = [(MXMSample *)v3 initWithTag:v4 attributes:attributes doubleValue:unit unit:v6];
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
    attributes = [(MXMSampleSet *)self attributes];
    v6 = __C;
    unit = [(MXMSampleSet *)self unit];
    v8 = [(MXMSample *)v3 initWithTag:v4 attributes:attributes doubleValue:unit unit:v6];
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
    firstDoubleValue = [(MXMSampleSet *)self firstDoubleValue];
    lastDoubleValue = [(MXMSampleSet *)self lastDoubleValue];
    v6 = lastDoubleValue;
    if (!firstDoubleValue || !lastDoubleValue)
    {
      [(MXMSampleSet(Stats) *)a2 distance];
    }

    v7 = vabdd_f64(*firstDoubleValue, *v6);
    v8 = [MXMSample alloc];
    v9 = [(MXMSampleSet *)self tag];
    attributes = [(MXMSampleSet *)self attributes];
    unit = [(MXMSampleSet *)self unit];
    v12 = [(MXMSample *)v8 initWithTag:v9 attributes:attributes doubleValue:unit unit:v7];
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
    timeIndex = [(MXMSampleSet *)self timeIndex];
    v11 = [(MXMSampleSet *)self tag];
    unit = [(MXMSampleSet *)self unit];
    attributes = [(MXMSampleSet *)self attributes];
    v14 = [(MXMSampleSet *)v9 initWithTime:timeIndex tag:v11 unit:unit attributes:attributes doubleValues:v17 length:2];
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
  attributes = [(MXMSampleSet *)self attributes];
  v6 = __Mean;
  unit = [(MXMSampleSet *)self unit];
  v8 = [(MXMSample *)v3 initWithTag:v4 attributes:attributes doubleValue:unit unit:v6];

  return v8;
}

- (MXMSample)standardDeviation
{
  v10 = 0.0;
  __Mean = 0.0;
  vDSP_normalizeD([(MXMSampleSet *)self doubleValues], 1, 0, 0, &__Mean, &v10, [(MXMSampleSet *)self length]);
  v3 = [MXMSample alloc];
  v4 = [(MXMSampleSet *)self tag];
  attributes = [(MXMSampleSet *)self attributes];
  v6 = v10;
  unit = [(MXMSampleSet *)self unit];
  v8 = [(MXMSample *)v3 initWithTag:v4 attributes:attributes doubleValue:unit unit:v6];

  return v8;
}

- (MXMSample)relativeStandardDeviation
{
  v10 = 0.0;
  __Mean = 0.0;
  vDSP_normalizeD([(MXMSampleSet *)self doubleValues], 1, 0, 0, &__Mean, &v10, [(MXMSampleSet *)self length]);
  v3 = [MXMSample alloc];
  v4 = [(MXMSampleSet *)self tag];
  attributes = [(MXMSampleSet *)self attributes];
  v6 = v10 / __Mean;
  unit = [(MXMSampleSet *)self unit];
  v8 = [(MXMSample *)v3 initWithTag:v4 attributes:attributes doubleValue:unit unit:v6];

  return v8;
}

- (MXMSample)sum
{
  __C = 0.0;
  vDSP_sveD([(MXMSampleSet *)self doubleValues], 1, &__C, [(MXMSampleSet *)self length]);
  v3 = [MXMSample alloc];
  v4 = [(MXMSampleSet *)self tag];
  attributes = [(MXMSampleSet *)self attributes];
  v6 = __C;
  unit = [(MXMSampleSet *)self unit];
  v8 = [(MXMSample *)v3 initWithTag:v4 attributes:attributes doubleValue:unit unit:v6];

  return v8;
}

- (NSArray)samples
{
  cachedSamples = [(MXMSampleSet *)self cachedSamples];

  if (cachedSamples)
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
        attributes = [(MXMSampleSet *)self attributes];
        v12 = [(MXMSampleSet *)self doubleValues][8 * v7];
        unit = [(MXMSampleSet *)self unit];
        timeIndex = [(MXMSampleSet *)self timeIndex];
        v15 = -[MXMSample initWithTag:attributes:doubleValue:unit:timestamp:](v9, "initWithTag:attributes:doubleValue:unit:timestamp:", v10, attributes, unit, *([timeIndex doubleValues] + 8 * v7), v12);
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
  attributesMap = [(MXMSampleSet *)self attributesMap];
  allValues = [attributesMap allValues];
  v5 = [v2 setWithArray:allValues];

  return v5;
}

- (id)attributeWithName:(id)name
{
  nameCopy = name;
  attributesMap = [(MXMSampleSet *)self attributesMap];
  v6 = [attributesMap objectForKeyedSubscript:nameCopy];

  return v6;
}

- (MXMSampleSet)initWithTag:(id)tag unit:(id)unit attributes:(id)attributes
{
  attributesCopy = attributes;
  unitCopy = unit;
  tagCopy = tag;
  v11 = objc_alloc_init(MXMSampleTimeSeries);
  v12 = [(MXMSampleSet *)self initWithTime:v11 tag:tagCopy unit:unitCopy attributes:attributesCopy];

  return v12;
}

- (MXMSampleSet)initWithTime:(id)time tag:(id)tag unit:(id)unit attributes:(id)attributes values:(void *)values length:(unint64_t)length valueSize:(unint64_t)size
{
  v51 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  tagCopy = tag;
  unitCopy = unit;
  attributesCopy = attributes;
  v49.receiver = self;
  v49.super_class = MXMSampleSet;
  v20 = [(MXMSampleSet *)&v49 init];
  v21 = v20;
  if (v20)
  {
    __src = values;
    v44 = timeCopy;
    objc_storeStrong(&v20->_timeIndex, time);
    v42 = tagCopy;
    v22 = [tagCopy copy];
    tag = v21->_tag;
    v21->_tag = v22;

    v41 = unitCopy;
    v24 = [unitCopy copy];
    unit = v21->_unit;
    v21->_unit = v24;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    attributesMap = v21->_attributesMap;
    v21->_attributesMap = dictionary;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = attributesCopy;
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
          name = [v33 name];
          [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:name];
        }

        v30 = [v28 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v30);
    }

    v37 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    v21->_index = v37;
    v37->var0 = size;
    v37->var1 = length;
    v21->_underlyingBufferLength = size * length;
    v38 = malloc_type_malloc(size * length, 0xF7BB96BuLL);
    v21->_underlyingBuffer = v38;
    memcpy(v38, __src, v21->_index->var0 * length);
    timeCopy = v44;
    unitCopy = v41;
    tagCopy = v42;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v21;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  samples = [(MXMSampleSet *)self samples];
  v9 = [samples countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  timeIndex = [(MXMSampleSet *)self timeIndex];

  if (timeIndex != self)
  {
    [coderCopy encodeObject:self->_timeIndex forKey:@"_timeIndex"];
  }

  [coderCopy encodeObject:self->_tag forKey:@"_tag"];
  [coderCopy encodeObject:self->_unit forKey:@"_unit"];
  [coderCopy encodeBytes:self->_index length:16 forKey:@"_index"];
  [coderCopy encodeBytes:self->_underlyingBuffer length:self->_index->var1 * self->_index->var0 forKey:@"_underlyingBuffer"];
  [coderCopy encodeObject:self->_attributesMap forKey:@"_attributesMap"];
}

- (MXMSampleSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = MXMSampleSet;
  v5 = [(MXMSampleSet *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_timeIndex"];
    timeIndex = v5->_timeIndex;
    v5->_timeIndex = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_tag"];
    tag = v5->_tag;
    v5->_tag = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_unit"];
    unit = v5->_unit;
    v5->_unit = v10;

    v5->_index = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    v26 = 0;
    v12 = [coderCopy decodeBytesForKey:@"_index" returnedLength:&v26];
    if (v26 < 0x10 || (*v5->_index = *v12, var0 = v5->_index->var0, var1 = v5->_index->var1, !is_mul_ok(var1, var0)) || (v15 = var1 * var0, v5->_underlyingBuffer = malloc_type_malloc(var1 * var0, 0x64F765A8uLL), v25 = 0, v16 = [coderCopy decodeBytesForKey:@"_underlyingBuffer" returnedLength:&v25], v15 != v25))
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
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"_attributesMap"];
    attributesMap = v5->_attributesMap;
    v5->_attributesMap = v21;
  }

  v23 = v5;
LABEL_8:

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MXMSampleSet alloc];
  timeIndex = [(MXMSampleSet *)self timeIndex];
  v6 = [(MXMSampleSet *)self tag];
  unit = [(MXMSampleSet *)self unit];
  attributes = [(MXMSampleSet *)self attributes];
  v9 = [(MXMSampleSet *)v4 initWithTime:timeIndex tag:v6 unit:unit attributes:attributes values:self->_underlyingBuffer length:self->_index->var1 valueSize:self->_index->var0];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [MXMMutableSampleSet alloc];
  timeIndex = [(MXMSampleSet *)self timeIndex];
  v6 = [(MXMSampleSet *)self tag];
  unit = [(MXMSampleSet *)self unit];
  attributes = [(MXMSampleSet *)self attributes];
  v9 = [(MXMSampleSet *)v4 initWithTime:timeIndex tag:v6 unit:unit attributes:attributes values:self->_underlyingBuffer length:self->_index->var1 valueSize:self->_index->var0];

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

- (void)_prepareUnderlyingBufferSizeWithAdditionalBytes:(unint64_t)bytes
{
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  index = obj->_index;
  var0 = index->var0;
  v7 = bytes + index->var1 * index->var0;
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

- (void)_appendAttribute:(id)attribute
{
  attributesMap = self->_attributesMap;
  attributeCopy = attribute;
  name = [attributeCopy name];
  v8 = [(NSMutableDictionary *)attributesMap objectForKeyedSubscript:name];

  if (v8)
  {
    [(MXMSampleSet *)a2 _appendAttribute:?];
  }

  v9 = self->_attributesMap;
  name2 = [attributeCopy name];
  [(NSMutableDictionary *)v9 setObject:attributeCopy forKeyedSubscript:name2];

  [(MXMSampleSet *)self setCachedSamples:0];
}

- (void)_appendDoubleValue:(double)value timestamp:(unint64_t)timestamp
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MXMSampleSet *)selfCopy _prepareUnderlyingBufferSizeWithAdditionalBytes:8];
  timeIndex = [(MXMSampleSet *)selfCopy timeIndex];
  [timeIndex _appendAbsoluteTime:timestamp];

  index = selfCopy->_index;
  var1 = index->var1;
  *(selfCopy->_underlyingBuffer + var1) = value;
  index->var1 = var1 + 1;
  objc_sync_exit(selfCopy);

  [(MXMSampleSet *)selfCopy setCachedSamples:0];
}

- (void)_appendSet:(id)set
{
  v15 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [setCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(setCopy);
        }

        [(MXMSampleSet *)self _appendSample:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [setCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_appendSample:(id)sample
{
  sampleCopy = sample;
  if ([sampleCopy valueType])
  {
    v5 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Not implemented" reason:@"Not implemented" userInfo:0];
    objc_exception_throw(v5);
  }

  [sampleCopy floatValue];
  -[MXMSampleSet _appendDoubleValue:timestamp:](self, "_appendDoubleValue:timestamp:", [sampleCopy timestamp], v4);
}

- (void)_appendAttribute:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMSampleSet.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"!_attributesMap[attribute.name]"}];
}

@end