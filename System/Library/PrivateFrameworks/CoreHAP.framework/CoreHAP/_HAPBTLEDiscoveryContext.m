@interface _HAPBTLEDiscoveryContext
- (BOOL)isComplete;
- (_HAPBTLEDiscoveryContext)init;
- (_HAPBTLEDiscoveryContext)initWithDiscoveryType:(int64_t)a3;
- (void)reset;
@end

@implementation _HAPBTLEDiscoveryContext

- (BOOL)isComplete
{
  v3 = [(_HAPBTLEDiscoveryContext *)self discoveringServices];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(_HAPBTLEDiscoveryContext *)self discoveringCharacteristics];
    if ([v5 count])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(_HAPBTLEDiscoveryContext *)self readingCharacteristics];
      if ([v6 count])
      {
        v4 = 0;
      }

      else
      {
        v7 = [(_HAPBTLEDiscoveryContext *)self discoveringDescriptors];
        if ([v7 count])
        {
          v4 = 0;
        }

        else
        {
          v8 = [(_HAPBTLEDiscoveryContext *)self readingDescriptors];
          if ([v8 count])
          {
            v4 = 0;
          }

          else
          {
            v9 = [(_HAPBTLEDiscoveryContext *)self readingSignatureCharacteristics];
            if ([v9 count])
            {
              v4 = 0;
            }

            else
            {
              v10 = [(_HAPBTLEDiscoveryContext *)self readingSignatureServices];
              v4 = [v10 count] == 0;
            }
          }
        }
      }
    }
  }

  return v4;
}

- (void)reset
{
  [(_HAPBTLEDiscoveryContext *)self setDiscovering:0];
  v3 = [(_HAPBTLEDiscoveryContext *)self discoveringServices];
  [v3 removeAllObjects];

  v4 = [(_HAPBTLEDiscoveryContext *)self discoveringCharacteristics];
  [v4 removeAllObjects];

  v5 = [(_HAPBTLEDiscoveryContext *)self readingCharacteristics];
  [v5 removeAllObjects];

  v6 = [(_HAPBTLEDiscoveryContext *)self discoveringDescriptors];
  [v6 removeAllObjects];

  v7 = [(_HAPBTLEDiscoveryContext *)self readingDescriptors];
  [v7 removeAllObjects];

  v8 = [(_HAPBTLEDiscoveryContext *)self readingSignatureCharacteristics];
  [v8 removeAllObjects];

  v9 = [(_HAPBTLEDiscoveryContext *)self readingSignatureServices];
  [v9 removeAllObjects];

  v10 = [(_HAPBTLEDiscoveryContext *)self characteristicSignatures];
  [v10 removeAllObjects];

  v11 = [(_HAPBTLEDiscoveryContext *)self serviceSignatures];
  [v11 removeAllObjects];
}

- (_HAPBTLEDiscoveryContext)initWithDiscoveryType:(int64_t)a3
{
  v25.receiver = self;
  v25.super_class = _HAPBTLEDiscoveryContext;
  v4 = [(_HAPBTLEDiscoveryContext *)&v25 init];
  v5 = v4;
  if (v4)
  {
    v4->_discoveryType = a3;
    v6 = [MEMORY[0x277CBEB18] array];
    discoveringServices = v5->_discoveringServices;
    v5->_discoveringServices = v6;

    v8 = [MEMORY[0x277CBEB18] array];
    discoveringCharacteristics = v5->_discoveringCharacteristics;
    v5->_discoveringCharacteristics = v8;

    v10 = [MEMORY[0x277CBEB18] array];
    readingCharacteristics = v5->_readingCharacteristics;
    v5->_readingCharacteristics = v10;

    v12 = [MEMORY[0x277CBEB18] array];
    discoveringDescriptors = v5->_discoveringDescriptors;
    v5->_discoveringDescriptors = v12;

    v14 = [MEMORY[0x277CBEB18] array];
    readingDescriptors = v5->_readingDescriptors;
    v5->_readingDescriptors = v14;

    v16 = [MEMORY[0x277CBEB18] array];
    readingSignatureCharacteristics = v5->_readingSignatureCharacteristics;
    v5->_readingSignatureCharacteristics = v16;

    v18 = [MEMORY[0x277CBEB18] array];
    readingSignatureServices = v5->_readingSignatureServices;
    v5->_readingSignatureServices = v18;

    v20 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    characteristicSignatures = v5->_characteristicSignatures;
    v5->_characteristicSignatures = v20;

    v22 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    serviceSignatures = v5->_serviceSignatures;
    v5->_serviceSignatures = v22;
  }

  return v5;
}

- (_HAPBTLEDiscoveryContext)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end