@interface GLTKeyDiversification
+ (id)diversifyPublicKey:(__SecKey *)a3 trackingPreventionSalt:(id)a4 withDocumentIdentifier:(id)a5 error:(id *)a6;
@end

@implementation GLTKeyDiversification

+ (id)diversifyPublicKey:(__SecKey *)a3 trackingPreventionSalt:(id)a4 withDocumentIdentifier:(id)a5 error:(id *)a6
{
  v6 = [_TtC17MessageProtection26GLTKeyDiversificationSwift diversifyWithPublicKey:a3 trackingPreventionSalt:a4 docId:a5 error:a6];
  if (v6)
  {
    v7 = [GLTDiversifiedKeyAndTPS alloc];
    v8 = [v6 diversifiedKey];
    v9 = [v6 trackingPreventionSalt];
    v10 = [(GLTDiversifiedKeyAndTPS *)v7 initWithKey:v8 trackingPreventionSalt:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end