@interface BBAction
+ (BBAction)actionWithActivatePluginName:(id)name activationContext:(id)context;
+ (BBAction)actionWithAppearance:(id)appearance;
+ (BBAction)actionWithCallblock:(id)callblock;
+ (BBAction)actionWithIdentifier:(id)identifier;
+ (BBAction)actionWithIdentifier:(id)identifier title:(id)title;
+ (BBAction)actionWithLaunchBundleID:(id)d callblock:(id)callblock;
+ (BBAction)actionWithLaunchURL:(id)l callblock:(id)callblock;
+ (id)action;
- (BBAction)init;
- (BBAction)initWithCoder:(id)coder;
- (BBAction)initWithIdentifier:(id)identifier;
- (BOOL)deliverResponse:(id)response;
- (BOOL)hasLaunchAction;
- (BOOL)hasPluginAction;
- (BOOL)hasRemoteViewAction;
- (BOOL)isEqual:(id)equal;
- (id)_nameForActionType:(int64_t)type;
- (id)awakeAfterUsingCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)partialDescription;
- (id)replacementObjectForCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCallblock:(id)callblock;
@end

@implementation BBAction

- (unint64_t)hash
{
  identifier = [(BBAction *)self identifier];
  v29 = identifier != 0;

  appearance = [(BBAction *)self appearance];
  v28 = appearance != 0;

  actionType = [(BBAction *)self actionType];
  canBypassPinLock = [(BBAction *)self canBypassPinLock];
  launchURL = [(BBAction *)self launchURL];
  v23 = [launchURL hash];
  launchBundleID = [(BBAction *)self launchBundleID];
  v21 = [launchBundleID hash];
  activatePluginName = [(BBAction *)self activatePluginName];
  v20 = [activatePluginName hash];
  activatePluginContext = [(BBAction *)self activatePluginContext];
  v19 = [activatePluginContext hash];
  launchBundleID2 = [(BBAction *)self launchBundleID];
  v18 = [launchBundleID2 hash];
  internalBlock = [(BBAction *)self internalBlock];
  v17 = [internalBlock hash];
  remoteViewControllerClassName = [(BBAction *)self remoteViewControllerClassName];
  v16 = [remoteViewControllerClassName hash];
  remoteServiceBundleIdentifier = [(BBAction *)self remoteServiceBundleIdentifier];
  v8 = [remoteServiceBundleIdentifier hash];
  activationMode = [(BBAction *)self activationMode];
  behavior = [(BBAction *)self behavior];
  behaviorParameters = [(BBAction *)self behaviorParameters];
  v12 = [behaviorParameters hash];
  isAuthenticationRequired = [(BBAction *)self isAuthenticationRequired];
  v14 = activationMode ^ behavior ^ v12 ^ isAuthenticationRequired ^ [(BBAction *)self shouldDismissBulletin];

  return actionType ^ canBypassPinLock ^ v23 ^ v21 ^ v28 ^ v29 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v8 ^ v14;
}

- (BBAction)init
{
  v3.receiver = self;
  v3.super_class = BBAction;
  result = [(BBAction *)&v3 init];
  if (result)
  {
    result->_shouldDismissBulletin = 1;
  }

  return result;
}

+ (id)action
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (BBAction)actionWithAppearance:(id)appearance
{
  appearanceCopy = appearance;
  action = [self action];
  [action setAppearance:appearanceCopy];

  return action;
}

+ (BBAction)actionWithCallblock:(id)callblock
{
  callblockCopy = callblock;
  action = [self action];
  [action setCallblock:callblockCopy];

  return action;
}

+ (BBAction)actionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy];

  return v5;
}

+ (BBAction)actionWithIdentifier:(id)identifier title:(id)title
{
  titleCopy = title;
  v7 = [self actionWithIdentifier:identifier];
  v8 = [BBAppearance appearanceWithTitle:titleCopy];

  [v7 setAppearance:v8];

  return v7;
}

+ (BBAction)actionWithLaunchURL:(id)l callblock:(id)callblock
{
  lCopy = l;
  v7 = [self actionWithCallblock:callblock];
  [v7 setLaunchURL:lCopy];

  return v7;
}

