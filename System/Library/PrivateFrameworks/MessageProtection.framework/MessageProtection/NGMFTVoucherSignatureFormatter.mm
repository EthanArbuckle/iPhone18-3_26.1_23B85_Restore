@interface NGMFTVoucherSignatureFormatter
- (NGMFTVoucherSignatureFormatter)initWithApplicationData:(id)a3;
@end

@implementation NGMFTVoucherSignatureFormatter

- (NGMFTVoucherSignatureFormatter)initWithApplicationData:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NGMFTVoucherSignatureFormatter;
  v5 = [(NGMFTVoucherSignatureFormatter *)&v12 init];
  if (v5)
  {
    v6 = [@"com.apple.FaceTime.Voucher" dataUsingEncoding:4];
    v7 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v4, "length") + objc_msgSend(v6, "length")}];
    if (!v7)
    {

      v10 = 0;
      goto LABEL_6;
    }

    v8 = v7;
    [(NSData *)v7 appendData:v6];
    [(NSData *)v8 appendData:v4];
    signedData = v5->_signedData;
    v5->_signedData = v8;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

@end