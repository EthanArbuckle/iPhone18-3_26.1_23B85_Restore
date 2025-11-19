void sub_100002D50(id a1)
{
  v3 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
  v1 = [v3 userPersonaUniqueString];
  v2 = qword_10000CB48;
  qword_10000CB48 = v1;
}

void sub_100002F94(uint64_t a1)
{
  v2 = [*(a1 + 32) button];
  [v2 setTitle:*(a1 + 40) forState:0];

  v3 = [*(a1 + 32) button];
  [v3 intrinsicContentSize];
  v5 = v4;

  v6 = [*(a1 + 32) view];
  v7 = [v6 layoutMarginsGuide];
  [v7 layoutFrame];
  v9 = v8;

  if (v5 > v9 && [*(a1 + 48) length])
  {
    v10 = [*(a1 + 32) button];
    [v10 setTitle:*(a1 + 48) forState:0];
  }

  v11 = [*(a1 + 32) button];
  [v11 layoutBelowIfNeeded];
}

void sub_100003234(uint64_t a1)
{
  v2 = [*(a1 + 32) tooSmallToFitAnything];
  v3 = [*(a1 + 32) contentView];
  v5 = v3;
  if (v2)
  {
    [v3 setHidden:1];
  }

  else
  {
    [v3 setHidden:0];

    v4 = *(a1 + 32);

    [v4 updateIcon];
  }
}

void sub_1000032CC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) contentView];
  [v2 layoutBelowIfNeeded];
}

uint64_t sub_1000035D0(void *a1)
{
  v1 = a1;
  if ([v1 horizontalSizeClass] == 2)
  {
    if (qword_10000CB58 != -1)
    {
      sub_1000045D8();
    }

    if (qword_10000CB50 == 11)
    {
      v2 = 63;
    }

    else
    {
      [v1 displayScale];
      if (v5 < 2.0)
      {
        v2 = 1;
      }

      else
      {
        v2 = 24;
      }
    }
  }

  else
  {
    [v1 displayScale];
    if (v3 >= 3.0)
    {
      v2 = 32;
    }

    else
    {
      [v1 displayScale];
      if (v4 >= 2.0)
      {
        v2 = 15;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2;
}

void sub_100003EF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained buttonTapped];
}

void sub_1000042D4(id a1)
{
  v1 = MGCopyAnswer();
  qword_10000CB50 = [v1 integerValue];
}

void sub_100004324(id a1)
{
  if (qword_10000CB70 != -1)
  {
    sub_1000045EC();
  }

  if (byte_10000CB78 & 1) != 0 || (_os_feature_enabled_impl())
  {
    v1 = 1;
  }

  else
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v1 = [v2 BOOLForKey:@"BRFileProviderUI.useModernLayout"];
  }

  byte_10000CB68 = v1;
}

void sub_1000043B4(id a1)
{
  v2 = +[UIScreen mainScreen];
  v1 = [v2 traitCollection];
  byte_10000CB78 = [v1 userInterfaceIdiom] == 6;
}

void sub_100004460(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Not allowed to adopt persona but data-separatedness matches%@", &v2, 0xCu);
}

void sub_1000044D8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Not allowed to adopt persona - should fallback persona%@", &v2, 0xCu);
}

void sub_100004550(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, 0x90u, "[ERROR] won't restore persona: %@%@", &v3, 0x16u);
}