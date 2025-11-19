@interface CESRRawSpeechProfileWord
- (CESRRawSpeechProfileWord)init;
- (CESRRawSpeechProfileWord)initWithSpeechWordDictionary:(id)a3;
- (id)_extractOrthographyFromSpeechWord:(id)a3;
- (id)_extractTagFromSpeechWord:(id)a3;
@end

@implementation CESRRawSpeechProfileWord

- (id)_extractOrthographyFromSpeechWord:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKey:@"orthography"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[CESRRawSpeechProfileWord _extractOrthographyFromSpeechWord:]";
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s Missing orthography string value in speech word: %@", &v9, 0x16u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_extractTagFromSpeechWord:(id)a3
{
  v3 = [a3 objectForKey:@"tag"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKey:@"string"];
LABEL_6:
      v5 = v4;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (CESRRawSpeechProfileWord)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"You must use -initWithSpeechWordDictionary" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

- (CESRRawSpeechProfileWord)initWithSpeechWordDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CESRRawSpeechProfileWord;
  v5 = [(CESRRawSpeechProfileWord *)&v16 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v4 || ![v4 count])
  {
    v13 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[CESRRawSpeechProfileWord initWithSpeechWordDictionary:]";
      v19 = 2112;
      v20 = v4;
      _os_log_error_impl(&dword_225EEB000, v13, OS_LOG_TYPE_ERROR, "%s Cannot construct speech word from empty dictionary: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v6 = [(CESRRawSpeechProfileWord *)v5 _extractTagFromSpeechWord:v4];
  v7 = [v6 copy];
  tagValue = v5->_tagValue;
  v5->_tagValue = v7;

  v5->_tagType = CESRRawSpeechProfileWordTagFromString(v5->_tagValue);
  v9 = [(CESRRawSpeechProfileWord *)v5 _extractOrthographyFromSpeechWord:v4];
  v10 = [v9 copy];
  orthography = v5->_orthography;
  v5->_orthography = v10;

  if (!v5->_orthography)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v12 = v5;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

@end