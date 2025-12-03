@interface _MaildTerminator
- (void)applicationsDidInstall:(id)install;
@end

@implementation _MaildTerminator

- (void)applicationsDidInstall:(id)install
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  installCopy = install;
  v4 = [installCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    v6 = kMFMobileMailBundleIdentifier;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v12 + 1) + 8 * v7) bundleIdentifier];
        v9 = [bundleIdentifier isEqualToString:v6];

        if (v9)
        {
          v10 = +[DaemonAppController log];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MobileMail was installed, terminating...", v11, 2u);
          }

          xpc_transaction_exit_clean();
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [installCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

@end