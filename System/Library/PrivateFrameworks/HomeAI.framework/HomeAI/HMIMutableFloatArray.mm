@interface HMIMutableFloatArray
- (HMIMutableFloatArray)init;
- (HMIMutableFloatArray)initWithData:(id)data;
- (HMIMutableFloatArray)initWithDataTensor:(id)tensor;
- (HMIMutableFloatArray)initWithFloats:(const float *)floats count:(unint64_t)count;
- (HMIMutableFloatArray)initWithValue:(float)value count:(unint64_t)count;
- (float)l2Norm;
- (id)copyWithZone:(_NSZone *)zone;
- (id)floatArrayByAdding:(id)adding;
- (id)floatArrayByScaling:(float)scaling;
- (id)floatArrayBySubtracting:(id)subtracting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)add:(id)add;
- (void)appendArray:(id)array;
- (void)subtract:(id)subtract;
@end

@implementation HMIMutableFloatArray

- (HMIMutableFloatArray)init
{
  v6.receiver = self;
  v6.super_class = HMIMutableFloatArray;
  v2 = [(HMIMutableFloatArray *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

- (HMIMutableFloatArray)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = HMIMutableFloatArray;
  v5 = [(HMIMutableFloatArray *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy mutableCopy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (HMIMutableFloatArray)initWithValue:(float)value count:(unint64_t)count
{
  v6 = [(HMIMutableFloatArray *)self init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4 * count];
    data = v6->_data;
    v6->_data = v7;

    *&v9 = value;
    [(HMIMutableFloatArray *)v6 fillWithFloat:v9];
  }

  return v6;
}

- (HMIMutableFloatArray)initWithFloats:(const float *)floats count:(unint64_t)count
{
  v6 = [(HMIMutableFloatArray *)self init];
  [(HMIMutableFloatArray *)v6 appendFloats:floats count:count];
  return v6;
}

- (HMIMutableFloatArray)initWithDataTensor:(id)tensor
{
  v18 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  shape = [tensorCopy shape];
  v6 = [shape countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(shape);
        }

        v9 *= [*(*(&v13 + 1) + 8 * i) unsignedIntegerValue];
      }

      v7 = [shape countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 1;
  }

  v11 = -[HMIMutableFloatArray initWithFloats:count:](self, "initWithFloats:count:", [tensorCopy dataPointer], v9);
  return v11;
}

- (void)appendArray:(id)array
{
  data = self->_data;
  data = [array data];
  [(NSMutableData *)data appendData:data];
}

- (void)subtract:(id)subtract
{
  subtractCopy = subtract;
  [subtract floats];
  [(HMIMutableFloatArray *)self floats];
  [(HMIMutableFloatArray *)self mutableFloats];
  [(HMIMutableFloatArray *)self count];

  JUMPOUT(0x2318CBC90);
}

- (void)add:(id)add
{
  addCopy = add;
  [add floats];
  [(HMIMutableFloatArray *)self floats];
  [(HMIMutableFloatArray *)self mutableFloats];
  [(HMIMutableFloatArray *)self count];

  JUMPOUT(0x2318CBC00);
}

- (float)l2Norm
{
  __C = 0.0;
  vDSP_svesq([(HMIMutableFloatArray *)self floats], 1, &__C, [(HMIMutableFloatArray *)self count]);
  return sqrtf(__C);
}

- (id)floatArrayByScaling:(float)scaling
{
  v4 = [(HMIMutableFloatArray *)self copy];
  *&v5 = scaling;
  [v4 scale:v5];

  return v4;
}

- (id)floatArrayByAdding:(id)adding
{
  addingCopy = adding;
  v5 = [(HMIMutableFloatArray *)self copy];
  [v5 add:addingCopy];

  return v5;
}

- (id)floatArrayBySubtracting:(id)subtracting
{
  subtractingCopy = subtracting;
  v5 = [(HMIMutableFloatArray *)self copy];
  [v5 subtract:subtractingCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMIMutableFloatArray alloc];
  data = self->_data;

  return [(HMIMutableFloatArray *)v4 initWithData:data];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMIMutableFloatArray alloc];
  data = self->_data;

  return [(HMIMutableFloatArray *)v4 initWithData:data];
}

@end