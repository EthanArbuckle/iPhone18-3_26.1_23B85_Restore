@interface CKVocabularySandboxSearcher
- (CKVocabularySandboxSearcher)initWithSandbox:(id)sandbox userId:(id)id prewarm:(BOOL)prewarm;
@end

@implementation CKVocabularySandboxSearcher

- (CKVocabularySandboxSearcher)initWithSandbox:(id)sandbox userId:(id)id prewarm:(BOOL)prewarm
{
  prewarmCopy = prewarm;
  sandboxCopy = sandbox;
  idCopy = id;
  indexMatcher = [sandboxCopy indexMatcher];
  v14.receiver = self;
  v14.super_class = CKVocabularySandboxSearcher;
  v12 = [(CKVocabularySearcher *)&v14 initWithUserId:idCopy spanMatcher:indexMatcher prewarm:prewarmCopy];

  if (v12)
  {
    objc_storeStrong(&v12->_sandbox, sandbox);
    objc_storeStrong(&v12->_userId, id);
  }

  return v12;
}

@end