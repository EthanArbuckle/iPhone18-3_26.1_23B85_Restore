@interface _HAPBTLEDiscoveryContext
- (BOOL)isComplete;
- (_HAPBTLEDiscoveryContext)init;
- (_HAPBTLEDiscoveryContext)initWithDiscoveryType:(int64_t)type;
- (void)reset;
@end

@implementation _HAPBTLEDiscoveryContext

- (BOOL)isComplete
{
  discoveringServices = [(_HAPBTLEDiscoveryContext *)self discoveringServices];
  if ([discoveringServices count])
  {
    v4 = 0;
  }

  else
  {
    discoveringCharacteristics = [(_HAPBTLEDiscoveryContext *)self discoveringCharacteristics];
    if ([discoveringCharacteristics count])
    {
      v4 = 0;
    }

    else
    {
      readingCharacteristics = [(_HAPBTLEDiscoveryContext *)self readingCharacteristics];
      if ([readingCharacteristics count])
      {
        v4 = 0;
      }

      else
      {
        discoveringDescriptors = [(_HAPBTLEDiscoveryContext *)self discoveringDescriptors];
        if ([discoveringDescriptors count])
        {
          v4 = 0;
        }

        else
        {
          readingDescriptors = [(_HAPBTLEDiscoveryContext *)self readingDescriptors];
          if ([readingDescriptors count])
          {
            v4 = 0;
          }

          else
          {
            readingSignatureCharacteristics = [(_HAPBTLEDiscoveryContext *)self readingSignatureCharacteristics];
            if ([readingSignatureCharacteristics count])
            {
              v4 = 0;
            }

            else
            {
              readingSignatureServices = [(_HAPBTLEDiscoveryContext *)self readingSignatureServices];
              v4 = [readingSignatureServices count] == 0;
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
  discoveringServices = [(_HAPBTLEDiscoveryContext *)self discoveringServices];
  [discoveringServices removeAllObjects];

  discoveringCharacteristics = [(_HAPBTLEDiscoveryContext *)self discoveringCharacteristics];
  [discoveringCharacteristics removeAllObjects];

  readingCharacteristics = [(_HAPBTLEDiscoveryContext *)self readingCharacteristics];
  [readingCharacteristics removeAllObjects];

  discoveringDescriptors = [(_HAPBTLEDiscoveryContext *)self discoveringDescriptors];
  [discoveringDescriptors removeAllObjects];

  readingDescriptors = [(_HAPBTLEDiscoveryContext *)self readingDescriptors];
  [readingDescriptors removeAllObjects];

  readingSignatureCharacteristics = [(_HAPBTLEDiscoveryContext *)self readingSignatureCharacteristics];
  [readingSignatureCharacteristics removeAllObjects];

  readingSignatureServices = [(_HAPBTLEDiscoveryContext *)self readingSignatureServices];
  [readingSignatureServices removeAllObjects];

  characteristicSignatures = [(_HAPBTLEDiscoveryContext *)self characteristicSignatures];
  [characteristicSignatures removeAllObjects];

  serviceSignatures = [(_HAPBTLEDiscoveryContext *)self serviceSignatures];
  [serviceSignatures removeAllObjects];
}

- (_HAPBTLEDiscoveryContext)initWithDiscoveryType:(int64_t)type
{
  v25.receiver = self;
  v25.super_class = _HAPBTLEDiscoveryContext;
  v4 = [(_HAPBTLEDiscoveryContext *)&v25 init];
  v5 = v4;
  if (v4)
  {
    v4->_discoveryType = type;
    array = [MEMORY[0x277CBEB18] array];
    discoveringServices = v5->_discoveringServices;
    v5->_discoveringServices = array;

    array2 = [MEMORY[0x277CBEB18] array];
    discoveringCharacteristics = v5->_discoveringCharacteristics;
    v5->_discoveringCharacteristics = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    readingCharacteristics = v5->_readingCharacteristics;
    v5->_readingCharacteristics = array3;

    array4 = [MEMORY[0x277CBEB18] array];
    discoveringDescriptors = v5->_discoveringDescriptors;
    v5->_discoveringDescriptors = array4;

    array5 = [MEMORY[0x277CBEB18] array];
    readingDescriptors = v5->_readingDescriptors;
    v5->_readingDescriptors = array5;

    array6 = [MEMORY[0x277CBEB18] array];
    readingSignatureCharacteristics = v5->_readingSignatureCharacteristics;
    v5->_readingSignatureCharacteristics = array6;

    array7 = [MEMORY[0x277CBEB18] array];
    readingSignatureServices = v5->_readingSignatureServices;
    v5->_readingSignatureServices = array7;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    characteristicSignatures = v5->_characteristicSignatures;
    v5->_characteristicSignatures = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    serviceSignatures = v5->_serviceSignatures;
    v5->_serviceSignatures = weakToStrongObjectsMapTable2;
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