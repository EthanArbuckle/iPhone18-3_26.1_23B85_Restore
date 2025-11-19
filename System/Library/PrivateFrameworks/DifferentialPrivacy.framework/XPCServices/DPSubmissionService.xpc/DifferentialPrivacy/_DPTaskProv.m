@interface _DPTaskProv
+ (id)taskProvFromDonation:(id)a3 leaderURL:(id)a4 helperURL:(id)a5 error:(id *)a6;
+ (id)vdafTypeFromDonation:(id)a3 error:(id *)a4;
- (BOOL)isTaskConfigValidWithError:(id *)a3;
- (_DPTaskProv)init;
- (_DPTaskProv)initWithDonation:(id)a3 leaderURL:(id)a4 helperURL:(id)a5 error:(id *)a6;
- (id)taskIDWithError:(id *)a3;
- (id)taskInfoWithError:(id *)a3;
- (unint64_t)derivedTaskExpiration;
- (unsigned)derivedMinBatchSize;
@end

@implementation _DPTaskProv

+ (id)taskProvFromDonation:(id)a3 leaderURL:(id)a4 helperURL:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [_DPDediscoUtils dediscoVersionForDonation:v9];
  if (v12 - 3 < 2)
  {
    v13 = _DPTaskProv06;
LABEL_5:
    v14 = [[v13 alloc] initWithDonation:v9 leaderURL:v10 helperURL:v11 error:a6];
    goto LABEL_7;
  }

  if (v12 == 2)
  {
    v13 = _DPTaskProv00;
    goto LABEL_5;
  }

  v15 = [NSString stringWithFormat:@"Failed to find matching TaskProv version from PPM version %lu.", v12];
  v16 = [_DPDediscoError errorWithCode:400 description:v15];

  [v16 logAndStoreInError:a6];
  v14 = 0;
LABEL_7:

  return v14;
}

- (id)taskIDWithError:(id *)a3
{
  v5 = [(_DPTaskProv *)self taskID];

  if (v5)
  {
    v6 = [(_DPTaskProv *)self taskID];
  }

  else
  {
    v7 = [(_DPTaskProv *)self encodedTaskConfigWithError:a3];
    if (v7)
    {
      v8 = [NSMutableData dataWithLength:32];
      CC_SHA256([v7 bytes], objc_msgSend(v7, "length"), objc_msgSend(v8, "mutableBytes"));
      [(_DPTaskProv *)self setTaskID:v8];
      v6 = [(_DPTaskProv *)self taskID];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (_DPTaskProv)initWithDonation:(id)a3 leaderURL:(id)a4 helperURL:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v29.receiver = self;
  v29.super_class = _DPTaskProv;
  v14 = [(_DPTaskProv *)&v29 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_donation, a3);
    v16 = [v11 key];
    if (([v16 hasPrefix:@"pfl:"] & 1) == 0 && (objc_msgSend(v16, "hasPrefix:", @"fedstats:") & 1) == 0)
    {
      v17 = [NSString stringWithFormat:@"fedstats:%@", v16];

      v16 = v17;
    }

    objc_storeStrong(&v15->_collectionID, v16);
    v18 = [objc_opt_class() vdafTypeFromDonation:v11 error:a6];
    v19 = v18;
    if (!v18)
    {
      goto LABEL_11;
    }

    v15->_vdafType = [v18 unsignedIntValue];
    v20 = [(_DPTaskProv *)v15 taskInfoWithError:a6];
    taskInfo = v15->_taskInfo;
    v15->_taskInfo = v20;

    if (!v15->_taskInfo)
    {
      goto LABEL_11;
    }

    v22 = [v12 dataUsingEncoding:4];
    leaderURL = v15->_leaderURL;
    v15->_leaderURL = v22;

    v24 = [v13 dataUsingEncoding:4];
    helperURL = v15->_helperURL;
    v15->_helperURL = v24;

    if (![(_DPTaskProv *)v15 isTaskConfigValidWithError:a6])
    {
LABEL_11:

      v27 = 0;
      goto LABEL_12;
    }

    v15->_minBatchSize = [(_DPTaskProv *)v15 derivedMinBatchSize];
    v26 = [v11 metadata];
    v27 = [(_DPTaskProv *)v15 derivedMaxBatchSizeFromDonationMetadata:v26 minBatchSize:v15->_minBatchSize error:a6];

    if (!v27)
    {

      goto LABEL_12;
    }

    v15->_maxBatchSize = [(_DPTaskProv *)v27 unsignedIntValue];
    v15->_taskExpiration = [(_DPTaskProv *)v15 derivedTaskExpiration];
  }

  v27 = v15;
LABEL_12:

  return v27;
}

+ (id)vdafTypeFromDonation:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (qword_10007E750 != -1)
  {
    sub_10004DBDC();
  }

  v6 = [v5 serverAlgorithm];
  if (([v6 isEqual:@"Prio"] & 1) == 0)
  {
    v8 = [v5 serverAlgorithm];
    v9 = [v8 isEqual:@"Prio2"];

    if (v9)
    {
      v7 = &off_100075900;
      goto LABEL_14;
    }

    v10 = [v5 algorithmParameters];
    v6 = [v10 objectForKeyedSubscript:kDPVDAFType];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([qword_10007E758 containsObject:v6])
      {
        v6 = v6;
        v7 = v6;
        goto LABEL_13;
      }

      v15 = v6;
      v11 = @"Unknown VDAFType = %@.";
    }

    else
    {
      v11 = @"Missing VDAFType.";
    }

    v12 = [NSString stringWithFormat:v11, v15];
    v13 = [_DPDediscoError errorWithCode:700 description:v12];

    [v13 logAndStoreInError:a4];
    v7 = 0;
    goto LABEL_13;
  }

  v7 = &off_100075900;
