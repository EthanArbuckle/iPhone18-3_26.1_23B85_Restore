@interface _DPTaskProv00
- (_DPTaskProv00)initWithDonation:(id)a3 leaderURL:(id)a4 helperURL:(id)a5 error:(id *)a6;
- (id)encodedQueryConfig;
- (id)encodedTaskConfigWithError:(id *)a3;
- (id)encodedVDAFConfig;
@end

@implementation _DPTaskProv00

- (_DPTaskProv00)initWithDonation:(id)a3 leaderURL:(id)a4 helperURL:(id)a5 error:(id *)a6
{
  v12.receiver = self;
  v12.super_class = _DPTaskProv00;
  v7 = [(_DPTaskProv *)&v12 initWithDonation:a3 leaderURL:a4 helperURL:a5 error:?];
  v8 = v7;
  if (v7 && [(_DPTaskProv *)v7 vdafType]!= -65536)
  {
    v10 = [_DPDediscoError errorWithCode:700 description:@"TaskProv00 cannot handle any VDAF other than Prio2."];
    [v10 logAndStoreInError:a6];

    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (id)encodedTaskConfigWithError:(id *)a3
{
  v5 = [(_DPTaskProv *)self encodedTaskConfig];

  if (v5)
  {
    v6 = [(_DPTaskProv *)self encodedTaskConfig];
  }

  else
  {
    v7 = objc_alloc_init(_DPBigEndianDataEncoder);
    v8 = [(_DPTaskProv *)self taskInfo];
    v9 = [v8 length];

    if (v9 < 0x100)
    {
      v11 = [(_DPTaskProv *)self taskInfo];
      [v7 writeUChar:{objc_msgSend(v11, "length")}];

      v12 = [(_DPTaskProv *)self taskInfo];
      [v7 appendData:v12];

      v13 = objc_alloc_init(_DPBigEndianDataEncoder);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v14 = [(_DPTaskProv *)self leaderURL];
      v34[0] = v14;
      v15 = [(_DPTaskProv *)self helperURL];
      v34[1] = v15;
      v16 = [NSArray arrayWithObjects:v34 count:2];

      v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v30 + 1) + 8 * i);
            if ([v21 length] >> 16)
            {
              v10 = [_DPDediscoError errorWithCode:800 description:@"URL length exceeds 64KB."];
              [v10 logAndStoreInError:a3];

              goto LABEL_16;
            }

            [v13 writeUInt16:{objc_msgSend(v21, "length")}];
            [v13 appendData:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v22 = [v13 buffer];
      v23 = [v22 length];

      if (v23 < 0x10000)
      {
        v25 = [v13 buffer];
        [v7 writeUInt16:{objc_msgSend(v25, "length")}];

        v26 = [v13 buffer];
        [v7 appendData:v26];

        v27 = [(_DPTaskProv00 *)self encodedQueryConfig];
        [v7 appendData:v27];

        [v7 writeUInt64:{-[_DPTaskProv taskExpiration](self, "taskExpiration")}];
        v28 = [(_DPTaskProv00 *)self encodedVDAFConfig];
        [v7 appendData:v28];

        v29 = [v7 buffer];
        [(_DPTaskProv *)self setEncodedTaskConfig:v29];

        v6 = [(_DPTaskProv *)self encodedTaskConfig];
        v10 = 0;
      }

      else
      {
        v10 = [_DPDediscoError errorWithCode:800 description:@"Aggregator endpoints length exceeds 64KB."];
        [v10 logAndStoreInError:a3];
LABEL_16:
        v6 = 0;
      }
    }

    else
    {
      v10 = [_DPDediscoError errorWithCode:800 description:@"Task info length exceeds 256B."];
      [v10 logAndStoreInError:a3];
      v6 = 0;
    }
  }

  return v6;
}

- (id)encodedVDAFConfig
{
  v3 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:14];
  [v3 writeUChar:2];
  v4 = [(_DPTaskProv *)self donation];
  v5 = [v4 metadata];
  v6 = [v5 objectForKeyedSubscript:kDPMetadataDediscoTaskConfig];
  v7 = [v6 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigDPConfig];
  v8 = [v7 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigDPConfigLocalEpsilon];
  [v8 floatValue];
  v10 = v9;

  [v3 writeUChar:2];
  LODWORD(v11) = v10;
  [v3 writeFloat32:v11];
  [v3 writeUInt32:{-[_DPTaskProv vdafType](self, "vdafType")}];
  v12 = [(_DPTaskProv *)self donation];
  [v3 writeUInt32:{objc_msgSend(v12, "dimension")}];

  v13 = [v3 buffer];

  return v13;
}

- (id)encodedQueryConfig
{
  v3 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:19];
  [v3 writeUChar:2];
  [v3 writeUInt64:14400];
  [v3 writeUInt16:kDPTaskProvMaxBatchQueryCount];
  [v3 writeUInt32:{-[_DPTaskProv minBatchSize](self, "minBatchSize")}];
  [v3 writeUInt32:{-[_DPTaskProv maxBatchSize](self, "maxBatchSize")}];
  v4 = [v3 buffer];

  return v4;
}

@end