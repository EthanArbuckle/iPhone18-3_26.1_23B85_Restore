@interface CATSharingSentMessage
+ (id)instanceWithDictionary:(id)dictionary;
- (CATSharingSentMessage)initWithContent:(id)content;
- (NSDictionary)dictionaryValue;
@end

@implementation CATSharingSentMessage

- (CATSharingSentMessage)initWithContent:(id)content
{
  contentCopy = content;
  if (!contentCopy)
  {
    [(CATSharingSentMessage *)a2 initWithContent:?];
  }

  v10.receiver = self;
  v10.super_class = CATSharingSentMessage;
  v6 = [(CATSharingSentMessage *)&v10 init];
  if (v6)
  {
    v7 = [contentCopy copy];
    content = v6->_content;
    v6->_content = v7;
  }

  return v6;
}

- (NSDictionary)dictionaryValue
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"SharingSendMessageContent";
  content = [(CATSharingSentMessage *)self content];
  v7[0] = content;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"SharingSendMessageContent"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [[self alloc] initWithContent:v7];
  }

  else
  {
    if (_CATLogGeneral_onceToken_3 != -1)
    {
      +[CATSharingSentMessage instanceWithDictionary:];
    }

    v9 = _CATLogGeneral_logObj_3;
    if (os_log_type_enabled(_CATLogGeneral_logObj_3, OS_LOG_TYPE_ERROR))
    {
      [(CATSharingSentMessage *)v9 instanceWithDictionary:self, dictionaryCopy];
    }

    v8 = 0;
  }

  return v8;
}

- (void)initWithContent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATSharingSentMessage.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"content"}];
}

+ (void)instanceWithDictionary:(uint64_t)a3 .cold.2(void *a1, objc_class *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = NSStringFromClass(a2);
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = a3;
  _os_log_error_impl(&dword_24329F000, v5, OS_LOG_TYPE_ERROR, "%{public}@ failed to initialize, data is missing from %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end