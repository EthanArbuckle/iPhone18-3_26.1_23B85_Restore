@interface DIAttributeText
- (BOOL)isNumeric;
- (BOOL)isSecureText;
- (BOOL)isSecureVisibleText;
- (BOOL)useLuhnCheck;
- (DIAttributeText)init;
- (DIAttributeText)initWithCoder:(id)coder;
- (NSString)defaultValue;
- (NSString)displayFormatPlaceholder;
- (NSString)getCurrentValue;
- (id)description;
- (id)displayFormatPaddingCharacters;
- (id)submissionString;
- (unint64_t)maxLength;
- (unint64_t)minLength;
- (void)encodeWithCoder:(id)coder;
- (void)setCurrentValue:(id)value;
- (void)setDefaultValue:(id)value;
- (void)setDisplayFormatPlaceholder:(id)placeholder;
- (void)setIsNumeric:(BOOL)numeric;
- (void)setIsSecureText:(BOOL)text;
- (void)setIsSecureVisibleText:(BOOL)text;
- (void)setLuhnCheck:(BOOL)check;
- (void)setMaxLength:(unint64_t)length;
- (void)setMinLength:(unint64_t)length;
@end

@implementation DIAttributeText

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = DIAttributeText;
  coderCopy = coder;
  [(DIAttribute *)&v5 encodeWithCoder:coderCopy];
  os_unfair_lock_lock(&self->super._lock);
  [coderCopy encodeInteger:self->_minLength forKey:{@"minLength", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_maxLength forKey:@"maxLength"];
  [coderCopy encodeBool:self->_isSecureText forKey:@"isSecureText"];
  [coderCopy encodeBool:self->_isSecureVisibleText forKey:@"isSecureVisibleText"];
  [coderCopy encodeBool:self->_isNumeric forKey:@"isNumeric"];
  [coderCopy encodeBool:self->_luhnCheck forKey:@"useLuhnCheck"];
  [coderCopy encodeObject:self->_displayFormatPlaceholder forKey:@"displayFormatPlaceHolder"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (DIAttributeText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DIAttributeText;
  v5 = [(DIAttribute *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_minLength = [coderCopy decodeIntegerForKey:@"minLength"];
    v5->_maxLength = [coderCopy decodeIntegerForKey:@"maxLength"];
    v5->_isSecureText = [coderCopy decodeBoolForKey:@"isSecureText"];
    v5->_isSecureVisibleText = [coderCopy decodeBoolForKey:@"isSecureVisibleText"];
    v5->_isNumeric = [coderCopy decodeBoolForKey:@"isNumeric"];
    v5->_luhnCheck = [coderCopy decodeBoolForKey:@"useLuhnCheck"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayFormatPlaceHolder"];
    displayFormatPlaceholder = v5->_displayFormatPlaceholder;
    v5->_displayFormatPlaceholder = v6;
  }

  return v5;
}

- (DIAttributeText)init
{
  v5.receiver = self;
  v5.super_class = DIAttributeText;
  v2 = [(DIAttribute *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DIAttribute *)v2 setAttributeType:1];
    v3->_minLength = 0;
    v3->_maxLength = 0;
    v3->_isSecureText = 0;
    v3->_isSecureVisibleText = 0;
    v3->_isNumeric = 0;
    v3->_luhnCheck = 0;
  }

  return v3;
}

- (void)setCurrentValue:(id)value
{
  if (value)
  {
    v4 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
    v6.receiver = self;
    v6.super_class = DIAttributeText;
    [(DIAttribute *)&v6 setCurrentValue:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DIAttributeText;
    [(DIAttribute *)&v5 setCurrentValue:?];
  }
}

- (void)setDefaultValue:(id)value
{
  if (value)
  {
    v4 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
    v6.receiver = self;
    v6.super_class = DIAttributeText;
    [(DIAttribute *)&v6 setDefaultValue:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DIAttributeText;
    [(DIAttribute *)&v5 setDefaultValue:?];
  }
}

- (void)setMinLength:(unint64_t)length
{
  os_unfair_lock_lock(&self->super._lock);
  self->_minLength = length;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setMaxLength:(unint64_t)length
{
  os_unfair_lock_lock(&self->super._lock);
  self->_maxLength = length;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setIsSecureText:(BOOL)text
{
  os_unfair_lock_lock(&self->super._lock);
  self->_isSecureText = text;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setIsSecureVisibleText:(BOOL)text
{
  os_unfair_lock_lock(&self->super._lock);
  self->_isSecureVisibleText = text;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setIsNumeric:(BOOL)numeric
{
  os_unfair_lock_lock(&self->super._lock);
  self->_isNumeric = numeric;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setLuhnCheck:(BOOL)check
{
  os_unfair_lock_lock(&self->super._lock);
  self->_luhnCheck = check;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setDisplayFormatPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_displayFormatPlaceholder != placeholderCopy)
  {
    v4 = [(NSString *)placeholderCopy copyWithZone:0];
    displayFormatPlaceholder = self->_displayFormatPlaceholder;
    self->_displayFormatPlaceholder = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)getCurrentValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeText;
  getCurrentValue = [(DIAttribute *)&v4 getCurrentValue];

  return getCurrentValue;
}

- (NSString)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeText;
  defaultValue = [(DIAttribute *)&v4 defaultValue];

  return defaultValue;
}

- (unint64_t)minLength
{
  os_unfair_lock_lock(&self->super._lock);
  minLength = self->_minLength;
  os_unfair_lock_unlock(&self->super._lock);
  return minLength;
}

- (unint64_t)maxLength
{
  os_unfair_lock_lock(&self->super._lock);
  maxLength = self->_maxLength;
  os_unfair_lock_unlock(&self->super._lock);
  return maxLength;
}

- (BOOL)isSecureText
{
  os_unfair_lock_lock(&self->super._lock);
  isSecureText = self->_isSecureText;
  os_unfair_lock_unlock(&self->super._lock);
  return isSecureText;
}

- (BOOL)isSecureVisibleText
{
  os_unfair_lock_lock(&self->super._lock);
  isSecureVisibleText = self->_isSecureVisibleText;
  os_unfair_lock_unlock(&self->super._lock);
  return isSecureVisibleText;
}

- (BOOL)isNumeric
{
  os_unfair_lock_lock(&self->super._lock);
  isNumeric = self->_isNumeric;
  os_unfair_lock_unlock(&self->super._lock);
  return isNumeric;
}

- (BOOL)useLuhnCheck
{
  os_unfair_lock_lock(&self->super._lock);
  luhnCheck = self->_luhnCheck;
  os_unfair_lock_unlock(&self->super._lock);
  return luhnCheck;
}

- (NSString)displayFormatPlaceholder
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_displayFormatPlaceholder;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:&stru_282E746B8];
  v13.receiver = self;
  v13.super_class = DIAttributeText;
  v4 = [(DIAttribute *)&v13 description];
  [v3 appendFormat:@"%@", v4];

  os_unfair_lock_lock(&self->super._lock);
  if (self->_isNumeric)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"isNumeric: '%@'; ", v5];
  if (self->_isSecureVisibleText)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"isSecureVisibleText: '%@'; ", v6];
  if (self->_isSecureText)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"isSecureText: '%@'; ", v7];
  [v3 appendFormat:@"maxLength: '%lu'; ", self->_maxLength];
  [v3 appendFormat:@"minLength: '%lu'; ", self->_minLength];
  if (self->_luhnCheck)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"luhnCheck: '%@'; ", v8];
  if (self->_isSecureVisibleText)
  {
    os_unfair_lock_unlock(&self->super._lock);
LABEL_16:
    [v3 appendString:@"defaultValue: '[REDACTED]'; "];
    [v3 appendString:@"currentValue: '[REDACTED]'; "];
    goto LABEL_18;
  }

  isSecureText = self->_isSecureText;
  os_unfair_lock_unlock(&self->super._lock);
  if (isSecureText)
  {
    goto LABEL_16;
  }

  defaultValue = [(DIAttributeText *)self defaultValue];
  [v3 appendFormat:@"defaultValue: '%@'; ", defaultValue];

  getCurrentValue = [(DIAttributeText *)self getCurrentValue];
  [v3 appendFormat:@"currentValue: '%@'; ", getCurrentValue];

LABEL_18:
  [v3 appendFormat:@">"];

  return v3;
}

- (id)displayFormatPaddingCharacters
{
  v26 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  displayFormatPlaceholder = [(DIAttributeText *)self displayFormatPlaceholder];
  v5 = [displayFormatPlaceholder length];

  if (v5 == 1)
  {
    displayFormat = [(DIAttribute *)self displayFormat];
    if ([displayFormat length])
    {
      do
      {
        v7 = [displayFormat substringToIndex:1];
        displayFormatPlaceholder2 = [(DIAttributeText *)self displayFormatPlaceholder];
        if ([v7 isEqualToString:displayFormatPlaceholder2])
        {
        }

        else
        {
          v9 = [array containsObject:v7];

          if ((v9 & 1) == 0)
          {
            [array addObject:v7];
          }
        }

        v10 = [displayFormat substringFromIndex:1];

        displayFormat = v10;
      }

      while ([v10 length]);
    }

    else
    {
      v10 = displayFormat;
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [&unk_282E7BA70 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(&unk_282E7BA70);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          displayFormat2 = [(DIAttribute *)self displayFormat];
          v17 = [displayFormat2 containsString:v15];

          if (v17)
          {
            [array addObject:v15];
          }
        }

        v12 = [&unk_282E7BA70 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }
  }

  v18 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)submissionString
{
  v21 = *MEMORY[0x277D85DE8];
  getCurrentValue = [(DIAttributeText *)self getCurrentValue];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [getCurrentValue stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (v5)
  {
    displayFormat = [(DIAttribute *)self displayFormat];

    if (displayFormat)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      displayFormatPaddingCharacters = [(DIAttributeText *)self displayFormatPaddingCharacters];
      v8 = [displayFormatPaddingCharacters countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          v11 = 0;
          v12 = v5;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(displayFormatPaddingCharacters);
            }

            v5 = [v12 stringByReplacingOccurrencesOfString:*(*(&v16 + 1) + 8 * v11) withString:&stru_282E746B8];

            ++v11;
            v12 = v5;
          }

          while (v9 != v11);
          v9 = [displayFormatPaddingCharacters countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }
    }

    v13 = [v5 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

    v5 = [MEMORY[0x277CCACA8] _newZStringWithString:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

@end