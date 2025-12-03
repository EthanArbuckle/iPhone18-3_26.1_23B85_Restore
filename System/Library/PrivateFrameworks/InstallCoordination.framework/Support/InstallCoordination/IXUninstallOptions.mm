@interface IXUninstallOptions
- (BOOL)isEqual:(id)equal;
- (IXUninstallOptions)init;
- (IXUninstallOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXUninstallOptions

- (IXUninstallOptions)init
{
  v5.receiver = self;
  v5.super_class = IXUninstallOptions;
  v2 = [(IXUninstallOptions *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IXUninstallOptions *)v2 setRequestUserConfirmation:0];
    [(IXUninstallOptions *)v3 setWaitForDeletion:0];
    [(IXUninstallOptions *)v3 setShowArchiveOption:0];
    [(IXUninstallOptions *)v3 setShowDemotionOption:0];
    [(IXUninstallOptions *)v3 setSystemAppNotAllowed:0];
    [(IXUninstallOptions *)v3 setIgnoreRemovability:0];
    [(IXUninstallOptions *)v3 setIgnoreRestrictions:0];
    [(IXUninstallOptions *)v3 setIgnoreAppProtection:0];
  }

  return v3;
}

- (IXUninstallOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(IXUninstallOptions *)self init];
  if (v5)
  {
    v5->_requestUserConfirmation = [coderCopy decodeBoolForKey:@"requestUserConfirmation"];
    v5->_waitForDeletion = [coderCopy decodeBoolForKey:@"waitForDeletion"];
    v5->_showArchiveOption = [coderCopy decodeBoolForKey:@"showArchiveOption"];
    v5->_showDemotionOption = [coderCopy decodeBoolForKey:@"showDemotionOption"];
    v5->_systemAppNotAllowed = [coderCopy decodeBoolForKey:@"systemAppNotAllowed"];
    v5->_ignoreRemovability = [coderCopy decodeBoolForKey:@"ignoreRemovability"];
    v5->_ignoreRestrictions = [coderCopy decodeBoolForKey:@"ignoreRestrictions"];
    v5->_ignoreAppProtection = [coderCopy decodeBoolForKey:@"ignoreAppProtection"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[IXUninstallOptions requestUserConfirmation](self forKey:{"requestUserConfirmation"), @"requestUserConfirmation"}];
  [coderCopy encodeBool:-[IXUninstallOptions waitForDeletion](self forKey:{"waitForDeletion"), @"waitForDeletion"}];
  [coderCopy encodeBool:-[IXUninstallOptions showArchiveOption](self forKey:{"showArchiveOption"), @"showArchiveOption"}];
  [coderCopy encodeBool:-[IXUninstallOptions showDemotionOption](self forKey:{"showDemotionOption"), @"showDemotionOption"}];
  [coderCopy encodeBool:-[IXUninstallOptions systemAppNotAllowed](self forKey:{"systemAppNotAllowed"), @"systemAppNotAllowed"}];
  [coderCopy encodeBool:-[IXUninstallOptions ignoreRemovability](self forKey:{"ignoreRemovability"), @"ignoreRemovability"}];
  [coderCopy encodeBool:-[IXUninstallOptions ignoreRestrictions](self forKey:{"ignoreRestrictions"), @"ignoreRestrictions"}];
  [coderCopy encodeBool:-[IXUninstallOptions ignoreAppProtection](self forKey:{"ignoreAppProtection"), @"ignoreAppProtection"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setRequestUserConfirmation:{-[IXUninstallOptions requestUserConfirmation](self, "requestUserConfirmation")}];
  [v4 setWaitForDeletion:{-[IXUninstallOptions waitForDeletion](self, "waitForDeletion")}];
  [v4 setShowArchiveOption:{-[IXUninstallOptions showArchiveOption](self, "showArchiveOption")}];
  [v4 setShowDemotionOption:{-[IXUninstallOptions showDemotionOption](self, "showDemotionOption")}];
  [v4 setSystemAppNotAllowed:{-[IXUninstallOptions systemAppNotAllowed](self, "systemAppNotAllowed")}];
  [v4 setIgnoreRemovability:{-[IXUninstallOptions ignoreRemovability](self, "ignoreRemovability")}];
  [v4 setIgnoreRestrictions:{-[IXUninstallOptions ignoreRestrictions](self, "ignoreRestrictions")}];
  [v4 setIgnoreAppProtection:{-[IXUninstallOptions ignoreAppProtection](self, "ignoreAppProtection")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestUserConfirmation = [(IXUninstallOptions *)self requestUserConfirmation];
      if (requestUserConfirmation != [(IXUninstallOptions *)v5 requestUserConfirmation])
      {
        v7 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315394;
          v19 = "[IXUninstallOptions isEqual:]";
          v20 = 2080;
          v21 = "requestUserConfirmation";
LABEL_32:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Property %s did not match", &v18, 0x16u);
        }

LABEL_33:

        v8 = 0;
LABEL_34:

        goto LABEL_35;
      }

      waitForDeletion = [(IXUninstallOptions *)self waitForDeletion];
      if (waitForDeletion == [(IXUninstallOptions *)v5 waitForDeletion])
      {
        showArchiveOption = [(IXUninstallOptions *)self showArchiveOption];
        if (showArchiveOption != [(IXUninstallOptions *)v5 showArchiveOption])
        {
          v7 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136315394;
            v19 = "[IXUninstallOptions isEqual:]";
            v20 = 2080;
            v21 = "showArchiveOption";
            goto LABEL_32;
          }

          goto LABEL_33;
        }

        showDemotionOption = [(IXUninstallOptions *)self showDemotionOption];
        if (showDemotionOption != [(IXUninstallOptions *)v5 showDemotionOption])
        {
          v7 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136315394;
            v19 = "[IXUninstallOptions isEqual:]";
            v20 = 2080;
            v21 = "showDemotionOption";
            goto LABEL_32;
          }

          goto LABEL_33;
        }

        waitForDeletion2 = [(IXUninstallOptions *)self waitForDeletion];
        if (waitForDeletion2 == [(IXUninstallOptions *)v5 waitForDeletion])
        {
          systemAppNotAllowed = [(IXUninstallOptions *)self systemAppNotAllowed];
          if (systemAppNotAllowed == [(IXUninstallOptions *)v5 systemAppNotAllowed])
          {
            ignoreRemovability = [(IXUninstallOptions *)self ignoreRemovability];
            if (ignoreRemovability == [(IXUninstallOptions *)v5 ignoreRemovability])
            {
              ignoreRestrictions = [(IXUninstallOptions *)self ignoreRestrictions];
              if (ignoreRestrictions == [(IXUninstallOptions *)v5 ignoreRestrictions])
              {
                ignoreAppProtection = [(IXUninstallOptions *)self ignoreAppProtection];
                if (ignoreAppProtection == [(IXUninstallOptions *)v5 ignoreAppProtection])
                {
                  v8 = 1;
                  goto LABEL_34;
                }

                v7 = sub_1000031B0(off_100121958);
                if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                {
                  v18 = 136315394;
                  v19 = "[IXUninstallOptions isEqual:]";
                  v20 = 2080;
                  v21 = "ignoreAppProtection";
                  goto LABEL_32;
                }
              }

              else
              {
                v7 = sub_1000031B0(off_100121958);
                if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                {
                  v18 = 136315394;
                  v19 = "[IXUninstallOptions isEqual:]";
                  v20 = 2080;
                  v21 = "ignoreRestrictions";
                  goto LABEL_32;
                }
              }
            }

            else
            {
              v7 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                v18 = 136315394;
                v19 = "[IXUninstallOptions isEqual:]";
                v20 = 2080;
                v21 = "ignoreRemovability";
                goto LABEL_32;
              }
            }
          }

          else
          {
            v7 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v18 = 136315394;
              v19 = "[IXUninstallOptions isEqual:]";
              v20 = 2080;
              v21 = "systemAppNotAllowed";
              goto LABEL_32;
            }
          }

          goto LABEL_33;
        }

        v7 = sub_1000031B0(off_100121958);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }
      }

      else
      {
        v7 = sub_1000031B0(off_100121958);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }
      }

      v18 = 136315394;
      v19 = "[IXUninstallOptions isEqual:]";
      v20 = 2080;
      v21 = "waitForDeletion";
      goto LABEL_32;
    }

    v8 = 0;
  }

