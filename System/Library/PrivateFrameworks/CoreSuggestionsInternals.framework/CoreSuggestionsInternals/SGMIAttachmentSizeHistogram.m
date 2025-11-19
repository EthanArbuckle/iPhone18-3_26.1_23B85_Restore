@interface SGMIAttachmentSizeHistogram
- (SGMIAttachmentSizeHistogram)initWithNumberArray:(id)a3;
- (id)description;
- (id)numberArray;
- (void)bucketizeWithSize:(unint64_t)a3;
@end

@implementation SGMIAttachmentSizeHistogram

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *&self->_countUpTo8KB;
  v5 = [v3 initWithFormat:@"UpTo8KB: %tu\n8KBTo32KB: %tu\n32KBTo128KB: %tu\n128KBTo512KB: %tu\n512KBTo2MB: %tu\nOver2MB: %tu", self->_countUpTo8KB, self->_count8KBTo32KB, self->_count32KBTo128KB, self->_count128KBTo512KB, self->_count512KBTo2MB, self->_countOver2MB];

  return v5;
}

- (void)bucketizeWithSize:(unint64_t)a3
{
  v3 = 8;
  v4 = 16;
  v5 = 48;
  if (a3 < 0x200001)
  {
    v5 = 40;
  }

  if (a3 < 0x80001)
  {
    v5 = 32;
  }

  if (a3 <= 0x20000)
  {
    v5 = 24;
  }

  if (a3 > 0x8000)
  {
    v4 = v5;
  }

  if (a3 > 0x2000)
  {
    v3 = v4;
  }

  ++*(&self->super.isa + v3);
}

- (SGMIAttachmentSizeHistogram)initWithNumberArray:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] != 6)
  {
    v5 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_fault_impl(&dword_231E60000, v5, OS_LOG_TYPE_FAULT, "Error initializing SGMIAttachmentSizeHistogram with numberArray: %@", buf, 0xCu);
    }
  }

  v15.receiver = self;
  v15.super_class = SGMIAttachmentSizeHistogram;
  v6 = [(SGMIAttachmentSizeHistogram *)&v15 init];
  if (v6)
  {
    v7 = [v4 objectAtIndexedSubscript:0];
    v6->_countUpTo8KB = [v7 unsignedIntegerValue];

    v8 = [v4 objectAtIndexedSubscript:1];
    v6->_count8KBTo32KB = [v8 unsignedIntegerValue];

    v9 = [v4 objectAtIndexedSubscript:2];
    v6->_count32KBTo128KB = [v9 unsignedIntegerValue];

    v10 = [v4 objectAtIndexedSubscript:3];
    v6->_count128KBTo512KB = [v10 unsignedIntegerValue];

    v11 = [v4 objectAtIndexedSubscript:4];
    v6->_count512KBTo2MB = [v11 unsignedIntegerValue];

    v12 = [v4 objectAtIndexedSubscript:5];
    v6->_countOver2MB = [v12 unsignedIntegerValue];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)numberArray
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_countUpTo8KB];
  v12[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_count8KBTo32KB];
  v12[1] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_count32KBTo128KB];
  v12[2] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_count128KBTo512KB];
  v12[3] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_count512KBTo2MB];
  v12[4] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_countOver2MB];
  v12[5] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end