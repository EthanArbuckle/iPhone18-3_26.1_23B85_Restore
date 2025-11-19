@interface PRXCardContentViewController(AccessibilityIdentifier)
- (void)setAccessibilityIdentifier:()AccessibilityIdentifier forAction:;
@end

@implementation PRXCardContentViewController(AccessibilityIdentifier)

- (void)setAccessibilityIdentifier:()AccessibilityIdentifier forAction:
{
  v20 = a3;
  v6 = a4;
  v19 = a1;
  v7 = [a1 bottomTray];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [v7 actionButtons];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [v13 currentTitle];
        v15 = [v6 title];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          v17 = v20;
          [v13 setAccessibilityIdentifier:v20];
          v18 = ContinuitySingLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v22 = "[PRXCardContentViewController(AccessibilityIdentifier) setAccessibilityIdentifier:forAction:]";
            v23 = 2080;
            v24 = "[PRXCardContentViewController(AccessibilityIdentifier) setAccessibilityIdentifier:forAction:]";
            v25 = 2112;
            v26 = v20;
            v27 = 2112;
            v28 = v13;
            _os_log_impl(&dword_2441FB000, v18, OS_LOG_TYPE_DEFAULT, "%s: %s Set accessibility identifier %@ on button %@", buf, 0x2Au);
          }

          goto LABEL_14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v8 = ContinuitySingLog();
  v17 = v20;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(PRXCardContentViewController(AccessibilityIdentifier) *)v20 setAccessibilityIdentifier:v19 forAction:v8];
  }

LABEL_14:
}

- (void)setAccessibilityIdentifier:()AccessibilityIdentifier forAction:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 actions];
  v6 = 136315906;
  v7 = "[PRXCardContentViewController(AccessibilityIdentifier) setAccessibilityIdentifier:forAction:]";
  v8 = 2080;
  v9 = "[PRXCardContentViewController(AccessibilityIdentifier) setAccessibilityIdentifier:forAction:]";
  v10 = 2112;
  v11 = a1;
  v12 = 2112;
  v13 = v5;
  _os_log_error_impl(&dword_2441FB000, a3, OS_LOG_TYPE_ERROR, "%s: %s Action for %@ has not been found in %@", &v6, 0x2Au);
}

@end