@interface HAPTLVBase
- (BOOL)_parseFields:(id)a3;
- (BOOL)_parseMandatory:(id)a3 optional:(id)a4;
- (HAPTLVBase)initWithTLVData:(id)a3;
- (id)_parseArray:(id)a3 result:(id *)a4 objectCreator:(id)a5;
@end

@implementation HAPTLVBase

- (id)_parseArray:(id)a3 result:(id *)a4 objectCreator:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = v7[2](v7, *(*(&v19 + 1) + 8 * v13));
      if (!v14)
      {
        break;
      }

      v15 = v14;
      [v8 addObject:{v14, v19}];

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = [v8 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)_parseMandatory:(id)a3 optional:(id)a4
{
  v6 = a4;
  LOBYTE(a3) = [(HAPTLVBase *)self _parseFields:a3];
  [(HAPTLVBase *)self _parseFields:v6];

  return a3;
}

- (BOOL)_parseFields:(id)a3
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v64 = self;
  v5 = [(HAPTLVBase *)self tlvDatablob];
  v6 = [HAPTLVParser parserWithData:v5];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (!v8)
  {
    v10 = 1;
    goto LABEL_56;
  }

  v9 = v8;
  v10 = 1;
  v11 = 0x2786D1000uLL;
  v12 = *v69;
  v63 = v6;
  v65 = v7;
  v66 = *v69;
  do
  {
    v13 = 0;
    do
    {
      if (*v69 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v68 + 1) + 8 * v13);
      v15 = *(v11 + 3824);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v14;
          v17 = [v6 parseResponseForUInt8:{objc_msgSend(v16, "tlvid")}];
          if (v17)
          {
            goto LABEL_24;
          }

          v18 = objc_autoreleasePoolPush();
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v24 = HMFGetLogIdentifier();
            v25 = [v16 name];
            v26 = [v16 tlvid];
            v27 = [(HAPTLVBase *)v64 tlvDatablob];
            *buf = 138544130;
            v73 = v24;
            v74 = 2112;
            v75 = v25;
            v76 = 2048;
            v77 = v26;
            v6 = v63;
            v78 = 2112;
            v79 = v27;
            v28 = v19;
            v29 = "%{public}@Failed to parse uint8 for tlv: %@ with ID: %tu (%@)";
            goto LABEL_37;
          }

LABEL_38:

          v45 = v18;
