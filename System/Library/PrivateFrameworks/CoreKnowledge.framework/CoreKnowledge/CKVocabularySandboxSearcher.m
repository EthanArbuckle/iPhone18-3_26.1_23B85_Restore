@interface CKVocabularySandboxSearcher
- (CKVocabularySandboxSearcher)initWithSandbox:(id)a3 userId:(id)a4 prewarm:(BOOL)a5;
@end

@implementation CKVocabularySandboxSearcher

- (CKVocabularySandboxSearcher)initWithSandbox:(id)a3 userId:(id)a4 prewarm:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = [v9 indexMatcher];
  v14.receiver = self;
  v14.super_class = CKVocabularySandboxSearcher;
  v12 = [(CKVocabularySearcher *)&v14 initWithUserId:v10 spanMatcher:v11 prewarm:v5];

  if (v12)
  {
    objc_storeStrong(&v12->_sandbox, a3);
    objc_storeStrong(&v12->_userId, a4);
  }

  return v12;
}

@end