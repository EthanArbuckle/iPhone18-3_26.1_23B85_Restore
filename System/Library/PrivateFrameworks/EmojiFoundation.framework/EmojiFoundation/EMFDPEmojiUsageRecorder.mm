@interface EMFDPEmojiUsageRecorder
+ (id)_defaultUsageModeIdentifier;
- (BOOL)report;
- (EMFDPEmojiUsageRecorder)initWithEmoji:(id)a3 usageModeIdentifier:(id)a4;
- (id)delegate;
- (id)recordingKey;
- (void)report;
@end

@implementation EMFDPEmojiUsageRecorder

- (EMFDPEmojiUsageRecorder)initWithEmoji:(id)a3 usageModeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = EMFDPEmojiUsageRecorder;
  v8 = [(EMFDPRecorder *)&v18 initWithEmoji:v6];
  if (v8)
  {
    v9 = [v6 localeData];
    v10 = [v9 localeIdentifier];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v6 localeIdentifier];
    }

    v13 = v12;

    v14 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v13];
    objc_storeStrong(&v8->_locale, v14);
    if (v7)
    {
      v15 = [v7 copy];
    }

    else
    {
      v15 = [objc_opt_class() _defaultUsageModeIdentifier];
    }

    v16 = v15;
    objc_storeStrong(&v8->_usageModeIdentifier, v15);
  }

  return v8;
}

- (id)recordingKey
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(EMFDPEmojiUsageRecorder *)self locale];
  v5 = [v4 localeIdentifier];
  v6 = [(EMFDPEmojiUsageRecorder *)self usageModeIdentifier];
  v7 = [v3 stringWithFormat:@"com.apple.keyboard.Emoji.%@.%@", v5, v6];

  return v7;
}

- (id)delegate
{
  v11.receiver = self;
  v11.super_class = EMFDPEmojiUsageRecorder;
  v3 = [(EMFDPRecorder *)&v11 delegate];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E699A0E0]);
    v5 = [(EMFDPEmojiUsageRecorder *)self recordingKey];
    v6 = [v4 initWithKey:v5];

    v10.receiver = self;
    v10.super_class = EMFDPEmojiUsageRecorder;
    [(EMFDPRecorder *)&v10 setDelegate:v6];
  }

  v9.receiver = self;
  v9.super_class = EMFDPEmojiUsageRecorder;
  v7 = [(EMFDPRecorder *)&v9 delegate];

  return v7;
}

- (BOOL)report
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(EMFDPRecorder *)self emoji];
  v4 = [v3 string];

  v5 = emf_logging_get_default_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(EMFDPEmojiUsageRecorder *)v4 report];
    }

    v6 = [(EMFDPEmojiUsageRecorder *)self delegate];
    v10[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [v6 record:v7];
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
  v3 = [a1 emoji];
  v4[0] = 67109120;
  v4[1] = [v3 _emojiIndex];
  _os_log_error_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_ERROR, "Failed to donate emoji to dprivacyd: '%hu'", v4, 8u);
}

@end