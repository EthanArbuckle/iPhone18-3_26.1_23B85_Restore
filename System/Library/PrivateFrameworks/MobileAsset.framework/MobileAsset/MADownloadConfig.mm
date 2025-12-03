@interface MADownloadConfig
- (MADownloadConfig)init;
- (MADownloadConfig)initWithCoder:(id)coder;
- (MADownloadConfig)initWithPlist:(id)plist;
- (id)encodeAsPlist;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)logConfig;
@end

@implementation MADownloadConfig

- (MADownloadConfig)init
{
  v3.receiver = self;
  v3.super_class = MADownloadConfig;
  result = [(MADownloadConfig *)&v3 init];
  if (result)
  {
    result->_discretionary = 1;
  }

  return result;
}

- (MADownloadConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MADownloadConfig;
  v5 = [(MADownloadConfig *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discretionary"];
    v5->_discretionary = [v6 BOOLValue];
  }

  return v5;
}

- (MADownloadConfig)initWithPlist:(id)plist
{
  plistCopy = plist;
  v7.receiver = self;
  v7.super_class = MADownloadConfig;
  v5 = [(MADownloadConfig *)&v7 init];
  if (v5)
  {
    v5->_discretionary = getPlistNumberAsBool(plistCopy, @"discretionary");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x1E696AD98];
  discretionary = self->_discretionary;
  coderCopy = coder;
  v6 = [v3 numberWithBool:discretionary];
  [coderCopy encodeObject:v6 forKey:@"discretionary"];
}

- (id)encodeAsPlist
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_discretionary];
  [v3 setValue:v4 forKey:@"discretionary"];

  return v3;
}

- (void)logConfig
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(MADownloadConfig *)self discretionary];
    _os_log_impl(&dword_197AD5000, v3, OS_LOG_TYPE_DEFAULT, "The config is discretionary: %d", v5, 8u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)summary
{
  v2 = MEMORY[0x1E696AEC0];
  discretionary = [(MADownloadConfig *)self discretionary];
  v4 = @"NO";
  if (discretionary)
  {
    v4 = @"YES";
  }

  return [v2 stringWithFormat:@"discretionary:%@", v4];
}

@end