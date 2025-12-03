@interface GLTKeyDiversification
+ (id)diversifyPublicKey:(__SecKey *)key trackingPreventionSalt:(id)salt withDocumentIdentifier:(id)identifier error:(id *)error;
@end

@implementation GLTKeyDiversification

+ (id)diversifyPublicKey:(__SecKey *)key trackingPreventionSalt:(id)salt withDocumentIdentifier:(id)identifier error:(id *)error
{
  v6 = [_TtC17MessageProtection26GLTKeyDiversificationSwift diversifyWithPublicKey:key trackingPreventionSalt:salt docId:identifier error:error];
  if (v6)
  {
    v7 = [GLTDiversifiedKeyAndTPS alloc];
    diversifiedKey = [v6 diversifiedKey];
    trackingPreventionSalt = [v6 trackingPreventionSalt];
    v10 = [(GLTDiversifiedKeyAndTPS *)v7 initWithKey:diversifiedKey trackingPreventionSalt:trackingPreventionSalt];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end