void sub_100001A68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MBGetDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 localizedDescription];
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error saving the background cellular access to %@: %@", buf, 0x16u);

      v8 = *(a1 + 32);
      v11 = [v3 localizedDescription];
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully saved the background restore cellular access to %@", buf, 0xCu);
    v10 = *(a1 + 32);
    _MBLog();
  }

  dispatch_semaphore_signal(*(a1 + 40));
}