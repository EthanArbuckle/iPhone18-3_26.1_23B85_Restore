@interface IMReplySuggestion
- (IMReplySuggestion)initWithType:(int64_t)type text:(id)text version:(int64_t)version;
- (id)copyWithZone:(_NSZone *)zone;
- (void)trackSentAtIndex:(unint64_t)index isNotification:(BOOL)notification;
@end

@implementation IMReplySuggestion

- (IMReplySuggestion)initWithType:(int64_t)type text:(id)text version:(int64_t)version
{
  textCopy = text;
  v15.receiver = self;
  v15.super_class = IMReplySuggestion;
  v9 = [(IMReplySuggestion *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = type;
    v9->_version = version;
    v11 = [textCopy copy];
    text = v10->_text;
    v10->_text = v11;

    objc_storeStrong(&v10->_stringRepresentation, v10->_text);
    v13 = v10;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[IMReplySuggestion alloc] initWithType:self->_type text:self->_text version:self->_version];
  v5 = [(NSString *)self->_stringRepresentation copy];
  [(IMReplySuggestion *)v4 setStringRepresentation:v5];

  v6 = [(NSDictionary *)self->_metadata copy];
  [(IMReplySuggestion *)v4 setMetadata:v6];

  v7 = [(NSString *)self->_attribution copy];
  [(IMReplySuggestion *)v4 setAttribution:v7];

  return v4;
}

- (void)trackSentAtIndex:(unint64_t)index isNotification:(BOOL)notification
{
  notificationCopy = notification;
  v15[5] = *MEMORY[0x1E69E9840];
  v7 = +[IMMetricsCollector sharedInstance];
  v14[0] = @"IMMetricsCollectorEventWatchQuickReplyKey";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMReplySuggestion type](self, "type")}];
  v15[0] = v8;
  v14[1] = @"IMMetricsCollectorEventWatchQuickReplyIndex";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v15[1] = v9;
  v14[2] = @"IMMetricsCollectorEventWatchQuickReplySourceKey";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:notificationCopy];
  v15[2] = v10;
  v14[3] = @"IMMetricsCollectorEventWatchQuickModelVersionKey";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_version];
  v15[3] = v11;
  v14[4] = @"IMMetricsCollectorEventWatchQuickIncludeSmartRepliesKey";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{+[IMReplySuggestionGenerator includeSmartReplies](IMReplySuggestionGenerator, "includeSmartReplies")}];
  v15[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];
  [v7 trackEvent:@"com.apple.Messages.IMMetricsCollectorEventWatchQuickReplyTapped" withDictionary:v13];
}

@end