@interface MFAttachmentPlaceholder
+ (id)_placeholderMagic;
+ (id)dataForPlaceholder:(id)a3;
+ (id)placeholder;
+ (id)placeholderFromSerializedRepresentation:(id)a3;
- (BOOL)useMailDrop;
- (MFAttachmentPlaceholder)init;
- (id)description;
- (id)fileURL;
- (id)serializedRepresentation;
- (unint64_t)fileSize;
- (void)dealloc;
- (void)setFileSize:(unint64_t)a3;
@end

@implementation MFAttachmentPlaceholder

+ (id)placeholder
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (MFAttachmentPlaceholder)init
{
  v4.receiver = self;
  v4.super_class = MFAttachmentPlaceholder;
  v2 = [(MFAttachmentPlaceholder *)&v4 init];
  if (v2)
  {
    v2->_jsonDictionary = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFAttachmentPlaceholder;
  [(MFAttachmentPlaceholder *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MFAttachmentPlaceholder *)self fileName];
  v5 = [(MFAttachmentPlaceholder *)self fileSize];
  v6 = [(MFAttachmentPlaceholder *)self mimeType];
  v7 = [(MFAttachmentPlaceholder *)self fileURLString];
  v8 = [(MFAttachmentPlaceholder *)self contentID];
  v9 = [(MFAttachmentPlaceholder *)self useMailDrop];
  v10 = "SMTP";
  if (v9)
  {
    v10 = "MailDrop";
  }

  return [v3 stringWithFormat:@"%@ %lu [%@] @ %@ : %@ [%s]", v4, v5, v6, v7, v8, v10];
}

- (unint64_t)fileSize
{
  v2 = [(NSMutableDictionary *)self->_jsonDictionary objectForKeyedSubscript:@"fileSize"];

  return [v2 unsignedIntegerValue];
}

- (void)setFileSize:(unint64_t)a3
{
  jsonDictionary = self->_jsonDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];

  [(NSMutableDictionary *)jsonDictionary setValue:v4 forKey:@"fileSize"];
}

- (id)fileURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(MFAttachmentPlaceholder *)self fileURLString];

  return [v2 URLWithString:v3];
}

- (BOOL)useMailDrop
{
  v2 = [(NSMutableDictionary *)self->_jsonDictionary objectForKeyedSubscript:@"mailDrop"];

  return [v2 BOOLValue];
}

+ (id)placeholderFromSerializedRepresentation:(id)a3
{
  if (![a1 isPlaceholderSerializedRepresentation:?])
  {
    return 0;
  }

  v4 = [a3 subdataWithRange:{4, objc_msgSend(a3, "length") - 4}];
  if (!v4)
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachmentPlaceholder *)v9 placeholderFromSerializedRepresentation:v10, v11, v12, v13, v14, v15, v16];
    }

    return 0;
  }

  v18 = 0;
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v18];
  v6 = 0;
  if (!v18)
  {
    v7 = v5;
    if (v5)
    {
      v6 = +[MFAttachmentPlaceholder placeholder];
      v8 = [v7 mutableCopy];
      [v6 _setJSONDictionary:v8];
    }
  }

  return v6;
}

+ (id)_placeholderMagic
{
  if (_placeholderMagic_onceToken != -1)
  {
    +[MFAttachmentPlaceholder _placeholderMagic];
  }

  return _placeholderMagic_placeholderMagic;
}

id __44__MFAttachmentPlaceholder__placeholderMagic__block_invoke()
{
  result = [MEMORY[0x277CBEA90] dataWithBytes:&MFAttachmentPlaceholderMagic length:4];
  _placeholderMagic_placeholderMagic = result;
  return result;
}

- (id)serializedRepresentation
{
  jsonDictionary = self->_jsonDictionary;
  if (!jsonDictionary)
  {
    return 0;
  }

  v15 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:jsonDictionary options:0 error:&v15];
  if (!v3)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachmentPlaceholder *)v6 serializedRepresentation:v7];
    }

    return 0;
  }

  v4 = v3;
  v5 = [MEMORY[0x277CBEB28] dataWithBytes:&MFAttachmentPlaceholderMagic length:4];
  [v5 appendData:v4];
  return v5;
}

+ (id)dataForPlaceholder:(id)a3
{
  v3 = [a3 fileURL];
  if (![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachmentPlaceholder *)v3 dataForPlaceholder:v5];
    }

    return 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v16 = __46__MFAttachmentPlaceholder_dataForPlaceholder___block_invoke;
  v17 = &unk_2798B71B0;
  v18 = v3;
  if (MFIsMobileMail())
  {
    v4 = v16(v15, 0);
  }

  else
  {
    v4 = 0;
  }

  result = [objc_msgSend(v4 result:{0), "data"}];
  if (!result)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachmentPlaceholder *)v7 dataForPlaceholder:v8, v9, v10, v11, v12, v13, v14];
    }

    return 0;
  }

  return result;
}

uint64_t __46__MFAttachmentPlaceholder_dataForPlaceholder___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MFAttachmentSecurityScope securityScopedURL:*(a1 + 32) withToken:a2];
  v3 = MEMORY[0x277D07150];

  return [v3 futureWithResult:v2];
}

+ (void)dataForPlaceholder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_258BDA000, a2, OS_LOG_TYPE_ERROR, "#Attachments Attempted to resolve placeholder for non-existant file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end