LABEL_35:

  return v8;
}

- (id)description
{
  requestUserConfirmation = self->_requestUserConfirmation;
  waitForDeletion = self->_waitForDeletion;
  showArchiveOption = self->_showArchiveOption;
  showDemotionOption = self->_showDemotionOption;
  systemAppNotAllowed = self->_systemAppNotAllowed;
  ignoreRemovability = self->_ignoreRemovability;
  ignoreRestrictions = self->_ignoreRestrictions;
  if (self->_ignoreAppProtection)
  {
    v9 = 89;
  }

  else
  {
    v9 = 78;
  }

  if (ignoreRestrictions)
  {
    v10 = 89;
  }

  else
  {
    v10 = 78;
  }

  if (ignoreRemovability)
  {
    v11 = 89;
  }

  else
  {
    v11 = 78;
  }

  if (systemAppNotAllowed)
  {
    v12 = 89;
  }

  else
  {
    v12 = 78;
  }

  if (showDemotionOption)
  {
    v13 = 89;
  }

  else
  {
    v13 = 78;
  }

  if (showArchiveOption)
  {
    v14 = 89;
  }

  else
  {
    v14 = 78;
  }

  if (waitForDeletion)
  {
    v15 = 89;
  }

  else
  {
    v15 = 78;
  }

  if (requestUserConfirmation)
  {
    v16 = 89;
  }

  else
  {
    v16 = 78;
  }

  return [NSString stringWithFormat:@"<confirmation:%c wait:%c archive:%c demote:%c notAllowed:%c ignoreRemovability:%c ignoreRestrictions:%c ignoreAppProtection:%c>", v16, v15, v14, v13, v12, v11, v10, v9];
}

@end