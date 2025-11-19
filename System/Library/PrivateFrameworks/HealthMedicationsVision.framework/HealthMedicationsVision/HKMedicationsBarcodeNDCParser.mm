@interface HKMedicationsBarcodeNDCParser
+ (BOOL)_isGTIN14CodeValid:(id)a3;
+ (BOOL)isObservationSupported:(id)a3;
+ (id)_barcodeObservationsFrom:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
+ (id)_convertNDCFromGTIN14Code:(id)a3;
+ (id)_parsedGTIN14FromDataMatrix:(id)a3;
+ (id)_parsedGTIN14FromDataMatrixPayload:(id)a3;
+ (id)_parsedGTIN14FromEAN13:(id)a3;
+ (id)_parsedGTIN14FromEAN13Payload:(id)a3;
+ (id)_parsedNDCFromEAN13:(id)a3;
+ (id)hkt_parsedNDCFromDataMatrixPayload:(id)a3;
+ (id)hkt_parsedNDCFromEAN13Payload:(id)a3;
+ (id)parsedGTIN14CodeFromBarcodeObservation:(id)a3;
+ (id)parsedGTIN14CodesFromCMSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
+ (id)parsedNDCCodeFromBarcodeObservation:(id)a3;
+ (id)parsedNDCCodesFromCMSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
+ (id)parsedNDCFromDataMatrix:(id)a3;
@end

@implementation HKMedicationsBarcodeNDCParser

+ (BOOL)isObservationSupported:(id)a3
{
  v3 = a3;
  v4 = [v3 symbology];
  if (v4 == *MEMORY[0x277CE2E98])
  {
    v6 = 1;
  }

  else
  {
    v5 = [v3 symbology];
    v6 = v5 == *MEMORY[0x277CE2E90];
  }

  return v6;
}

+ (id)parsedNDCCodeFromBarcodeObservation:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (![a1 isObservationSupported:v4])
  {
    goto LABEL_4;
  }

  v6 = [v4 symbology];
  v7 = *MEMORY[0x277CE2E98];

  if (v6 == v7)
  {
    v11 = [a1 _parsedNDCFromEAN13:v4];
  }

  else
  {
    v8 = [v4 symbology];
    v9 = *MEMORY[0x277CE2E90];

    if (v8 != v9)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_8;
    }

    v11 = [a1 parsedNDCFromDataMatrix:v4];
  }

  v10 = v11;
LABEL_8:
  objc_autoreleasePoolPop(v5);

  return v10;
}

+ (id)parsedGTIN14CodeFromBarcodeObservation:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (![a1 isObservationSupported:v4])
  {
    goto LABEL_4;
  }

  v6 = [v4 symbology];
  v7 = *MEMORY[0x277CE2E98];

  if (v6 == v7)
  {
    v11 = [a1 _parsedGTIN14FromEAN13:v4];
  }

  else
  {
    v8 = [v4 symbology];
    v9 = *MEMORY[0x277CE2E90];

    if (v8 != v9)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_8;
    }

    v11 = [a1 _parsedGTIN14FromDataMatrix:v4];
  }

  v10 = v11;
LABEL_8:
  objc_autoreleasePoolPop(v5);

  return v10;
}

+ (id)parsedNDCCodesFromCMSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [a1 _barcodeObservationsFrom:a3 error:a4];
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

          v12 = [a1 parsedNDCCodeFromBarcodeObservation:{*(*(&v15 + 1) + 8 * i), v15}];
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

+ (id)parsedGTIN14CodesFromCMSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [a1 _barcodeObservationsFrom:a3 error:a4];
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

          v12 = [a1 parsedGTIN14CodeFromBarcodeObservation:{*(*(&v15 + 1) + 8 * i), v15}];
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

+ (id)_barcodeObservationsFrom:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  v6 = objc_alloc(MEMORY[0x277CE2D50]);
  v7 = [v6 initWithCMSampleBuffer:a3 options:MEMORY[0x277CBEC10]];
  v8 = [HKMedicationsBarcodeExtractor extractedBarcodesFromRequestHandler:v7 error:a4];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

+ (id)_parsedGTIN14FromEAN13:(id)a3
{
  v4 = [a3 payloadStringValue];
  v5 = [a1 _parsedGTIN14FromEAN13Payload:v4];

  return v5;
}

+ (id)_parsedGTIN14FromEAN13Payload:(id)a3
{
  v3 = a3;
  if ([v3 length] == 13 && objc_msgSend(v3, "hasPrefix:", @"03"))
  {
    v4 = [@"0" stringByAppendingString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_parsedNDCFromEAN13:(id)a3
{
  v4 = [a1 _parsedGTIN14FromEAN13:a3];
  v5 = [a1 _convertNDCFromGTIN14Code:v4];

  return v5;
}

+ (id)_parsedGTIN14FromDataMatrix:(id)a3
{
  v4 = [a3 payloadStringValue];
  v5 = [a1 _parsedGTIN14FromDataMatrixPayload:v4];

  return v5;
}

+ (id)parsedNDCFromDataMatrix:(id)a3
{
  v4 = [a1 _parsedGTIN14FromDataMatrix:a3];
  v5 = [a1 _convertNDCFromGTIN14Code:v4];

  return v5;
}

+ (id)_parsedGTIN14FromDataMatrixPayload:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", 29];
  v6 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v4];
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
        v10 = [v4 substringWithRange:{objc_msgSend(v6, "scanLocation"), 14}];
        if (([v10 containsString:v5] & 1) == 0)
        {
          if ([a1 _isGTIN14CodeValid:v10])
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

+ (BOOL)_isGTIN14CodeValid:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"003"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(v3, "length") - 1}];
    v5 = [v4 integerValue];

    if ([v3 length] == 1)
    {
      goto LABEL_11;
    }

    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [v3 substringWithRange:{v6, 1}];
      v9 = [v8 integerValue];

      if (v6)
      {
        v10 = 1;
      }

      else
      {
        v10 = 3;
      }

      v7 += v9 * v10;
      ++v6;
    }

    while ([v3 length] - 1 > v6);
    if (!(v7 % 10))
    {
LABEL_11:
      v11 = 0;
    }

    else
    {
      v11 = 10 - v7 % 10;
    }

    v12 = v5 == v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_convertNDCFromGTIN14Code:(id)a3
{
  v4 = a3;
  if ([a1 _isGTIN14CodeValid:v4])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"003", "length")}];
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

+ (id)hkt_parsedNDCFromDataMatrixPayload:(id)a3
{
  v4 = [a1 _parsedGTIN14FromDataMatrixPayload:a3];
  v5 = [a1 _convertNDCFromGTIN14Code:v4];

  return v5;
}

+ (id)hkt_parsedNDCFromEAN13Payload:(id)a3
{
  v4 = [a1 _parsedGTIN14FromEAN13Payload:a3];
  v5 = [a1 _convertNDCFromGTIN14Code:v4];

  return v5;
}

@end