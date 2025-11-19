@interface DYGPUDerivedEncoderCounterInfo
- (DYGPUDerivedEncoderCounterInfo)init;
- (DYGPUDerivedEncoderCounterInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateEncoderDerivedData:(id)a3;
- (void)_enumerateEncoderDerivedDataAtIndex:(unsigned int)a3 withBlock:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DYGPUDerivedEncoderCounterInfo

- (void)_enumerateEncoderDerivedDataAtIndex:(unsigned int)a3 withBlock:(id)a4
{
  v9 = a4;
  v6 = [(NSData *)self->_encoderInfos bytes];
  v7 = [(NSData *)self->_derivedCounters bytes];
  v8 = [(NSArray *)self->_derivedCounterNames count];
  (v9)[2](v9, v6 + 48 * a3, &v7[8 * v8 * a3], v8);
}

- (void)_enumerateEncoderDerivedData:(id)a3
{
  v11 = a3;
  v4 = [(NSData *)self->_encoderInfos bytes];
  v5 = [(NSData *)self->_derivedCounters bytes];
  v6 = [(NSData *)self->_encoderInfos length];
  v7 = [(NSArray *)self->_derivedCounterNames count];
  if (v6 >= 0x30)
  {
    v8 = v7;
    v9 = 0;
    if (v6 / 0x30 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6 / 0x30;
    }

    do
    {
      v11[2](v11, v9++, v4, v5, v8);
      v5 += 8 * v8;
      v4 += 48;
    }

    while (v10 != v9);
  }
}

- (DYGPUDerivedEncoderCounterInfo)init
{
  v6.receiver = self;
  v6.super_class = DYGPUDerivedEncoderCounterInfo;
  v2 = [(DYGPUDerivedEncoderCounterInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_derivedCounterNames forKey:@"derivedCounterNames"];
  [v4 encodeObject:self->_derivedCounters forKey:@"derivedCounters"];
  [v4 encodeObject:self->_encoderInfos forKey:@"encoderInfos"];
}

- (DYGPUDerivedEncoderCounterInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = DYGPUDerivedEncoderCounterInfo;
  v5 = [(DYGPUDerivedEncoderCounterInfo *)&v24 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"derivedCounterNames"];
    derivedCounterNames = v5->_derivedCounterNames;
    v5->_derivedCounterNames = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"derivedCounters"];
    derivedCounters = v5->_derivedCounters;
    v5->_derivedCounters = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"encoderInfos"];
    encoderInfos = v5->_encoderInfos;
    v5->_encoderInfos = v20;

    v22 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(DYGPUDerivedEncoderCounterInfo *)self derivedCounterNames];
  v6 = [v5 copy];
  [v4 setDerivedCounterNames:v6];

  v7 = [(DYGPUDerivedEncoderCounterInfo *)self derivedCounters];
  v8 = [v7 copy];
  [v4 setDerivedCounters:v8];

  v9 = [(DYGPUDerivedEncoderCounterInfo *)self encoderInfos];
  v10 = [v9 copy];
  [v4 setEncoderInfos:v10];

  return v4;
}

@end