@interface NSData(MimeDataEncoding)
- (id)mf_decodeQuotedPrintableForText:()MimeDataEncoding;
@end

@implementation NSData(MimeDataEncoding)

- (id)mf_decodeQuotedPrintableForText:()MimeDataEncoding
{
  v5 = objc_alloc_init(MFBufferedDataConsumer);
  v6 = [(MFBaseFilterDataConsumer *)[MFQuotedPrintableDecoder alloc] initWithConsumer:v5];
  [(MFQuotedPrintableDecoder *)v6 setForTextPart:a3];
  v7 = _EnDecodeData(v5, v6, a1);

  return v7;
}

@end