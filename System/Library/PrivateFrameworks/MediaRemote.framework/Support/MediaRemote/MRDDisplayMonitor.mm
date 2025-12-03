@interface MRDDisplayMonitor
+ (MRDDisplayMonitor)sharedMonitor;
- (BOOL)ambientForegrounded;
- (BOOL)ambientVisible;
- (BOOL)controlCenterForegrounded;
- (BOOL)controlCenterVisible;
- (BOOL)displayOn;
- (BOOL)homeScreenForegrounded;
- (BOOL)homeScreenVisible;
- (BOOL)lockScreenForegrounded;
- (BOOL)lockScreenVisible;
- (BOOL)routePickerForegrounded;
- (BOOL)routePickerVisible;
- (BOOL)siriForegrounded;
- (BOOL)siriVisible;
- (MRDDisplayMonitor)init;
- (NSSet)presentedBundleIdentifiers;
- (NSString)primaryUIApplicationBundleIdentifier;
- (void)dealloc;
- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context;
- (void)scheduleLayoutChangeForReason:(id)reason;
- (void)setDisplayOn:(BOOL)on;
- (void)setLockScreenForegrounded:(BOOL)foregrounded;
- (void)setPresentedBundleIdentifiers:(id)identifiers;
- (void)setPrimaryUIApplicationBundleIdentifier:(id)identifier;
@end

@implementation MRDDisplayMonitor

- (BOOL)displayOn
{
  os_unfair_lock_lock(&self->_lock);
  displayOn = self->_displayOn;
  os_unfair_lock_unlock(&self->_lock);
  return displayOn;
}

- (BOOL)lockScreenVisible
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_displayOn && self->_lockScreenForegrounded;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)controlCenterVisible
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_displayOn && self->_controlCenterForegrounded;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSSet)presentedBundleIdentifiers
{
  os_unfair_lock_lock(&self->_lock);
  presentedBundleIdentifiers = self->_presentedBundleIdentifiers;
  if (presentedBundleIdentifiers)
  {
    v4 = presentedBundleIdentifiers;
  }

  else
  {
    v4 = +[NSSet set];
  }

  v5 = v4;
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

+ (MRDDisplayMonitor)sharedMonitor
{
  if (qword_100529650 != -1)
  {
    sub_100007B54();
  }

  v3 = qword_100529658;

  return v3;
}

- (BOOL)routePickerVisible
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_displayOn && self->_routePickerForegrounded;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSString)primaryUIApplicationBundleIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_primaryBundleIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (MRDDisplayMonitor)init
{
  v8.receiver = self;
  v8.super_class = MRDDisplayMonitor;
  v2 = [(MRDDisplayMonitor *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100184150;
    block[3] = &unk_1004B6D08;
    v7 = v3;
    dispatch_after(v4, &_dispatch_main_q, block);
  }

  return v3;
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_displayMonitor invalidate];
  v3.receiver = self;
  v3.super_class = MRDDisplayMonitor;
  [(MRDDisplayMonitor *)&v3 dealloc];
}

- (void)setDisplayOn:(BOOL)on
{
  onCopy = on;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_displayOn != onCopy)
  {
    self->_displayOn = onCopy;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100184388;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v5 = [NSString alloc];
    if (self->_displayOn)
    {
      v6 = @"On";
    }

    else
    {
      v6 = @"Off";
    }

    v7 = [v5 initWithFormat:@"Display%@", v6];
    [(MRDDisplayMonitor *)self scheduleLayoutChangeForReason:v7];
  }
}

- (BOOL)lockScreenForegrounded
{
  os_unfair_lock_lock(&self->_lock);
  lockScreenForegrounded = self->_lockScreenForegrounded;
  os_unfair_lock_unlock(&self->_lock);
  return lockScreenForegrounded;
}

- (void)setLockScreenForegrounded:(BOOL)foregrounded
{
  foregroundedCopy = foregrounded;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lockScreenForegrounded != foregroundedCopy)
  {
    self->_lockScreenForegrounded = foregroundedCopy;
    v5 = [NSString alloc];
    if (self->_lockScreenForegrounded)
    {
      v6 = @"Fore";
    }

    else
    {
      v6 = @"Back";
    }

    v7 = [v5 initWithFormat:@"LockScreen%@grounded", v6];
    [(MRDDisplayMonitor *)self scheduleLayoutChangeForReason:v7];
  }
}

