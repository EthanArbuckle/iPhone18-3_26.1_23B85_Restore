@interface _DPTaskProv00
- (_DPTaskProv00)initWithDonation:(id)donation leaderURL:(id)l helperURL:(id)rL error:(id *)error;
- (id)encodedQueryConfig;
- (id)encodedTaskConfigWithError:(id *)error;
- (id)encodedVDAFConfig;
@end

@implementation _DPTaskProv00

- (_DPTaskProv00)initWithDonation:(id)donation leaderURL:(id)l helperURL:(id)rL error:(id *)error
{
  v12.receiver = self;
  v12.super_class = _DPTaskProv00;
  v7 = [(_DPTaskProv *)&v12 initWithDonation:donation leaderURL:l helperURL:rL error:?];
  v8 = v7;
  if (v7 && [(_DPTaskProv *)v7 vdafType]!= -65536)
  {
    v10 = [_DPDediscoError errorWithCode:700 description:@"TaskProv00 cannot handle any VDAF other than Prio2."];
    [v10 logAndStoreInError:error];

    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (id)encodedTaskConfigWithError:(id *)error
{
  encodedTaskConfig = [(_DPTaskProv *)self encodedTaskConfig];

  if (encodedTaskConfig)
  {
    encodedTaskConfig2 = [(_DPTaskProv *)self encodedTaskConfig];
  }

  else
  {
    v7 = objc_alloc_init(_DPBigEndianDataEncoder);
    taskInfo = [(_DPTaskProv *)self taskInfo];
    v9 = [taskInfo length];

    if (v9 < 0x100)
    {
      taskInfo2 = [(_DPTaskProv *)self taskInfo];
      [v7 writeUChar:{objc_msgSend(taskInfo2, "length")}];

      taskInfo3 = [(_DPTaskProv *)self taskInfo];
      [v7 appendData:taskInfo3];

      v13 = objc_alloc_init(_DPBigEndianDataEncoder);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      leaderURL = [(_DPTaskProv *)self leaderURL];
      v34[0] = leaderURL;
      helperURL = [(_DPTaskProv *)self helperURL];
      v34[1] = helperURL;
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
              [v10 logAndStoreInError:error];

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

      buffer = [v13 buffer];
      v23 = [buffer length];

      if (v23 < 0x10000)
      {
        buffer2 = [v13 buffer];
        [v7 writeUInt16:{objc_msgSend(buffer2, "length")}];

        buffer3 = [v13 buffer];
        [v7 appendData:buffer3];

        encodedQueryConfig = [(_DPTaskProv00 *)self encodedQueryConfig];
        [v7 appendData:encodedQueryConfig];

        [v7 writeUInt64:{-[_DPTaskProv taskExpiration](self, "taskExpiration")}];
        encodedVDAFConfig = [(_DPTaskProv00 *)self encodedVDAFConfig];
        [v7 appendData:encodedVDAFConfig];

        buffer4 = [v7 buffer];
        [(_DPTaskProv *)self setEncodedTaskConfig:buffer4];

        encodedTaskConfig2 = [(_DPTaskProv *)self encodedTaskConfig];
        v10 = 0;
      }

      else
      {
        v10 = [_DPDediscoError errorWithCode:800 description:@"Aggregator endpoints length exceeds 64KB."];
        [v10 logAndStoreInError:error];
LABEL_16:
        encodedTaskConfig2 = 0;
      }
    }

    else
    {
      v10 = [_DPDediscoError errorWithCode:800 description:@"Task info length exceeds 256B."];
      [v10 logAndStoreInError:error];
      encodedTaskConfig2 = 0;
    }
  }

  return encodedTaskConfig2;
}

- (id)encodedVDAFConfig
{
  v3 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:14];
  [v3 writeUChar:2];
  donation = [(_DPTaskProv *)self donation];
  metadata = [donation metadata];
  v6 = [metadata objectForKeyedSubscript:kDPMetadataDediscoTaskConfig];
  v7 = [v6 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigDPConfig];
  v8 = [v7 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigDPConfigLocalEpsilon];
  [v8 floatValue];
  v10 = v9;

  [v3 writeUChar:2];
  LODWORD(v11) = v10;
  [v3 writeFloat32:v11];
  [v3 writeUInt32:{-[_DPTaskProv vdafType](self, "vdafType")}];
  donation2 = [(_DPTaskProv *)self donation];
  [v3 writeUInt32:{objc_msgSend(donation2, "dimension")}];

  buffer = [v3 buffer];

  return buffer;
}

- (id)encodedQueryConfig
{
  v3 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:19];
  [v3 writeUChar:2];
  [v3 writeUInt64:14400];
  [v3 writeUInt16:kDPTaskProvMaxBatchQueryCount];
  [v3 writeUInt32:{-[_DPTaskProv minBatchSize](self, "minBatchSize")}];
  [v3 writeUInt32:{-[_DPTaskProv maxBatchSize](self, "maxBatchSize")}];
  buffer = [v3 buffer];

  return buffer;
}

@end