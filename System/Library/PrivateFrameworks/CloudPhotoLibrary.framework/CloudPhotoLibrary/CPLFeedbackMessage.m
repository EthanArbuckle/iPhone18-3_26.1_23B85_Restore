@interface CPLFeedbackMessage
+ (id)feedbackType;
- (CPLFeedbackMessage)initWithLibraryIdentifier:(id)a3;
- (CPLServerFeedbackMessage)serverMessage;
- (NSString)libraryIdentifierDescription;
@end

@implementation CPLFeedbackMessage

- (CPLServerFeedbackMessage)serverMessage
{
  v3 = objc_alloc_init(CPLServerFeedbackMessage);
  v4 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
  [(CPLServerFeedbackKeyAndValue *)v4 setKey:@"type"];
  [(CPLServerFeedbackKeyAndValue *)v4 setValue:self->_feedbackType];
  [(CPLServerFeedbackMessage *)v3 addKeysAndValues:v4];
  v5 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
  if (serverMessage_onceToken != -1)
  {
    dispatch_once(&serverMessage_onceToken, &__block_literal_global_3);
  }

  [(CPLServerFeedbackKeyAndValue *)v5 setKey:@"date"];
  v6 = [serverMessage_formatter stringFromDate:self->_creationDate];
  [(CPLServerFeedbackKeyAndValue *)v5 setValue:v6];

  [(CPLServerFeedbackMessage *)v3 addKeysAndValues:v5];
  if (![(NSString *)self->_libraryIdentifier isEqualToString:@"SystemLibrary"])
  {
    v7 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
    [(CPLServerFeedbackKeyAndValue *)v7 setKey:@"library"];
    v8 = [(CPLFeedbackMessage *)self libraryIdentifierDescription];
    [(CPLServerFeedbackKeyAndValue *)v7 setValue:v8];

    [(CPLServerFeedbackMessage *)v3 addKeysAndValues:v7];
  }

  return v3;
}

void __35__CPLFeedbackMessage_serverMessage__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = serverMessage_formatter;
  serverMessage_formatter = v0;

  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [serverMessage_formatter setLocale:v2];
  [serverMessage_formatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
}

- (NSString)libraryIdentifierDescription
{
  v3 = [(NSString *)self->_libraryIdentifier hasSuffix:@"Library"];
  libraryIdentifier = self->_libraryIdentifier;
  if (v3)
  {
    v5 = [(NSString *)libraryIdentifier substringToIndex:[(NSString *)libraryIdentifier length]- 7];
    v6 = [v5 lowercaseString];
  }

  else
  {
    v6 = [(NSString *)libraryIdentifier lowercaseString];
  }

  return v6;
}

- (CPLFeedbackMessage)initWithLibraryIdentifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPLFeedbackMessage;
  v5 = [(CPLFeedbackMessage *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    libraryIdentifier = v5->_libraryIdentifier;
    v5->_libraryIdentifier = v6;

    v8 = [objc_opt_class() feedbackType];
    feedbackType = v5->_feedbackType;
    v5->_feedbackType = v8;

    v10 = [MEMORY[0x1E695DF00] date];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;
  }

  return v5;
}

+ (id)feedbackType
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Feedback/CPLFeedbackMessage.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:v5 lineNumber:67 description:{@"%@ should be overriden", v6}];

  abort();
}

@end