- (BOOL)homeScreenForegrounded
{
  os_unfair_lock_lock(&self->_lock);
  homeScreenForegrounded = self->_homeScreenForegrounded;
  os_unfair_lock_unlock(&self->_lock);
  return homeScreenForegrounded;
}

- (BOOL)controlCenterForegrounded
{
  os_unfair_lock_lock(&self->_lock);
  controlCenterForegrounded = self->_controlCenterForegrounded;
  os_unfair_lock_unlock(&self->_lock);
  return controlCenterForegrounded;
}

- (BOOL)siriForegrounded
{
  os_unfair_lock_lock(&self->_lock);
  siriForegrounded = self->_siriForegrounded;
  os_unfair_lock_unlock(&self->_lock);
  return siriForegrounded;
}

- (BOOL)ambientForegrounded
{
  os_unfair_lock_lock(&self->_lock);
  ambientForegrounded = self->_ambientForegrounded;
  os_unfair_lock_unlock(&self->_lock);
  return ambientForegrounded;
}

- (BOOL)routePickerForegrounded
{
  os_unfair_lock_lock(&self->_lock);
  routePickerForegrounded = self->_routePickerForegrounded;
  os_unfair_lock_unlock(&self->_lock);
  return routePickerForegrounded;
}

- (void)setPresentedBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  os_unfair_lock_assert_owner(&self->_lock);
  if (([identifiersCopy isEqual:self->_presentedBundleIdentifiers] & 1) == 0)
  {
    objc_storeStrong(&self->_presentedBundleIdentifiers, identifiers);
    v5 = [[NSString alloc] initWithFormat:@"PresentedBundleIdentifiersChanged"];
    [(MRDDisplayMonitor *)self scheduleLayoutChangeForReason:v5];
  }
}

- (void)setPrimaryUIApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  if (([identifierCopy isEqual:self->_primaryBundleIdentifier] & 1) == 0)
  {
    objc_storeStrong(&self->_primaryBundleIdentifier, identifier);
    v5 = [[NSString alloc] initWithFormat:@"PrimaryUIApplicationBundleIdentifierChanged"];
    [(MRDDisplayMonitor *)self scheduleLayoutChangeForReason:v5];
  }
}

