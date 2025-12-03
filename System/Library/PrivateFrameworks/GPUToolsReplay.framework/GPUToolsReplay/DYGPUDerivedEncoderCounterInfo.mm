@interface DYGPUDerivedEncoderCounterInfo
- (DYGPUDerivedEncoderCounterInfo)init;
- (DYGPUDerivedEncoderCounterInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateEncoderDerivedData:(id)data;
- (void)_enumerateEncoderDerivedDataAtIndex:(unsigned int)index withBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYGPUDerivedEncoderCounterInfo

- (void)_enumerateEncoderDerivedDataAtIndex:(unsigned int)index withBlock:(id)block
{
  blockCopy = block;
  bytes = [(NSData *)self->_encoderInfos bytes];
  bytes2 = [(NSData *)self->_derivedCounters bytes];
  v8 = [(NSArray *)self->_derivedCounterNames count];
  (blockCopy)[2](blockCopy, bytes + 48 * index, &bytes2[8 * v8 * index], v8);
}

- (void)_enumerateEncoderDerivedData:(id)data
{
  dataCopy = data;
  bytes = [(NSData *)self->_encoderInfos bytes];
  bytes2 = [(NSData *)self->_derivedCounters bytes];
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
      dataCopy[2](dataCopy, v9++, bytes, bytes2, v8);
      bytes2 += 8 * v8;
      bytes += 48;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_derivedCounterNames forKey:@"derivedCounterNames"];
  [coderCopy encodeObject:self->_derivedCounters forKey:@"derivedCounters"];
  [coderCopy encodeObject:self->_encoderInfos forKey:@"encoderInfos"];
}

- (DYGPUDerivedEncoderCounterInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = DYGPUDerivedEncoderCounterInfo;
  v5 = [(DYGPUDerivedEncoderCounterInfo *)&v24 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"derivedCounterNames"];
    derivedCounterNames = v5->_derivedCounterNames;
    v5->_derivedCounterNames = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"derivedCounters"];
    derivedCounters = v5->_derivedCounters;
    v5->_derivedCounters = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"encoderInfos"];
    encoderInfos = v5->_encoderInfos;
    v5->_encoderInfos = v20;

    v22 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  derivedCounterNames = [(DYGPUDerivedEncoderCounterInfo *)self derivedCounterNames];
  v6 = [derivedCounterNames copy];
  [v4 setDerivedCounterNames:v6];

  derivedCounters = [(DYGPUDerivedEncoderCounterInfo *)self derivedCounters];
  v8 = [derivedCounters copy];
  [v4 setDerivedCounters:v8];

  encoderInfos = [(DYGPUDerivedEncoderCounterInfo *)self encoderInfos];
  v10 = [encoderInfos copy];
  [v4 setEncoderInfos:v10];

  return v4;
}

@end