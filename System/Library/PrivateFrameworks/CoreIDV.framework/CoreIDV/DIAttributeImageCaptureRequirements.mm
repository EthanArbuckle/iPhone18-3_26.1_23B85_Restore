@interface DIAttributeImageCaptureRequirements
- (BOOL)liveliness;
- (DIAttributeImageCaptureRequirements)init;
- (DIAttributeImageCaptureRequirements)initWithCoder:(id)coder;
- (DIAttributeImageCaptureRequirements)initWithImageCaptureRequirements:(id)requirements;
- (NSArray)supportedEncoding;
- (NSNumber)compressionRatio;
- (NSNumber)maximumCompressionRatio;
- (NSString)userMessage;
- (id)description;
- (unint64_t)maxRetakeCount;
- (unint64_t)minBorderPadding;
- (unint64_t)minHeight;
- (unint64_t)minWidth;
- (unint64_t)preferredHeight;
- (unint64_t)preferredWidth;
- (unint64_t)ratioHeight;
- (unint64_t)ratioWidth;
- (unint64_t)selection;
- (unint64_t)timeout;
- (void)encodeWithCoder:(id)coder;
- (void)setCompressionRatio:(id)ratio;
- (void)setLiveliness:(BOOL)liveliness;
- (void)setMaxRetakeCount:(unint64_t)count;
- (void)setMaximumCompressionRatio:(id)ratio;
- (void)setMinBorderPadding:(unint64_t)padding;
- (void)setMinHeight:(unint64_t)height;
- (void)setMinWidth:(unint64_t)width;
- (void)setPreferredHeight:(unint64_t)height;
- (void)setPreferredWidth:(unint64_t)width;
- (void)setRatioHeight:(unint64_t)height;
- (void)setRatioWidth:(unint64_t)width;
- (void)setSelection:(unint64_t)selection;
- (void)setSupportedEncoding:(id)encoding;
- (void)setTimeout:(unint64_t)timeout;
- (void)setUserMessage:(id)message;
@end

@implementation DIAttributeImageCaptureRequirements

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeInteger:self->_selection forKey:@"selection"];
  [coderCopy encodeInteger:self->_minHeight forKey:@"minHeight"];
  [coderCopy encodeInteger:self->_minWidth forKey:@"minWidth"];
  [coderCopy encodeInteger:self->_preferredHeight forKey:@"preferredHeight"];
  [coderCopy encodeInteger:self->_preferredWidth forKey:@"preferredWidth"];
  [coderCopy encodeInteger:self->_ratioHeight forKey:@"ratioHeight"];
  [coderCopy encodeInteger:self->_ratioWidth forKey:@"ratioWidth"];
  [coderCopy encodeInteger:self->_minBorderPadding forKey:@"minBorderPadding"];
  [coderCopy encodeObject:self->_supportedEncoding forKey:@"supportedEncoding"];
  [coderCopy encodeObject:self->_userMessage forKey:@"userMessage"];
  [coderCopy encodeBool:self->_liveliness forKey:@"liveliness"];
  [coderCopy encodeInteger:self->_timeout forKey:@"timeout"];
  [coderCopy encodeInteger:self->_maxRetakeCount forKey:@"maxRetakeCount"];

  os_unfair_lock_unlock(&self->_lock);
}

- (DIAttributeImageCaptureRequirements)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DIAttributeImageCaptureRequirements *)self init];
  if (v5)
  {
    v5->_selection = [coderCopy decodeIntegerForKey:@"selection"];
    v5->_minHeight = [coderCopy decodeIntegerForKey:@"minHeight"];
    v5->_minWidth = [coderCopy decodeIntegerForKey:@"minWidth"];
    v5->_preferredHeight = [coderCopy decodeIntegerForKey:@"preferredHeight"];
    v5->_preferredWidth = [coderCopy decodeIntegerForKey:@"preferredWidth"];
    v5->_ratioHeight = [coderCopy decodeIntegerForKey:@"ratioHeight"];
    v5->_ratioWidth = [coderCopy decodeIntegerForKey:@"ratioWidth"];
    v5->_minBorderPadding = [coderCopy decodeIntegerForKey:@"minBorderPadding"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"supportedEncoding"];
    supportedEncoding = v5->_supportedEncoding;
    v5->_supportedEncoding = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userMessage"];
    userMessage = v5->_userMessage;
    v5->_userMessage = v11;

    v5->_liveliness = [coderCopy decodeBoolForKey:@"liveliness"];
    v5->_timeout = [coderCopy decodeIntegerForKey:@"timeout"];
    v5->_maxRetakeCount = [coderCopy decodeIntegerForKey:@"maxRetakeCount"];
  }

  return v5;
}

