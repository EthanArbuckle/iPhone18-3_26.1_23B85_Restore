@interface NSData(KCJoiningMessages)
+ (id)dataWithEncodedSequenceData:()KCJoiningMessages data:error:;
+ (id)dataWithEncodedSequenceString:()KCJoiningMessages data:error:;
+ (id)dataWithEncodedString:()KCJoiningMessages error:;
@end

@implementation NSData(KCJoiningMessages)

+ (id)dataWithEncodedSequenceString:()KCJoiningMessages data:error:
{
  v7 = a3;
  v8 = a4;
  v9 = sizeof_seq_string_data(v7, v8);
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB28] dataWithLength:v9];
    mutableBytes = [v10 mutableBytes];
    [v10 length];
    if (encode_seq_string_data(v7, v8, a5, mutableBytes) == mutableBytes)
    {
      v17 = v10;
    }

    else
    {
      KCJoiningErrorCreate(3, a5, @"extra data", v12, v13, v14, v15, v16, v19);
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)dataWithEncodedSequenceData:()KCJoiningMessages data:error:
{
  v7 = a3;
  v8 = a4;
  v9 = sizeof_seq_data_data(v7, v8);
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB28] dataWithLength:v9];
    mutableBytes = [v10 mutableBytes];
    [v10 length];
    if (encode_seq_data_data(v7, v8) == mutableBytes)
    {
      v17 = v10;
    }

    else
    {
      KCJoiningErrorCreate(3, a5, @"extra data", v12, v13, v14, v15, v16, v19);
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)dataWithEncodedString:()KCJoiningMessages error:
{
  v5 = a3;
  [v5 lengthOfBytesUsingEncoding:4];
  v6 = ccder_sizeof();
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB28] dataWithLength:v6];
    mutableBytes = [v7 mutableBytes];
    if (kcder_encode_string(v5, a4, mutableBytes, mutableBytes + [v7 length]) == mutableBytes)
    {
      v14 = v7;
    }

    else
    {
      KCJoiningErrorCreate(3, a4, @"extra data", v9, v10, v11, v12, v13, v16);
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end