@interface INFSentenceTokenWithContext
+ (id)sentenceResolvedTokenWithOriginalToken:(id)a3 placeholderName:(id)a4;
- (INFSentenceTokenWithContext)initWithToken:(id)a3 variableName:(id)a4;
@end

@implementation INFSentenceTokenWithContext

- (INFSentenceTokenWithContext)initWithToken:(id)a3 variableName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = INFSentenceTokenWithContext;
  v9 = [(INFSentenceTokenWithContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalToken, a3);
    objc_storeStrong(&v10->_placeholderName, a4);
  }

  return v10;
}

+ (id)sentenceResolvedTokenWithOriginalToken:(id)a3 placeholderName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithToken:v7 variableName:v6];

  return v8;
}

@end