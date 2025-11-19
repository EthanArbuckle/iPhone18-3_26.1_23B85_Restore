@interface BBAction
+ (BBAction)actionWithActivatePluginName:(id)a3 activationContext:(id)a4;
+ (BBAction)actionWithAppearance:(id)a3;
+ (BBAction)actionWithCallblock:(id)a3;
+ (BBAction)actionWithIdentifier:(id)a3;
+ (BBAction)actionWithIdentifier:(id)a3 title:(id)a4;
+ (BBAction)actionWithLaunchBundleID:(id)a3 callblock:(id)a4;
+ (BBAction)actionWithLaunchURL:(id)a3 callblock:(id)a4;
+ (id)action;
- (BBAction)init;
- (BBAction)initWithCoder:(id)a3;
- (BBAction)initWithIdentifier:(id)a3;
- (BOOL)deliverResponse:(id)a3;
- (BOOL)hasLaunchAction;
- (BOOL)hasPluginAction;
- (BOOL)hasRemoteViewAction;
- (BOOL)isEqual:(id)a3;
- (id)_nameForActionType:(int64_t)a3;
- (id)awakeAfterUsingCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)partialDescription;
- (id)replacementObjectForCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCallblock:(id)a3;
@end

@implementation BBAction

- (unint64_t)hash
{
  v3 = [(BBAction *)self identifier];
  v29 = v3 != 0;

  v4 = [(BBAction *)self appearance];
  v28 = v4 != 0;

  v26 = [(BBAction *)self actionType];
  v25 = [(BBAction *)self canBypassPinLock];
  v31 = [(BBAction *)self launchURL];
  v23 = [v31 hash];
  v30 = [(BBAction *)self launchBundleID];
  v21 = [v30 hash];
  v27 = [(BBAction *)self activatePluginName];
  v20 = [v27 hash];
  v24 = [(BBAction *)self activatePluginContext];
  v19 = [v24 hash];
  v22 = [(BBAction *)self launchBundleID];
  v18 = [v22 hash];
  v5 = [(BBAction *)self internalBlock];
  v17 = [v5 hash];
  v6 = [(BBAction *)self remoteViewControllerClassName];
  v16 = [v6 hash];
  v7 = [(BBAction *)self remoteServiceBundleIdentifier];
  v8 = [v7 hash];
  v9 = [(BBAction *)self activationMode];
  v10 = [(BBAction *)self behavior];
  v11 = [(BBAction *)self behaviorParameters];
  v12 = [v11 hash];
  v13 = [(BBAction *)self isAuthenticationRequired];
  v14 = v9 ^ v10 ^ v12 ^ v13 ^ [(BBAction *)self shouldDismissBulletin];

  return v26 ^ v25 ^ v23 ^ v21 ^ v28 ^ v29 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v8 ^ v14;
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
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (BBAction)actionWithAppearance:(id)a3
{
  v4 = a3;
  v5 = [a1 action];
  [v5 setAppearance:v4];

  return v5;
}

+ (BBAction)actionWithCallblock:(id)a3
{
  v4 = a3;
  v5 = [a1 action];
  [v5 setCallblock:v4];

  return v5;
}

+ (BBAction)actionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:v4];

  return v5;
}

+ (BBAction)actionWithIdentifier:(id)a3 title:(id)a4
{
  v6 = a4;
  v7 = [a1 actionWithIdentifier:a3];
  v8 = [BBAppearance appearanceWithTitle:v6];

  [v7 setAppearance:v8];

  return v7;
}

+ (BBAction)actionWithLaunchURL:(id)a3 callblock:(id)a4
{
  v6 = a3;
  v7 = [a1 actionWithCallblock:a4];
  [v7 setLaunchURL:v6];

  return v7;
}

+ (BBAction)actionWithLaunchBundleID:(id)a3 callblock:(id)a4
{
  v6 = a3;
  v7 = [a1 actionWithCallblock:a4];
  [v7 setLaunchBundleID:v6];

  return v7;
}