- (BOOL)homeScreenVisible
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_displayOn && self->_homeScreenForegrounded;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)siriVisible
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_displayOn && self->_siriForegrounded;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)ambientVisible
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_displayOn && self->_ambientForegrounded;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  monitorCopy = monitor;
  layoutCopy = layout;
  contextCopy = context;
  v56 = +[NSMutableSet set];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v52 = layoutCopy;
  obj = [layoutCopy elements];
  v64 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v64)
  {
    v55 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v67 = 0;
    v11 = 0;
    v63 = *v69;
    v62 = FBSDisplayLayoutElementLockScreenIdentifier;
    v61 = FBSDisplayLayoutElementControlCenterIdentifier;
    v60 = FBSDisplayLayoutElementSiriIdentifier;
    v59 = SBSDisplayLayoutElementHomeScreenIdentifier;
    do
    {
      for (i = 0; i != v64; i = i + 1)
      {
        if (*v69 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v68 + 1) + 8 * i);
        bundleIdentifier = [v13 bundleIdentifier];

        if (bundleIdentifier)
        {
          layoutRole = [v13 layoutRole];
          layoutRole2 = [v13 layoutRole];
          if (layoutRole == 1 && [v13 isUIApplicationElement])
          {
            bundleIdentifier2 = [v13 bundleIdentifier];

            v55 = bundleIdentifier2;
          }

          if (layoutRole2 != 5)
          {
            bundleIdentifier3 = [v13 bundleIdentifier];
            [v56 addObject:bundleIdentifier3];
          }
        }

        identifier = [v13 identifier];
        HIDWORD(v65) = [identifier isEqualToString:v62];

        identifier2 = [v13 identifier];
        LODWORD(v65) = [identifier2 isEqualToString:v61];

        identifier3 = [v13 identifier];
        v22 = [identifier3 isEqualToString:v60];

        identifier4 = [v13 identifier];
        v24 = [identifier4 isEqualToString:v59];

        identifier5 = [v13 identifier];
        v26 = [identifier5 isEqualToString:@"SBAmbientTransientOverlayViewController"];

        identifier6 = [v13 identifier];
        if ([identifier6 isEqualToString:@"com.apple.MusicUIService"])
        {
          v8 = 1;
        }

        else
        {
          identifier7 = [v13 identifier];
          v58 = v26;
          v29 = v24;
          v30 = v22;
          v31 = v10;
          v32 = v11;
          v33 = v9;
          v34 = [identifier7 isEqualToString:@"com.apple.MediaRemoteUIService"];

          v8 |= v34;
          v9 = v33;
          v11 = v32;
          v10 = v31;
          v22 = v30;
          v24 = v29;
          v26 = v58;
        }

        v67 |= v65;
        v10 |= v22;
        v11 |= v24;
        v9 |= v26;
      }

      v64 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v64);
  }

  else
  {
    v55 = 0;
    v8 = 0;
    LOBYTE(v9) = 0;
    LOBYTE(v10) = 0;
    v67 = 0;
    LOBYTE(v11) = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  v35 = v8;
  if (self->_displayOn)
  {
    lockScreenForegrounded = self->_lockScreenForegrounded;
    controlCenterForegrounded = self->_controlCenterForegrounded;
    siriForegrounded = self->_siriForegrounded;
    LODWORD(v66) = self->_routePickerForegrounded;
    HIDWORD(v66) = self->_ambientForegrounded;
  }

  else
  {
    v66 = 0;
    controlCenterForegrounded = 0;
    lockScreenForegrounded = 0;
    siriForegrounded = 0;
  }

  -[MRDDisplayMonitor setDisplayOn:](self, "setDisplayOn:", [v52 displayBacklightLevel] > 0);
  v39 = [v56 copy];
  [(MRDDisplayMonitor *)self setPresentedBundleIdentifiers:v39];

  [(MRDDisplayMonitor *)self setPrimaryUIApplicationBundleIdentifier:v55];
  [(MRDDisplayMonitor *)self setControlCenterForegrounded:v67 & 1];
  [(MRDDisplayMonitor *)self setSiriForegrounded:v10 & 1];
  [(MRDDisplayMonitor *)self setLockScreenForegrounded:BYTE4(v67) & 1];
  [(MRDDisplayMonitor *)self setHomeScreenForegrounded:v11 & 1];
  [(MRDDisplayMonitor *)self setAmbientForegrounded:v9 & 1];
  [(MRDDisplayMonitor *)self setRoutePickerForegrounded:v35 & 1];
  if (self->_displayOn)
  {
    v40 = self->_lockScreenForegrounded;
    v41 = self->_controlCenterForegrounded;
    v42 = self->_siriForegrounded;
    ambientForegrounded = self->_ambientForegrounded;
    routePickerForegrounded = self->_routePickerForegrounded;
  }

  else
  {
    ambientForegrounded = 0;
    v41 = 0;
    v40 = 0;
    v42 = 0;
    routePickerForegrounded = 0;
  }

  if (lockScreenForegrounded != v40)
  {
    v47 = @"LockScreen%@Visible";
LABEL_35:
    v45 = monitorCopy;
    goto LABEL_36;
  }

  if (controlCenterForegrounded != v41)
  {
    v47 = @"ControlCenter%@Visible";
    v40 = v41;
    goto LABEL_35;
  }

  if (siriForegrounded != v42)
  {
    v47 = @"Siri%@Visible";
    v40 = v42;
    goto LABEL_35;
  }

  if (HIDWORD(v66) != ambientForegrounded)
  {
    v47 = @"Ambient%@Visible";
    v40 = ambientForegrounded;
    goto LABEL_35;
  }

  v45 = monitorCopy;
  selfCopy2 = self;
  if (v66 == routePickerForegrounded)
  {
    goto LABEL_39;
  }

  v47 = @"RoutePicker%@Visible";
  v40 = routePickerForegrounded;
LABEL_36:
  v48 = [NSString alloc];
  v49 = @"Not";
  if (v40)
  {
    v49 = &stru_1004D2058;
  }

  v50 = [v48 initWithFormat:v47, v49];
  selfCopy2 = self;
  [(MRDDisplayMonitor *)self scheduleLayoutChangeForReason:v50];

LABEL_39:
  os_unfair_lock_unlock(&selfCopy2->_lock);
}

- (void)scheduleLayoutChangeForReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDDisplayMonitor] Layout Changed %@", buf, 0xCu);
  }

  if (!self->_layoutChangeScheduled)
  {
    self->_layoutChangeScheduled = 1;
    v6 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100184FEC;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_after(v6, &_dispatch_main_q, block);
  }
}

@end