+ (BBAction)actionWithLaunchBundleID:(id)d callblock:(id)callblock
{
  dCopy = d;
  v7 = [self actionWithCallblock:callblock];
  [v7 setLaunchBundleID:dCopy];

  return v7;
}

+ (BBAction)actionWithActivatePluginName:(id)name activationContext:(id)context
{
  contextCopy = context;
  nameCopy = name;
  action = [self action];
  [action setActivatePluginName:nameCopy];

  [action setActivatePluginContext:contextCopy];

  return action;
}

- (BBAction)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(BBAction *)self init];
  v6 = v5;
  if (v5)
  {
    [(BBAction *)v5 setIdentifier:identifierCopy];
  }

  return v6;
}

- (void)setCallblock:(id)callblock
{
  callblockCopy = callblock;
  v5 = callblockCopy;
  if (callblockCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__BBAction_setCallblock___block_invoke;
    v7[3] = &unk_278D2B4C0;
    v8 = callblockCopy;
    v6 = MEMORY[0x245D05D40](v7);
  }

  else
  {
    v6 = 0;
  }

  [(BBAction *)self setInternalBlock:v6];
}

- (BOOL)hasLaunchAction
{
  launchBundleID = [(BBAction *)self launchBundleID];
  if (launchBundleID)
  {
    v4 = 1;
  }

  else
  {
    launchURL = [(BBAction *)self launchURL];
    v4 = launchURL != 0;
  }

  return v4;
}

- (BOOL)hasPluginAction
{
  activatePluginName = [(BBAction *)self activatePluginName];
  v3 = activatePluginName != 0;

  return v3;
}

