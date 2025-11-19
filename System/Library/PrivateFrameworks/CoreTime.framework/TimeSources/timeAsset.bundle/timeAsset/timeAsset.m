void sub_17D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  if (a3)
  {
    if (os_log_type_enabled(*(v4 + 24), OS_LOG_TYPE_ERROR))
    {
      sub_2124();
    }
  }

  else if (os_log_type_enabled(*(v4 + 24), OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) assetType];
    v7 = [*(a1 + 40) assetSpecifier];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "success expressing interest in assetType: %@ with specifier: %@", &v8, 0x16u);
  }
}

void sub_1AFC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) assetType];
    v4 = [*(a1 + 40) assetSpecifier];
    *v7 = 138412546;
    *&v7[4] = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "begin handler execution for asset: %@ specifier: %@", v7, 0x16u);
  }

  *v7 = 0;
  v5 = [[MAAutoAsset alloc] initForClientName:@"com.apple.timed" selectingAsset:*(a1 + 40) error:v7];
  v6 = *(a1 + 32);
  if (v5)
  {
    [(os_log_t *)v6 handleAssetAvailable:v5 fromAsset:*(a1 + 48)];
  }

  else if (os_log_type_enabled(v6[3], OS_LOG_TYPE_ERROR))
  {
    sub_2308();
  }
}

void sub_1D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) assetType];
      v7 = [*(a1 + 40) assetSpecifier];
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = a3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "error ending previous locks for MAAutoAsset type: %@ specifier: %@: %@", &v8, 0x20u);
    }
  }

  [*(a1 + 32) registerForChangedNotificationsForAsset:*(a1 + 40) selector:*(a1 + 48)];
  [*(a1 + 32) expressInterestForSelector:*(a1 + 48) withInterestReason:*(a1 + 56)];
}

void sub_1E84(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1EA4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "MAAutoAsset not unlocked: %@", &v2, 0xCu);
}

void sub_1F1C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1E6C();
  sub_1E84(&dword_0, v3, v4, "copying a file at location %@ failed. Error %@");
}

void sub_1F88(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1E6C();
  sub_1E84(&dword_0, v3, v4, "replacing a file at location %@ failed. Error %@");
}

void sub_1FF4(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "MAAutoAsset not locked: %@", &v3, 0xCu);
}

void sub_2070(void *a1)
{
  [a1 assetType];
  [a1 assetSpecifier];
  sub_1E5C();
  sub_1E3C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_2124()
{
  sub_1E4C();
  [*(v1 + 40) assetType];
  [*(v0 + 40) assetSpecifier];
  sub_1E5C();
  sub_1E3C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_21CC(void *a1)
{
  [a1 assetHandle];
  sub_1E3C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_2250()
{
  sub_1E4C();
  [v2 assetHandle];
  [objc_msgSend(*v0 objectForKeyedSubscript:{objc_msgSend(v1, "assetHandle")), "intValue"}];
  sub_1E3C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_2308()
{
  sub_1E4C();
  [*v2 assetType];
  [*v1 assetSpecifier];
  v8 = *v0;
  sub_1E3C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_23BC(void *a1)
{
  [a1 assetType];
  [a1 assetSpecifier];
  sub_1E5C();
  sub_1E3C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}