LABEL_13:

LABEL_14:

  return v7;
}

- (BOOL)isTaskConfigValidWithError:(id *)a3
{
  v5 = [(_DPTaskProv *)self donation];
  v6 = [v5 metadata];

  if (v6)
  {
    v7 = [(_DPTaskProv *)self donation];
    v8 = [v7 algorithmParameters];

    if (v8)
    {
      v9 = [(_DPTaskProv *)self leaderURL];
      if ([v9 length])
      {
        v10 = [(_DPTaskProv *)self helperURL];
        v11 = [v10 length];

        if (v11)
        {
          v12 = [(_DPTaskProv *)self donation];
          v13 = [v12 metadata];

          v14 = kDPMetadataDediscoTaskConfig;
          v15 = [v13 objectForKeyedSubscript:kDPMetadataDediscoTaskConfig];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v13 objectForKeyedSubscript:v14];
            v17 = [v16 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigMinBatchSize];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [v13 objectForKeyedSubscript:v14];
              v19 = [v18 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigTaskExpiration];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = [v13 objectForKeyedSubscript:v14];
                [v20 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigDPConfig];
                v21 = v47 = v13;
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                v13 = v47;
                if (isKindOfClass)
                {
                  v23 = [(_DPTaskProv *)self donation];
                  v24 = [v23 algorithmParameters];

                  if ([(_DPTaskProv *)self vdafType]== -61437)
                  {
                    v55 = 0u;
                    v56 = 0u;
                    v53 = 0u;
                    v54 = 0u;
                    v59[0] = kDPVDAFNumOfProofs;
                    v59[1] = kDPVDAFPrio3SumVectorBitWidth;
                    obj = [NSArray arrayWithObjects:v59 count:2];
                    v25 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = *v54;
                      while (2)
                      {
                        for (i = 0; i != v26; i = i + 1)
                        {
                          if (*v54 != v27)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v29 = *(*(&v53 + 1) + 8 * i);
                          v30 = [v24 objectForKeyedSubscript:v29];
                          objc_opt_class();
                          v31 = objc_opt_isKindOfClass();

                          if ((v31 & 1) == 0)
                          {
                            v46 = [NSString stringWithFormat:@"Invalid VDAF parameter(%@) in algorithm parameters, it should be a number.", v29];
                            v42 = [_DPDediscoError errorWithCode:701 description:v46];
LABEL_41:

                            [v42 logAndStoreInError:a3];
                            v32 = 0;
                            goto LABEL_42;
                          }
                        }

                        v26 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
                        if (v26)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v51 = 0u;
                    v52 = 0u;
                    v49 = 0u;
                    v50 = 0u;
                    v57 = kDPMetadataVDAFPrio3SumVectorChunkLength;
                    v32 = 1;
                    obj = [NSArray arrayWithObjects:&v57 count:1];
                    v33 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
                    if (v33)
                    {
                      v34 = v33;
                      v35 = *v50;
                      v36 = kDPMetadataVDAF;
                      while (2)
                      {
                        for (j = 0; j != v34; j = j + 1)
                        {
                          if (*v50 != v35)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v38 = *(*(&v49 + 1) + 8 * j);
                          v39 = [v13 objectForKeyedSubscript:v36];
                          v40 = [v39 objectForKeyedSubscript:v38];
                          objc_opt_class();
                          v41 = objc_opt_isKindOfClass();

                          if ((v41 & 1) == 0)
                          {
                            v46 = [NSString stringWithFormat:@"Invalid VDAF parameter(%@) in metadata, it should be a number.", v38];
                            v42 = [_DPDediscoError errorWithCode:701 description:v46];
                            v13 = v47;
                            goto LABEL_41;
                          }

                          v13 = v47;
                        }

                        v34 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
                        v32 = 1;
                        if (v34)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v42 = 0;
LABEL_42:
                  }

                  else
                  {
                    v42 = 0;
                    v32 = 1;
                  }

                  goto LABEL_37;
                }

LABEL_36:
                v42 = [_DPDediscoError errorWithCode:400 description:@"Malformed metadata types."];
                [v42 logAndStoreInError:a3];
                v32 = 0;
LABEL_37:

                goto LABEL_32;
              }
            }
          }

          goto LABEL_36;
        }
      }

      else
      {
      }

      v43 = @"Aggregator URL is empty.";
      v44 = 300;
    }

    else
    {
      v43 = @"Malformed algorithm parameter in plist, it should be non-nil.";
      v44 = 401;
    }
  }

  else
  {
    v43 = @"Malformed metadata value, it should be non-nil.";
    v44 = 400;
  }

  v42 = [_DPDediscoError errorWithCode:v44 description:v43];
  [v42 logAndStoreInError:a3];
  v32 = 0;
LABEL_32:

  return v32;
}

- (id)taskInfoWithError:(id *)a3
{
  v4 = [NSMutableData dataWithLength:32];
  v5 = [v4 mutableBytes];
  v6 = [(_DPTaskProv *)self collectionID];
  v7 = [v6 dataUsingEncoding:4];

  CC_SHA256([v7 bytes], objc_msgSend(v7, "length"), v5);

  return v4;
}

- (unsigned)derivedMinBatchSize
{
  v2 = [(_DPTaskProv *)self donation];
  v3 = [v2 metadata];
  v4 = [v3 objectForKeyedSubscript:kDPMetadataDediscoTaskConfig];
  v5 = [v4 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigMinBatchSize];
  v6 = [v5 unsignedIntValue];

  return v6;
}

- (unint64_t)derivedTaskExpiration
{
  v2 = [(_DPTaskProv *)self donation];
  v3 = [v2 metadata];
  v4 = [v3 objectForKeyedSubscript:kDPMetadataDediscoTaskConfig];

  v5 = [v4 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigTaskExpiration];
  v6 = [v5 unsignedLongLongValue];

  return v6;
}

- (_DPTaskProv)init
{
  [(_DPTaskProv *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end