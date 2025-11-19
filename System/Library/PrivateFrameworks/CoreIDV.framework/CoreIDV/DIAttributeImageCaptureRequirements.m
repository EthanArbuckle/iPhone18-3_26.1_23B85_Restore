@interface DIAttributeImageCaptureRequirements
- (BOOL)liveliness;
- (DIAttributeImageCaptureRequirements)init;
- (DIAttributeImageCaptureRequirements)initWithCoder:(id)a3;
- (DIAttributeImageCaptureRequirements)initWithImageCaptureRequirements:(id)a3;
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
- (void)encodeWithCoder:(id)a3;
- (void)setCompressionRatio:(id)a3;
- (void)setLiveliness:(BOOL)a3;
- (void)setMaxRetakeCount:(unint64_t)a3;
- (void)setMaximumCompressionRatio:(id)a3;
- (void)setMinBorderPadding:(unint64_t)a3;
- (void)setMinHeight:(unint64_t)a3;
- (void)setMinWidth:(unint64_t)a3;
- (void)setPreferredHeight:(unint64_t)a3;
- (void)setPreferredWidth:(unint64_t)a3;
- (void)setRatioHeight:(unint64_t)a3;
- (void)setRatioWidth:(unint64_t)a3;
- (void)setSelection:(unint64_t)a3;
- (void)setSupportedEncoding:(id)a3;
- (void)setTimeout:(unint64_t)a3;
- (void)setUserMessage:(id)a3;
@end

@implementation DIAttributeImageCaptureRequirements

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeInteger:self->_selection forKey:@"selection"];
  [v4 encodeInteger:self->_minHeight forKey:@"minHeight"];
  [v4 encodeInteger:self->_minWidth forKey:@"minWidth"];
  [v4 encodeInteger:self->_preferredHeight forKey:@"preferredHeight"];
  [v4 encodeInteger:self->_preferredWidth forKey:@"preferredWidth"];
  [v4 encodeInteger:self->_ratioHeight forKey:@"ratioHeight"];
  [v4 encodeInteger:self->_ratioWidth forKey:@"ratioWidth"];
  [v4 encodeInteger:self->_minBorderPadding forKey:@"minBorderPadding"];
  [v4 encodeObject:self->_supportedEncoding forKey:@"supportedEncoding"];
  [v4 encodeObject:self->_userMessage forKey:@"userMessage"];
  [v4 encodeBool:self->_liveliness forKey:@"liveliness"];
  [v4 encodeInteger:self->_timeout forKey:@"timeout"];
  [v4 encodeInteger:self->_maxRetakeCount forKey:@"maxRetakeCount"];

  os_unfair_lock_unlock(&self->_lock);
}

- (DIAttributeImageCaptureRequirements)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DIAttributeImageCaptureRequirements *)self init];
  if (v5)
  {
    v5->_selection = [v4 decodeIntegerForKey:@"selection"];
    v5->_minHeight = [v4 decodeIntegerForKey:@"minHeight"];
    v5->_minWidth = [v4 decodeIntegerForKey:@"minWidth"];
    v5->_preferredHeight = [v4 decodeIntegerForKey:@"preferredHeight"];
    v5->_preferredWidth = [v4 decodeIntegerForKey:@"preferredWidth"];
    v5->_ratioHeight = [v4 decodeIntegerForKey:@"ratioHeight"];
    v5->_ratioWidth = [v4 decodeIntegerForKey:@"ratioWidth"];
    v5->_minBorderPadding = [v4 decodeIntegerForKey:@"minBorderPadding"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"supportedEncoding"];
    supportedEncoding = v5->_supportedEncoding;
    v5->_supportedEncoding = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userMessage"];
    userMessage = v5->_userMessage;
    v5->_userMessage = v11;

    v5->_liveliness = [v4 decodeBoolForKey:@"liveliness"];
    v5->_timeout = [v4 decodeIntegerForKey:@"timeout"];
    v5->_maxRetakeCount = [v4 decodeIntegerForKey:@"maxRetakeCount"];
  }

  return v5;
}

- (DIAttributeImageCaptureRequirements)initWithImageCaptureRequirements:(id)a3
{
  v4 = a3;
  v5 = [(DIAttributeImageCaptureRequirements *)self init];
  if (v5)
  {
    v5->_selection = [v4 selection];
    v5->_minHeight = [v4 minHeight];
    v5->_minWidth = [v4 minWidth];
    v5->_preferredHeight = [v4 preferredHeight];
    v5->_preferredWidth = [v4 preferredWidth];
    v5->_ratioHeight = [v4 ratioHeight];
    v5->_ratioWidth = [v4 ratioWidth];
    v5->_minBorderPadding = [v4 minBorderPadding];
    v6 = objc_alloc(MEMORY[0x277CBEA60]);
    v7 = [v4 supportedEncoding];
    v8 = [v6 initWithArray:v7 copyItems:1];
    supportedEncoding = v5->_supportedEncoding;
    v5->_supportedEncoding = v8;

    v10 = [v4 userMessage];
    userMessage = v5->_userMessage;
    v5->_userMessage = v10;

    v5->_liveliness = [v4 liveliness];
    v5->_timeout = [v4 timeout];
    v5->_maxRetakeCount = [v4 maxRetakeCount];
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

- (void)setSelection:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_selection = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMinHeight:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_minHeight = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMinWidth:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_minWidth = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPreferredHeight:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_preferredHeight = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPreferredWidth:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_preferredWidth = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRatioHeight:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_ratioHeight = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRatioWidth:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_ratioWidth = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMinBorderPadding:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_minBorderPadding = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCompressionRatio:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_compressionRatio != v6)
  {
    v4 = [(NSNumber *)v6 copyWithZone:0];
    compressionRatio = self->_compressionRatio;
    self->_compressionRatio = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMaximumCompressionRatio:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_maximumCompressionRatio != v6)
  {
    v4 = [(NSNumber *)v6 copyWithZone:0];
    maximumCompressionRatio = self->_maximumCompressionRatio;
    self->_maximumCompressionRatio = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUserMessage:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_userMessage != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    userMessage = self->_userMessage;
    self->_userMessage = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSupportedEncoding:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_supportedEncoding != v6)
  {
    v4 = [(NSArray *)v6 copyWithZone:0];
    supportedEncoding = self->_supportedEncoding;
    self->_supportedEncoding = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLiveliness:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_liveliness = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTimeout:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_timeout = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMaxRetakeCount:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_maxRetakeCount = a3;

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