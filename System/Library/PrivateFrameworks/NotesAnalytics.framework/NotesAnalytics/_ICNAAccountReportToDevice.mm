@interface _ICNAAccountReportToDevice
- (_ICNAAccountReportToDevice)init;
- (id)accountTypeSummary;
- (void)reportAccountType:(int64_t)type noteCount:(unint64_t)count;
@end

@implementation _ICNAAccountReportToDevice

- (_ICNAAccountReportToDevice)init
{
  v8.receiver = self;
  v8.super_class = _ICNAAccountReportToDevice;
  v2 = [(_ICNAAccountReportToDevice *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    countOfAccountsByType = v2->_countOfAccountsByType;
    v2->_countOfAccountsByType = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    countOfNotesByType = v2->_countOfNotesByType;
    v2->_countOfNotesByType = v5;
  }

  return v2;
}

- (void)reportAccountType:(int64_t)type noteCount:(unint64_t)count
{
  countOfAccountsByType = [(_ICNAAccountReportToDevice *)self countOfAccountsByType];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v9 = [countOfAccountsByType objectForKeyedSubscript:v8];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  countOfAccountsByType2 = [(_ICNAAccountReportToDevice *)self countOfAccountsByType];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [countOfAccountsByType2 setObject:v11 forKeyedSubscript:v13];

  countOfNotesByType = [(_ICNAAccountReportToDevice *)self countOfNotesByType];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v16 = [countOfNotesByType objectForKeyedSubscript:v15];
  unsignedIntegerValue2 = [v16 unsignedIntegerValue];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2 + count];
  countOfNotesByType2 = [(_ICNAAccountReportToDevice *)self countOfNotesByType];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [countOfNotesByType2 setObject:v20 forKeyedSubscript:v19];
}

- (id)accountTypeSummary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  countOfAccountsByType = [(_ICNAAccountReportToDevice *)self countOfAccountsByType];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48___ICNAAccountReportToDevice_accountTypeSummary__block_invoke;
  v6[3] = &unk_2799AF258;
  v6[4] = self;
  v6[5] = &v7;
  [countOfAccountsByType enumerateKeysAndObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end