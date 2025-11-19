@interface HMIMutableFloatArray
- (HMIMutableFloatArray)init;
- (HMIMutableFloatArray)initWithData:(id)a3;
- (HMIMutableFloatArray)initWithDataTensor:(id)a3;
- (HMIMutableFloatArray)initWithFloats:(const float *)a3 count:(unint64_t)a4;
- (HMIMutableFloatArray)initWithValue:(float)a3 count:(unint64_t)a4;
- (float)l2Norm;
- (id)copyWithZone:(_NSZone *)a3;
- (id)floatArrayByAdding:(id)a3;
- (id)floatArrayByScaling:(float)a3;
- (id)floatArrayBySubtracting:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)add:(id)a3;
- (void)appendArray:(id)a3;
- (void)subtract:(id)a3;
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

- (HMIMutableFloatArray)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMIMutableFloatArray;
  v5 = [(HMIMutableFloatArray *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (HMIMutableFloatArray)initWithValue:(float)a3 count:(unint64_t)a4
{
  v6 = [(HMIMutableFloatArray *)self init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4 * a4];
    data = v6->_data;
    v6->_data = v7;

    *&v9 = a3;
    [(HMIMutableFloatArray *)v6 fillWithFloat:v9];
  }

  return v6;
}

- (HMIMutableFloatArray)initWithFloats:(const float *)a3 count:(unint64_t)a4
{
  v6 = [(HMIMutableFloatArray *)self init];
  [(HMIMutableFloatArray *)v6 appendFloats:a3 count:a4];
  return v6;
}

- (HMIMutableFloatArray)initWithDataTensor:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 shape];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 *= [*(*(&v13 + 1) + 8 * i) unsignedIntegerValue];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 1;
  }

  v11 = -[HMIMutableFloatArray initWithFloats:count:](self, "initWithFloats:count:", [v4 dataPointer], v9);
  return v11;
}

- (void)appendArray:(id)a3
{
  data = self->_data;
  v4 = [a3 data];
  [(NSMutableData *)data appendData:v4];
}

- (void)subtract:(id)a3
{
  v5 = a3;
  [a3 floats];
  [(HMIMutableFloatArray *)self floats];
  [(HMIMutableFloatArray *)self mutableFloats];
  [(HMIMutableFloatArray *)self count];

  JUMPOUT(0x2318CBC90);
}

- (void)add:(id)a3
{
  v5 = a3;
  [a3 floats];
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

- (id)floatArrayByScaling:(float)a3
{
  v4 = [(HMIMutableFloatArray *)self copy];
  *&v5 = a3;
  [v4 scale:v5];

  return v4;
}

- (id)floatArrayByAdding:(id)a3
{
  v4 = a3;
  v5 = [(HMIMutableFloatArray *)self copy];
  [v5 add:v4];

  return v5;
}

- (id)floatArrayBySubtracting:(id)a3
{
  v4 = a3;
  v5 = [(HMIMutableFloatArray *)self copy];
  [v5 subtract:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMIMutableFloatArray alloc];
  data = self->_data;

  return [(HMIMutableFloatArray *)v4 initWithData:data];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMIMutableFloatArray alloc];
  data = self->_data;

  return [(HMIMutableFloatArray *)v4 initWithData:data];
}

@end