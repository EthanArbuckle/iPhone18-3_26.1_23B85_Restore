@interface SSRDonationUtteranceData
- (SSRDonationUtteranceData)initWithDonationInfoString:(id)string locale:(id)locale;
@end

@implementation SSRDonationUtteranceData

- (SSRDonationUtteranceData)initWithDonationInfoString:(id)string locale:(id)locale
{
  v23 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  localeCopy = locale;
  v20.receiver = self;
  v20.super_class = SSRDonationUtteranceData;
  v8 = [(SSRDonationUtteranceData *)&v20 init];
  if (!v8)
  {
LABEL_12:
    v15 = v8;
    goto LABEL_13;
  }

  v9 = [MEMORY[0x277D653D8] convertToUtteranceDataWithDonationString:stringCopy];
  v10 = v9;
  if (!v9)
  {
    v13 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v22 = "[SSRDonationUtteranceData initWithDonationInfoString:locale:]";
    v14 = "%s donationInfo return as nil";
LABEL_15:
    _os_log_error_impl(&dword_222E4D000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
    goto LABEL_9;
  }

  if ([v9 count])
  {
    v11 = [v10 objectAtIndexedSubscript:0];
    donationId = v8->_donationId;
    v8->_donationId = v11;

    if ([v10 count] == 1)
    {
      v8->_triggerPhrase = 0;
    }

    else
    {
      v16 = [v10 objectAtIndexedSubscript:1];
      v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v16, "intValue")}];
      v8->_triggerPhrase = [MEMORY[0x277D653D8] convertToEnrollmentTriggerPhraseWithPhId:{objc_msgSend(v17, "unsignedIntegerValue")}];
    }

    objc_storeStrong(&v8->_locale, locale);

    goto LABEL_12;
  }

  v13 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v22 = "[SSRDonationUtteranceData initWithDonationInfoString:locale:]";
    v14 = "%s donationInfo contain empty info";
    goto LABEL_15;
  }

LABEL_9:

  v15 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

@end