- (DIAttributeImageCaptureRequirements)initWithImageCaptureRequirements:(id)requirements
{
  requirementsCopy = requirements;
  v5 = [(DIAttributeImageCaptureRequirements *)self init];
  if (v5)
  {
    v5->_selection = [requirementsCopy selection];
    v5->_minHeight = [requirementsCopy minHeight];
    v5->_minWidth = [requirementsCopy minWidth];
    v5->_preferredHeight = [requirementsCopy preferredHeight];
    v5->_preferredWidth = [requirementsCopy preferredWidth];
    v5->_ratioHeight = [requirementsCopy ratioHeight];
    v5->_ratioWidth = [requirementsCopy ratioWidth];
    v5->_minBorderPadding = [requirementsCopy minBorderPadding];
    v6 = objc_alloc(MEMORY[0x277CBEA60]);
    supportedEncoding = [requirementsCopy supportedEncoding];
    v8 = [v6 initWithArray:supportedEncoding copyItems:1];
    supportedEncoding = v5->_supportedEncoding;
    v5->_supportedEncoding = v8;

    userMessage = [requirementsCopy userMessage];
    userMessage = v5->_userMessage;
    v5->_userMessage = userMessage;

    v5->_liveliness = [requirementsCopy liveliness];
    v5->_timeout = [requirementsCopy timeout];
    v5->_maxRetakeCount = [requirementsCopy maxRetakeCount];
  }

  return v5;
}

