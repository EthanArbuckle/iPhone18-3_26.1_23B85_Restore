@interface CWFSensingResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSensingResult:(id)result;
- (CWFSensingResult)initWithCoder:(id)coder;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CWFSensingResult

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  data = [(CWFSensingResult *)self data];
  [v3 setObject:data forKeyedSubscript:@"data"];

  v5 = sub_1E0BCEC64(v3, 0, 1u);
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = string;
  if (self->_data)
  {
    [string appendFormat:@"data={\n"];
    if ([(NSArray *)self->_data count])
    {
      v5 = 0;
      selfCopy = self;
      do
      {
        v6 = [(NSArray *)self->_data objectAtIndex:v5];
        v7 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_TIMESTAMP"];
        [v7 doubleValue];
        v9 = v8;

        v48 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v9];
        v10 = sub_1E0BCC248(v48);
        [v4 appendFormat:@"\tDATA_TIMESTAMP[%ld] = %@\n", v5, v10];

        v11 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_TA"];
        [v4 appendFormat:@"\tDATA_INFO_TA = %@\n", v11];
        v12 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_RA"];

        [v4 appendFormat:@"\tDATA_INFO_RA = %@\n", v12];
        v13 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_BSSID"];

        [v4 appendFormat:@"\tDATA_INFO_BSSID = %@\n", v13];
        v14 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_NUM_TONES"];
        integerValue = [v14 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_NUM_TONES = %ld\n", integerValue];
        v16 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_BW"];
        integerValue2 = [v16 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_BW = %ld\n", integerValue2];
        v18 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_FRAME_TYPE"];
        integerValue3 = [v18 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_FRAME_TYPE = 0x%lx\n", integerValue3];
        v20 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_NSTS"];
        integerValue4 = [v20 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_NSTS_IN_FRAME = %ld\n", integerValue4];
        v22 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_SLICE"];
        integerValue5 = [v22 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_SLICE = %ld\n", integerValue5];
        v24 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_NUM_RX_CORES"];
        integerValue6 = [v24 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_NUM_RX_CORES = %ld\n", integerValue6];
        v26 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_NUM_STREAMS"];
        integerValue7 = [v26 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_NSTS_REPORTED = %ld\n", integerValue7];
        v28 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_AGC_GAIN"];
        integerValue8 = [v28 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_AGC_GAIN = %ld\n", integerValue8];
        v30 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_NUM_RSSI"];
        integerValue9 = [v30 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_NUM_RSSI = %ld\n", integerValue9];
        v32 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_CHANNEL"];
        integerValue10 = [v32 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_CHANNEL = %ld\n", integerValue10];
        v34 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_BW"];
        integerValue11 = [v34 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_BW = %ld\n", integerValue11];
        v36 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_RSSI"];
        [v4 appendFormat:@"\tDATA_INFO_RSSI[%ld] =", v5];
        if ([v36 count])
        {
          v37 = 0;
          do
          {
            v38 = [v36 objectAtIndex:v37];
            [v4 appendFormat:@" %ld", objc_msgSend(v38, "integerValue")];

            ++v37;
          }

          while (v37 < [v36 count]);
        }

        [v4 appendFormat:@"\n"];
        v39 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_BUFFER_LEN"];
        unsignedIntValue = [v39 unsignedIntValue];

        [v4 appendFormat:@"\tDATA_BUFFER_LEN[%ld] = %ld\n", v5, unsignedIntValue];
        v41 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_BUFFER"];
        [v4 appendFormat:@"\tDATA_BUFFER[%ld] =", v5];
        if ([v41 count])
        {
          v42 = 0;
          do
          {
            v43 = [v41 objectAtIndex:v42];
            [v4 appendFormat:@" 0x%08lx", objc_msgSend(v43, "integerValue")];

            ++v42;
          }

          while (v42 < [v41 count]);
        }

        [v4 appendFormat:@"\n"];

        ++v5;
        self = selfCopy;
      }

      while (v5 < [(NSArray *)selfCopy->_data count]);
    }

    v44 = @"}\n";
  }

  else
  {
    v46 = 0;
    v44 = @"data=%@\n";
  }

  [v4 appendFormat:v44, v46];

  return v4;
}

- (BOOL)isEqualToSensingResult:(id)result
{
  resultCopy = result;
  data = self->_data;
  data = [resultCopy data];
  if (data == data)
  {
    v10 = 1;
  }

  else if (self->_data)
  {
    data2 = [resultCopy data];
    if (data2)
    {
      v8 = self->_data;
      data3 = [resultCopy data];
      v10 = [(NSArray *)v8 isEqual:data3];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFSensingResult *)self isEqualToSensingResult:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFSensingResult allocWithZone:?]];
  [(CWFSensingResult *)v4 setData:self->_data];
  return v4;
}

- (CWFSensingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CWFSensingResult;
  v5 = [(CWFSensingResult *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_data"];
    data = v5->_data;
    v5->_data = v11;
  }

  return v5;
}

@end