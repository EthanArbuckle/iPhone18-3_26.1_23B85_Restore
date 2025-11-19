@interface MIPluginDataContainer
+ (id)pluginDataContainerWithIdentifier:(id)a3 forPersona:(id)a4 createIfNeeded:(BOOL)a5 created:(BOOL *)a6 error:(id *)a7;
- (NSString)parentBundleID;
- (void)setParentBundleID:(id)a3;
@end

@implementation MIPluginDataContainer

+ (id)pluginDataContainerWithIdentifier:(id)a3 forPersona:(id)a4 createIfNeeded:(BOOL)a5 created:(BOOL *)a6 error:(id *)a7
{
  v9 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_opt_class() containerWithIdentifier:v12 forPersona:v11 ofContentClass:4 createIfNeeded:v9 created:a6 error:a7];

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
    v11 = [(MIContainer *)self identifier];
    MOLogWrite();
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)setParentBundleID:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [(MIContainer *)self setInfoValue:v4 forKey:@"com.apple.MobileInstallation.ParentBundleID" error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = v4;
    parentBundleID = self->_parentBundleID;
    self->_parentBundleID = v7;
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v9 = [(MIContainer *)self identifier];
      MOLogWrite();
    }

    parentBundleID = self->_parentBundleID;
    self->_parentBundleID = 0;
  }
}

@end