LABEL_39:
          objc_autoreleasePoolPop(v45);
          v10 = 0;
          v11 = 0x2786D1000;
          v12 = v66;
          goto LABEL_40;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v14;
          v17 = [v6 parseResponseForUInt16:{objc_msgSend(v16, "tlvid")}];
          if (v17)
          {
            goto LABEL_24;
          }

          v18 = objc_autoreleasePoolPush();
          v19 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          v24 = HMFGetLogIdentifier();
          v25 = [v16 name];
          v30 = [v16 tlvid];
          v27 = [(HAPTLVBase *)v64 tlvDatablob];
          *buf = 138544130;
          v73 = v24;
          v74 = 2112;
          v75 = v25;
          v76 = 2048;
          v77 = v30;
          v6 = v63;
          v78 = 2112;
          v79 = v27;
          v28 = v19;
          v29 = "%{public}@Failed to parse uint16 for tlv: %@ with ID: %tu (%@)";
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v14;
            v17 = [v6 parseResponseForString:{objc_msgSend(v16, "tlvid")}];
            if (v17)
            {
              goto LABEL_24;
            }

            v18 = objc_autoreleasePoolPush();
            v19 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_38;
            }

            v24 = HMFGetLogIdentifier();
            v25 = [v16 name];
            v31 = [v16 tlvid];
            v27 = [(HAPTLVBase *)v64 tlvDatablob];
            *buf = 138544130;
            v73 = v24;
            v74 = 2112;
            v75 = v25;
            v76 = 2048;
            v77 = v31;
            v6 = v63;
            v78 = 2112;
            v79 = v27;
            v28 = v19;
            v29 = "%{public}@Failed to parse String for tlv: %@ with ID: %tu (%@)";
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v32 = v14;
                v33 = [v6 parseResponseForArray:{objc_msgSend(v32, "tlvid")}];
                if (v33)
                {
                  v34 = v33;
                  v35 = [v32 objectCreator];

                  if (!v35)
                  {
                    [v32 setField:v34];

                    v7 = v65;
                    v12 = v66;
                    goto LABEL_41;
                  }

                  v67 = v34;
                  v36 = [v32 objectCreator];
                  v37 = [(HAPTLVBase *)v64 _parseArray:v34 result:&v67 objectCreator:v36];
                  v38 = v67;

                  if (v37)
                  {
                    [v32 setField:v37];
                  }

                  else
                  {
                    v53 = objc_autoreleasePoolPush();
                    v54 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                    {
                      HMFGetLogIdentifier();
                      v55 = v62 = v53;
                      v56 = [v32 name];
                      v57 = [v32 tlvid];
                      v58 = [(HAPTLVBase *)v64 tlvDatablob];
                      *buf = 138544130;
                      v73 = v55;
                      v74 = 2112;
                      v75 = v56;
                      v76 = 2048;
                      v77 = v57;
                      v6 = v63;
                      v78 = 2112;
                      v79 = v58;
                      _os_log_impl(&dword_22AADC000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to construct array for tlv: %@ with ID: %tu (%@)", buf, 0x2Au);

                      v53 = v62;
                    }

                    objc_autoreleasePoolPop(v53);
                    v10 = 0;
                  }

                  v7 = v65;

                  v11 = 0x2786D1000;
                }

                else
                {
                  v47 = objc_autoreleasePoolPush();
                  v48 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                  {
                    v49 = HMFGetLogIdentifier();
                    v50 = [v32 name];
                    v51 = [v32 tlvid];
                    v52 = [(HAPTLVBase *)v64 tlvDatablob];
                    *buf = 138544130;
                    v73 = v49;
                    v74 = 2112;
                    v75 = v50;
                    v76 = 2048;
                    v77 = v51;
                    v6 = v63;
                    v78 = 2112;
                    v79 = v52;
                    _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse Array for tlv: %@ with ID: %tu (%@)", buf, 0x2Au);

                    v11 = 0x2786D1000;
                    v7 = v65;
                  }

                  objc_autoreleasePoolPop(v47);
                  v10 = 0;
                }

                v12 = v66;
                goto LABEL_41;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_42;
              }

              v16 = v14;
              v17 = [v6 parseResponseForUUID:{objc_msgSend(v16, "tlvid")}];
              if (!v17)
              {
                v39 = objc_autoreleasePoolPush();
                v40 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  v41 = HMFGetLogIdentifier();
                  v42 = [v16 name];
                  v43 = [v16 tlvid];
                  v44 = [(HAPTLVBase *)v64 tlvDatablob];
                  *buf = 138544130;
                  v73 = v41;
                  v74 = 2112;
                  v75 = v42;
                  v76 = 2048;
                  v77 = v43;
                  v6 = v63;
                  v78 = 2112;
                  v79 = v44;
                  _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse UUID for tlv: %@ with ID: %tu (%@)", buf, 0x2Au);

                  v7 = v65;
                }

                v45 = v39;
                goto LABEL_39;
              }

              goto LABEL_24;
            }

            v16 = v14;
            v17 = [v6 parseResponseForData:{objc_msgSend(v16, "tlvid")}];
            if (v17)
            {
              goto LABEL_24;
            }

            v18 = objc_autoreleasePoolPush();
            v19 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_38;
            }

            v24 = HMFGetLogIdentifier();
            v25 = [v16 name];
            v46 = [v16 tlvid];
            v27 = [(HAPTLVBase *)v64 tlvDatablob];
            *buf = 138544130;
            v73 = v24;
            v74 = 2112;
            v75 = v25;
            v76 = 2048;
            v77 = v46;
            v6 = v63;
            v78 = 2112;
            v79 = v27;
            v28 = v19;
            v29 = "%{public}@Failed to parse Data for tlv: %@ with ID: %tu (%@)";
          }
        }

LABEL_37:
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x2Au);

        v7 = v65;
        goto LABEL_38;
      }

      v16 = v14;
      v17 = [v6 parseResponseForNumber:{objc_msgSend(v16, "tlvid")}];
      if (!v17)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          v21 = [v16 name];
          v22 = [v16 tlvid];
          v23 = [(HAPTLVBase *)v64 tlvDatablob];
          *buf = 138544130;
          v73 = v20;
          v74 = 2112;
          v75 = v21;
          v76 = 2048;
          v77 = v22;
          v78 = 2112;
          v79 = v23;
          _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse number for tlv: %@ with ID: %tu (%@)", buf, 0x2Au);

          v7 = v65;
          v6 = v63;
        }

        goto LABEL_38;
      }

LABEL_24:
      [v16 setField:v17];
LABEL_40:

LABEL_41:
LABEL_42:
      ++v13;
    }

    while (v9 != v13);
    v59 = [v7 countByEnumeratingWithState:&v68 objects:v80 count:16];
    v9 = v59;
  }

  while (v59);
LABEL_56:

  v60 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (HAPTLVBase)initWithTLVData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HAPTLVBase;
  v6 = [(HAPTLVBase *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_tlvDatablob, a3), ![(HAPTLVBase *)v7 _parseFromTLVData]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

@end