+ (BBAction)actionWithActivatePluginName:(id)a3 activationContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 action];
  [v8 setActivatePluginName:v7];

  [v8 setActivatePluginContext:v6];

  return v8;
}

- (BBAction)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BBAction *)self init];
  v6 = v5;
  if (v5)
  {
    [(BBAction *)v5 setIdentifier:v4];
  }

  return v6;
}

- (void)setCallblock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__BBAction_setCallblock___block_invoke;
    v7[3] = &unk_278D2B4C0;
    v8 = v4;
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
  v3 = [(BBAction *)self launchBundleID];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BBAction *)self launchURL];
    v4 = v5 != 0;
  }

  return v4;
}

- (BOOL)hasPluginAction
{
  v2 = [(BBAction *)self activatePluginName];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasRemoteViewAction
{
  v3 = [(BBAction *)self remoteServiceBundleIdentifier];
  if (v3)
  {
    v4 = [(BBAction *)self remoteViewControllerClassName];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)deliverResponse:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BBAction *)self internalBlock];
    v6 = v5;
    v7 = v5 != 0;
    if (v5)
    {
      (*(v5 + 16))(v5, v4);
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

- (id)_nameForActionType:(int64_t)a3
{
  if ((a3 - 1) > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_278D2B4E0[a3 - 1];
  }
}

- (id)partialDescription
{
  v3 = [(BBAction *)self launchURL];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(BBAction *)self launchURL];
    v6 = [(BBAction *)self canBypassPinLock];
    v7 = @"no";
    if (v6)
    {
      v7 = @"yes";
    }

    [v4 stringWithFormat:@"[url] %@; bypassPin: %@", v5, v7];
    v12 = LABEL_9:;

    goto LABEL_10;
  }

  v8 = [(BBAction *)self launchBundleID];

  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v5 = [(BBAction *)self launchBundleID];
    v10 = [(BBAction *)self canBypassPinLock];
    v11 = @"no";
    if (v10)
    {
      v11 = @"yes";
    }

    [v9 stringWithFormat:@"[bundleID] %@; bypassPin: %@", v5, v11];
    goto LABEL_9;
  }

  v12 = &stru_28541A970;
