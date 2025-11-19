@interface CWFSensingResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSensingResult:(id)a3;
- (CWFSensingResult)initWithCoder:(id)a3;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CWFSensingResult

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CWFSensingResult *)self data];
  [v3 setObject:v4 forKeyedSubscript:@"data"];

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
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = v3;
  if (self->_data)
  {
    [v3 appendFormat:@"data={\n"];
    if ([(NSArray *)self->_data count])
    {
      v5 = 0;
      v47 = self;
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
        v15 = [v14 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_NUM_TONES = %ld\n", v15];
        v16 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_BW"];
        v17 = [v16 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_BW = %ld\n", v17];
        v18 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_FRAME_TYPE"];
        v19 = [v18 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_FRAME_TYPE = 0x%lx\n", v19];
        v20 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_NSTS"];
        v21 = [v20 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_NSTS_IN_FRAME = %ld\n", v21];
        v22 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_SLICE"];
        v23 = [v22 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_SLICE = %ld\n", v23];
        v24 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_NUM_RX_CORES"];
        v25 = [v24 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_NUM_RX_CORES = %ld\n", v25];
        v26 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_NUM_STREAMS"];
        v27 = [v26 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_NSTS_REPORTED = %ld\n", v27];
        v28 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_AGC_GAIN"];
        v29 = [v28 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_AGC_GAIN = %ld\n", v29];
        v30 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_NUM_RSSI"];
        v31 = [v30 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_NUM_RSSI = %ld\n", v31];
        v32 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_CHANNEL"];
        v33 = [v32 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_CHANNEL = %ld\n", v33];
        v34 = [v6 objectForKeyedSubscript:@"SENSING_RESULTS_DATA_INFO_BW"];
        v35 = [v34 integerValue];

        [v4 appendFormat:@"\tDATA_INFO_BW = %ld\n", v35];
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
        v40 = [v39 unsignedIntValue];

        [v4 appendFormat:@"\tDATA_BUFFER_LEN[%ld] = %ld\n", v5, v40];
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
        self = v47;
      }

      while (v5 < [(NSArray *)v47->_data count]);
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

- (BOOL)isEqualToSensingResult:(id)a3
{
  v4 = a3;
  data = self->_data;
  v6 = [v4 data];
  if (data == v6)
  {
    v10 = 1;
  }

  else if (self->_data)
  {
    v7 = [v4 data];
    if (v7)
    {
      v8 = self->_data;
      v9 = [v4 data];
      v10 = [(NSArray *)v8 isEqual:v9];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFSensingResult *)self isEqualToSensingResult:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFSensingResult allocWithZone:?]];
  [(CWFSensingResult *)v4 setData:self->_data];
  return v4;
}

- (CWFSensingResult)initWithCoder:(id)a3
{
  v4 = a3;
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
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_data"];
    data = v5->_data;
    v5->_data = v11;
  }

  return v5;
}

@end