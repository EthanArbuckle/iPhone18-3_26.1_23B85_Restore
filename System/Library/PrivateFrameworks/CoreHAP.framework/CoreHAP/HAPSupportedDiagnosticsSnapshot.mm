@interface HAPSupportedDiagnosticsSnapshot
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPSupportedDiagnosticsSnapshot)init;
- (HAPSupportedDiagnosticsSnapshot)initWithFormat:(id)format type:(id)type audioDiagnostics:(id)diagnostics options:(id)options;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPSupportedDiagnosticsSnapshot

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  format = [(HAPSupportedDiagnosticsSnapshot *)self format];
  type = [(HAPSupportedDiagnosticsSnapshot *)self type];
  audioDiagnostics = [(HAPSupportedDiagnosticsSnapshot *)self audioDiagnostics];
  options = [(HAPSupportedDiagnosticsSnapshot *)self options];
  v8 = [v3 stringWithFormat:@"<HAPSupportedDiagnosticsSnapshot format=%@, type=%@, audioDiagnostics=%@, options=%@>", format, type, audioDiagnostics, options];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      format = [(HAPSupportedDiagnosticsSnapshot *)self format];
      format2 = [(HAPSupportedDiagnosticsSnapshot *)v6 format];
      if (format != format2)
      {
        format3 = [(HAPSupportedDiagnosticsSnapshot *)self format];
        [(HAPSupportedDiagnosticsSnapshot *)v6 format];
        v33 = v32 = format3;
        if (![format3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      type = [(HAPSupportedDiagnosticsSnapshot *)self type];
      type2 = [(HAPSupportedDiagnosticsSnapshot *)v6 type];
      if (type != type2)
      {
        type3 = [(HAPSupportedDiagnosticsSnapshot *)self type];
        type4 = [(HAPSupportedDiagnosticsSnapshot *)v6 type];
        if (![type3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (format == format2)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      audioDiagnostics = [(HAPSupportedDiagnosticsSnapshot *)self audioDiagnostics];
      audioDiagnostics2 = [(HAPSupportedDiagnosticsSnapshot *)v6 audioDiagnostics];
      v31 = audioDiagnostics;
      v15 = audioDiagnostics == audioDiagnostics2;
      v16 = audioDiagnostics2;
      if (v15)
      {
        v28 = type3;
        v29 = type2;
      }

      else
      {
        audioDiagnostics3 = [(HAPSupportedDiagnosticsSnapshot *)self audioDiagnostics];
        audioDiagnostics4 = [(HAPSupportedDiagnosticsSnapshot *)v6 audioDiagnostics];
        v26 = audioDiagnostics3;
        if (![audioDiagnostics3 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = type3;
        v29 = type2;
      }

      v27 = v16;
      options = [(HAPSupportedDiagnosticsSnapshot *)self options];
      options2 = [(HAPSupportedDiagnosticsSnapshot *)v6 options];
      v20 = options2;
      if (options == options2)
      {

        v10 = 1;
      }

      else
      {
        options3 = [(HAPSupportedDiagnosticsSnapshot *)self options];
        options4 = [(HAPSupportedDiagnosticsSnapshot *)v6 options];
        v10 = [options3 isEqual:options4];
      }

      v23 = v31;
      v16 = v27;
      type3 = v28;
      type2 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (type == type2)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:

      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_26:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPSupportedDiagnosticsSnapshot allocWithZone:zone];
  format = [(HAPSupportedDiagnosticsSnapshot *)self format];
  type = [(HAPSupportedDiagnosticsSnapshot *)self type];
  audioDiagnostics = [(HAPSupportedDiagnosticsSnapshot *)self audioDiagnostics];
  options = [(HAPSupportedDiagnosticsSnapshot *)self options];
  v9 = [(HAPSupportedDiagnosticsSnapshot *)v4 initWithFormat:format type:type audioDiagnostics:audioDiagnostics options:options];

  return v9;
}

- (id)serializeWithError:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  TLV8BufferInit();
  format = [(HAPSupportedDiagnosticsSnapshot *)self format];

  if (format)
  {
    format2 = [(HAPSupportedDiagnosticsSnapshot *)self format];
    v24 = 0;
    v7 = [format2 serializeWithError:&v24];
    v8 = v24;

    if (v8)
    {
      goto LABEL_19;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_12;
    }
  }

  type = [(HAPSupportedDiagnosticsSnapshot *)self type];

  if (!type)
  {
    goto LABEL_9;
  }

  type2 = [(HAPSupportedDiagnosticsSnapshot *)self type];
  v23 = 0;
  v7 = [type2 serializeWithError:&v23];
  v8 = v23;

  if (v8)
  {
    goto LABEL_19;
  }

  [v7 bytes];
  [v7 length];
  v9 = TLV8BufferAppend();
  if (v9)
  {
LABEL_12:
    v14 = v9;

LABEL_13:
    if (error)
    {
      HMErrorFromOSStatus(v14);
      v8 = 0;
      *error = v15 = 0;
      goto LABEL_22;
    }

    v8 = 0;
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

LABEL_9:
  audioDiagnostics = [(HAPSupportedDiagnosticsSnapshot *)self audioDiagnostics];

  if (audioDiagnostics)
  {
    audioDiagnostics2 = [(HAPSupportedDiagnosticsSnapshot *)self audioDiagnostics];
    v22 = 0;
    v7 = [audioDiagnostics2 serializeWithError:&v22];
    v8 = v22;

    if (v8)
    {
      goto LABEL_19;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_12;
    }
  }

  options = [(HAPSupportedDiagnosticsSnapshot *)self options];

  if (options)
  {
    options2 = [(HAPSupportedDiagnosticsSnapshot *)self options];
    v21 = 0;
    v7 = [options2 serializeWithError:&v21];
    v8 = v21;

    if (v8)
    {
LABEL_19:

      if (error)
      {
        v18 = v8;
        v15 = 0;
        *error = v8;
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    [v7 bytes];
    [v7 length];
    v14 = TLV8BufferAppend();

    if (v14)
    {
      goto LABEL_13;
    }
  }

  v15 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:?];
  v8 = 0;
LABEL_22:
  TLV8BufferFree();

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 >= 1)
  {
    selfCopy = self;
    errorCopy = error;
    v26 = dataCopy;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = bytes + v8;
    while (1)
    {
      v34 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (errorCopy)
        {
          HMErrorFromOSStatus(Next);
          *errorCopy = v21 = 0;
        }

        else
        {
          v21 = 0;
        }

        dataCopy = v26;
        goto LABEL_28;
      }

      if (!v33)
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v9 = v22;
        if (v22)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      if (v34 > 2u)
      {
        if (v34 == 3)
        {
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v28 = v9;
          v17 = &v28;
          [HAPDiagnosticsSnapshotAudioWrapper parsedFromData:v16 error:&v28];
          v11 = v18 = v11;
          goto LABEL_14;
        }

        if (v34 == 4)
        {
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v27 = v9;
          v17 = &v27;
          [HAPDiagnosticsSnapshotOptionsWrapper parsedFromData:v16 error:&v27];
          v10 = v18 = v10;
          goto LABEL_14;
        }
      }

      else
      {
        if (v34 == 1)
        {
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v30 = v9;
          v17 = &v30;
          [HAPDiagnosticsSnapshotFormatWrapper parsedFromData:v16 error:&v30];
          v13 = v18 = v13;
          goto LABEL_14;
        }

        if (v34 == 2)
        {
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v29 = v9;
          v17 = &v29;
          [HAPDiagnosticsSnapshotTypeWrapper parsedFromData:v16 error:&v29];
          v12 = v18 = v12;
LABEL_14:
          v19 = *v17;

          v9 = v19;
        }
      }

      if (v31 >= v14)
      {
        if (v9)
        {
LABEL_17:
          dataCopy = v26;
          if (errorCopy)
          {
            v20 = v9;
            v21 = 0;
            *errorCopy = v9;
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_28;
        }

LABEL_23:
        dataCopy = v26;
        self = selfCopy;
        goto LABEL_24;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_24:
  [(HAPSupportedDiagnosticsSnapshot *)self setFormat:v13];
  [(HAPSupportedDiagnosticsSnapshot *)self setType:v12];
  [(HAPSupportedDiagnosticsSnapshot *)self setAudioDiagnostics:v11];
  [(HAPSupportedDiagnosticsSnapshot *)self setOptions:v10];
  v9 = 0;
  v21 = 1;
LABEL_28:

  return v21;
}

- (HAPSupportedDiagnosticsSnapshot)initWithFormat:(id)format type:(id)type audioDiagnostics:(id)diagnostics options:(id)options
{
  formatCopy = format;
  typeCopy = type;
  diagnosticsCopy = diagnostics;
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = HAPSupportedDiagnosticsSnapshot;
  v15 = [(HAPSupportedDiagnosticsSnapshot *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_format, format);
    objc_storeStrong(&v16->_type, type);
    objc_storeStrong(&v16->_audioDiagnostics, diagnostics);
    objc_storeStrong(&v16->_options, options);
  }

  return v16;
}

- (HAPSupportedDiagnosticsSnapshot)init
{
  v3.receiver = self;
  v3.super_class = HAPSupportedDiagnosticsSnapshot;
  return [(HAPSupportedDiagnosticsSnapshot *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPSupportedDiagnosticsSnapshot);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPSupportedDiagnosticsSnapshot *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end