@interface _DPDiagnosticsAndUsageTransparencyLog
+ (id)convertToHexString:(id)a3;
+ (id)formatNoisedData:(id)a3 dimension:(unint64_t)a4;
+ (id)formatSerializedData:(id)a3;
+ (unint64_t)inPlaceReplaceOccurrencesOf:(id)a3 with:(id)a4 inBytes:(char *)a5 bytesLength:(unint64_t)a6 caseSensitiveSearch:(BOOL)a7 repeat:(BOOL)a8;
+ (void)insertIfPossibleObj:(id)a3 intoJSONDictionary:(id)a4 withKey:(id)a5;
- (BOOL)writeToDiskWithError:(id *)a3;
- (_DPDiagnosticsAndUsageTransparencyLog)initWithDonations:(id)a3 error:(id *)a4;
- (id)contentsForDonations:(id)a3 withReportName:(id)a4;
- (id)filterMetadataFieldsInSimplifiedLog:(id)a3;
- (id)jsonRepresentationForMetadataInDonation:(id)a3;
- (id)jsonRepresentationFromParameters:(id)a3;
@end

@implementation _DPDiagnosticsAndUsageTransparencyLog

- (_DPDiagnosticsAndUsageTransparencyLog)initWithDonations:(id)a3 error:(id *)a4
{
  v41[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (![v7 count])
  {
    v36 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"empty donations" userInfo:0];
    objc_exception_throw(v36);
  }

  v39.receiver = self;
  v39.super_class = _DPDiagnosticsAndUsageTransparencyLog;
  v8 = [(_DPDiagnosticsAndUsageTransparencyLog *)&v39 init];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [v7 objectAtIndexedSubscript:0];
  v10 = [v9 key];
  key = v8->_key;
  v8->_key = v10;

  v12 = [_DPKeyNames keyPropertiesForKey:v8->_key];
  v13 = [v12 transparencyLogReportName];
  if (v13)
  {
    v14 = [v12 transparencyLogReportName];
  }

  else
  {
    v14 = @"PrivacyPreservingMeasurement";
  }

  reportName = v8->_reportName;
  v8->_reportName = &v14->isa;

  v16 = [v12 dataSource];
  dataSource = v8->_dataSource;
  v8->_dataSource = v16;

  v18 = objc_autoreleasePoolPush();
  v19 = [(_DPDiagnosticsAndUsageTransparencyLog *)v8 contentsForDonations:v7 withReportName:v8->_reportName];
  v8->_numDonations = [v19 count];
  v38 = 0;
  v20 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v19 options:1 error:&v38];
  v21 = v38;
  rawSerializedData = v8->_rawSerializedData;
  v8->_rawSerializedData = v20;

  objc_autoreleasePoolPop(v18);
  if (v8->_rawSerializedData)
  {
    v23 = [objc_opt_class() formatSerializedData:v8->_rawSerializedData];
    serializedData = v8->_serializedData;
    v8->_serializedData = v23;

LABEL_8:
    v25 = v8;
    goto LABEL_14;
  }

  v37 = a4;
  v26 = MEMORY[0x277CCA9B8];
  v40[0] = *MEMORY[0x277CCA450];
  v27 = MEMORY[0x277CCACA8];
  v28 = NSStringFromSelector(a2);
  v29 = [v27 stringWithFormat:@"%@: failed to serialize transparency log content to json", v28];
  v40[1] = *MEMORY[0x277CCA7E8];
  v41[0] = v29;
  v41[1] = v21;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v31 = [v26 errorWithDomain:@"com.apple.DifferentialPrivacy.DPTransparencyLogCreatorError" code:2 userInfo:v30];

  v32 = +[_DPLog framework];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [_DPSemanticVersion initWithString:v31 error:v32];
  }

  if (v37)
  {
    v33 = v31;
    *v37 = v31;
  }

  v25 = 0;
