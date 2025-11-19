@interface BRShareSettings
- (BOOL)applyToShare:(id)a3;
- (BRShareSettings)initWithPermissions:(unint64_t)a3;
- (BRShareSettings)initWithShare:(id)a3 permissions:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)_permissionFromPermissionOptions;
@end

@implementation BRShareSettings

- (BRShareSettings)initWithPermissions:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = BRShareSettings;
  v4 = [(BRShareSettings *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_permissionOptions = a3;
    v4->_defaultPermission = [(BRShareSettings *)v4 _permissionFromPermissionOptions];
    v5->_publicPermission = [(BRShareSettings *)v5 _permissionFromPermissionOptions];
    [(BRShareSettings *)v5 setHasACL:[(BRShareSettings *)v5 _hasACLFromPermissionOptions]];
  }

  return v5;
}

- (int64_t)_permissionFromPermissionOptions
{
  if ((self->_permissionOptions & 4) != 0)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (BRShareSettings)initWithShare:(id)a3 permissions:(unint64_t)a4
{
  v6 = a3;
  v27.receiver = self;
  v27.super_class = BRShareSettings;
  v7 = [(BRShareSettings *)&v27 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_27;
  }

  v7->_permissionOptions = a4;
  v7->_hasACL = [v6 publicPermission] == 1;
  if (![(BRShareSettings *)v8 shouldShowMode])
  {
    v9 = [(BRShareSettings *)v8 _hasACLFromPermissionOptions];
    v8->_hasACL = v9;
    if ((v9 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v8->_publicPermission = [v6 publicPermission];
    v10 = [v6 participants];
    v11 = [NSPredicate predicateWithBlock:&stru_10004CC68];
    v12 = [v10 filteredArrayUsingPredicate:v11];

    if ([v12 count])
    {
      v13 = [v12 firstObject];
      v8->_defaultPermission = [v13 permission];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = v12;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            if ([*(*(&v23 + 1) + 8 * i) permission] != v8->_defaultPermission)
            {
              v19 = cdui_default_log();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v30 = v6;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[INFO] Share %@ has participants with multiple permissions, setting to indeterminate", buf, 0xCu);
              }

              v8->_defaultPermission = 0;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v16);
      }

      v12 = v22;
    }

    else
    {
      v20 = cdui_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = v6;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[INFO] Share %@ has ACL but no participants, setting default permissions", buf, 0xCu);
      }

      v8->_defaultPermission = [(BRShareSettings *)v8 _permissionFromPermissionOptions];
    }

    goto LABEL_23;
  }

  if (v8->_hasACL)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8->_publicPermission = [v6 publicPermission];
LABEL_23:
  if (![(BRShareSettings *)v8 shouldShowPermissions])
  {
    v8->_publicPermission = [(BRShareSettings *)v8 _permissionFromPermissionOptions];
  }

  if (!v8->_hasACL)
  {
    v8->_defaultPermission = v8->_publicPermission;
  }

LABEL_27:

  return v8;
}

- (BOOL)applyToShare:(id)a3
{
  v4 = a3;
  v5 = cdui_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002C9A0(self, v4, v5);
  }

  if (self->_hasACL)
  {
    publicPermission = 1;
  }

  else
  {
    publicPermission = self->_publicPermission;
  }

  v7 = [v4 publicPermission];
  if (v7 != publicPermission)
  {
    [v4 setPublicPermission:publicPermission];
  }

  return v7 != publicPermission;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[BRShareSettings alloc] initWithPermissions:self->_permissionOptions];
  [(BRShareSettings *)v4 setHasACL:[(BRShareSettings *)self hasACL]];
  [(BRShareSettings *)v4 setPublicPermission:[(BRShareSettings *)self publicPermission]];
  [(BRShareSettings *)v4 setDefaultPermission:[(BRShareSettings *)self defaultPermission]];
  [(BRShareSettings *)v4 setShouldHideCopyLink:[(BRShareSettings *)self shouldHideCopyLink]];
  return v4;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = v3;
  v5 = 32;
  if (self->_hasACL)
  {
    v5 = 24;
    v6 = @"; ACL, %li";
  }

  else
  {
    v6 = @"; public, %li";
  }

  [v3 appendFormat:v6, *(&self->super.isa + v5)];
  if ([(BRShareSettings *)self shouldShowMode])
  {
    [v4 appendFormat:@"; mode switchable"];
  }

  if ([(BRShareSettings *)self shouldShowPermissions])
  {
    [v4 appendFormat:@"; perm switchable"];
  }

  if ([(BRShareSettings *)self shouldHideCopyLink])
  {
    [v4 appendFormat:@"; copyLink hidden"];
  }

  [v4 appendFormat:@">"];

  return v4;
}

@end