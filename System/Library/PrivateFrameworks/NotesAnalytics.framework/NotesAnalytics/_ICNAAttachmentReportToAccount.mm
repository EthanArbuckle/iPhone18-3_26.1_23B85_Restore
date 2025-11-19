@interface _ICNAAttachmentReportToAccount
- (_ICNAAttachmentReportToAccount)init;
- (id)attachmentUTISummary;
- (void)reportAttachmentTypeUTI:(id)a3;
@end

@implementation _ICNAAttachmentReportToAccount

- (_ICNAAttachmentReportToAccount)init
{
  v6.receiver = self;
  v6.super_class = _ICNAAttachmentReportToAccount;
  v2 = [(_ICNAAttachmentReportToAccount *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    countOfAttachmentByUTI = v2->_countOfAttachmentByUTI;
    v2->_countOfAttachmentByUTI = v3;
  }

  return v2;
}

- (void)reportAttachmentTypeUTI:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(_ICNAAttachmentReportToAccount *)self countOfAttachmentByUTI];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = [v6 unsignedIntegerValue];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
    v8 = [(_ICNAAttachmentReportToAccount *)self countOfAttachmentByUTI];
    [v8 setObject:v9 forKeyedSubscript:v4];
  }
}

- (id)attachmentUTISummary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [(_ICNAAttachmentReportToAccount *)self countOfAttachmentByUTI];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54___ICNAAttachmentReportToAccount_attachmentUTISummary__block_invoke;
  v6[3] = &unk_2799AF230;
  v6[4] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end