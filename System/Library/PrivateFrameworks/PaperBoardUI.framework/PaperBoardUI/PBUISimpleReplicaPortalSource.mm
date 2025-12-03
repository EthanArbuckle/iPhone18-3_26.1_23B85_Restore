@interface PBUISimpleReplicaPortalSource
- (PBUISimpleReplicaPortalSource)initWithTargetView:(id)view cacheIdentifier:(id)identifier legibilitySettings:(id)settings effectsAreBakedIn:(BOOL)in;
@end

@implementation PBUISimpleReplicaPortalSource

- (PBUISimpleReplicaPortalSource)initWithTargetView:(id)view cacheIdentifier:(id)identifier legibilitySettings:(id)settings effectsAreBakedIn:(BOOL)in
{
  viewCopy = view;
  identifierCopy = identifier;
  settingsCopy = settings;
  v14 = [(PBUISimpleReplicaPortalSource *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_targetView, view);
    v16 = [identifierCopy copy];
    cacheIdentifier = v15->_cacheIdentifier;
    v15->_cacheIdentifier = v16;

    v18 = [settingsCopy copy];
    legibilitySettings = v15->_legibilitySettings;
    v15->_legibilitySettings = v18;

    v15->_effectsAreBakedIn = in;
  }

  return v15;
}

@end