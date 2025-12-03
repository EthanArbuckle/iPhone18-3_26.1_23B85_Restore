@interface GTUnsupportedFenumInfo
- (GTUnsupportedFenumInfo)initWithCoder:(id)coder;
- (GTUnsupportedFenumInfo)initWithFenum:(id)fenum category:(id)category customMessage:(id)message customRecoverySuggestion:(id)suggestion;
- (id)asError;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTUnsupportedFenumInfo

- (GTUnsupportedFenumInfo)initWithFenum:(id)fenum category:(id)category customMessage:(id)message customRecoverySuggestion:(id)suggestion
{
  fenumCopy = fenum;
  categoryCopy = category;
  messageCopy = message;
  suggestionCopy = suggestion;
  v18.receiver = self;
  v18.super_class = GTUnsupportedFenumInfo;
  v15 = [(GTUnsupportedFenumInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fenum, fenum);
    objc_storeStrong(&v16->_category, category);
    objc_storeStrong(&v16->_customMessage, message);
    objc_storeStrong(&v16->_customRecoverySuggestion, suggestion);
  }

  return v16;
}

- (GTUnsupportedFenumInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = GTUnsupportedFenumInfo;
  v5 = [(GTUnsupportedFenumInfo *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fenum"];
    fenum = v5->_fenum;
    v5->_fenum = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customMessage"];
    customMessage = v5->_customMessage;
    v5->_customMessage = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customRecoverySuggestion"];
    customRecoverySuggestion = v5->_customRecoverySuggestion;
    v5->_customRecoverySuggestion = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  fenum = self->_fenum;
  coderCopy = coder;
  [coderCopy encodeObject:fenum forKey:@"fenum"];
  [coderCopy encodeObject:self->_category forKey:@"category"];
  [coderCopy encodeObject:self->_customMessage forKey:@"customMessage"];
  [coderCopy encodeObject:self->_customRecoverySuggestion forKey:@"customRecoverySuggestion"];
}

- (id)asError
{
  if ([(NSString *)self->_fenum isEqualToString:&stru_2860D7200])
  {
    fenum = 0;
  }

  else
  {
    fenum = self->_fenum;
  }

  v4 = PrettifyFenumString(fenum, 0, 1);
  if ([(NSString *)self->_category isEqualToString:&stru_2860D7200])
  {
    category = 0;
  }

  else
  {
    category = self->_category;
  }

  v6 = category;
  if ([(NSString *)self->_customMessage isEqualToString:&stru_2860D7200])
  {
    customMessage = 0;
  }

  else
  {
    customMessage = self->_customMessage;
  }

  v8 = customMessage;
  if ([(NSString *)self->_customRecoverySuggestion isEqualToString:&stru_2860D7200])
  {
    customRecoverySuggestion = 0;
  }

  else
  {
    customRecoverySuggestion = self->_customRecoverySuggestion;
  }

  v10 = customRecoverySuggestion;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = v11;
  v13 = MEMORY[0x277CCA470];
  if (v6)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Capturing %@ is not supported.", v6];
    [v12 setObject:v14 forKey:*MEMORY[0x277CCA450]];

    if (!v4)
    {
      goto LABEL_19;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported method: %@", v4];
    v16 = *v13;
  }

  else
  {
    if (!v4)
    {
      [v11 setObject:@"Capturing disabled. Unsupported API usage." forKey:*MEMORY[0x277CCA450]];
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Capturing %@ is not supported.", v4];
    v16 = *MEMORY[0x277CCA450];
  }

  [v12 setObject:v15 forKey:v16];

LABEL_19:
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_20:
  v17 = *v13;
  v18 = [v12 objectForKey:v17];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 stringByAppendingFormat:@"\n\n%@", v8];
  }

  else
  {
    v20 = v8;
  }

  v21 = v20;
  [v12 setObject:v20 forKey:v17];

LABEL_24:
  if (!v10)
  {
    v10 = @"To enable capturing, disable calls to unsupported APIs and relaunch your application.";
  }

  [v12 setObject:v10 forKey:*MEMORY[0x277CCA498]];
  v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.gputools.capture" code:1000 userInfo:v12];

  return v22;
}

@end