LABEL_14:

  v34 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)writeToDiskWithError:(id *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = [(_DPDiagnosticsAndUsageTransparencyLog *)self serializedData];
  v7 = [(_DPDiagnosticsAndUsageTransparencyLog *)self reportName];
  v8 = [_DPUploadHelper writeFileForDedisco:v6 withReportName:v7];

  if (v8)
  {
    v9 = +[_DPLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(_DPDiagnosticsAndUsageTransparencyLog *)self numDonations];
      v11 = [(_DPDiagnosticsAndUsageTransparencyLog *)self key];
      *buf = 134218498;
      v26 = v10;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_22622D000, v9, OS_LOG_TYPE_DEFAULT, "%lu reports were written to transparency log %@ for %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    v12 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v13 = MEMORY[0x277CCACA8];
    v14 = [(_DPDiagnosticsAndUsageTransparencyLog *)self numDonations];
    v15 = [(_DPDiagnosticsAndUsageTransparencyLog *)self key];
    v16 = [v13 stringWithFormat:@"Failed to write %lu reports to transparency log for %@", v14, v15];
    v24 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v18 = [v12 errorWithDomain:@"com.apple.DifferentialPrivacy.DPTransparencyLogCreatorError" code:3 userInfo:v17];

    v19 = +[_DPLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_DPSemanticVersion initWithString:v18 error:v19];
    }

    if (a3)
    {
      v20 = v18;
      *a3 = v18;
    }
  }

  result = v8 != 0;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)convertToHexString:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 length];
    v7 = [MEMORY[0x277CCAB68] stringWithCapacity:2 * v6];
    for (i = objc_autoreleasePoolPush(); v6; --v6)
    {
      v9 = *v5++;
      [v7 appendFormat:@"%02X", v9];
    }

    objc_autoreleasePoolPop(i);
    v10 = [MEMORY[0x277CCACA8] stringWithString:v7];
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] string];
  }

  return v10;
}

+ (void)insertIfPossibleObj:(id)a3 intoJSONDictionary:(id)a4 withKey:(id)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CCAAA0];
  v14[0] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  LOBYTE(v10) = [v10 isValidJSONObject:v11];

  if (v10)
  {
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  else
  {
    v12 = +[_DPLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_DPDiagnosticsAndUsageTransparencyLog insertIfPossibleObj:v9 intoJSONDictionary:v7 withKey:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)jsonRepresentationFromParameters:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v15}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [_DPDiagnosticsAndUsageTransparencyLog convertToHexString:v11];

          v11 = v12;
        }

        [objc_opt_class() insertIfPossibleObj:v11 intoJSONDictionary:v4 withKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)jsonRepresentationForMetadataInDonation:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v4 metadata];
  v6 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    *&v7 = 138412546;
    v19 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [v4 metadata];
        v13 = [v12 objectForKeyedSubscript:v11];

        if ([v11 isEqualToString:@"VDAF"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [(_DPDiagnosticsAndUsageTransparencyLog *)self jsonRepresentationFromParameters:v13];
            [v5 setObject:v14 forKeyedSubscript:@"VDAF"];
          }

          else
          {
            v14 = +[_DPLog framework];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = objc_opt_class();
              *buf = v19;
              v26 = v11;
              v27 = 2112;
              v28 = v15;
              v16 = v15;
              _os_log_error_impl(&dword_22622D000, v14, OS_LOG_TYPE_ERROR, "Skipping field (%@) expected NSDictionary value, got %@.", buf, 0x16u);
            }
          }
        }

        else
        {
          [objc_opt_class() insertIfPossibleObj:v13 intoJSONDictionary:v5 withKey:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)filterMetadataFieldsInSimplifiedLog:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v19 = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 isEqualToString:@"AlgorithmParameters"])
        {
          v10 = [v3 objectForKeyedSubscript:@"AlgorithmParameters"];
          v11 = [v10 mutableCopy];

          v12 = [v11 objectForKey:@"Dimensionality"];

          if (v12)
          {
            [v11 removeObjectForKey:@"Dimensionality"];
          }

          if (![v11 count])
          {
            goto LABEL_14;
          }

          v13 = v19;
          v14 = v11;
          v15 = @"AlgorithmParameters";
        }

        else
        {
          if (![v9 isEqualToString:@"DediscoTaskConfig"])
          {
            continue;
          }

          v16 = [v3 objectForKeyedSubscript:@"DediscoTaskConfig"];
          v11 = [v16 mutableCopy];

          [v11 removeObjectForKey:@"DediscoServerConfiguration"];
          [v11 removeObjectForKey:@"VDAFConfig"];
          v13 = v19;
          v14 = v11;
          v15 = @"DediscoTaskConfig";
        }

        [v13 setObject:v14 forKeyedSubscript:v15];
