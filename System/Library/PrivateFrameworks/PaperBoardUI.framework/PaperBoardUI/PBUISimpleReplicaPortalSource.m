@interface PBUISimpleReplicaPortalSource
- (PBUISimpleReplicaPortalSource)initWithTargetView:(id)a3 cacheIdentifier:(id)a4 legibilitySettings:(id)a5 effectsAreBakedIn:(BOOL)a6;
@end

@implementation PBUISimpleReplicaPortalSource

- (PBUISimpleReplicaPortalSource)initWithTargetView:(id)a3 cacheIdentifier:(id)a4 legibilitySettings:(id)a5 effectsAreBakedIn:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [(PBUISimpleReplicaPortalSource *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_targetView, a3);
    v16 = [v12 copy];
    cacheIdentifier = v15->_cacheIdentifier;
    v15->_cacheIdentifier = v16;

    v18 = [v13 copy];
    legibilitySettings = v15->_legibilitySettings;
    v15->_legibilitySettings = v18;

    v15->_effectsAreBakedIn = a6;
  }

  return v15;
}

@end