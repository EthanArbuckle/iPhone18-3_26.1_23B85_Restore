@interface INFSentenceTokenWithContext
+ (id)sentenceResolvedTokenWithOriginalToken:(id)token placeholderName:(id)name;
- (INFSentenceTokenWithContext)initWithToken:(id)token variableName:(id)name;
@end

@implementation INFSentenceTokenWithContext

- (INFSentenceTokenWithContext)initWithToken:(id)token variableName:(id)name
{
  tokenCopy = token;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = INFSentenceTokenWithContext;
  v9 = [(INFSentenceTokenWithContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalToken, token);
    objc_storeStrong(&v10->_placeholderName, name);
  }

  return v10;
}

+ (id)sentenceResolvedTokenWithOriginalToken:(id)token placeholderName:(id)name
{
  nameCopy = name;
  tokenCopy = token;
  v8 = [[self alloc] initWithToken:tokenCopy variableName:nameCopy];

  return v8;
}

@end