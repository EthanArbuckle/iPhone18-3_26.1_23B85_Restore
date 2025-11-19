@interface CKVocabularySandbox
+ (id)loadWithSandboxId:(id)a3 error:(id *)a4;
+ (id)sandboxWithProfile:(id)a3 locale:(id)a4 error:(id *)a5;
+ (id)sandboxWithRawSpeechProfile:(id)a3 error:(id *)a4;
+ (id)sandboxWithRawSpeechProfile:(id)a3 rawSpeechProfileMetadata:(id)a4 error:(id *)a5;
- (CKVocabularySandbox)init;
- (CKVocabularySandbox)initWithSandbox:(id)a3;
- (id)searcher;
- (id)searcherForUserId:(id)a3;
@end

@implementation CKVocabularySandbox

+ (id)sandboxWithProfile:(id)a3 locale:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [getSEMSandboxClass() sandboxWithKVProfile:v8 locale:v7 error:a5];

  v10 = [objc_alloc(objc_opt_class()) initWithSandbox:v9];

  return v10;
}

+ (id)sandboxWithRawSpeechProfile:(id)a3 rawSpeechProfileMetadata:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [getSEMSandboxClass() sandboxWithRawSpeechProfile:v6 error:a5];

  v8 = [objc_alloc(objc_opt_class()) initWithSandbox:v7];

  return v8;
}

+ (id)sandboxWithRawSpeechProfile:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [getSEMSandboxClass() sandboxWithRawSpeechProfile:v5 error:a4];

  v7 = [objc_alloc(objc_opt_class()) initWithSandbox:v6];

  return v7;
}

- (CKVocabularySandbox)initWithSandbox:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CKVocabularySandbox;
  v6 = [(CKVocabularySandbox *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_sandbox, a3), !v7->_sandbox))
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

+ (id)loadWithSandboxId:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [getSEMSandboxClass_1249() loadWithSandboxId:v5 error:a4];

  v7 = [objc_alloc(objc_opt_class()) initWithSandbox:v6];

  return v7;
}

- (id)searcherForUserId:(id)a3
{
  v4 = a3;
  v5 = [CKVocabularySandboxSearcher alloc];
  v6 = [(CKVocabularySandbox *)self sandbox];
  v7 = [(CKVocabularySandboxSearcher *)v5 initWithSandbox:v6 userId:v4 prewarm:1];

  return v7;
}

- (id)searcher
{
  v3 = [CKVocabularySandboxSearcher alloc];
  v4 = [(CKVocabularySandbox *)self sandbox];
  v5 = [(CKVocabularySandboxSearcher *)v3 initWithSandbox:v4 userId:0 prewarm:0];

  return v5;
}

@end