@interface UARPDyanamicAssetLogManager
- (BOOL)newLog:(id)a3 error:(id *)a4;
- (UARPDyanamicAssetLogManager)init;
- (UARPDyanamicAssetLogManager)initWithBaseURL:(id)a3;
@end

@implementation UARPDyanamicAssetLogManager

- (UARPDyanamicAssetLogManager)init
{
  [(UARPDyanamicAssetLogManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDyanamicAssetLogManager)initWithBaseURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UARPDyanamicAssetLogManager;
  v5 = [(UARPDyanamicAssetLogManager *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    baseURL = v5->_baseURL;
    v5->_baseURL = v6;
  }

  return v5;
}

- (BOOL)newLog:(id)a3 error:(id *)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_baseURL)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = objc_alloc(MEMORY[0x277CBEA80]);
    v52 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    [v52 components:252 fromDate:v7];
    v51 = v54 = a4;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.04d-%.02d-%.02d-%.02d%.02d%.02d", objc_msgSend(v51, "year"), objc_msgSend(v51, "month"), objc_msgSend(v51, "day"), objc_msgSend(v51, "hour"), objc_msgSend(v51, "minute"), objc_msgSend(v51, "second")];
    v10 = [[UARPSuperBinaryAsset alloc] initWithURL:v6];
    if ([(UARPSuperBinaryAsset *)v10 expandHeadersAndTLVs:v54])
    {
      v43 = v7;
      v53 = v6;
      v11 = [(UARPSuperBinaryAsset *)v10 tlvs];
      v12 = [UARPSuperBinaryAssetTLV findTLVWithType:272691969 tlvs:v11];

      v42 = v12;
      if (v12)
      {
        v45 = [v12 valueAsString];
      }

      else
      {
        v45 = @"UnknownAppleModelNumber";
      }

      v14 = [(UARPSuperBinaryAsset *)v10 tlvs];
      v15 = [UARPSuperBinaryAssetTLV findTLVWithType:272691970 tlvs:v14];

      v41 = v15;
      if (v15)
      {
        v16 = [v15 valueAsString];
      }

      else
      {
        v16 = @"UnknownSerialNumber";
      }

      v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v45 isDirectory:1 relativeToURL:self->_baseURL];
      v40 = v16;
      if (v17)
      {
        v39 = v17;
        v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16 isDirectory:1 relativeToURL:v17];
        if (v18 && ([MEMORY[0x277CCAA00] defaultManager], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v18, 1, 0, v54), v19, v20))
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          obj = [(UARPSuperBinaryAsset *)v10 payloads];
          v50 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
          if (v50)
          {
            v46 = *v56;
            v47 = v18;
            v48 = v10;
            v49 = v9;
            while (2)
            {
              for (i = 0; i != v50; ++i)
              {
                if (*v56 != v46)
                {
                  objc_enumerationMutation(obj);
                }

                v22 = *(*(&v55 + 1) + 8 * i);
                v23 = MEMORY[0x277CCACA8];
                v24 = [v22 payloadTag];
                v25 = [v24 char1];
                v26 = [v22 payloadTag];
                v27 = [v26 char2];
                v28 = [v22 payloadTag];
                v29 = [v28 char3];
                v30 = [v22 payloadTag];
                v38 = v25;
                v9 = v49;
                v31 = [v23 stringWithFormat:@"%@-%c%c%c%c.uarplog", v49, v38, v27, v29, objc_msgSend(v30, "char4")];

                v32 = [v22 rangePayload];
                v34 = v33;
                v35 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v53 error:v54];
                v18 = v47;
                LODWORD(v32) = [v22 expandPayloadToURL:v47 payloadFilename:v31 superbinary:v35 offset:v32 length:v34 error:v54];

                if (!v32)
                {
                  v13 = 0;
                  v7 = v43;
                  v10 = v48;
                  goto LABEL_27;
                }

                v10 = v48;
              }

              v50 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
              if (v50)
              {
                continue;
              }

              break;
            }

            v13 = 1;
            v7 = v43;
          }

          else
          {
            v13 = 1;
          }

LABEL_27:
        }

        else
        {
          v13 = 0;
        }

        v6 = v53;

        v17 = v39;
      }

      else
      {
        v13 = 0;
        v6 = v53;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v13;
}

@end