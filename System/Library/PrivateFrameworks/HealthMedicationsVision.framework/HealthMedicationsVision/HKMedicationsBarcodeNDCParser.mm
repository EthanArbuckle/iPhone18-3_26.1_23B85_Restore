@interface HKMedicationsBarcodeNDCParser
+ (BOOL)_isGTIN14CodeValid:(id)valid;
+ (BOOL)isObservationSupported:(id)supported;
+ (id)_barcodeObservationsFrom:(opaqueCMSampleBuffer *)from error:(id *)error;
+ (id)_convertNDCFromGTIN14Code:(id)code;
+ (id)_parsedGTIN14FromDataMatrix:(id)matrix;
+ (id)_parsedGTIN14FromDataMatrixPayload:(id)payload;
+ (id)_parsedGTIN14FromEAN13:(id)n13;
+ (id)_parsedGTIN14FromEAN13Payload:(id)payload;
+ (id)_parsedNDCFromEAN13:(id)n13;
+ (id)hkt_parsedNDCFromDataMatrixPayload:(id)payload;
+ (id)hkt_parsedNDCFromEAN13Payload:(id)payload;
+ (id)parsedGTIN14CodeFromBarcodeObservation:(id)observation;
+ (id)parsedGTIN14CodesFromCMSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
+ (id)parsedNDCCodeFromBarcodeObservation:(id)observation;
+ (id)parsedNDCCodesFromCMSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
+ (id)parsedNDCFromDataMatrix:(id)matrix;
@end

@implementation HKMedicationsBarcodeNDCParser

+ (BOOL)isObservationSupported:(id)supported
{
  supportedCopy = supported;
  symbology = [supportedCopy symbology];
  if (symbology == *MEMORY[0x277CE2E98])
  {
    v6 = 1;
  }

  else
  {
    symbology2 = [supportedCopy symbology];
    v6 = symbology2 == *MEMORY[0x277CE2E90];
  }

  return v6;
}

+ (id)parsedNDCCodeFromBarcodeObservation:(id)observation
{
  observationCopy = observation;
  v5 = objc_autoreleasePoolPush();
  if (![self isObservationSupported:observationCopy])
  {
    goto LABEL_4;
  }

  symbology = [observationCopy symbology];
  v7 = *MEMORY[0x277CE2E98];

  if (symbology == v7)
  {
    v11 = [self _parsedNDCFromEAN13:observationCopy];
  }

  else
  {
    symbology2 = [observationCopy symbology];
    v9 = *MEMORY[0x277CE2E90];

    if (symbology2 != v9)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_8;
    }

    v11 = [self parsedNDCFromDataMatrix:observationCopy];
  }

  v10 = v11;
LABEL_8:
  objc_autoreleasePoolPop(v5);

  return v10;
}

+ (id)parsedGTIN14CodeFromBarcodeObservation:(id)observation
{
  observationCopy = observation;
  v5 = objc_autoreleasePoolPush();
  if (![self isObservationSupported:observationCopy])
  {
    goto LABEL_4;
  }

  symbology = [observationCopy symbology];
  v7 = *MEMORY[0x277CE2E98];

  if (symbology == v7)
  {
    v11 = [self _parsedGTIN14FromEAN13:observationCopy];
  }

  else
  {
    symbology2 = [observationCopy symbology];
    v9 = *MEMORY[0x277CE2E90];

    if (symbology2 != v9)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_8;
    }

    v11 = [self _parsedGTIN14FromDataMatrix:observationCopy];
  }

  v10 = v11;
LABEL_8:
  objc_autoreleasePoolPop(v5);

  return v10;
}

+ (id)parsedNDCCodesFromCMSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [self _barcodeObservationsFrom:buffer error:error];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [self parsedNDCCodeFromBarcodeObservation:{*(*(&v15 + 1) + 8 * i), v15}];
          if ([v12 length])
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)parsedGTIN14CodesFromCMSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [self _barcodeObservationsFrom:buffer error:error];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [self parsedGTIN14CodeFromBarcodeObservation:{*(*(&v15 + 1) + 8 * i), v15}];
          if ([v12 length])
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_barcodeObservationsFrom:(opaqueCMSampleBuffer *)from error:(id *)error
{
  v6 = objc_alloc(MEMORY[0x277CE2D50]);
  v7 = [v6 initWithCMSampleBuffer:from options:MEMORY[0x277CBEC10]];
  v8 = [HKMedicationsBarcodeExtractor extractedBarcodesFromRequestHandler:v7 error:error];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

+ (id)_parsedGTIN14FromEAN13:(id)n13
{
  payloadStringValue = [n13 payloadStringValue];
  v5 = [self _parsedGTIN14FromEAN13Payload:payloadStringValue];

  return v5;
}

+ (id)_parsedGTIN14FromEAN13Payload:(id)payload
{
  payloadCopy = payload;
  if ([payloadCopy length] == 13 && objc_msgSend(payloadCopy, "hasPrefix:", @"03"))
  {
    v4 = [@"0" stringByAppendingString:payloadCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_parsedNDCFromEAN13:(id)n13
{
  v4 = [self _parsedGTIN14FromEAN13:n13];
  v5 = [self _convertNDCFromGTIN14Code:v4];

  return v5;
}

+ (id)_parsedGTIN14FromDataMatrix:(id)matrix
{
  payloadStringValue = [matrix payloadStringValue];
  v5 = [self _parsedGTIN14FromDataMatrixPayload:payloadStringValue];

  return v5;
}

+ (id)parsedNDCFromDataMatrix:(id)matrix
{
  v4 = [self _parsedGTIN14FromDataMatrix:matrix];
  v5 = [self _convertNDCFromGTIN14Code:v4];

  return v5;
}

+ (id)_parsedGTIN14FromDataMatrixPayload:(id)payload
{
  payloadCopy = payload;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", 29];
  v6 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:payloadCopy];
  if ([v6 scanString:v5 intoString:0])
  {
    do
    {
      v13 = 0;
      v7 = [v6 scanString:@"01" intoString:&v13];
      v8 = v13;
      v9 = v8;
      if (v7 && [v8 isEqual:@"01"])
      {
        v10 = [payloadCopy substringWithRange:{objc_msgSend(v6, "scanLocation"), 14}];
        if (([v10 containsString:v5] & 1) == 0)
        {
          if ([self _isGTIN14CodeValid:v10])
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_8;
        }
      }
    }

    while (([v6 scanString:v5 intoString:0] & 1) != 0);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

+ (BOOL)_isGTIN14CodeValid:(id)valid
{
  validCopy = valid;
  if ([validCopy hasPrefix:@"003"])
  {
    v4 = [validCopy substringFromIndex:{objc_msgSend(validCopy, "length") - 1}];
    integerValue = [v4 integerValue];

    if ([validCopy length] == 1)
    {
      goto LABEL_11;
    }

    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [validCopy substringWithRange:{v6, 1}];
      integerValue2 = [v8 integerValue];

      if (v6)
      {
        v10 = 1;
      }

      else
      {
        v10 = 3;
      }

      v7 += integerValue2 * v10;
      ++v6;
    }

    while ([validCopy length] - 1 > v6);
    if (!(v7 % 10))
    {
LABEL_11:
      v11 = 0;
    }

    else
    {
      v11 = 10 - v7 % 10;
    }

    v12 = integerValue == v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_convertNDCFromGTIN14Code:(id)code
{
  codeCopy = code;
  if ([self _isGTIN14CodeValid:codeCopy])
  {
    v5 = [codeCopy substringFromIndex:{objc_msgSend(@"003", "length")}];
    v6 = [v5 substringToIndex:{objc_msgSend(v5, "length") - 1}];

    if ([v6 length] == 10 || objc_msgSend(v6, "length") == 11)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)hkt_parsedNDCFromDataMatrixPayload:(id)payload
{
  v4 = [self _parsedGTIN14FromDataMatrixPayload:payload];
  v5 = [self _convertNDCFromGTIN14Code:v4];

  return v5;
}

+ (id)hkt_parsedNDCFromEAN13Payload:(id)payload
{
  v4 = [self _parsedGTIN14FromEAN13Payload:payload];
  v5 = [self _convertNDCFromGTIN14Code:v4];

  return v5;
}

@end