- (BOOL)hasRemoteViewAction
{
  remoteServiceBundleIdentifier = [(BBAction *)self remoteServiceBundleIdentifier];
  if (remoteServiceBundleIdentifier)
  {
    remoteViewControllerClassName = [(BBAction *)self remoteViewControllerClassName];
    v5 = remoteViewControllerClassName != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)deliverResponse:(id)response
{
  responseCopy = response;
  if (responseCopy)
  {
    internalBlock = [(BBAction *)self internalBlock];
    v6 = internalBlock;
    v7 = internalBlock != 0;
    if (internalBlock)
    {
      (*(internalBlock + 16))(internalBlock, responseCopy);
    }
  }

  else
  {
    v8 = objc_opt_class();
    NSLog(&cfstr_Handleresponse.isa, v8);
    v7 = 0;
  }

  return v7;
}

- (id)_nameForActionType:(int64_t)type
{
  if ((type - 1) > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_278D2B4E0[type - 1];
  }
}

- (id)partialDescription
{
  launchURL = [(BBAction *)self launchURL];

  if (launchURL)
  {
    v4 = MEMORY[0x277CCACA8];
    launchURL2 = [(BBAction *)self launchURL];
    canBypassPinLock = [(BBAction *)self canBypassPinLock];
    v7 = @"no";
    if (canBypassPinLock)
    {
      v7 = @"yes";
    }

    [v4 stringWithFormat:@"[url] %@; bypassPin: %@", launchURL2, v7];
    v12 = LABEL_9:;

    goto LABEL_10;
  }

  launchBundleID = [(BBAction *)self launchBundleID];

  if (launchBundleID)
  {
    v9 = MEMORY[0x277CCACA8];
    launchURL2 = [(BBAction *)self launchBundleID];
    canBypassPinLock2 = [(BBAction *)self canBypassPinLock];
    v11 = @"no";
    if (canBypassPinLock2)
    {
      v11 = @"yes";
    }

    [v9 stringWithFormat:@"[bundleID] %@; bypassPin: %@", launchURL2, v11];
    goto LABEL_9;
  }

  v12 = &stru_28541A970;
LABEL_10:
  activatePluginName = [(BBAction *)self activatePluginName];

  if (activatePluginName)
  {
    v14 = MEMORY[0x277CCACA8];
    activatePluginName2 = [(BBAction *)self activatePluginName];
    activatePluginContext = [(BBAction *)self activatePluginContext];
    v17 = [v14 stringWithFormat:@"[plugin] %@ (context: %@)", activatePluginName2, activatePluginContext];

    v12 = v17;
  }

  remoteViewControllerClassName = [(BBAction *)self remoteViewControllerClassName];

  if (remoteViewControllerClassName)
  {
    v19 = MEMORY[0x277CCACA8];
    remoteViewControllerClassName2 = [(BBAction *)self remoteViewControllerClassName];
    remoteServiceBundleIdentifier = [(BBAction *)self remoteServiceBundleIdentifier];
    v22 = [v19 stringWithFormat:@"[view service] %@ inBundle: %@", remoteViewControllerClassName2, remoteServiceBundleIdentifier];;

    v12 = v22;
  }

  internalBlock = [(BBAction *)self internalBlock];

  if (internalBlock)
  {
    v24 = [MEMORY[0x277CCAE60] valueWithPointer:{-[BBAction internalBlock](self, "internalBlock")}];
    v25 = [v24 description];
    v26 = [(__CFString *)v12 stringByAppendingFormat:@"callblock: %@", v25];

    v12 = v26;
  }

  if ([(BBAction *)self behavior]== 1)
  {
    v27 = [(__CFString *)v12 stringByAppendingFormat:@" behavior: textInput"];

    v12 = v27;
  }

  v28 = MEMORY[0x277CCACA8];
  identifier = [(BBAction *)self identifier];
  v30 = [(BBAction *)self _nameForActionType:[(BBAction *)self actionType]];
  v31 = [v28 stringWithFormat:@"ID: %@ type: %@; action: %@", identifier, v30, v12];;

  return v31;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = equalCopy;
        canBypassPinLock = [(BBAction *)v5 canBypassPinLock];
        if (canBypassPinLock != [(BBAction *)self canBypassPinLock]|| (v7 = [(BBAction *)v5 actionType], v7 != [(BBAction *)self actionType]))
        {
          LOBYTE(v10) = 0;
LABEL_44:

          goto LABEL_45;
        }

        internalBlock = [(BBAction *)v5 internalBlock];
        internalBlock2 = [(BBAction *)self internalBlock];
        if (internalBlock != internalBlock2)
        {
          LOBYTE(v10) = 0;
LABEL_43:

          goto LABEL_44;
        }

        identifier = [(BBAction *)self identifier];
        identifier2 = [(BBAction *)v5 identifier];
        if (!BSEqualObjects())
        {
          LOBYTE(v10) = 0;
LABEL_42:

          goto LABEL_43;
        }

        appearance = [(BBAction *)self appearance];
        appearance2 = [(BBAction *)v5 appearance];
        if (!BSEqualObjects())
        {
          LOBYTE(v10) = 0;
LABEL_41:

          goto LABEL_42;
        }

        launchURL = [(BBAction *)self launchURL];
        [(BBAction *)v5 launchURL];
        v16 = v45 = launchURL;
        if (!BSEqualObjects())
        {
          LOBYTE(v10) = 0;
LABEL_40:

          goto LABEL_41;
        }

        v43 = v16;
        launchBundleID = [(BBAction *)self launchBundleID];
        [(BBAction *)v5 launchBundleID];
        v18 = v44 = launchBundleID;
        if (!BSEqualObjects())
        {
          LOBYTE(v10) = 0;
LABEL_39:

          v16 = v43;
          goto LABEL_40;
        }

        v42 = v18;
        activatePluginName = [(BBAction *)self activatePluginName];
        [(BBAction *)v5 activatePluginName];
        v20 = v41 = activatePluginName;
        if (!BSEqualObjects())
        {
          LOBYTE(v10) = 0;
LABEL_38:

          v18 = v42;
          goto LABEL_39;
        }

        v39 = v20;
        activatePluginName2 = [(BBAction *)self activatePluginName];
        if (activatePluginName2)
        {
          activatePluginContext = [(BBAction *)self activatePluginContext];
          [(BBAction *)v5 activatePluginContext];
          v22 = v37 = activatePluginContext;
          if (!BSEqualObjects())
          {
            LOBYTE(v10) = 0;
LABEL_36:

LABEL_37:
            v20 = v39;
            goto LABEL_38;
          }

          v36 = v22;
        }

        remoteViewControllerClassName = [(BBAction *)self remoteViewControllerClassName];
        [(BBAction *)v5 remoteViewControllerClassName];
        v24 = v38 = remoteViewControllerClassName;
        if (BSEqualObjects())
        {
          v35 = v24;
          remoteServiceBundleIdentifier = [(BBAction *)self remoteServiceBundleIdentifier];
          [(BBAction *)v5 remoteServiceBundleIdentifier];
          v26 = v34 = remoteServiceBundleIdentifier;
          if (BSEqualObjects() && (v31 = [(BBAction *)v5 activationMode], v31 == [(BBAction *)self activationMode]) && (v32 = [(BBAction *)v5 behavior], v32 == [(BBAction *)self behavior]))
          {
            behaviorParameters = [(BBAction *)self behaviorParameters];
            behaviorParameters2 = [(BBAction *)v5 behaviorParameters];
            if (BSEqualObjects() && (v28 = [(BBAction *)v5 isAuthenticationRequired], v28 == [(BBAction *)self isAuthenticationRequired]))
            {
              shouldDismissBulletin = [(BBAction *)v5 shouldDismissBulletin];
              v10 = shouldDismissBulletin ^ [(BBAction *)self shouldDismissBulletin]^ 1;
            }

            else
            {
              LOBYTE(v10) = 0;
            }
          }

          else
          {
            LOBYTE(v10) = 0;
          }
        }

        else
        {

          LOBYTE(v10) = 0;
        }

        v22 = v36;
        if (!activatePluginName2)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    LOBYTE(v10) = 0;
  }

LABEL_45:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  appearance = [(BBAction *)self appearance];
  [v4 setAppearance:appearance];

  launchURL = [(BBAction *)self launchURL];
  [v4 setLaunchURL:launchURL];

  identifier = [(BBAction *)self identifier];
  [v4 setIdentifier:identifier];

  [v4 setActionType:{-[BBAction actionType](self, "actionType")}];
  internalBlock = [(BBAction *)self internalBlock];
  [v4 setInternalBlock:internalBlock];

  launchBundleID = [(BBAction *)self launchBundleID];
  [v4 setLaunchBundleID:launchBundleID];

  [v4 setCanBypassPinLock:{-[BBAction canBypassPinLock](self, "canBypassPinLock")}];
  activatePluginName = [(BBAction *)self activatePluginName];
  [v4 setActivatePluginName:activatePluginName];

  activatePluginContext = [(BBAction *)self activatePluginContext];
  [v4 setActivatePluginContext:activatePluginContext];

  remoteViewControllerClassName = [(BBAction *)self remoteViewControllerClassName];
  [v4 setRemoteViewControllerClassName:remoteViewControllerClassName];

  remoteServiceBundleIdentifier = [(BBAction *)self remoteServiceBundleIdentifier];
  [v4 setRemoteServiceBundleIdentifier:remoteServiceBundleIdentifier];

  [v4 setActivationMode:{-[BBAction activationMode](self, "activationMode")}];
  [v4 setBehavior:{-[BBAction behavior](self, "behavior")}];
  behaviorParameters = [(BBAction *)self behaviorParameters];
  [v4 setBehaviorParameters:behaviorParameters];

  [v4 setAuthenticationRequired:{-[BBAction isAuthenticationRequired](self, "isAuthenticationRequired")}];
  [v4 setShouldDismissBulletin:{-[BBAction shouldDismissBulletin](self, "shouldDismissBulletin")}];
  return v4;
}

