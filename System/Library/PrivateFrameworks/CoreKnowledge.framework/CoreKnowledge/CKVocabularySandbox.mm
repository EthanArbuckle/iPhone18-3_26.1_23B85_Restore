@interface CKVocabularySandbox
+ (id)loadWithSandboxId:(id)id error:(id *)error;
+ (id)sandboxWithProfile:(id)profile locale:(id)locale error:(id *)error;
+ (id)sandboxWithRawSpeechProfile:(id)profile error:(id *)error;
+ (id)sandboxWithRawSpeechProfile:(id)profile rawSpeechProfileMetadata:(id)metadata error:(id *)error;
- (CKVocabularySandbox)init;
- (CKVocabularySandbox)initWithSandbox:(id)sandbox;
- (id)searcher;
- (id)searcherForUserId:(id)id;
@end

@implementation CKVocabularySandbox

+ (id)sandboxWithProfile:(id)profile locale:(id)locale error:(id *)error
{
  localeCopy = locale;
  profileCopy = profile;
  v9 = [getSEMSandboxClass() sandboxWithKVProfile:profileCopy locale:localeCopy error:error];

  v10 = [objc_alloc(objc_opt_class()) initWithSandbox:v9];

  return v10;
}

+ (id)sandboxWithRawSpeechProfile:(id)profile rawSpeechProfileMetadata:(id)metadata error:(id *)error
{
  profileCopy = profile;
  v7 = [getSEMSandboxClass() sandboxWithRawSpeechProfile:profileCopy error:error];

  v8 = [objc_alloc(objc_opt_class()) initWithSandbox:v7];

  return v8;
}

+ (id)sandboxWithRawSpeechProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v6 = [getSEMSandboxClass() sandboxWithRawSpeechProfile:profileCopy error:error];

  v7 = [objc_alloc(objc_opt_class()) initWithSandbox:v6];

  return v7;
}

- (CKVocabularySandbox)initWithSandbox:(id)sandbox
{
  sandboxCopy = sandbox;
  v10.receiver = self;
  v10.super_class = CKVocabularySandbox;
  v6 = [(CKVocabularySandbox *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_sandbox, sandbox), !v7->_sandbox))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (CKVocabularySandbox)init
{
  v3 = objc_alloc_init(getSEMSandboxClass_1249());
  v4 = [(CKVocabularySandbox *)self initWithSandbox:v3];

  return v4;
}

+ (id)loadWithSandboxId:(id)id error:(id *)error
{
  idCopy = id;
  v6 = [getSEMSandboxClass_1249() loadWithSandboxId:idCopy error:error];

  v7 = [objc_alloc(objc_opt_class()) initWithSandbox:v6];

  return v7;
}

- (id)searcherForUserId:(id)id
{
  idCopy = id;
  v5 = [CKVocabularySandboxSearcher alloc];
  sandbox = [(CKVocabularySandbox *)self sandbox];
  v7 = [(CKVocabularySandboxSearcher *)v5 initWithSandbox:sandbox userId:idCopy prewarm:1];

  return v7;
}

- (id)searcher
{
  v3 = [CKVocabularySandboxSearcher alloc];
  sandbox = [(CKVocabularySandbox *)self sandbox];
  v5 = [(CKVocabularySandboxSearcher *)v3 initWithSandbox:sandbox userId:0 prewarm:0];

  return v5;
}

@end