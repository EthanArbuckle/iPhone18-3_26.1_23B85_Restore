@interface MFContentErrorDocument
- (MFContentErrorDocument)initWithMimePart:(id)part;
- (NSString)content;
- (void)dealloc;
@end

@implementation MFContentErrorDocument

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFContentErrorDocument;
  [(MFContentErrorDocument *)&v3 dealloc];
}

- (MFContentErrorDocument)initWithMimePart:(id)part
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (!part)
  {
    [(MFContentErrorDocument *)a2 initWithMimePart:?];
  }

  v10.receiver = self;
  v10.super_class = MFContentErrorDocument;
  v5 = [(MFContentErrorDocument *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"CANNOT_DECODE_MULTIPART_MESSAGE", @"This message cannot be displayed because of the way it is formatted. Ask the sender to send it again using a different format or email program.\n\n%@/%@", @"Delayed", objc_msgSend(part, "type"), objc_msgSend(part, "subtype")];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v5->_error = [MEMORY[0x277CCA9B8] mf_decodeFailedErrorWithUserInfo:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSString)content
{
  error = [(MFContentErrorDocument *)self error];

  return [(NSError *)error localizedDescription];
}

@end