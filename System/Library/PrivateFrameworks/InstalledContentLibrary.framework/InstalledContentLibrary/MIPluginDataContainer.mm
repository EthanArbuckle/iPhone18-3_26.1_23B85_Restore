@interface MIPluginDataContainer
+ (id)pluginDataContainerWithIdentifier:(id)identifier forPersona:(id)persona createIfNeeded:(BOOL)needed created:(BOOL *)created error:(id *)error;
- (NSString)parentBundleID;
- (void)setParentBundleID:(id)d;
@end

@implementation MIPluginDataContainer

+ (id)pluginDataContainerWithIdentifier:(id)identifier forPersona:(id)persona createIfNeeded:(BOOL)needed created:(BOOL *)created error:(id *)error
{
  neededCopy = needed;
  personaCopy = persona;
  identifierCopy = identifier;
  v13 = [objc_opt_class() containerWithIdentifier:identifierCopy forPersona:personaCopy ofContentClass:4 createIfNeeded:neededCopy created:created error:error];

  return v13;
}

- (NSString)parentBundleID
{
  parentBundleID = self->_parentBundleID;
  if (parentBundleID)
  {
    goto LABEL_6;
  }

  v12 = 0;
  v4 = [(MIContainer *)self infoValueForKey:@"com.apple.MobileInstallation.ParentBundleID" error:&v12];
  v5 = v12;
  objc_opt_class();
  v6 = v4;
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = self->_parentBundleID;
    self->_parentBundleID = v7;

    parentBundleID = self->_parentBundleID;
LABEL_6:
    v9 = parentBundleID;
    goto LABEL_7;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    identifier = [(MIContainer *)self identifier];
    MOLogWrite();
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)setParentBundleID:(id)d
{
  dCopy = d;
  v10 = 0;
  v5 = [(MIContainer *)self setInfoValue:dCopy forKey:@"com.apple.MobileInstallation.ParentBundleID" error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = dCopy;
    parentBundleID = self->_parentBundleID;
    self->_parentBundleID = v7;
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      identifier = [(MIContainer *)self identifier];
      MOLogWrite();
    }

    parentBundleID = self->_parentBundleID;
    self->_parentBundleID = 0;
  }
}

@end