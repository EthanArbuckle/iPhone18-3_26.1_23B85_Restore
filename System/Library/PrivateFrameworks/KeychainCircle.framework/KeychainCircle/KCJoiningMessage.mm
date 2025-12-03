@interface KCJoiningMessage
+ (id)messageWithDER:(id)r error:(id *)error;
+ (unint64_t)encodedSizeType:(int)type data:(id)data payload:(id)payload error:(id *)error;
- (BOOL)inflatePartsOfEncoding:(id *)encoding;
- (KCJoiningMessage)initWithDER:(id)r error:(id *)error;
@end

@implementation KCJoiningMessage

- (KCJoiningMessage)initWithDER:(id)r error:(id *)error
{
  rCopy = r;
  v13.receiver = self;
  v13.super_class = KCJoiningMessage;
  v7 = [(KCJoiningMessage *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithData:rCopy];
    der = v7->_der;
    v7->_der = v8;
  }

  if ([(KCJoiningMessage *)v7 inflatePartsOfEncoding:error])
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v11;
}

- (BOOL)inflatePartsOfEncoding:(id *)encoding
{
  v5 = [(KCJoiningMessage *)self der];
  bytes = [v5 bytes];

  v7 = [(KCJoiningMessage *)self der];
  v8 = bytes + [v7 length];

  v31 = 0;
  if (!ccder_decode_constructed_tl())
  {
    v14 = @"Not sequence";
    goto LABEL_5;
  }

  if (v31 != v8)
  {
    v14 = @"Extra data at end of message";
LABEL_5:
    KCJoiningErrorCreate(1, encoding, v14, v9, v10, v11, v12, v13, v29);
    return 0;
  }

  v30[1] = 0xAAAAAAAAAAAAAAAALL;
  v16 = ccder_decode_uint64();
  self->_type = 255;
  v30[0] = 0;
  v17 = kcder_decode_data_internal(v30, 0, encoding, v16, v8);
  v18 = v30[0];
  v19 = v30[0];
  if (v17 == v8)
  {
    v21 = 0;
    v20 = v8;
  }

  else
  {
    v29 = 0;
    v20 = kcder_decode_data_internal(&v29, 0, encoding, v17, v8);
    v21 = v29;
  }

  objc_storeStrong(&self->_firstData, v18);
  secondData = self->_secondData;
  self->_secondData = v21;

  v15 = v20 == v8;
  if (v20 != v8)
  {
    KCJoiningErrorCreate(1, encoding, @"Extra in sequence", v23, v24, v25, v26, v27, v29);
  }

  return v15;
}

+ (unint64_t)encodedSizeType:(int)type data:(id)data payload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  ccder_sizeof_uint64();
  [data length];
  if (ccder_sizeof_raw_octet_string())
  {
    if (payloadCopy)
    {
      [payloadCopy length];
      ccder_sizeof_raw_octet_string();
    }

    v8 = ccder_sizeof();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)messageWithDER:(id)r error:(id *)error
{
  rCopy = r;
  v5 = [[KCJoiningMessage alloc] initWithDER:rCopy error:0];

  return v5;
}

@end