LABEL_10:
  v13 = [(BBAction *)self activatePluginName];

  if (v13)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [(BBAction *)self activatePluginName];
    v16 = [(BBAction *)self activatePluginContext];
    v17 = [v14 stringWithFormat:@"[plugin] %@ (context: %@)", v15, v16];

    v12 = v17;
  }

  v18 = [(BBAction *)self remoteViewControllerClassName];

  if (v18)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [(BBAction *)self remoteViewControllerClassName];
    v21 = [(BBAction *)self remoteServiceBundleIdentifier];
    v22 = [v19 stringWithFormat:@"[view service] %@ inBundle: %@", v20, v21];;

    v12 = v22;
  }

  v23 = [(BBAction *)self internalBlock];

  if (v23)
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
  v29 = [(BBAction *)self identifier];
  v30 = [(BBAction *)self _nameForActionType:[(BBAction *)self actionType]];
  v31 = [v28 stringWithFormat:@"ID: %@ type: %@; action: %@", v29, v30, v12];;

  return v31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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
        v5 = v4;
        v6 = [(BBAction *)v5 canBypassPinLock];
        if (v6 != [(BBAction *)self canBypassPinLock]|| (v7 = [(BBAction *)v5 actionType], v7 != [(BBAction *)self actionType]))
        {
          LOBYTE(v10) = 0;
LABEL_44:

          goto LABEL_45;
        }

        v8 = [(BBAction *)v5 internalBlock];
        v9 = [(BBAction *)self internalBlock];
        if (v8 != v9)
        {
          LOBYTE(v10) = 0;
LABEL_43:

          goto LABEL_44;
        }

        v11 = [(BBAction *)self identifier];
        v12 = [(BBAction *)v5 identifier];
        if (!BSEqualObjects())
        {
          LOBYTE(v10) = 0;
LABEL_42:

          goto LABEL_43;
        }

        v13 = [(BBAction *)self appearance];
        v14 = [(BBAction *)v5 appearance];
        if (!BSEqualObjects())
        {
          LOBYTE(v10) = 0;
LABEL_41:

          goto LABEL_42;
        }

        v15 = [(BBAction *)self launchURL];
        [(BBAction *)v5 launchURL];
        v16 = v45 = v15;
        if (!BSEqualObjects())
        {
          LOBYTE(v10) = 0;
LABEL_40:

          goto LABEL_41;
        }

        v43 = v16;
        v17 = [(BBAction *)self launchBundleID];
        [(BBAction *)v5 launchBundleID];
        v18 = v44 = v17;
        if (!BSEqualObjects())
        {
          LOBYTE(v10) = 0;
LABEL_39:

          v16 = v43;
          goto LABEL_40;
        }

        v42 = v18;
        v19 = [(BBAction *)self activatePluginName];
        [(BBAction *)v5 activatePluginName];
        v20 = v41 = v19;
        if (!BSEqualObjects())
        {
          LOBYTE(v10) = 0;
LABEL_38:

          v18 = v42;
          goto LABEL_39;
        }

        v39 = v20;
        v40 = [(BBAction *)self activatePluginName];
        if (v40)
        {
          v21 = [(BBAction *)self activatePluginContext];
          [(BBAction *)v5 activatePluginContext];
          v22 = v37 = v21;
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

        v23 = [(BBAction *)self remoteViewControllerClassName];
        [(BBAction *)v5 remoteViewControllerClassName];
        v24 = v38 = v23;
        if (BSEqualObjects())
        {
          v35 = v24;
          v25 = [(BBAction *)self remoteServiceBundleIdentifier];
          [(BBAction *)v5 remoteServiceBundleIdentifier];
          v26 = v34 = v25;
          if (BSEqualObjects() && (v31 = [(BBAction *)v5 activationMode], v31 == [(BBAction *)self activationMode]) && (v32 = [(BBAction *)v5 behavior], v32 == [(BBAction *)self behavior]))
          {
            v33 = [(BBAction *)self behaviorParameters];
            v30 = [(BBAction *)v5 behaviorParameters];
            if (BSEqualObjects() && (v28 = [(BBAction *)v5 isAuthenticationRequired], v28 == [(BBAction *)self isAuthenticationRequired]))
            {
              v29 = [(BBAction *)v5 shouldDismissBulletin];
              v10 = v29 ^ [(BBAction *)self shouldDismissBulletin]^ 1;
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
        if (!v40)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(BBAction *)self appearance];
  [v4 setAppearance:v5];

  v6 = [(BBAction *)self launchURL];
  [v4 setLaunchURL:v6];

  v7 = [(BBAction *)self identifier];
  [v4 setIdentifier:v7];

  [v4 setActionType:{-[BBAction actionType](self, "actionType")}];
  v8 = [(BBAction *)self internalBlock];
  [v4 setInternalBlock:v8];

  v9 = [(BBAction *)self launchBundleID];
  [v4 setLaunchBundleID:v9];

  [v4 setCanBypassPinLock:{-[BBAction canBypassPinLock](self, "canBypassPinLock")}];
  v10 = [(BBAction *)self activatePluginName];
  [v4 setActivatePluginName:v10];

  v11 = [(BBAction *)self activatePluginContext];
  [v4 setActivatePluginContext:v11];

  v12 = [(BBAction *)self remoteViewControllerClassName];
  [v4 setRemoteViewControllerClassName:v12];

  v13 = [(BBAction *)self remoteServiceBundleIdentifier];
  [v4 setRemoteServiceBundleIdentifier:v13];

  [v4 setActivationMode:{-[BBAction activationMode](self, "activationMode")}];
  [v4 setBehavior:{-[BBAction behavior](self, "behavior")}];
  v14 = [(BBAction *)self behaviorParameters];
  [v4 setBehaviorParameters:v14];

  [v4 setAuthenticationRequired:{-[BBAction isAuthenticationRequired](self, "isAuthenticationRequired")}];
  [v4 setShouldDismissBulletin:{-[BBAction shouldDismissBulletin](self, "shouldDismissBulletin")}];
  return v4;
}

- (BBAction)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = BBAction;
  v5 = [(BBAction *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(BBAction *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appearance"];
    [(BBAction *)v5 setAppearance:v7];

    -[BBAction setActionType:](v5, "setActionType:", [v4 decodeIntegerForKey:@"actionType"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launchURL"];
    [(BBAction *)v5 setLaunchURL:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launchBundleID"];
    [(BBAction *)v5 setLaunchBundleID:v9];

    -[BBAction setLaunchCanBypassPinLock:](v5, "setLaunchCanBypassPinLock:", [v4 decodeBoolForKey:@"launchCanBypassPinLock"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activatePluginName"];
    [(BBAction *)v5 setActivatePluginName:v10];

    v11 = BBAllowedClasses();
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"activatePluginContext"];
    [(BBAction *)v5 setActivatePluginContext:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteClassName"];
    [(BBAction *)v5 setRemoteViewControllerClassName:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteBundleID"];
    [(BBAction *)v5 setRemoteServiceBundleIdentifier:v14];

    -[BBAction setActivationMode:](v5, "setActivationMode:", [v4 decodeIntegerForKey:@"activation"]);
    -[BBAction setBehavior:](v5, "setBehavior:", [v4 decodeIntegerForKey:@"behavior"]);
    v15 = BBAllowedClasses();
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"behaviorParameters"];
    [(BBAction *)v5 setBehaviorParameters:v16];

    -[BBAction setAuthenticationRequired:](v5, "setAuthenticationRequired:", [v4 decodeBoolForKey:@"secure"]);
    -[BBAction setShouldDismissBulletin:](v5, "setShouldDismissBulletin:", [v4 decodeBoolForKey:@"dismiss"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(BBAction *)self identifier];
  [v13 encodeObject:v4 forKey:@"identifier"];

  v5 = [(BBAction *)self appearance];
  [v13 encodeObject:v5 forKey:@"appearance"];

  [v13 encodeInteger:-[BBAction actionType](self forKey:{"actionType"), @"actionType"}];
  v6 = [(BBAction *)self launchURL];
  [v13 encodeObject:v6 forKey:@"launchURL"];

  v7 = [(BBAction *)self launchBundleID];
  [v13 encodeObject:v7 forKey:@"launchBundleID"];

  [v13 encodeBool:-[BBAction launchCanBypassPinLock](self forKey:{"launchCanBypassPinLock"), @"launchCanBypassPinLock"}];
  v8 = [(BBAction *)self activatePluginName];
  [v13 encodeObject:v8 forKey:@"activatePluginName"];

  v9 = [(BBAction *)self activatePluginContext];
  [v13 encodeObject:v9 forKey:@"activatePluginContext"];

  v10 = [(BBAction *)self remoteViewControllerClassName];
  [v13 encodeObject:v10 forKey:@"remoteClassName"];

  v11 = [(BBAction *)self remoteServiceBundleIdentifier];
  [v13 encodeObject:v11 forKey:@"remoteBundleID"];

  [v13 encodeInteger:-[BBAction activationMode](self forKey:{"activationMode"), @"activation"}];
  [v13 encodeInteger:-[BBAction behavior](self forKey:{"behavior"), @"behavior"}];
  v12 = [(BBAction *)self behaviorParameters];
  [v13 encodeObject:v12 forKey:@"behaviorParameters"];

  [v13 encodeBool:-[BBAction isAuthenticationRequired](self forKey:{"isAuthenticationRequired"), @"secure"}];
  [v13 encodeBool:-[BBAction shouldDismissBulletin](self forKey:{"shouldDismissBulletin"), @"dismiss"}];
}

- (id)replacementObjectForCoder:(id)a3
{
  v4 = [self bb_objectCache];
  v5 = [v4 cacheObject:self];

  return v5;
}

- (id)awakeAfterUsingCoder:(id)a3
{
  v4 = [self bb_objectCache];
  v5 = [v4 cacheObject:self];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(BBAction *)self partialDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];;

  return v6;
}

@end