- (DIAttributeImageCaptureRequirements)init
{
  v3.receiver = self;
  v3.super_class = DIAttributeImageCaptureRequirements;
  result = [(DIAttributeImageCaptureRequirements *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)setSelection:(unint64_t)selection
{
  os_unfair_lock_lock(&self->_lock);
  self->_selection = selection;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMinHeight:(unint64_t)height
{
  os_unfair_lock_lock(&self->_lock);
  self->_minHeight = height;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMinWidth:(unint64_t)width
{
  os_unfair_lock_lock(&self->_lock);
  self->_minWidth = width;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPreferredHeight:(unint64_t)height
{
  os_unfair_lock_lock(&self->_lock);
  self->_preferredHeight = height;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPreferredWidth:(unint64_t)width
{
  os_unfair_lock_lock(&self->_lock);
  self->_preferredWidth = width;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRatioHeight:(unint64_t)height
{
  os_unfair_lock_lock(&self->_lock);
  self->_ratioHeight = height;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRatioWidth:(unint64_t)width
{
  os_unfair_lock_lock(&self->_lock);
  self->_ratioWidth = width;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMinBorderPadding:(unint64_t)padding
{
  os_unfair_lock_lock(&self->_lock);
  self->_minBorderPadding = padding;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCompressionRatio:(id)ratio
{
  ratioCopy = ratio;
  os_unfair_lock_lock(&self->_lock);
  if (self->_compressionRatio != ratioCopy)
  {
    v4 = [(NSNumber *)ratioCopy copyWithZone:0];
    compressionRatio = self->_compressionRatio;
    self->_compressionRatio = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMaximumCompressionRatio:(id)ratio
{
  ratioCopy = ratio;
  os_unfair_lock_lock(&self->_lock);
  if (self->_maximumCompressionRatio != ratioCopy)
  {
    v4 = [(NSNumber *)ratioCopy copyWithZone:0];
    maximumCompressionRatio = self->_maximumCompressionRatio;
    self->_maximumCompressionRatio = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUserMessage:(id)message
{
  messageCopy = message;
  os_unfair_lock_lock(&self->_lock);
  if (self->_userMessage != messageCopy)
  {
    v4 = [(NSString *)messageCopy copyWithZone:0];
    userMessage = self->_userMessage;
    self->_userMessage = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSupportedEncoding:(id)encoding
{
  encodingCopy = encoding;
  os_unfair_lock_lock(&self->_lock);
  if (self->_supportedEncoding != encodingCopy)
  {
    v4 = [(NSArray *)encodingCopy copyWithZone:0];
    supportedEncoding = self->_supportedEncoding;
    self->_supportedEncoding = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLiveliness:(BOOL)liveliness
{
  os_unfair_lock_lock(&self->_lock);
  self->_liveliness = liveliness;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTimeout:(unint64_t)timeout
{
  os_unfair_lock_lock(&self->_lock);
  self->_timeout = timeout;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMaxRetakeCount:(unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  self->_maxRetakeCount = count;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)selection
{
  os_unfair_lock_lock(&self->_lock);
  selection = self->_selection;
  os_unfair_lock_unlock(&self->_lock);
  return selection;
}

- (unint64_t)minHeight
{
  os_unfair_lock_lock(&self->_lock);
  minHeight = self->_minHeight;
  os_unfair_lock_unlock(&self->_lock);
  return minHeight;
}

- (unint64_t)minWidth
{
  os_unfair_lock_lock(&self->_lock);
  minWidth = self->_minWidth;
  os_unfair_lock_unlock(&self->_lock);
  return minWidth;
}

- (unint64_t)preferredHeight
{
  os_unfair_lock_lock(&self->_lock);
  preferredHeight = self->_preferredHeight;
  os_unfair_lock_unlock(&self->_lock);
  return preferredHeight;
}

- (unint64_t)preferredWidth
{
  os_unfair_lock_lock(&self->_lock);
  preferredWidth = self->_preferredWidth;
  os_unfair_lock_unlock(&self->_lock);
  return preferredWidth;
}

- (unint64_t)ratioHeight
{
  os_unfair_lock_lock(&self->_lock);
  ratioHeight = self->_ratioHeight;
  os_unfair_lock_unlock(&self->_lock);
  return ratioHeight;
}

- (unint64_t)ratioWidth
{
  os_unfair_lock_lock(&self->_lock);
  ratioWidth = self->_ratioWidth;
  os_unfair_lock_unlock(&self->_lock);
  return ratioWidth;
}

- (unint64_t)minBorderPadding
{
  os_unfair_lock_lock(&self->_lock);
  minBorderPadding = self->_minBorderPadding;
  os_unfair_lock_unlock(&self->_lock);
  return minBorderPadding;
}

- (NSNumber)compressionRatio
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_compressionRatio;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)maximumCompressionRatio
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_maximumCompressionRatio;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)userMessage
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_userMessage;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)supportedEncoding
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_supportedEncoding;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)liveliness
{
  os_unfair_lock_lock(&self->_lock);
  liveliness = self->_liveliness;
  os_unfair_lock_unlock(&self->_lock);
  return liveliness;
}

- (unint64_t)timeout
{
  os_unfair_lock_lock(&self->_lock);
  timeout = self->_timeout;
  os_unfair_lock_unlock(&self->_lock);
  return timeout;
}

- (unint64_t)maxRetakeCount
{
  os_unfair_lock_lock(&self->_lock);
  maxRetakeCount = self->_maxRetakeCount;
  os_unfair_lock_unlock(&self->_lock);
  return maxRetakeCount;
}

- (id)description
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  os_unfair_lock_lock(&self->_lock);
  [v3 appendFormat:@"selection: '%lu'; ", self->_selection];
  [v3 appendFormat:@"minHeight: '%lu'; ", self->_minHeight];
  [v3 appendFormat:@"minWidth: '%lu'; ", self->_minWidth];
  [v3 appendFormat:@"preferredHeight: '%lu'; ", self->_preferredHeight];
  [v3 appendFormat:@"preferredWidth: '%lu'; ", self->_preferredWidth];
  [v3 appendFormat:@"ratioHeight: '%lu'; ", self->_ratioHeight];
  [v3 appendFormat:@"ratioWidth: '%lu'; ", self->_ratioWidth];
  [v3 appendFormat:@"minBorderPadding: '%lu'; ", self->_minBorderPadding];
  [v3 appendFormat:@"supportedEncoding: ["];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_supportedEncoding;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"%@, ", *(*(&v12 + 1) + 8 * i)];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@"]; "];
  [v3 appendFormat:@"userMessage: '%@'; ", self->_userMessage];
  if (self->_liveliness)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@"liveliness: '%@'; ", v9];
  [v3 appendFormat:@"timeout: '%lu'; ", self->_timeout];
  [v3 appendFormat:@"maxRetakeCount: '%lu'; ", self->_maxRetakeCount];
  os_unfair_lock_unlock(&self->_lock);
  [v3 appendFormat:@">"];
  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

@end