LABEL_14:
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)contentsForDonations:(id)a3 withReportName:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEBF8] mutableCopy];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v9)
  {
    v10 = v9;
    v46 = *v48;
    v39 = v7;
    v40 = v8;
    do
    {
      v11 = 0;
      v41 = v10;
      do
      {
        if (*v48 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v47 + 1) + 8 * v11);
        v13 = [v7 isEqualToString:{@"PrivacyPreservingMeasurement", v39, v40}];
        v14 = MEMORY[0x277CBEB38];
        if (v13)
        {
          v53[0] = @"key";
          v45 = [v12 key];
          v54[0] = v45;
          v53[1] = @"share1";
          v44 = [v12 share1];
          v43 = [_DPDiagnosticsAndUsageTransparencyLog convertToHexString:v44];
          v54[1] = v43;
          v53[2] = @"share2";
          v15 = [v12 share2];
          v16 = [_DPDiagnosticsAndUsageTransparencyLog convertToHexString:v15];
          v54[2] = v16;
          v53[3] = @"dimension";
          v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "dimension")}];
          v54[3] = v17;
          v53[4] = @"serverAlgorithm";
          [v12 serverAlgorithm];
          v19 = v18 = self;
          v54[4] = v19;
          v53[5] = @"algorithmParameters";
          v20 = [v12 algorithmParameters];
          v54[5] = v20;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:6];
          v22 = [v14 dictionaryWithDictionary:v21];

          self = v18;
          v23 = [(_DPDiagnosticsAndUsageTransparencyLog *)v18 jsonRepresentationForMetadataInDonation:v12];
          if ([v23 count])
          {
            [v22 setObject:v23 forKeyedSubscript:@"metadata"];
          }

          v7 = v39;
          v8 = v40;
          v10 = v41;
        }

        else
        {
          v51[0] = @"key";
          v24 = [v12 key];
          v51[1] = @"dimension";
          v52[0] = v24;
          v25 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "dimension")}];
          v52[1] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
          v22 = [v14 dictionaryWithDictionary:v26];

          v27 = [(_DPDiagnosticsAndUsageTransparencyLog *)self dataSource];

          if (v27)
          {
            v28 = [(_DPDiagnosticsAndUsageTransparencyLog *)self dataSource];
            [v22 setObject:v28 forKeyedSubscript:@"dataSource"];
          }

          v29 = [v12 metadata];
          v30 = [v29 objectForKeyedSubscript:@"NoisedData"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v32 = objc_opt_class();
            v33 = [v12 metadata];
            v34 = [v33 objectForKeyedSubscript:@"NoisedData"];
            v35 = [v32 formatNoisedData:v34 dimension:{objc_msgSend(v12, "dimension")}];
            [v22 setObject:v35 forKeyedSubscript:@"noisedData"];
          }

          v36 = [v12 metadata];
          v23 = [(_DPDiagnosticsAndUsageTransparencyLog *)self filterMetadataFieldsInSimplifiedLog:v36];

          if ([v23 count])
          {
            [v22 setObject:v23 forKeyedSubscript:@"metadata"];
          }
        }

        [v8 addObject:v22];
        ++v11;
      }

      while (v10 != v11);
      v10 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v10);
  }

  v37 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)formatNoisedData:(id)a3 dimension:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 bytes];
  v7 = [MEMORY[0x277CCAB68] stringWithCapacity:7 * a4 + 1];
  [v7 appendString:@"["];
  v8 = objc_autoreleasePoolPush();
  if (a4)
  {
    v9 = 0;
    do
    {
      v10 = *(v6 + 4 * v9);
      if (v9 >= a4 - 1)
      {
        v11 = @"%.4f]";
      }

      else
      {
        v11 = @"%.4f,";
      }

      [v7 appendFormat:v11, *(v6 + 4 * v9++)];
    }

    while (a4 != v9);
  }

  objc_autoreleasePoolPop(v8);

  return v7;
}

