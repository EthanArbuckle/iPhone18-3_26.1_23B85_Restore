@interface EMFDPEmojiUsageRecorder
+ (id)_defaultUsageModeIdentifier;
- (BOOL)report;
- (EMFDPEmojiUsageRecorder)initWithEmoji:(id)emoji usageModeIdentifier:(id)identifier;
- (id)delegate;
- (id)recordingKey;
- (void)report;
@end

@implementation EMFDPEmojiUsageRecorder

- (EMFDPEmojiUsageRecorder)initWithEmoji:(id)emoji usageModeIdentifier:(id)identifier
{
  emojiCopy = emoji;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = EMFDPEmojiUsageRecorder;
  v8 = [(EMFDPRecorder *)&v18 initWithEmoji:emojiCopy];
  if (v8)
  {
    localeData = [emojiCopy localeData];
    localeIdentifier = [localeData localeIdentifier];
    v11 = localeIdentifier;
    if (localeIdentifier)
    {
      localeIdentifier2 = localeIdentifier;
    }

    else
    {
      localeIdentifier2 = [emojiCopy localeIdentifier];
    }

    v13 = localeIdentifier2;

    v14 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v13];
    objc_storeStrong(&v8->_locale, v14);
    if (identifierCopy)
    {
      _defaultUsageModeIdentifier = [identifierCopy copy];
    }

    else
    {
      _defaultUsageModeIdentifier = [objc_opt_class() _defaultUsageModeIdentifier];
    }

    v16 = _defaultUsageModeIdentifier;
    objc_storeStrong(&v8->_usageModeIdentifier, _defaultUsageModeIdentifier);
  }

  return v8;
}

- (id)recordingKey
{
  v3 = MEMORY[0x1E696AEC0];
  locale = [(EMFDPEmojiUsageRecorder *)self locale];
  localeIdentifier = [locale localeIdentifier];
  usageModeIdentifier = [(EMFDPEmojiUsageRecorder *)self usageModeIdentifier];
  v7 = [v3 stringWithFormat:@"com.apple.keyboard.Emoji.%@.%@", localeIdentifier, usageModeIdentifier];

  return v7;
}

- (id)delegate
{
  v11.receiver = self;
  v11.super_class = EMFDPEmojiUsageRecorder;
  delegate = [(EMFDPRecorder *)&v11 delegate];

  if (!delegate)
  {
    v4 = objc_alloc(MEMORY[0x1E699A0E0]);
    recordingKey = [(EMFDPEmojiUsageRecorder *)self recordingKey];
    v6 = [v4 initWithKey:recordingKey];

    v10.receiver = self;
    v10.super_class = EMFDPEmojiUsageRecorder;
    [(EMFDPRecorder *)&v10 setDelegate:v6];
  }

  v9.receiver = self;
  v9.super_class = EMFDPEmojiUsageRecorder;
  delegate2 = [(EMFDPRecorder *)&v9 delegate];

  return delegate2;
}

- (BOOL)report
{
  v10[1] = *MEMORY[0x1E69E9840];
  emoji = [(EMFDPRecorder *)self emoji];
  string = [emoji string];

  v5 = emf_logging_get_default_log();
  delegate = v5;
  if (string)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(EMFDPEmojiUsageRecorder *)string report];
    }

    delegate = [(EMFDPEmojiUsageRecorder *)self delegate];
    v10[0] = string;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [delegate record:v7];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(EMFDPEmojiUsageRecorder *)self report];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_defaultUsageModeIdentifier
{
  if (_defaultUsageModeIdentifier_onceToken != -1)
  {
    +[EMFDPEmojiUsageRecorder _defaultUsageModeIdentifier];
  }

  v3 = _defaultUsageModeIdentifier__kDefaultUsageModeIdentifier;

  return v3;
}

void __54__EMFDPEmojiUsageRecorder__defaultUsageModeIdentifier__block_invoke()
{
  v0 = _defaultUsageModeIdentifier__kDefaultUsageModeIdentifier;
  _defaultUsageModeIdentifier__kDefaultUsageModeIdentifier = @"Keyboard";
}

- (void)report
{
  v5 = *MEMORY[0x1E69E9840];
  emoji = [self emoji];
  v4[0] = 67109120;
  v4[1] = [emoji _emojiIndex];
  _os_log_error_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_ERROR, "Failed to donate emoji to dprivacyd: '%hu'", v4, 8u);
}

@end