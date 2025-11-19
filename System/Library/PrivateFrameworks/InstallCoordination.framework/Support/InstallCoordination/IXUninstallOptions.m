@interface IXUninstallOptions
- (BOOL)isEqual:(id)a3;
- (IXUninstallOptions)init;
- (IXUninstallOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (IXUninstallOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXUninstallOptions *)self init];
  if (v5)
  {
    v5->_requestUserConfirmation = [v4 decodeBoolForKey:@"requestUserConfirmation"];
    v5->_waitForDeletion = [v4 decodeBoolForKey:@"waitForDeletion"];
    v5->_showArchiveOption = [v4 decodeBoolForKey:@"showArchiveOption"];
    v5->_showDemotionOption = [v4 decodeBoolForKey:@"showDemotionOption"];
    v5->_systemAppNotAllowed = [v4 decodeBoolForKey:@"systemAppNotAllowed"];
    v5->_ignoreRemovability = [v4 decodeBoolForKey:@"ignoreRemovability"];
    v5->_ignoreRestrictions = [v4 decodeBoolForKey:@"ignoreRestrictions"];
    v5->_ignoreAppProtection = [v4 decodeBoolForKey:@"ignoreAppProtection"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[IXUninstallOptions requestUserConfirmation](self forKey:{"requestUserConfirmation"), @"requestUserConfirmation"}];
  [v4 encodeBool:-[IXUninstallOptions waitForDeletion](self forKey:{"waitForDeletion"), @"waitForDeletion"}];
  [v4 encodeBool:-[IXUninstallOptions showArchiveOption](self forKey:{"showArchiveOption"), @"showArchiveOption"}];
  [v4 encodeBool:-[IXUninstallOptions showDemotionOption](self forKey:{"showDemotionOption"), @"showDemotionOption"}];
  [v4 encodeBool:-[IXUninstallOptions systemAppNotAllowed](self forKey:{"systemAppNotAllowed"), @"systemAppNotAllowed"}];
  [v4 encodeBool:-[IXUninstallOptions ignoreRemovability](self forKey:{"ignoreRemovability"), @"ignoreRemovability"}];
  [v4 encodeBool:-[IXUninstallOptions ignoreRestrictions](self forKey:{"ignoreRestrictions"), @"ignoreRestrictions"}];
  [v4 encodeBool:-[IXUninstallOptions ignoreAppProtection](self forKey:{"ignoreAppProtection"), @"ignoreAppProtection"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(IXUninstallOptions *)self requestUserConfirmation];
      if (v6 != [(IXUninstallOptions *)v5 requestUserConfirmation])
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

      v9 = [(IXUninstallOptions *)self waitForDeletion];
      if (v9 == [(IXUninstallOptions *)v5 waitForDeletion])
      {
        v10 = [(IXUninstallOptions *)self showArchiveOption];
        if (v10 != [(IXUninstallOptions *)v5 showArchiveOption])
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

        v11 = [(IXUninstallOptions *)self showDemotionOption];
        if (v11 != [(IXUninstallOptions *)v5 showDemotionOption])
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

        v12 = [(IXUninstallOptions *)self waitForDeletion];
        if (v12 == [(IXUninstallOptions *)v5 waitForDeletion])
        {
          v13 = [(IXUninstallOptions *)self systemAppNotAllowed];
          if (v13 == [(IXUninstallOptions *)v5 systemAppNotAllowed])
          {
            v14 = [(IXUninstallOptions *)self ignoreRemovability];
            if (v14 == [(IXUninstallOptions *)v5 ignoreRemovability])
            {
              v15 = [(IXUninstallOptions *)self ignoreRestrictions];
              if (v15 == [(IXUninstallOptions *)v5 ignoreRestrictions])
              {
                v16 = [(IXUninstallOptions *)self ignoreAppProtection];
                if (v16 == [(IXUninstallOptions *)v5 ignoreAppProtection])
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