+ (id)formatSerializedData:(id)a3
{
  v4 = a3;
  v5 = a3;
  v6 = [v5 bytes];
  v7 = objc_opt_class();
  v8 = [v5 length];

  v9 = [objc_opt_class() inPlaceReplaceOccurrencesOf:@"[" with:@"[" inBytes:v6 bytesLength:objc_msgSend(v7 caseSensitiveSearch:"inPlaceReplaceOccurrencesOf:with:inBytes:bytesLength:caseSensitiveSearch:repeat:" repeat:{@"DEDISCO", &stru_2839671C8, v6, v8, 0, 1), 1, 0}];
  v10 = [objc_opt_class() inPlaceReplaceOccurrencesOf:@"]" with:@"]" inBytes:v6 bytesLength:v9 caseSensitiveSearch:1 repeat:0];
  v11 = MEMORY[0x277CBEA90];

  return [v11 dataWithBytesNoCopy:v6 length:v10 freeWhenDone:0];
}

+ (unint64_t)inPlaceReplaceOccurrencesOf:(id)a3 with:(id)a4 inBytes:(char *)a5 bytesLength:(unint64_t)a6 caseSensitiveSearch:(BOOL)a7 repeat:(BOOL)a8
{
  v34 = a8;
  v8 = a7;
  v11 = a3;
  v12 = a4;
  v13 = [v11 uppercaseString];
  v33 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (a6)
  {
    v14 = 0;
    while (1)
    {
      while (1)
      {
        v15 = a6;
        if (a6 - v14 >= [v11 length])
        {
          break;
        }

LABEL_4:
        ++v14;
        a6 = v15;
        if (v14 == v15)
        {
          goto LABEL_21;
        }
      }

      if ([v11 length])
      {
        v16 = 0;
        do
        {
          v17 = a5[v14 + v16];
          v18 = [v13 characterAtIndex:v16];
          v19 = v17 == v18 || !v8;
          if (v19 != 1)
          {
            goto LABEL_4;
          }

          if (!v8 && v17 != v18 && v18 + 32 != v17)
          {
            goto LABEL_4;
          }
        }

        while (++v16 < [v11 length]);
      }

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
      [v33 addObject:v21];

      a6 = v15;
      if (v34 && ++v14 != v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
  if ([v33 count])
  {
    v35 = a6;
    v22 = [v33 objectAtIndexedSubscript:0];
    a6 = [v22 unsignedIntegerValue];

    if ([v33 count])
    {
      v23 = 0;
      do
      {
        if ([v12 length])
        {
          v24 = 0;
          do
          {
            a5[a6 + v24] = [v12 characterAtIndex:v24];
            ++v24;
          }

          while (v24 < [v12 length]);
          a6 += v24;
        }

        v25 = [v33 objectAtIndexedSubscript:v23];
        v26 = [v25 unsignedIntegerValue];
        v27 = [v11 length];

        v28 = v23 + 1;
        v29 = v35;
        if (v23 != [v33 count] - 1)
        {
          v30 = [v33 objectAtIndexedSubscript:v23 + 1];
          v29 = [v30 unsignedIntegerValue];
        }

        v31 = v29 - (v27 + v26);
        memcpy(&a5[a6], &a5[v27 + v26], v31);
        a6 += v31;
        v23 = v28;
      }

      while (v28 < [v33 count]);
    }
  }

  return a6;
}

+ (void)insertIfPossibleObj:(uint64_t)a1 intoJSONDictionary:(uint64_t)a2 withKey:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = objc_opt_class();
  v4 = v9;
  _os_log_error_impl(&dword_22622D000, a3, OS_LOG_TYPE_ERROR, "Skipping field =(%@) as it cannot be serialized into JSON, type=%@.", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end