- (BBAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = BBAction;
  v5 = [(BBAction *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(BBAction *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appearance"];
    [(BBAction *)v5 setAppearance:v7];

    -[BBAction setActionType:](v5, "setActionType:", [coderCopy decodeIntegerForKey:@"actionType"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchURL"];
    [(BBAction *)v5 setLaunchURL:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchBundleID"];
    [(BBAction *)v5 setLaunchBundleID:v9];

    -[BBAction setLaunchCanBypassPinLock:](v5, "setLaunchCanBypassPinLock:", [coderCopy decodeBoolForKey:@"launchCanBypassPinLock"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activatePluginName"];
    [(BBAction *)v5 setActivatePluginName:v10];

    v11 = BBAllowedClasses();
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"activatePluginContext"];
    [(BBAction *)v5 setActivatePluginContext:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteClassName"];
    [(BBAction *)v5 setRemoteViewControllerClassName:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteBundleID"];
    [(BBAction *)v5 setRemoteServiceBundleIdentifier:v14];

    -[BBAction setActivationMode:](v5, "setActivationMode:", [coderCopy decodeIntegerForKey:@"activation"]);
    -[BBAction setBehavior:](v5, "setBehavior:", [coderCopy decodeIntegerForKey:@"behavior"]);
    v15 = BBAllowedClasses();
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"behaviorParameters"];
    [(BBAction *)v5 setBehaviorParameters:v16];

    -[BBAction setAuthenticationRequired:](v5, "setAuthenticationRequired:", [coderCopy decodeBoolForKey:@"secure"]);
    -[BBAction setShouldDismissBulletin:](v5, "setShouldDismissBulletin:", [coderCopy decodeBoolForKey:@"dismiss"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(BBAction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  appearance = [(BBAction *)self appearance];
  [coderCopy encodeObject:appearance forKey:@"appearance"];

  [coderCopy encodeInteger:-[BBAction actionType](self forKey:{"actionType"), @"actionType"}];
  launchURL = [(BBAction *)self launchURL];
  [coderCopy encodeObject:launchURL forKey:@"launchURL"];

  launchBundleID = [(BBAction *)self launchBundleID];
  [coderCopy encodeObject:launchBundleID forKey:@"launchBundleID"];

  [coderCopy encodeBool:-[BBAction launchCanBypassPinLock](self forKey:{"launchCanBypassPinLock"), @"launchCanBypassPinLock"}];
  activatePluginName = [(BBAction *)self activatePluginName];
  [coderCopy encodeObject:activatePluginName forKey:@"activatePluginName"];

  activatePluginContext = [(BBAction *)self activatePluginContext];
  [coderCopy encodeObject:activatePluginContext forKey:@"activatePluginContext"];

  remoteViewControllerClassName = [(BBAction *)self remoteViewControllerClassName];
  [coderCopy encodeObject:remoteViewControllerClassName forKey:@"remoteClassName"];

  remoteServiceBundleIdentifier = [(BBAction *)self remoteServiceBundleIdentifier];
  [coderCopy encodeObject:remoteServiceBundleIdentifier forKey:@"remoteBundleID"];

  [coderCopy encodeInteger:-[BBAction activationMode](self forKey:{"activationMode"), @"activation"}];
  [coderCopy encodeInteger:-[BBAction behavior](self forKey:{"behavior"), @"behavior"}];
  behaviorParameters = [(BBAction *)self behaviorParameters];
  [coderCopy encodeObject:behaviorParameters forKey:@"behaviorParameters"];

  [coderCopy encodeBool:-[BBAction isAuthenticationRequired](self forKey:{"isAuthenticationRequired"), @"secure"}];
  [coderCopy encodeBool:-[BBAction shouldDismissBulletin](self forKey:{"shouldDismissBulletin"), @"dismiss"}];
}

- (id)replacementObjectForCoder:(id)coder
{
  bb_objectCache = [self bb_objectCache];
  v5 = [bb_objectCache cacheObject:self];

  return v5;
}

- (id)awakeAfterUsingCoder:(id)coder
{
  bb_objectCache = [self bb_objectCache];
  v5 = [bb_objectCache cacheObject:self];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  partialDescription = [(BBAction *)self partialDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, partialDescription];;

  return v6;
}

@end