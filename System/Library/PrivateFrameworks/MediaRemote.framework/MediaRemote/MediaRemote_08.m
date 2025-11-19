id _MRMediaRemoteApplicationValueForKeyInBundle(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:a1];
    v4 = v3;
    if (v3)
    {
      v5 = MEMORY[0x1E696AAE8];
      v6 = [v3 bundleURL];
      v7 = [v5 bundleWithURL:v6];
      v8 = [v7 infoDictionary];

      v9 = [v8 objectForKey:a2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t MRMediaRemoteApplicationSupportsSectionedBrowsing(uint64_t a1)
{
  v1 = _MRMediaRemoteApplicationValueForKeyInBundle(a1, @"UIBrowsableContentSupportsSectionedBrowsing");
  v2 = [v1 BOOLValue];

  return v2;
}

uint64_t MRMediaRemoteApplicationSupportsImmediatePlayback(uint64_t a1)
{
  v1 = _MRMediaRemoteApplicationValueForKeyInBundle(a1, @"UIBrowsableContentSupportsImmediatePlayback");
  v2 = [v1 BOOLValue];

  return v2;
}

uint64_t MRMediaRemoteBeginLoadingBrowsableContent(void *a1, const void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v15 = a3;
  v3 = a1;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = MRMediaRemoteIndexPathCopyDescription(&v14);
  v6 = [v4 initWithFormat:@"bundleID=%@, indexPath=%@", v3, v5];

  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"beginLoadingBrowsableContent", 0];
  v8 = v7;
  if (v6)
  {
    [v7 appendFormat:@" for %@", v6];
  }

  v9 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v10 = MRGetSharedService();
  v11 = MRMediaRemoteServiceBeginLoadingBrowsableContent(v10, v3, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

__CFString *MRMediaRemoteIndexPathCopyDescription(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a1[1])
  {
    v3 = 0;
    v4 = 1;
    do
    {
      CFStringAppendFormat(Mutable, 0, @"%llu ", *(*a1 + 8 * v3));
      v3 = v4;
    }

    while (a1[1] > v4++);
  }

  return Mutable;
}

void MRMediaRemoteBrowsableContentGetNowPlayingContentIdentifiers(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695DF00];
  v7 = a2;
  v8 = [v6 date];
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];

  v11 = a1;
  v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"nowPlayingContentIdentifiers", v10];
  v13 = v12;
  if (v11)
  {
    [v12 appendFormat:@" for %@", v11];
  }

  v14 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v13;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v15 = MRGetSharedService();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __MRMediaRemoteBrowsableContentGetNowPlayingContentIdentifiers_block_invoke;
  v21[3] = &unk_1E76A1FE0;
  v22 = v11;
  v23 = @"nowPlayingContentIdentifiers";
  v24 = v10;
  v25 = v8;
  v26 = v5;
  v16 = v5;
  v17 = v8;
  v18 = v10;
  v19 = v11;
  MRMediaRemoteServiceCopyBrowsableContentNowPlayingIdentifiers(v15, v19, v7, v21);

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteBrowsableContentGetNowPlayingContentIdentifiers_block_invoke(void *a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v5 = _MRLogForCategory(0xAuLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v4)
    {
      if (!v6)
      {
        goto LABEL_14;
      }

      v8 = a1[5];
      v7 = a1[6];
      v9 = a1[4];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[7]];
      v27 = 138544386;
      v28 = v8;
      v29 = 2114;
      v30 = v7;
      v31 = 2112;
      v32 = a2;
      v33 = 2114;
      v34 = v9;
      v35 = 2048;
      v36 = v11;
      v12 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v13 = v5;
      v14 = 52;
      goto LABEL_13;
    }

    if (!v6)
    {
      goto LABEL_14;
    }

    v19 = a1[5];
    v20 = a1[6];
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:a1[7]];
    v27 = 138544130;
    v28 = v19;
    v29 = 2114;
    v30 = v20;
    v31 = 2112;
    v32 = a2;
    v33 = 2048;
    v34 = v21;
    v12 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_10;
  }

  if (v4)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    v16 = a1[5];
    v15 = a1[6];
    v17 = a1[4];
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:a1[7]];
    v27 = 138544130;
    v28 = v16;
    v29 = 2114;
    v30 = v15;
    v31 = 2114;
    v32 = v17;
    v33 = 2048;
    v34 = v18;
    v12 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_10:
    v13 = v5;
    v14 = 42;
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  v22 = a1[5];
  v23 = a1[6];
  v10 = [MEMORY[0x1E695DF00] date];
  [v10 timeIntervalSinceDate:a1[7]];
  v27 = 138543874;
  v28 = v22;
  v29 = 2114;
  v30 = v23;
  v31 = 2048;
  v32 = v24;
  v12 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
  v13 = v5;
  v14 = 32;
LABEL_13:
  _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, v12, &v27, v14);

LABEL_14:
  result = a1[8];
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void MRMediaRemoteBrowsableContentSupportsPlaybackProgress(void *a1, const void *a2, uint64_t a3, void *a4, void *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = a2;
  v35 = a3;
  v7 = a5;
  v8 = MEMORY[0x1E695DF00];
  v9 = a4;
  v10 = [v8 date];
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v11 UUIDString];

  v13 = a1;
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = MRMediaRemoteIndexPathCopyDescription(&v34);
  v16 = [v14 initWithFormat:@"bundleID=%@, indexPath=%@", v13, v15];

  v17 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"supportsBrowsableContentPlaybackProgress", v12];
  v18 = v17;
  if (v16)
  {
    [v17 appendFormat:@" for %@", v16];
  }

  v19 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v18;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v20 = MRGetSharedService();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __MRMediaRemoteBrowsableContentSupportsPlaybackProgress_block_invoke;
  v28[3] = &unk_1E76A2008;
  v29 = v16;
  v30 = @"supportsBrowsableContentPlaybackProgress";
  v31 = v12;
  v32 = v10;
  v33 = v7;
  v21 = v34;
  v22 = v35;
  v23 = v7;
  v24 = v10;
  v25 = v12;
  v26 = v16;
  MRMediaRemoteServiceGetBrowsableContentSupportsPlaybackProgress(v20, v13, v21, v22, v9, v28);

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteBrowsableContentSupportsPlaybackProgress_block_invoke(void *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];

  v5 = a1[4];
  v6 = _MRLogForCategory(0xAuLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v5)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = a1[5];
      v9 = a1[6];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:a2];
      v11 = a1[4];
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:a1[7]];
      v32 = 138544386;
      v33 = v8;
      v34 = 2114;
      v35 = v9;
      v36 = 2112;
      v37 = v10;
      v38 = 2114;
      v39 = v11;
      v40 = 2048;
      v41 = v13;
      v14 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v15 = v6;
      v16 = 52;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v24 = a1[5];
      v25 = a1[6];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:a2];
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:a1[7]];
      v32 = 138544130;
      v33 = v24;
      v34 = 2114;
      v35 = v25;
      v36 = 2112;
      v37 = v10;
      v38 = 2048;
      v39 = v26;
      v14 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v15 = v6;
      v16 = 42;
    }

    _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, v14, &v32, v16);
  }

  else
  {
    if (v5)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v18 = a1[5];
      v17 = a1[6];
      v19 = a1[4];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[7]];
      v32 = 138544130;
      v33 = v18;
      v34 = 2114;
      v35 = v17;
      v36 = 2114;
      v37 = v19;
      v38 = 2048;
      v39 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v6;
      v23 = 42;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v27 = a1[5];
      v28 = a1[6];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[7]];
      v32 = 138543874;
      v33 = v27;
      v34 = 2114;
      v35 = v28;
      v36 = 2048;
      v37 = v29;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v6;
      v23 = 32;
    }

    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, &v32, v23);
  }

LABEL_15:
  result = a1[8];
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void MRMediaRemoteGetCountOfBrowsableContentChildItems(void *a1, const void *a2, uint64_t a3, void *a4, void *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = a2;
  v35 = a3;
  v7 = a5;
  v8 = MEMORY[0x1E695DF00];
  v9 = a4;
  v10 = [v8 date];
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v11 UUIDString];

  v13 = a1;
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = MRMediaRemoteIndexPathCopyDescription(&v34);
  v16 = [v14 initWithFormat:@"bundleID=%@, indexPath=%@", v13, v15];

  v17 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"countOfBrowsableContentChildItems", v12];
  v18 = v17;
  if (v16)
  {
    [v17 appendFormat:@" for %@", v16];
  }

  v19 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v18;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v20 = MRGetSharedService();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __MRMediaRemoteGetCountOfBrowsableContentChildItems_block_invoke;
  v28[3] = &unk_1E76A2030;
  v29 = v16;
  v30 = @"countOfBrowsableContentChildItems";
  v31 = v12;
  v32 = v10;
  v33 = v7;
  v21 = v34;
  v22 = v35;
  v23 = v7;
  v24 = v10;
  v25 = v12;
  v26 = v16;
  MRMediaRemoteServiceGetCountOfBrowsableContentChildItems(v20, v13, v21, v22, v9, v28);

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteGetCountOfBrowsableContentChildItems_block_invoke(void *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];

  v5 = a1[4];
  v6 = _MRLogForCategory(0xAuLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v5)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = a1[5];
      v9 = a1[6];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
      v11 = a1[4];
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:a1[7]];
      v32 = 138544386;
      v33 = v8;
      v34 = 2114;
      v35 = v9;
      v36 = 2112;
      v37 = v10;
      v38 = 2114;
      v39 = v11;
      v40 = 2048;
      v41 = v13;
      v14 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v15 = v6;
      v16 = 52;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v24 = a1[5];
      v25 = a1[6];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:a1[7]];
      v32 = 138544130;
      v33 = v24;
      v34 = 2114;
      v35 = v25;
      v36 = 2112;
      v37 = v10;
      v38 = 2048;
      v39 = v26;
      v14 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v15 = v6;
      v16 = 42;
    }

    _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, v14, &v32, v16);
  }

  else
  {
    if (v5)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v18 = a1[5];
      v17 = a1[6];
      v19 = a1[4];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[7]];
      v32 = 138544130;
      v33 = v18;
      v34 = 2114;
      v35 = v17;
      v36 = 2114;
      v37 = v19;
      v38 = 2048;
      v39 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v6;
      v23 = 42;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v27 = a1[5];
      v28 = a1[6];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[7]];
      v32 = 138543874;
      v33 = v27;
      v34 = 2114;
      v35 = v28;
      v36 = 2048;
      v37 = v29;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v6;
      v23 = 32;
    }

    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, &v32, v23);
  }

LABEL_15:
  result = a1[8];
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void MRMediaRemoteGetBrowsableContentChildItems(void *a1, const void *a2, uint64_t a3, int64_t a4, int64_t a5, void *a6, void *a7)
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = a2;
  v40 = a3;
  v11 = a7;
  v12 = MEMORY[0x1E695DF00];
  v13 = a6;
  v14 = [v12 date];
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v16 = [v15 UUIDString];

  v17 = a1;
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = MRMediaRemoteIndexPathCopyDescription(&v39);
  v32 = a5;
  v20 = [v18 initWithFormat:@"bundleID=%@, indexPath=%@, location=%ld, length=%ld", v17, v19, a4, a5];

  v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"browsableContentChildItems", v16];
  v22 = v21;
  if (v20)
  {
    [v21 appendFormat:@" for %@", v20];
  }

  v23 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v22;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v24 = MRGetSharedService();
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __MRMediaRemoteGetBrowsableContentChildItems_block_invoke;
  v33[3] = &unk_1E76A1FE0;
  v34 = v20;
  v35 = @"browsableContentChildItems";
  v36 = v16;
  v37 = v14;
  v38 = v11;
  v26 = v39;
  v25 = v40;
  v27 = v11;
  v28 = v14;
  v29 = v16;
  v30 = v20;
  MRMediaRemoteServiceCopyBrowsableContentChildItems(v24, v17, v26, v25, a4, v32, v13, v33);

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteGetBrowsableContentChildItems_block_invoke(void *a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = MRContentItemsCopyMinimalReadableDescription(a2, 0);

  v5 = a1[4];
  v6 = _MRLogForCategory(0xAuLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v5)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = a1[5];
      v9 = a1[6];
      v10 = MRContentItemsCopyMinimalReadableDescription(a2, 0);
      v11 = a1[4];
      v12 = MEMORY[0x1E695DF00];
      v13 = v10;
      v14 = [v12 date];
      [v14 timeIntervalSinceDate:a1[7]];
      v16 = v15;

      v38 = 138544386;
      v39 = v8;
      v40 = 2114;
      v41 = v9;
      v42 = 2112;
      v43 = v10;
      v44 = 2114;
      v45 = v11;
      v46 = 2048;
      v47 = v16;
      v17 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v18 = v6;
      v19 = 52;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v27 = a1[5];
      v28 = a1[6];
      v29 = MRContentItemsCopyMinimalReadableDescription(a2, 0);
      v30 = MEMORY[0x1E695DF00];
      v13 = v29;
      v14 = [v30 date];
      [v14 timeIntervalSinceDate:a1[7]];
      v32 = v31;

      v38 = 138544130;
      v39 = v27;
      v40 = 2114;
      v41 = v28;
      v42 = 2112;
      v43 = v29;
      v44 = 2048;
      v45 = v32;
      v17 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v18 = v6;
      v19 = 42;
    }

    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, v17, &v38, v19);
  }

  else
  {
    if (v5)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v21 = a1[5];
      v20 = a1[6];
      v22 = a1[4];
      v13 = [MEMORY[0x1E695DF00] date];
      [(__CFString *)v13 timeIntervalSinceDate:a1[7]];
      v38 = 138544130;
      v39 = v21;
      v40 = 2114;
      v41 = v20;
      v42 = 2114;
      v43 = v22;
      v44 = 2048;
      v45 = v23;
      v24 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v25 = v6;
      v26 = 42;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v33 = a1[5];
      v34 = a1[6];
      v13 = [MEMORY[0x1E695DF00] date];
      [(__CFString *)v13 timeIntervalSinceDate:a1[7]];
      v38 = 138543874;
      v39 = v33;
      v40 = 2114;
      v41 = v34;
      v42 = 2048;
      v43 = v35;
      v24 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v25 = v6;
      v26 = 32;
    }

    _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, v24, &v38, v26);
  }

LABEL_15:
  result = a1[8];
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

void MRMediaRemoteRequestPlaybackInitialization(void *a1, const void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v4 = MRMediaRemoteIndexPathCopyDescription(&v11);
  v5 = a1;
  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"browsableContentPlaybackInitalization", v5];
  v7 = v6;
  if (v4)
  {
    [v6 appendFormat:@" for %@", v4];
  }

  v8 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v9 = MRGetSharedService();
  MRMediaRemoteServiceRequestPlaybackInitialization(v9, v5, v11, v12);

  v10 = *MEMORY[0x1E69E9840];
}

void MRMediaRemotePostBrowsableContentNotification(void *a1, void *a2)
{
  v4 = MRGetSharedService();

  MRMediaRemoteServicePostBrowsableContentNotification(v4, a1, a2);
}

void MRMediaRemoteGetContentItemsForIdentifiers(void *a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = MEMORY[0x1E695DF00];
  v9 = a3;
  v10 = [v8 date];
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v11 UUIDString];

  v13 = a1;
  v14 = a2;
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"bundleID=%@, identifiers=%@", v13, v14];
  v16 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"supportedBrowsableContentAPIs", v12];
  v17 = v16;
  if (v15)
  {
    [v16 appendFormat:@" for %@", v15];
  }

  v18 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = v17;
    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v19 = MRGetSharedService();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __MRMediaRemoteGetContentItemsForIdentifiers_block_invoke;
  v25[3] = &unk_1E76A2058;
  v26 = v15;
  v27 = @"supportedBrowsableContentAPIs";
  v28 = v12;
  v29 = v10;
  v30 = v7;
  v20 = v7;
  v21 = v10;
  v22 = v12;
  v23 = v15;
  MRMediaRemoteServiceGetContentItemsForIdentifiers(v19, v13, v14, v9, v25);

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteGetContentItemsForIdentifiers_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a1[4];
  v7 = _MRLogForCategory(0xAuLL);
  v8 = v7;
  if (a2 && !a3)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v9)
      {
        goto LABEL_22;
      }

      v11 = a1[5];
      v10 = a1[6];
      v12 = a1[4];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[7]];
      v36 = 138544386;
      v37 = v11;
      v38 = 2114;
      v39 = v10;
      v40 = 2112;
      v41 = a2;
      v42 = 2114;
      v43 = v12;
      v44 = 2048;
      v45 = v14;
      v15 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v16 = v8;
      v17 = 52;
      goto LABEL_16;
    }

    if (!v9)
    {
      goto LABEL_22;
    }

    v28 = a1[5];
    v29 = a1[6];
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:a1[7]];
    v36 = 138544130;
    v37 = v28;
    v38 = 2114;
    v39 = v29;
    v40 = 2112;
    v41 = a2;
    v42 = 2048;
    v43 = v30;
    v15 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_15;
  }

  if (a3)
  {
    v18 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (!v18)
      {
        goto LABEL_22;
      }

      v20 = a1[5];
      v19 = a1[6];
      v21 = a1[4];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[7]];
      v36 = 138544386;
      v37 = v20;
      v38 = 2114;
      v39 = v19;
      v40 = 2114;
      v41 = a3;
      v42 = 2114;
      v43 = v21;
      v44 = 2048;
      v45 = v22;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v36, 0x34u);
      goto LABEL_17;
    }

    if (v18)
    {
      __MRMediaRemoteGetContentItemsForIdentifiers_block_invoke_cold_1();
    }
  }

  else
  {
    v23 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v23)
      {
        goto LABEL_22;
      }

      v25 = a1[5];
      v24 = a1[6];
      v26 = a1[4];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[7]];
      v36 = 138544130;
      v37 = v25;
      v38 = 2114;
      v39 = v24;
      v40 = 2114;
      v41 = v26;
      v42 = 2048;
      v43 = v27;
      v15 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_15:
      v16 = v8;
      v17 = 42;
LABEL_16:
      _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, v15, &v36, v17);
LABEL_17:

      goto LABEL_22;
    }

    if (v23)
    {
      v31 = a1[5];
      v32 = a1[6];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[7]];
      v36 = 138543874;
      v37 = v31;
      v38 = 2114;
      v39 = v32;
      v40 = 2048;
      v41 = v33;
      v15 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v16 = v8;
      v17 = 32;
      goto LABEL_16;
    }
  }

LABEL_22:

  result = a1[8];
  if (result)
  {
    result = (*(result + 16))(result, a2, a3);
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

void MRMediaRemoteSetBrowsableContentEndpoint(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p", a1];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"setBrowsableContentEndpoint", 0];
  v4 = v3;
  if (v2)
  {
    [v3 appendFormat:@" for %@", v2];
  }

  v5 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v6 = MRGetSharedService();
  MRMediaRemoteServiceSetBrowsableContentEndpoint(v6, a1);
  MRMediaRemoteServicePostBrowsableContentNotification(v6, @"kMRMediaRemoteBrowsableContentEndpointChangedNotification", 0);

  v7 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteGetSupportedBrowsableContentAPIs(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695DF00];
  v7 = a2;
  v8 = [v6 date];
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];

  v11 = a1;
  v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"supportedBrowsableContentAPIs", v10];
  v13 = v12;
  if (v11)
  {
    [v12 appendFormat:@" for %@", v11];
  }

  v14 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v13;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v15 = MRGetSharedService();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __MRMediaRemoteGetSupportedBrowsableContentAPIs_block_invoke;
  v21[3] = &unk_1E76A2080;
  v22 = v11;
  v23 = @"supportedBrowsableContentAPIs";
  v24 = v10;
  v25 = v8;
  v26 = v5;
  v16 = v5;
  v17 = v8;
  v18 = v10;
  v19 = v11;
  MRMediaRemoteServiceGetSupportedBrowsableContentAPI(v15, v19, v7, v21);

  v20 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteGetSupportedBrowsableContentAPIs_block_invoke(void *a1, uint64_t a2, __CFError *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = MRMediaRemoteCopyBrowsableContentAPIMaskDescription(a2);
  v7 = a1[4];
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!a3 && v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v12 = a1[5];
      v11 = a1[6];
      v13 = a1[4];
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:a1[7]];
      v38 = 138544386;
      v39 = v12;
      v40 = 2114;
      v41 = v11;
      v42 = 2112;
      v43 = v6;
      v44 = 2114;
      v45 = v13;
      v46 = 2048;
      v47 = v15;
      v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 52;
      goto LABEL_16;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = a1[5];
    v30 = a1[6];
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:a1[7]];
    v38 = 138544130;
    v39 = v29;
    v40 = 2114;
    v41 = v30;
    v42 = 2112;
    v43 = v6;
    v44 = 2048;
    v45 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_15;
  }

  if (a3)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (!v19)
      {
        goto LABEL_22;
      }

      v21 = a1[5];
      v20 = a1[6];
      v22 = a1[4];
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:a1[7]];
      v38 = 138544386;
      v39 = v21;
      v40 = 2114;
      v41 = v20;
      v42 = 2114;
      v43 = a3;
      v44 = 2114;
      v45 = v22;
      v46 = 2048;
      v47 = v23;
      _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v38, 0x34u);
      goto LABEL_17;
    }

    if (v19)
    {
      __MRMediaRemoteGetContentItemsForIdentifiers_block_invoke_cold_1();
    }
  }

  else
  {
    v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v24)
      {
        goto LABEL_22;
      }

      v26 = a1[5];
      v25 = a1[6];
      v27 = a1[4];
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:a1[7]];
      v38 = 138544130;
      v39 = v26;
      v40 = 2114;
      v41 = v25;
      v42 = 2114;
      v43 = v27;
      v44 = 2048;
      v45 = v28;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_15:
      v17 = v9;
      v18 = 42;
LABEL_16:
      _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v38, v18);
LABEL_17:

      goto LABEL_22;
    }

    if (v24)
    {
      v32 = a1[5];
      v33 = a1[6];
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:a1[7]];
      v38 = 138543874;
      v39 = v32;
      v40 = 2114;
      v41 = v33;
      v42 = 2048;
      v43 = v34;
      v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v17 = v9;
      v18 = 32;
      goto LABEL_16;
    }
  }

LABEL_22:

  v35 = a1[8];
  if (v35)
  {
    if (a3)
    {
      Code = CFErrorGetCode(a3);
    }

    else
    {
      Code = 0;
    }

    (*(v35 + 16))(v35, a2, Code);
  }

  v37 = *MEMORY[0x1E69E9840];
}

__CFString *MRMediaRemoteCopyBrowsableContentAPIMaskDescription(char a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  if (a1)
  {
    [v3 addObject:@"BeginLoadingContent"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:@"PlaybackProgress"];
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v4 addObject:@"ContentFetching"];
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v4 addObject:@"InitiatePlayback"];
  if ((a1 & 0x20) == 0)
  {
LABEL_6:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_14:
  [v4 addObject:@"InitializePlaybackQueue"];
  if ((a1 & 0x40) != 0)
  {
LABEL_7:
    [v4 addObject:@"ContextChanges"];
  }

LABEL_8:
  if ([v4 count])
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [v4 componentsJoinedByString:{@", "}];
    v7 = [v5 initWithFormat:@"(%@)", v6];
  }

  else
  {
    v7 = @"(None)";
  }

  objc_autoreleasePoolPop(v2);
  return v7;
}

void MRMediaRemoteGetAppsSupportingBrowsableContentAPIs(unsigned int a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = MRMediaRemoteCopyBrowsableContentAPIMaskDescription(a1);
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];

  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"appsSupportingBrowsableContentAPIs", v10];
  v12 = v11;
  if (v7)
  {
    [v11 appendFormat:@" for %@", v7];
  }

  v13 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v12;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v14 = MRGetSharedService();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __MRMediaRemoteGetAppsSupportingBrowsableContentAPIs_block_invoke;
  v20[3] = &unk_1E76A20A8;
  v21 = v7;
  v22 = @"appsSupportingBrowsableContentAPIs";
  v23 = v10;
  v24 = v8;
  v25 = v5;
  v15 = v5;
  v16 = v8;
  v17 = v10;
  v18 = v7;
  MRMediaRemoteServiceGetAppsSupportingBrowsableContentAPIs(v14, a1, v6, v20);

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemoteGetAppsSupportingBrowsableContentAPIs_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a1[4];
  v7 = _MRLogForCategory(0xAuLL);
  v8 = v7;
  if (a2 && !a3)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v9)
      {
        goto LABEL_22;
      }

      v11 = a1[5];
      v10 = a1[6];
      v12 = a1[4];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[7]];
      v36 = 138544386;
      v37 = v11;
      v38 = 2114;
      v39 = v10;
      v40 = 2112;
      v41 = a2;
      v42 = 2114;
      v43 = v12;
      v44 = 2048;
      v45 = v14;
      v15 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v16 = v8;
      v17 = 52;
      goto LABEL_16;
    }

    if (!v9)
    {
      goto LABEL_22;
    }

    v28 = a1[5];
    v29 = a1[6];
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:a1[7]];
    v36 = 138544130;
    v37 = v28;
    v38 = 2114;
    v39 = v29;
    v40 = 2112;
    v41 = a2;
    v42 = 2048;
    v43 = v30;
    v15 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_15;
  }

  if (a3)
  {
    v18 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (!v18)
      {
        goto LABEL_22;
      }

      v20 = a1[5];
      v19 = a1[6];
      v21 = a1[4];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[7]];
      v36 = 138544386;
      v37 = v20;
      v38 = 2114;
      v39 = v19;
      v40 = 2114;
      v41 = a3;
      v42 = 2114;
      v43 = v21;
      v44 = 2048;
      v45 = v22;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v36, 0x34u);
      goto LABEL_17;
    }

    if (v18)
    {
      __MRMediaRemoteGetContentItemsForIdentifiers_block_invoke_cold_1();
    }
  }

  else
  {
    v23 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v23)
      {
        goto LABEL_22;
      }

      v25 = a1[5];
      v24 = a1[6];
      v26 = a1[4];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[7]];
      v36 = 138544130;
      v37 = v25;
      v38 = 2114;
      v39 = v24;
      v40 = 2114;
      v41 = v26;
      v42 = 2048;
      v43 = v27;
      v15 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_15:
      v16 = v8;
      v17 = 42;
LABEL_16:
      _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, v15, &v36, v17);
LABEL_17:

      goto LABEL_22;
    }

    if (v23)
    {
      v31 = a1[5];
      v32 = a1[6];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[7]];
      v36 = 138543874;
      v37 = v31;
      v38 = 2114;
      v39 = v32;
      v40 = 2048;
      v41 = v33;
      v15 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v16 = v8;
      v17 = 32;
      goto LABEL_16;
    }
  }

LABEL_22:

  result = a1[8];
  if (result)
  {
    result = (*(result + 16))(result, a2, a3);
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

void MRMediaRemoteSetSupportedBrowsableContentAPIs(unsigned int a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = MRMediaRemoteCopyBrowsableContentAPIMaskDescription(a1);
  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"setSupportedBrowsableContentAPIs", 0];
  v9 = v8;
  if (v7)
  {
    [v8 appendFormat:@" for %@", v7];
  }

  v10 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v9;
    _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v11 = MRGetSharedService();
  MRMediaRemoteServiceSetSupportedBrowsableContentAPI(v11, a1, v6, v5);

  v12 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteInvalidateBrowsableContent()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"invalidateBrowsableContentDataSource", 0];
  v1 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v5 = v0;
    _os_log_impl(&dword_1A2860000, v1, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v2 = MRGetSharedService();
  MRMediaRemoteServicePostBrowsableContentNotification(v2, @"kMRMediaRemoteApplicationInvalidatedBrowsableContentDataSourceNotification", 0);
  v3 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteUpdateNowPlayingIdentifiers(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E695DEC8] arrayWithArray:a1];
  v10 = @"kMRMediaRemoteUpdatedNowPlayingIdentifiersInfoKey";
  v11[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"setBrowsableContentNowPlayingIdentifiers", 0];
  v4 = v3;
  if (v1)
  {
    [v3 appendFormat:@" for %@", v1];
  }

  v5 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v6 = MRGetSharedService();
  MRMediaRemoteServicePostBrowsableContentNotification(v6, @"kMRMediaRemoteBrowsableContentNowPlayingIdentifiersUpdatedNotification", v2);

  v7 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteUpdateBrowsableContentItems(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = *MEMORY[0x1E695E480];
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        ExternalRepresentation = MRContentItemCreateExternalRepresentation(v7, *(*(&v19 + 1) + 8 * v8));
        [v2 addObject:ExternalRepresentation];

        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v2 format:200 options:0 error:0];
  v25 = @"kMRMediaRemoteUpdatedContentItemsDataUserInfoKey";
  v26 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v12 = objc_alloc(MEMORY[0x1E696AD60]);
  v13 = [v12 initWithFormat:@"%@<%@>", @"setBrowsableContentItems", 0, v19];
  v14 = MRContentItemsCopyMinimalReadableDescription(v3, 0);

  if (v14)
  {
    v15 = MRContentItemsCopyMinimalReadableDescription(v3, 0);
    [v13 appendFormat:@" for %@", v15];
  }

  v16 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v13;
    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v17 = MRGetSharedService();
  MRMediaRemoteServicePostBrowsableContentNotification(v17, @"kMRMediaRemoteContentItemsUpdatedNotification", v11);

  v18 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteFinishedPlaybackInitialization(uint64_t a1, uint64_t a2, __CFError *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v16[0] = a1;
  v16[1] = a2;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a1 length:8 * a2];
  v19 = @"kMRMediaRemoteIndexPathDataUserInfoKey";
  v20[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v6 = [v5 mutableCopy];

  if (a3)
  {
    v7 = CFErrorCopyDescription(a3);
    if (v7)
    {
      [v6 setObject:v7 forKeyedSubscript:@"kMRMediaRemoteBrowsableContentErrorLocalizedDescriptionKey"];
    }

    v8 = [(__CFString *)CFErrorGetDomain(a3) copy];
    if (v8)
    {
      [v6 setObject:v8 forKeyedSubscript:@"kMRMediaRemoteBrowsableContentErrorDomainKey"];
      v9 = [MEMORY[0x1E696AD98] numberWithLong:CFErrorGetCode(a3)];
      [v6 setObject:v9 forKeyedSubscript:@"kMRMediaRemoteBrowsableContentErrorCodeKey"];
    }
  }

  v10 = MRMediaRemoteIndexPathCopyDescription(v16);
  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"finishedBrowsableContentPlaybackInitialization", 0];
  v12 = v11;
  if (v10)
  {
    [v11 appendFormat:@" for %@", v10];
  }

  v13 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v12;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v14 = MRGetSharedService();
  MRMediaRemoteServicePostBrowsableContentNotification(v14, @"kMRMediaRemoteApplicationInitiatedPlaybackOfContentItemNotification", v6);

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1A2A5F62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 256), 8);
  _Block_object_dispose((v43 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1A2A60C10(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  _Block_object_dispose((v2 - 224), 8);
  _Block_object_dispose((v2 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1A2A61D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 256), 8);
  _Block_object_dispose((v47 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t _MRDestinationProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
          objc_storeStrong((a1 + 32), v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v14->super.super.isa, a2))
          {
LABEL_36:

            return 0;
          }

LABEL_32:
          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadString();
          v16 = 16;
          goto LABEL_29;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 24;
LABEL_29:
          v14 = *(a1 + v16);
          *(a1 + v16) = v15;
          goto LABEL_33;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_MRAVEndpointDescriptorProtobuf);
          objc_storeStrong((a1 + 8), v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !_MRAVEndpointDescriptorProtobufReadFrom(v14, a2))
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRVolumeMutedDidChangeMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRGroupSessionLeaderDiscoveryMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A2A6BE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2A6EEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 224), 8);
  _Block_object_dispose((v41 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1A2A7D3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_17_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEFAULT, a4, (v5 - 160), 0x20u);
}

void OUTLINED_FUNCTION_25_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

uint64_t MRExternalDeviceCopyUniqueIdentifier(void *a1)
{
  if (!a1)
  {
    MRExternalDeviceCopyUniqueIdentifier_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [a1 deviceInfo];
  v4 = [v3 identifier];
  v5 = [v4 copy];

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t MRExternalDeviceCopyName(void *a1)
{
  if (!a1)
  {
    MRExternalDeviceCopyName_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [a1 name];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRExternalDeviceCopyHostName(void *a1)
{
  if (!a1)
  {
    MRExternalDeviceCopyHostName_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [a1 hostName];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRExternalDeviceCopySystemBuildVersion(void *a1)
{
  if (!a1)
  {
    MRExternalDeviceCopySystemBuildVersion_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [a1 deviceInfo];
  v4 = [v3 buildVersion];
  v5 = [v4 copy];

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t MRExternalDeviceGetNetworkPort(void *a1)
{
  if (!a1)
  {
    MRExternalDeviceGetNetworkPort_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [a1 port];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRExternalDeviceCopyDeviceInfo(void *a1)
{
  if (!a1)
  {
    MRExternalDeviceCopyDeviceInfo_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [a1 deviceInfo];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

void MRExternalDeviceSetNameCallback(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!a1)
  {
    MRExternalDeviceSetNameCallback_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  [a1 setNameCallback:v5 withQueue:v7];
  objc_autoreleasePoolPop(v6);
}

uint64_t MRExternalDeviceIsValid(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isValid];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRExternalDeviceCopyCustomOrigin(void *a1)
{
  if (!a1)
  {
    MRExternalDeviceCopyCustomOrigin_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [a1 customOrigin];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void MRExternalDeviceSetWantsNowPlayingUpdates(void *a1, uint64_t a2)
{
  if (!a1)
  {
    MRExternalDeviceSetWantsNowPlayingUpdates_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  [a1 setWantsNowPlayingNotifications:a2];

  objc_autoreleasePoolPop(v4);
}

void MRExternalDeviceSetWantsNowPlayingArtworkUpdates(void *a1, uint64_t a2)
{
  if (!a1)
  {
    MRExternalDeviceSetWantsNowPlayingArtworkUpdates_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  [a1 setWantsNowPlayingArtworkNotifications:a2];

  objc_autoreleasePoolPop(v4);
}

void MRExternalDeviceSetWantsVolumeUpdates(void *a1, uint64_t a2)
{
  if (!a1)
  {
    MRExternalDeviceSetWantsVolumeUpdates_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  [a1 setWantsVolumeNotifications:a2];

  objc_autoreleasePoolPop(v4);
}

void MRExternalDeviceSetWantsOutputDeviceUpdates(void *a1, uint64_t a2)
{
  if (!a1)
  {
    MRExternalDeviceSetWantsOutputDeviceUpdates_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  [a1 setWantsOutputDeviceNotifications:a2];

  objc_autoreleasePoolPop(v4);
}

void MRExternalDeviceGetOutputDeviceUIDVolume(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (!a1)
  {
    MRExternalDeviceGetOutputDeviceUIDVolume_cold_1();
  }

  v9 = objc_autoreleasePoolPush();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRExternalDeviceGetOutputDeviceUIDVolume_block_invoke;
  v11[3] = &unk_1E76A0540;
  v10 = v8;
  v12 = v10;
  [a1 outputDeviceVolume:a2 queue:v7 completion:v11];

  objc_autoreleasePoolPop(v9);
}

void MRExternalDeviceGetOutputDeviceVolume(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = MRAVOutputDeviceCopyUniqueIdentifier(a2);
  MRExternalDeviceGetOutputDeviceUIDVolume(a1, v9, v8, v7);

  if (v9)
  {

    CFRelease(v9);
  }
}

uint64_t __MRExternalDeviceGetOutputDeviceUIDVolume_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRExternalDeviceSetOutputDeviceUIDVolume(void *a1, uint64_t a2, void *a3, void *a4, float a5)
{
  v9 = a3;
  v10 = a4;
  if (!a1)
  {
    MRExternalDeviceSetOutputDeviceUIDVolume_cold_1();
  }

  v11 = objc_autoreleasePoolPush();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __MRExternalDeviceSetOutputDeviceUIDVolume_block_invoke;
  v14[3] = &unk_1E769AD80;
  v12 = v10;
  v15 = v12;
  *&v13 = a5;
  [a1 setOutputDeviceVolume:a2 outputDeviceUID:v9 queue:v14 completion:v13];

  objc_autoreleasePoolPop(v11);
}

void MRExternalDeviceSetOutputDeviceVolume(void *a1, void *a2, void *a3, void *a4, float a5)
{
  v9 = a4;
  v10 = a3;
  v11 = MRAVOutputDeviceCopyUniqueIdentifier(a2);
  MRExternalDeviceSetOutputDeviceUIDVolume(a1, v11, v10, v9, a5);

  if (v11)
  {

    CFRelease(v11);
  }
}

uint64_t __MRExternalDeviceSetOutputDeviceUIDVolume_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRExternalDeviceSetVolumeChangedCallback(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!a1)
  {
    MRExternalDeviceSetVolumeChangedCallback_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  [a1 setVolumeCallback:v5 withQueue:v7];
  objc_autoreleasePoolPop(v6);
}

void MRExternalDeviceSendButtonEvent(void *a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    MRExternalDeviceSendButtonEvent_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  [a1 sendButtonEvent:{a2, a3}];

  objc_autoreleasePoolPop(v6);
}

BOOL MRExternalDeviceIsConnected(void *a1)
{
  if (!a1)
  {
    MRExternalDeviceIsConnected_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [a1 connectionState] == 2;
  objc_autoreleasePoolPop(v2);
  return v3;
}

void MRExternalDeviceConnect(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    MRExternalDeviceConnect_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v7 = @"MRExternalDeviceConnectionReasonUserInfoKey";
  v8[0] = @"deprecated";
  v3 = MEMORY[0x1E695DF20];
  v4 = a1;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 connectWithOptions:0 userInfo:v5];

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x1E69E9840];
}

void MRExternalDeviceConnectEx(void *a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    MRExternalDeviceConnectEx_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  v9 = @"MRExternalDeviceConnectionReasonUserInfoKey";
  v10[0] = @"deprecated";
  v5 = MEMORY[0x1E695DF20];
  v6 = a1;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6 connectWithOptions:a2 userInfo:v7];

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

void MRExternalDeviceDisconnect(void *a1)
{
  if (!a1)
  {
    MRExternalDeviceDisconnect_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = a1;
  Error = MRMediaRemoteCreateError(104);
  [v3 disconnect:Error];

  objc_autoreleasePoolPop(v2);
}

uint64_t MRExternalDeviceGetConnectionState(void *a1)
{
  if (!a1)
  {
    MRExternalDeviceGetConnectionState_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [a1 connectionState];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void MRExternalDeviceSetConnectionStateCallback(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!a1)
  {
    MRExternalDeviceSetConnectionStateCallback_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  [a1 setConnectionStateCallback:v5 withQueue:v7];
  objc_autoreleasePoolPop(v6);
}

void MRExternalDeviceSetPairingCallback(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!a1)
  {
    MRExternalDeviceSetPairingCallback_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  [a1 setPairingCallback:v5 withQueue:v7];
  objc_autoreleasePoolPop(v6);
}

uint64_t MRExternalDeviceIsPairingAllowed(void *a1)
{
  if (!a1)
  {
    MRExternalDeviceIsPairingAllowed_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [a1 deviceInfo];
  v4 = [v3 isPairingAllowed];

  objc_autoreleasePoolPop(v2);
  return v4;
}

void MRExternalDeviceSetPairingAllowedCallback(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!a1)
  {
    MRExternalDeviceSetPairingAllowedCallback_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  [a1 setPairingAllowedCallback:v5 withQueue:v7];
  objc_autoreleasePoolPop(v6);
}

void MRExternalDeviceGetPairedDevices(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    MRExternalDeviceGetPairedDevices_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [[MRExternalDevicePairingSession alloc] initWithDevice:0];
  [(MRExternalDevicePairingSession *)v3 open];
  v4 = [(MRExternalDevicePairingSession *)v3 pairedDevices];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v1[2](v1, v5);
  objc_autoreleasePoolPop(v2);

  v11 = *MEMORY[0x1E69E9840];
}

void MRExternalDeviceDeletePairedDevice(uint64_t a1)
{
  if (!a1)
  {
    MRExternalDeviceDeletePairedDevice_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MRDeviceInfo);
  [(MRDeviceInfo *)v3 setIdentifier:a1];
  v4 = [[MRExternalDevicePairingSession alloc] initWithDevice:v3];
  [(MRExternalDevicePairingSession *)v4 open];
  v5 = [(MRExternalDevicePairingSession *)v4 removePeer];

  objc_autoreleasePoolPop(v2);
}

void MRExternalDeviceRequestOutputContextModification(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a6;
  v13 = a7;
  if (!a1)
  {
    MRExternalDeviceRequestOutputContextModification_cold_1();
  }

  v14 = objc_autoreleasePoolPush();
  v15 = a1;
  v16 = [MRRequestDetails alloc];
  v17 = [MEMORY[0x1E696AFB0] UUID];
  v18 = [v17 UUIDString];
  v19 = [(MRRequestDetails *)v16 initWithName:@"MRExternalDeviceRequestOutputContextModification" requestID:v18 reason:0];

  if ([a3 count])
  {
    v20 = 1;
  }

  else if ([a4 count])
  {
    v20 = 2;
    a3 = a4;
  }

  else
  {
    if (![a5 count])
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_10;
    }

    v20 = 3;
    a3 = a5;
  }

  v21 = a3;
LABEL_10:
  v22 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v19 type:v20 outputDeviceUIDs:v21];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __MRExternalDeviceRequestOutputContextModification_block_invoke;
  v24[3] = &unk_1E769AD80;
  v23 = v13;
  v25 = v23;
  [v15 modifyTopologyWithRequest:v22 withReplyQueue:v12 completion:v24];

  objc_autoreleasePoolPop(v14);
}

uint64_t __MRExternalDeviceRequestOutputContextModification_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRExternalDeviceSetCustomDataCallback(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!a1)
  {
    MRExternalDeviceSetCustomDataCallback_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  [a1 setCustomDataCallback:v5 withQueue:v7];
  objc_autoreleasePoolPop(v6);
}

void MRExternalDeviceSendCustomData(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    MRExternalDeviceSendCustomData_cold_2();
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  MRExternalDeviceSendCustomData_cold_1();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a3)
  {
    goto LABEL_4;
  }

LABEL_9:
  MRExternalDeviceSendCustomData_cold_3();
LABEL_4:
  v6 = objc_autoreleasePoolPush();
  [a1 sendCustomData:a3 withName:a2];

  objc_autoreleasePoolPop(v6);
}

void MRExternalDevicePing(void *a1, void *a2, void *a3, double a4)
{
  v10 = a2;
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MRExternalDevicePing_cold_1();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  MRExternalDevicePing_cold_2();
LABEL_3:
  v9 = objc_autoreleasePoolPush();
  [a1 ping:v8 callback:v10 withQueue:a4];
  objc_autoreleasePoolPop(v9);
}

CFStringRef MRExternalDeviceConnectOptionsCopyDescription(char a1)
{
  if (a1)
  {
    v1 = @"(EnableSystemAuthenticationPrompt)";
  }

  else
  {
    v1 = @"(None)";
  }

  return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
}

void sub_1A2A8132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A81518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t MRAVOutputDeviceClusterTypeFromAVClusterType(unint64_t result)
{
  if (result < 3)
  {
    return dword_1A2B810A0[result];
  }

  return result;
}

uint64_t MRPowerLogDeviceTypeFromDeviceInfo(void *a1)
{
  v1 = [a1 deviceClass];
  if ((v1 - 1) > 8)
  {
    return -1;
  }

  else
  {
    return qword_1A2B810B0[v1 - 1];
  }
}

uint64_t MRPowerLogConnectionTransportTypeFromTransport(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = 3;
        }

        else
        {
          v2 = -1;
        }
      }
    }
  }

  return v2;
}

void *__getPLLogRegisteredEventSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PowerLogLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E76A31D0;
    v7 = 0;
    PowerLogLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PowerLogLibraryCore_frameworkLibrary;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    __getPLLogRegisteredEventSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "PLLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLLogRegisteredEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PowerLogLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PowerLogLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MRVirtualTouchEventProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 32) |= 8u;
          while (1)
          {
            LOBYTE(v38) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v38 & 0x7F) << v26;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v28;
          }

LABEL_55:
          v32 = 28;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            LOBYTE(v38) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v38 & 0x7F) << v16;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_51;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_51:
          v32 = 24;
        }

        *(a1 + v32) = v22;
      }

      else
      {
        if (v13 == 1)
        {
          *(a1 + 32) |= 1u;
          v38 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v38 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v38;
          v35 = 8;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_34;
          }

          *(a1 + 32) |= 2u;
          v38 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v38 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v38;
          v35 = 16;
        }

        *(a1 + v35) = v34;
      }

LABEL_62:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *NSStringFromMRPlayerAudioSessionType(uint64_t a1)
{
  v1 = 2 * (a1 == 2);
  if (a1 == 1)
  {
    v1 = 1;
  }

  return off_1E76A33B0[v1];
}

uint64_t MRDeviceSupportsSystemAperture()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSBSIsSystemApertureAvailableSymbolLoc_ptr;
  v6 = getSBSIsSystemApertureAvailableSymbolLoc_ptr;
  if (!getSBSIsSystemApertureAvailableSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSBSIsSystemApertureAvailableSymbolLoc_block_invoke;
    v2[3] = &unk_1E769ADA8;
    v2[4] = &v3;
    __getSBSIsSystemApertureAvailableSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    MRDeviceSupportsSystemAperture_cold_1();
  }

  return v0();
}

void sub_1A2A8B15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A8BA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2A8BF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A8C1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MRPrefersExpandedLockScreenPlatter()
{
  v0 = +[MRUserSettings currentSettings];
  v1 = [v0 prefersExpandedLockScreenPlatter];

  return v1;
}

void MRSetPrefersExpandedLockScreenPlatter(uint64_t a1)
{
  v2 = +[MRUserSettings currentSettings];
  [v2 setPrefersExpandedLockScreenPlatter:a1];
}

void MRSetUIServiceRelayEndpoint(void *a1)
{
  v2 = a1;
  if (MRProcessIsUIService())
  {
    v1 = MRGetSharedService();
    [v1 setUIServiceRelayEndpoint:v2];
  }
}

uint64_t MRSupportsSystemUIActivities()
{
  if (MRSupportsSystemUIActivities_onceToken != -1)
  {
    MRSupportsSystemUIActivities_cold_1();
  }

  return MRSupportsSystemUIActivities___supportsSystemUIActivities;
}

void __MRSupportsSystemUIActivities_block_invoke()
{
  if (MRProcessIsMediaRemoteDaemon())
  {
    v1 = MEMORY[0x1A58E3570](MRSupportsSystemUIActivitiesBlock);
    if (v1)
    {
      MRSupportsSystemUIActivities___supportsSystemUIActivities = v1[2]();
    }

    v0 = MRSupportsSystemUIActivitiesBlock;
    MRSupportsSystemUIActivitiesBlock = 0;
  }

  else
  {
    v1 = MRGetSharedService();
    MRSupportsSystemUIActivities___supportsSystemUIActivities = [v1 deviceSupportsUISessions];
  }
}

uint64_t MRUseInternalUI()
{
  v0 = +[MRUserSettings currentSettings];
  v1 = [v0 internalUI];

  return v1;
}

void *__getSBSIsSystemApertureAvailableSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E76A3490;
    v7 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    __getSBSIsSystemApertureAvailableSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "SBSIsSystemApertureAvailable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSIsSystemApertureAvailableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MRAVOutputDeviceArrayContainsLocalDevice(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v7 + 1) + 8 * i) isLocalDevice])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

BOOL MRAVOutputDeviceArrayContainsOnlyLocalDevices(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if (![*(*(&v9 + 1) + 8 * v5) isLocalDevice])
        {

          v6 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = [v1 count] != 0;
LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL MRAVOutputDeviceArrayContainsOnlyAirPlayDevices(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v9 + 1) + 8 * v5) deviceType] != 1)
        {

          v6 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = [v1 count] != 0;
LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL MRAVOutputDeviceArrayContainsOnlyGroupableDevices(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if (![*(*(&v9 + 1) + 8 * v5) isGroupable])
        {

          v6 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = [v1 count] != 0;
LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t MRAVOutputDeviceArrayNumberOfLogicalDevices(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 logicalDeviceID];
        if (v9)
        {
          [v8 logicalDeviceID];
        }

        else
        {
          [v8 uid];
        }
        v10 = ;
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [v2 count];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

id MRAVOutputDeviceArrayDescription(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) debugName];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ([v2 count] == 1)
  {
    v10 = [v2 firstObject];
    v11 = [v9 initWithFormat:@"%@", v10];
  }

  else
  {
    v11 = [v9 initWithFormat:@"%@", v2];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t MRAVOutputDeviceCopyLogicalDeviceID(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 logicalDeviceID];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVOutputDeviceGetName(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 name];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceGetUniqueIdentifier(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 uid];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceGetModelID(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 modelID];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceCopyFirmwareVersion(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 firmwareVersion];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVOutputDeviceGetGroupIdentifier(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 groupID];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceCopyGroupIdentifier(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 groupID];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVOutputDeviceGetMACAddress(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 MACAddress];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceCopyMACAddress(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 MACAddress];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVOutputDeviceCopyPlayingPairedDeviceName(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 playingPairedDeviceName];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVOutputDeviceCanAccessRemoteAssets(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 canAccessRemoteAssets];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceIsRemoteControllable(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isRemoteControllable];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceCanRelayCommunicationChannel(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 canRelayCommunicationChannel];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceSupportsBufferedAirPlay(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 supportsBufferedAirPlay];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceIsGroupLeader(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isGroupLeader];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceGroupContainsGroupLeader(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 groupContainsGroupLeader];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceisAirPlayReceiverSessionActive(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isAirPlayReceiverSessionActive];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceParentGroupContainsDiscoverableLeader(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 parentGroupContainsDiscoverableLeader];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceParentGroupIdentifier(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 parentGroupIdentifier];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceSupportsBluetoothSharing(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 supportsBluetoothSharing];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceIsProxyGroupPlayer(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isProxyGroupPlayer];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceIsPickedOnPairedDevice(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isPickedOnPairedDevice];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceIsVolumeControlAvailable(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isVolumeControlAvailable];
  objc_autoreleasePoolPop(v2);
  return v3;
}

float MRAVOutputDeviceGetBatteryLevel(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1 batteryLevel];
  v4 = v3;
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRAVOutputDeviceCanAccessAppleMusic(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 canAccessAppleMusic];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceCanPlayEncryptedProgressiveDownloadAssets(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 canPlayEncryptedProgressiveDownloadAssets];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceCanFetchMediaDataFromSender(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 canFetchMediaDataFromSender];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDevicePresentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceGetModelSpecificInformation(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 modelSpecificInfo];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceSupportsExternalScreen(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 supportsExternalScreen];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceRequiresAuthorization(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 requiresAuthorization];
  objc_autoreleasePoolPop(v2);
  return v3;
}

MRAVConcreteOutputDevice *MRAVOutputDeviceCreateFromAVOutputDevice(void *a1)
{
  v1 = a1;
  v2 = [[MRAVOutputDeviceSourceInfo alloc] initWithMultipleBuiltInDevices:0 sourceType:0];
  v3 = [[MRAVConcreteOutputDevice alloc] initWithAVOutputDevice:v1 sourceInfo:v2];

  return v3;
}

void MRAVOutputDeviceSetRecentAVOutputDeviceUID(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = MRGetSharedService();
  MRMediaRemoteServiceSetRecentAVOutputDeviceUID(v6, v7, a1, v5);
}

void MRAVOutputDeviceGetRecentAVOutputDeviceUIDs(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = MRGetSharedService();
  MRMediaRemoteServiceGetRecentAVOutputDeviceUIDs(v4, v5, v3);
}

uint64_t MRAVOutputDeviceGetAVOutputDevice(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 avOutputDevice];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void MRAVOutputDeviceRemoveFromParentGroup(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = MRGetSharedService();
  MRMediaRemoteServiceRemoveFromParentGroup(v7, a1, v8, v5);
  objc_autoreleasePoolPop(v6);
}

uint64_t MRAVOutputDeviceSupportsRapport(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 supportsRapport];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceIsAddedToHomeKit(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isAddedToHomeKit];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceCopyBluetoothID(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 bluetoothID];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceCopyCurrentBluetoothListeningMode(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 currentBluetoothListeningMode];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceSetCurrentBluetoothListeningMode(void *a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 debugName];
      *buf = 138543618;
      v24 = v9;
      v25 = 2114;
      v26 = a2;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting listening mode: %{public}@", buf, 0x16u);
    }

    v22 = 0;
    v10 = [v7 setCurrentBluetoothListeningMode:a2 error:&v22];
    v11 = v22;
    if (!v11)
    {
      goto LABEL_16;
    }

LABEL_13:
    v17 = _MRLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = [v7 debugName];
      *buf = 138543874;
      v24 = v20;
      v25 = 2114;
      v26 = a2;
      v27 = 2114;
      v28 = v11;
      _os_log_error_impl(&dword_1A2860000, v17, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to set listening mode: %{public}@ - error: %{public}@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  v12 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  v13 = [v7 uid];
  v14 = [v12 outputDeviceForUID:v13];

  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = _MRLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v7 debugName];
      *buf = 138543618;
      v24 = v16;
      v25 = 2114;
      v26 = a2;
      _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting listening mode: %{public}@", buf, 0x16u);
    }

    v21 = 0;
    v10 = [v14 setCurrentBluetoothListeningMode:a2 error:&v21];
    v11 = v21;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  if (v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (a3)
  {
    *a3 = v11;
  }

  objc_autoreleasePoolPop(v6);
  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t MRAVOutputDeviceCopyAvailableBluetoothListeningMode(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 availableBluetoothListeningModes];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceSupportsHeadTrackedSpatialAudio(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 supportsHeadTrackedSpatialAudio];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceAllowsHeadTrackedSpatialAudio(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 allowsHeadTrackedSpatialAudio];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceSetAllowsHeadTrackedSpatialAudio(void *a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = 0;
    v8 = [v7 setAllowsHeadTrackedSpatialAudio:a2 error:&v11];
    v9 = v11;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v8 = 0;
  if (a3)
  {
LABEL_5:
    *a3 = v9;
  }

LABEL_6:

  objc_autoreleasePoolPop(v6);
  return v8;
}

uint64_t MRAVOutputDeviceCopyHeadTrackedSpatialAudioMode(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 headTrackedSpatialAudioMode];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceHeadTrackedSpatialAudioActive(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isHeadTrackedSpatialAudioActive];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceCopyDNSNames(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 dnsNames];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void sub_1A2A8E3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2A8F7A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A2A8FB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t _MRRegisterVoiceInputDeviceResponseMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR____MRRegisterVoiceInputDeviceResponseMessageProtobuf__deviceID;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR____MRRegisterVoiceInputDeviceResponseMessageProtobuf__deviceID;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR____MRRegisterVoiceInputDeviceResponseMessageProtobuf__errorCode;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR____MRRegisterVoiceInputDeviceResponseMessageProtobuf__errorCode;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRNowPlayingArtworkCreateWithImageData(uint64_t a1, uint64_t a2)
{
  v4 = [MRNowPlayingArtworkImage alloc];

  return [(MRNowPlayingArtworkImage *)v4 initWithImageData:a1 mimeType:a2];
}

uint64_t _MRSendCommandMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(_MRCommandOptionsProtobuf);
        objc_storeStrong((a1 + 16), v21);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_MRCommandOptionsProtobufReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_40:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
    objc_storeStrong((a1 + 24), v21);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v21->super.super.isa, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSetVolumeMutedMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(_MRRequestDetailsProtobuf);
        objc_storeStrong((a1 + 8), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !_MRRequestDetailsProtobufReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadString();
        v22 = *(a1 + 16);
        *(a1 + 16) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_36;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRCommandOptionsProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v257) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v257 & 0x7F) << v6;
      if ((v257 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 2u:
        v14 = PBReaderReadString();
        v15 = 440;
        goto LABEL_380;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 224;
        goto LABEL_380;
      case 4u:
        v168 = 0;
        v169 = 0;
        v170 = 0;
        *(a1 + 512) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v171 = [a2 position] + 1;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
          {
            v173 = [a2 data];
            [v173 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v170 |= (v257 & 0x7F) << v168;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v168 += 7;
          v12 = v169++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_460;
          }
        }

        v22 = (v170 != 0) & ~[a2 hasError];
LABEL_460:
        v238 = 497;
        goto LABEL_484;
      case 5u:
        *(a1 + 512) |= 0x100000uLL;
        LODWORD(v257) = 0;
        v140 = [a2 position] + 4;
        if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 4, v141 <= objc_msgSend(a2, "length")))
        {
          v251 = [a2 data];
          [v251 getBytes:&v257 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v242 = v257;
        v243 = 432;
        goto LABEL_503;
      case 6u:
        *(a1 + 512) |= 0x800uLL;
        LODWORD(v257) = 0;
        v148 = [a2 position] + 4;
        if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 4, v149 <= objc_msgSend(a2, "length")))
        {
          v252 = [a2 data];
          [v252 getBytes:&v257 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v242 = v257;
        v243 = 276;
        goto LABEL_503;
      case 7u:
        *(a1 + 512) |= 0x8000uLL;
        LODWORD(v257) = 0;
        v126 = [a2 position] + 4;
        if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 4, v127 <= objc_msgSend(a2, "length")))
        {
          v250 = [a2 data];
          [v250 getBytes:&v257 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v242 = v257;
        v243 = 360;
        goto LABEL_503;
      case 8u:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 512) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v131 = [a2 position] + 1;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
          {
            v133 = [a2 data];
            [v133 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v130 |= (v257 & 0x7F) << v128;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v12 = v129++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_439;
          }
        }

        v22 = (v130 != 0) & ~[a2 hasError];
LABEL_439:
        v238 = 498;
        goto LABEL_484;
      case 9u:
        *(a1 + 512) |= 8uLL;
        v257 = 0;
        v105 = [a2 position] + 8;
        if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 8, v106 <= objc_msgSend(a2, "length")))
        {
          v249 = [a2 data];
          [v249 getBytes:&v257 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v245 = v257;
        v246 = 32;
        goto LABEL_510;
      case 0xAu:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(a1 + 512) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (v257 & 0x7F) << v120;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_437;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v122;
        }

LABEL_437:
        v239 = 376;
        goto LABEL_469;
      case 0xBu:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 512) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v257 & 0x7F) << v79;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v12 = v80++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_417;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v81;
        }

LABEL_417:
        v239 = 408;
        goto LABEL_469;
      case 0xCu:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(a1 + 512) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (v257 & 0x7F) << v113;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v12 = v114++ >= 9;
          if (v12)
          {
            v119 = 0;
            goto LABEL_433;
          }
        }

        if ([a2 hasError])
        {
          v119 = 0;
        }

        else
        {
          v119 = v115;
        }

LABEL_433:
        v240 = 64;
        goto LABEL_452;
      case 0xDu:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 512) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v257 & 0x7F) << v150;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            v119 = 0;
            goto LABEL_451;
          }
        }

        if ([a2 hasError])
        {
          v119 = 0;
        }

        else
        {
          v119 = v152;
        }

LABEL_451:
        v240 = 40;
LABEL_452:
        *(a1 + v240) = v119;
        goto LABEL_511;
      case 0xEu:
        v14 = PBReaderReadString();
        v15 = 352;
        goto LABEL_380;
      case 0xFu:
        v14 = PBReaderReadData();
        v15 = 464;
        goto LABEL_380;
      case 0x10u:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_380;
      case 0x11u:
        v184 = 0;
        v185 = 0;
        v186 = 0;
        *(a1 + 512) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v187 = [a2 position] + 1;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
          {
            v189 = [a2 data];
            [v189 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v186 |= (v257 & 0x7F) << v184;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v184 += 7;
          v12 = v185++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_468;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v186;
        }

LABEL_468:
        v239 = 384;
        goto LABEL_469;
      case 0x12u:
        v198 = 0;
        v199 = 0;
        v200 = 0;
        *(a1 + 512) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v201 = [a2 position] + 1;
          if (v201 >= [a2 position] && (v202 = objc_msgSend(a2, "position") + 1, v202 <= objc_msgSend(a2, "length")))
          {
            v203 = [a2 data];
            [v203 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v200 |= (v257 & 0x7F) << v198;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v198 += 7;
          v12 = v199++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_473;
          }
        }

        v22 = (v200 != 0) & ~[a2 hasError];
LABEL_473:
        v238 = 504;
        goto LABEL_484;
      case 0x13u:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_380;
      case 0x14u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 512) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v257 & 0x7F) << v67;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_411;
          }
        }

        v22 = (v69 != 0) & ~[a2 hasError];
LABEL_411:
        v238 = 506;
        goto LABEL_484;
      case 0x15u:
        v14 = PBReaderReadString();
        v15 = 448;
        goto LABEL_380;
      case 0x16u:
        v210 = 0;
        v211 = 0;
        v212 = 0;
        *(a1 + 512) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v213 = [a2 position] + 1;
          if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 1, v214 <= objc_msgSend(a2, "length")))
          {
            v215 = [a2 data];
            [v215 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v212 |= (v257 & 0x7F) << v210;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v210 += 7;
          v12 = v211++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_477;
          }
        }

        v22 = (v212 != 0) & ~[a2 hasError];
LABEL_477:
        v238 = 505;
        goto LABEL_484;
      case 0x17u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 512) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v257 & 0x7F) << v91;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_423;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v93;
        }

LABEL_423:
        v239 = 268;
        goto LABEL_469;
      case 0x18u:
        v14 = PBReaderReadString();
        v15 = 112;
        goto LABEL_380;
      case 0x19u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 512) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (v257 & 0x7F) << v99;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v12 = v100++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_427;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v101;
        }

LABEL_427:
        v239 = 272;
        goto LABEL_469;
      case 0x1Au:
        v174 = 0;
        v175 = 0;
        v176 = 0;
        *(a1 + 512) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v177 = [a2 position] + 1;
          if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 1, v178 <= objc_msgSend(a2, "length")))
          {
            v179 = [a2 data];
            [v179 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v176 |= (v257 & 0x7F) << v174;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v174 += 7;
          v12 = v175++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_464;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v176;
        }

LABEL_464:
        v239 = 264;
        goto LABEL_469;
      case 0x1Bu:
        v14 = PBReaderReadData();
        v15 = 216;
        goto LABEL_380;
      case 0x1Cu:
        v14 = PBReaderReadData();
        v15 = 256;
        goto LABEL_380;
      case 0x1Du:
        v14 = PBReaderReadString();
        v15 = 200;
        goto LABEL_380;
      case 0x1Eu:
        v14 = PBReaderReadString();
        v15 = 232;
        goto LABEL_380;
      case 0x1Fu:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 512) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v257 & 0x7F) << v142;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_447;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v144;
        }

LABEL_447:
        v239 = 380;
        goto LABEL_469;
      case 0x20u:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_380;
      case 0x21u:
        v14 = PBReaderReadString();
        v15 = 392;
        goto LABEL_380;
      case 0x22u:
        v14 = PBReaderReadString();
        v15 = 368;
        goto LABEL_380;
      case 0x28u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 512) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v257 & 0x7F) << v85;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_419;
          }
        }

        v22 = (v87 != 0) & ~[a2 hasError];
LABEL_419:
        v238 = 494;
        goto LABEL_484;
      case 0x29u:
        v190 = 0;
        v191 = 0;
        v192 = 0;
        *(a1 + 512) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v193 = [a2 position] + 1;
          if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
          {
            v195 = [a2 data];
            [v195 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v192 |= (v257 & 0x7F) << v190;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v190 += 7;
          v12 = v191++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_471;
          }
        }

        v22 = (v192 != 0) & ~[a2 hasError];
LABEL_471:
        v238 = 495;
        goto LABEL_484;
      case 0x2Au:
        v14 = PBReaderReadData();
        v15 = 280;
        goto LABEL_380;
      case 0x2Bu:
        v14 = PBReaderReadData();
        v15 = 472;
        goto LABEL_380;
      case 0x2Cu:
        v14 = PBReaderReadString();
        v15 = 208;
        goto LABEL_380;
      case 0x2Du:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 512) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v257 & 0x7F) << v59;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_409;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v61;
        }

LABEL_409:
        v239 = 348;
        goto LABEL_469;
      case 0x2Eu:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 512) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v257 & 0x7F) << v53;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_405;
          }
        }

        v22 = (v55 != 0) & ~[a2 hasError];
LABEL_405:
        v238 = 502;
        goto LABEL_484;
      case 0x2Fu:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 512) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v257 & 0x7F) << v107;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v12 = v108++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_429;
          }
        }

        v22 = (v109 != 0) & ~[a2 hasError];
LABEL_429:
        v238 = 503;
        goto LABEL_484;
      case 0x30u:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(a1 + 512) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            v161 = [a2 data];
            [v161 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v257 & 0x7F) << v156;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v12 = v157++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_454;
          }
        }

        v22 = (v158 != 0) & ~[a2 hasError];
LABEL_454:
        v238 = 501;
        goto LABEL_484;
      case 0x31u:
        v14 = PBReaderReadString();
        v15 = 192;
        goto LABEL_380;
      case 0x32u:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 512) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v257 & 0x7F) << v39;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v12 = v40++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_401;
          }
        }

        v22 = (v41 != 0) & ~[a2 hasError];
LABEL_401:
        v238 = 508;
        goto LABEL_484;
      case 0x33u:
        v14 = PBReaderReadString();
        v15 = 296;
        goto LABEL_380;
      case 0x34u:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        *(a1 + 512) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            v167 = [a2 data];
            [v167 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v164 |= (v257 & 0x7F) << v162;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v12 = v163++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_458;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v164;
        }

LABEL_458:
        v239 = 312;
        goto LABEL_469;
      case 0x35u:
        v14 = PBReaderReadString();
        v15 = 288;
        goto LABEL_380;
      case 0x36u:
        v14 = PBReaderReadString();
        v15 = 320;
        goto LABEL_380;
      case 0x37u:
        v14 = PBReaderReadData();
        v15 = 304;
        goto LABEL_380;
      case 0x38u:
        v14 = PBReaderReadString();
        v15 = 328;
        goto LABEL_380;
      case 0x39u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 512) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v257 & 0x7F) << v45;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v12 = v46++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_403;
          }
        }

        v22 = (v47 != 0) & ~[a2 hasError];
LABEL_403:
        v238 = 507;
        goto LABEL_484;
      case 0x3Au:
        v14 = PBReaderReadString();
        v15 = 248;
        goto LABEL_380;
      case 0x3Bu:
        v14 = PBReaderReadString();
        v15 = 184;
        goto LABEL_380;
      case 0x3Cu:
        v14 = PBReaderReadString();
        v15 = 176;
        goto LABEL_380;
      case 0x3Du:
        v14 = PBReaderReadString();
        v15 = 400;
        goto LABEL_380;
      case 0x3Eu:
        *(a1 + 512) |= 4uLL;
        v257 = 0;
        v196 = [a2 position] + 8;
        if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 8, v197 <= objc_msgSend(a2, "length")))
        {
          v255 = [a2 data];
          [v255 getBytes:&v257 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v245 = v257;
        v246 = 24;
        goto LABEL_510;
      case 0x3Fu:
        *(a1 + 512) |= 2uLL;
        v257 = 0;
        v51 = [a2 position] + 8;
        if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 8, v52 <= objc_msgSend(a2, "length")))
        {
          v244 = [a2 data];
          [v244 getBytes:&v257 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v245 = v257;
        v246 = 16;
        goto LABEL_510;
      case 0x40u:
        *(a1 + 512) |= 1uLL;
        v257 = 0;
        v216 = [a2 position] + 8;
        if (v216 >= [a2 position] && (v217 = objc_msgSend(a2, "position") + 8, v217 <= objc_msgSend(a2, "length")))
        {
          v256 = [a2 data];
          [v256 getBytes:&v257 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v245 = v257;
        v246 = 8;
        goto LABEL_510;
      case 0x41u:
        v14 = PBReaderReadString();
        v15 = 240;
        goto LABEL_380;
      case 0x42u:
        v14 = PBReaderReadData();
        v15 = 160;
        goto LABEL_380;
      case 0x43u:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_380;
      case 0x44u:
        v224 = 0;
        v225 = 0;
        v226 = 0;
        *(a1 + 512) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v227 = [a2 position] + 1;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
          {
            v229 = [a2 data];
            [v229 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v226 |= (v257 & 0x7F) << v224;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v224 += 7;
          v12 = v225++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_481;
          }
        }

        v22 = (v226 != 0) & ~[a2 hasError];
LABEL_481:
        v238 = 492;
        goto LABEL_484;
      case 0x45u:
        v204 = 0;
        v205 = 0;
        v206 = 0;
        *(a1 + 512) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v207 = [a2 position] + 1;
          if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 1, v208 <= objc_msgSend(a2, "length")))
          {
            v209 = [a2 data];
            [v209 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v206 |= (v257 & 0x7F) << v204;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v204 += 7;
          v12 = v205++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_475;
          }
        }

        v22 = (v206 != 0) & ~[a2 hasError];
LABEL_475:
        v238 = 493;
        goto LABEL_484;
      case 0x46u:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_380;
      case 0x47u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 512) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v257 & 0x7F) << v73;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v12 = v74++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_413;
          }
        }

        v22 = (v75 != 0) & ~[a2 hasError];
LABEL_413:
        v238 = 499;
        goto LABEL_484;
      case 0x48u:
        v14 = PBReaderReadString();
        v15 = 424;
        goto LABEL_380;
      case 0x49u:
        v14 = PBReaderReadString();
        v15 = 416;
        goto LABEL_380;
      case 0x4Au:
        v218 = 0;
        v219 = 0;
        v220 = 0;
        *(a1 + 512) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v221 = [a2 position] + 1;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
          {
            v223 = [a2 data];
            [v223 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v220 |= (v257 & 0x7F) << v218;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v218 += 7;
          v12 = v219++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_479;
          }
        }

        v22 = (v220 != 0) & ~[a2 hasError];
LABEL_479:
        v238 = 500;
        goto LABEL_484;
      case 0x4Bu:
        v14 = PBReaderReadString();
        v15 = 336;
        goto LABEL_380;
      case 0x4Cu:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 512) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v257 & 0x7F) << v134;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_443;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v136;
        }

LABEL_443:
        v239 = 344;
        goto LABEL_469;
      case 0x4Du:
        v14 = PBReaderReadData();
        v15 = 72;
        goto LABEL_380;
      case 0x4Eu:
        v30 = objc_alloc_init(_MRSystemPlaybackQueueProtobuf);
        objc_storeStrong((a1 + 456), v30);
        v257 = 0;
        v258 = 0;
        if (PBReaderPlaceMark() && (_MRSystemPlaybackQueueProtobufReadFrom(v30, a2) & 1) != 0)
        {
          goto LABEL_339;
        }

        goto LABEL_513;
      case 0x4Fu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 512) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v257 & 0x7F) << v31;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_399;
          }
        }

        v22 = (v33 != 0) & ~[a2 hasError];
LABEL_399:
        v238 = 509;
        goto LABEL_484;
      case 0x50u:
        *(a1 + 512) |= 0x400000uLL;
        LODWORD(v257) = 0;
        v65 = [a2 position] + 4;
        if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 4, v66 <= objc_msgSend(a2, "length")))
        {
          v247 = [a2 data];
          [v247 getBytes:&v257 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v242 = v257;
        v243 = 480;
        goto LABEL_503;
      case 0x51u:
        *(a1 + 512) |= 0x1000000uLL;
        LODWORD(v257) = 0;
        v180 = [a2 position] + 4;
        if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 4, v181 <= objc_msgSend(a2, "length")))
        {
          v253 = [a2 data];
          [v253 getBytes:&v257 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v242 = v257;
        v243 = 488;
        goto LABEL_503;
      case 0x52u:
        *(a1 + 512) |= 0x800000uLL;
        LODWORD(v257) = 0;
        v37 = [a2 position] + 4;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 4, v38 <= objc_msgSend(a2, "length")))
        {
          v241 = [a2 data];
          [v241 getBytes:&v257 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v242 = v257;
        v243 = 484;
LABEL_503:
        *(a1 + v243) = v242;
        goto LABEL_511;
      case 0x53u:
        v231 = 0;
        v232 = 0;
        v233 = 0;
        *(a1 + 512) |= 0x80000000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v234 = [a2 position] + 1;
          if (v234 >= [a2 position] && (v235 = objc_msgSend(a2, "position") + 1, v235 <= objc_msgSend(a2, "length")))
          {
            v236 = [a2 data];
            [v236 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v233 |= (v257 & 0x7F) << v231;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v231 += 7;
          v12 = v232++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_483;
          }
        }

        v22 = (v233 != 0) & ~[a2 hasError];
LABEL_483:
        v238 = 510;
        goto LABEL_484;
      case 0x54u:
        v14 = PBReaderReadString();
        v15 = 80;
        goto LABEL_380;
      case 0x55u:
        *(a1 + 512) |= 0x40uLL;
        v257 = 0;
        v97 = [a2 position] + 8;
        if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 8, v98 <= objc_msgSend(a2, "length")))
        {
          v248 = [a2 data];
          [v248 getBytes:&v257 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v245 = v257;
        v246 = 56;
        goto LABEL_510;
      case 0x56u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 512) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v257 & 0x7F) << v23;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_397;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_397:
        v239 = 436;
LABEL_469:
        *(a1 + v239) = v29;
        goto LABEL_511;
      case 0x57u:
        v30 = objc_alloc_init(_MRDictionaryProtobuf);
        objc_storeStrong((a1 + 168), v30);
        v257 = 0;
        v258 = 0;
        if (PBReaderPlaceMark() && (_MRDictionaryProtobufReadFrom(v30, a2) & 1) != 0)
        {
LABEL_339:
          PBReaderRecallMark();

LABEL_511:
          v4 = a2;
          continue;
        }

LABEL_513:

        return 0;
      case 0x58u:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_380;
      case 0x59u:
        *(a1 + 512) |= 0x20uLL;
        v257 = 0;
        v182 = [a2 position] + 8;
        if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 8, v183 <= objc_msgSend(a2, "length")))
        {
          v254 = [a2 data];
          [v254 getBytes:&v257 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v245 = v257;
        v246 = 48;
LABEL_510:
        *(a1 + v246) = v245;
        goto LABEL_511;
      case 0x5Au:
        v14 = PBReaderReadData();
        v15 = 128;
        goto LABEL_380;
      case 0x5Bu:
        v14 = PBReaderReadString();
        v15 = 136;
LABEL_380:
        v230 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_511;
      case 0x5Cu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 512) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v257) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v257 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v257 & 0x7F) << v16;
          if ((v257 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_393;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_393:
        v238 = 496;
LABEL_484:
        *(a1 + v238) = v22;
        goto LABEL_511;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_511;
    }
  }
}

uint64_t _MRRegisterVoiceInputDeviceMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRVoiceInputDeviceDescriptorProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRVoiceInputDeviceDescriptorProtobufReadFrom(&v13->super.super.isa, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A2AA1308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA1468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA1584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1A58E3570](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1A2AA17E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA1A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA1C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA1EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA2108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA2350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA2598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA27E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA2A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA2C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA2EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA3248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA34BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA361C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA429C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A2AA4E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA5018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AA79AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaExperienceLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MRDiscoveryUpdateEndpointsProtobufMessageReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRAVEndpointDescriptorProtobuf);
        [a1 addEndpoints:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_MRAVEndpointDescriptorProtobufReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_MRDiscoverySessionConfigurationProtobuf);
    objc_storeStrong(a1 + 1, v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_MRDiscoverySessionConfigurationProtobufReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRRemoteArtworkProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR____MRRemoteArtworkProtobuf__artworkURLTemplateData;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR____MRRemoteArtworkProtobuf__type;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = &OBJC_IVAR____MRRemoteArtworkProtobuf__artworkURLString;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRLyricsEventProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25[0] & 0x7F) << v5;
        if ((v25[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v18 = objc_alloc_init(_MRLyricsTokenProtobuf);
        objc_storeStrong((a1 + 24), v18);
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark() || !_MRLyricsTokenProtobufReadFrom(v18, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 2)
        {
          *(a1 + 32) |= 1u;
          v25[0] = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v25 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v20 = v25[0];
          v21 = 8;
          goto LABEL_35;
        }

        if (v13 == 1)
        {
          *(a1 + 32) |= 2u;
          v25[0] = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v25 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v20 = v25[0];
          v21 = 16;
LABEL_35:
          *(a1 + v21) = v20;
          goto LABEL_36;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_36:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSendCommandResultHandlerDialogProtobufReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = PBReaderReadString();
        v16 = 24;
LABEL_25:
        v14 = *&a1[v16];
        *&a1[v16] = v15;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_MRSendCommandResultHandlerDialogActionProtobuf);
        [a1 addActions:v14];
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !_MRSendCommandResultHandlerDialogActionProtobufReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadString();
    v16 = 16;
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRGroupSessionInfoProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        if (v13 == 6)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v42 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v42 & 0x7F) << v30;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_58;
            }
          }

          v27 = (v32 != 0) & ~[a2 hasError];
LABEL_58:
          v38 = 37;
LABEL_65:
          *(a1 + v38) = v27;
          goto LABEL_66;
        }

        if (v13 != 5)
        {
          if (v13 != 4)
          {
LABEL_52:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_66;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            v43 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v43 & 0x7F) << v21;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_64;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_64:
          v38 = 36;
          goto LABEL_65;
        }

        v28 = PBReaderReadString();
        v29 = 8;
        goto LABEL_56;
      }

      if (v13 == 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v28 = PBReaderReadString();
        v29 = 16;
        goto LABEL_56;
      }

      if (v13 != 3)
      {
        goto LABEL_52;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v41 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v41 & 0x7F) << v14;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_62;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_62:
      *(a1 + 32) = v20;
LABEL_66:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v28 = PBReaderReadString();
    v29 = 24;
LABEL_56:
    v37 = *(a1 + v29);
    *(a1 + v29) = v28;

    goto LABEL_66;
  }

  return [a2 hasError] ^ 1;
}

void MRContentItemSetTitle(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetTitle_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetTitle_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

void MRContentItemSetMetadataRef(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    MRCreateItemMetadataIfNotPresent(a1);
  }

  v5[2](v5, a1, a2);
}

BOOL __MRContentItemSetTitle_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 title];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 title];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setTitle:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetSubtitle(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 subtitle];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetSubtitle(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetSubtitle_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetSubtitle_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetSubtitle_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 subtitle];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 subtitle];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setSubtitle:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetClassicalWork(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 classicalWork];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetClassicalWork(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetClassicalWork_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetClassicalWork_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetClassicalWork_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 classicalWork];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 classicalWork];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setClassicalWork:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

void MRContentItemSetAlbumName(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetAlbumName_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetAlbumName_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetAlbumName_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 albumName];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 albumName];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setAlbumName:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemCopyAlbumYear(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 albumYear];
  v3 = [v2 copy];

  return v3;
}

void MRContentItemSetAlbumYear(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetAlbumYear_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetAlbumYear_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetAlbumYear_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 albumYear];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 albumYear];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setAlbumYear:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

void MRContentItemSetTrackArtistName(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetTrackArtistName_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetTrackArtistName_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetTrackArtistName_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 trackArtistName];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 trackArtistName];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setTrackArtistName:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetAlbumArtistName(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 albumArtistName];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetAlbumArtistName(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetAlbumArtistName_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetAlbumArtistName_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetAlbumArtistName_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 albumArtistName];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 albumArtistName];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setAlbumArtistName:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetSeriesName(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 seriesName];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetSeriesName(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetSeriesName_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetSeriesName_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetSeriesName_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 seriesName];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 seriesName];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setSeriesName:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetDirectorName(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 directorName];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetDirectorName(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetDirectorName_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetDirectorName_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetDirectorName_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 directorName];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 directorName];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setDirectorName:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemGetSeasonNumber(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 seasonNumber];

  return v2;
}

void MRContentItemSetSeasonNumber(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 seasonNumber] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasSeasonNumber];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setSeasonNumber:a2];

LABEL_8:
}

uint64_t MRContentItemGetEpisodeNumber(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 episodeNumber];

  return v2;
}

void MRContentItemSetEpisodeNumber(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 episodeNumber] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasEpisodeNumber];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setEpisodeNumber:a2];

LABEL_8:
}

void MRContentItemSetReleaseDate(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v10 = v3;
    MRCreateItemMetadataIfNotPresent(a1);
    v4 = a1;
    v5 = [v4 metadata];
    v6 = [v5 releaseDate];
    if (v6 == v10)
    {
      v8 = [v4 metadata];
      v9 = [v8 releaseDate];

      if (v9)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    v7 = [v4 metadata];
    [v7 setReleaseDate:v10];

LABEL_6:
    v3 = v10;
  }
}

void MRContentItemSetPlayCount(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 playCount] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasPlayCount];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setPlayCount:a2];

LABEL_8:
}

CFTypeRef MRContentItemGetComposer(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 composer];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetComposer(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetComposer_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetComposer_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetComposer_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 composer];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 composer];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setComposer:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemGetDiscNumber(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 discNumber];

  return v2;
}

void MRContentItemSetDiscNumber(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 discNumber] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasDiscNumber];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setDiscNumber:a2];

LABEL_8:
}

uint64_t MRContentItemGetTotalDiscCount(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 totalDiscCount];

  return v2;
}

void MRContentItemSetTotalDiscCount(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 totalDiscCount] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasTotalDiscCount];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setTotalDiscCount:a2];

LABEL_8:
}

uint64_t MRContentItemGetTotalTrackCount(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 totalTrackCount];

  return v2;
}

void MRContentItemSetTotalTrackCount(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 totalTrackCount] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasTotalTrackCount];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setTotalTrackCount:a2];

LABEL_8:
}

uint64_t MRContentItemGetTrackNumber(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 trackNumber];

  return v2;
}

void MRContentItemSetTrackNumber(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 trackNumber] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasTrackNumber];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setTrackNumber:a2];

LABEL_8:
}

uint64_t MRContentItemGetIsCurrentlyPlaying(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isCurrentlyPlaying];

  return v2;
}

void MRContentItemSetIsCurrentlyPlaying(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isCurrentlyPlaying] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setCurrentlyPlaying:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasCurrentlyPlaying];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t MRContentItemGetHasDuration(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 hasDuration];

  return v2;
}

void MRContentItemSetDuration(void *a1, double a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v9 = a1;
  v4 = [v9 metadata];
  [v4 duration];
  if (v5 == a2)
  {
    v6 = [v9 metadata];
    v7 = [v6 hasDuration];

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = [v9 metadata];
  [v8 setDuration:a2];

LABEL_8:
}

float MRContentItemGetPlaybackProgress(void *a1)
{
  v1 = [a1 metadata];
  [v1 playbackProgress];
  v3 = v2;

  return v3;
}

void MRContentItemSetPlaybackProgress(void *a1, float a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v10 = a1;
  v4 = [v10 metadata];
  [v4 playbackProgress];
  if (v5 == a2)
  {
    v6 = [v10 metadata];
    v7 = [v6 hasPlaybackProgress];

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = [v10 metadata];
  *&v9 = a2;
  [v8 setPlaybackProgress:v9];

LABEL_8:
}

uint64_t MRContentItemGetHasElapsedTime(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 hasElapsedTime];

  return v2;
}

double MRContentItemGetElapsedTimeTimestamp(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [v2 hasElapsedTimeTimestamp];
  v4 = [v1 metadata];

  if (v3)
  {
    [v4 elapsedTimeTimestamp];
  }

  else
  {
    [v4 inferredTimestamp];
  }

  v6 = v5;

  return v6;
}

void MRContentItemSetElapsedTimeTimestamp(void *a1, double a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v9 = a1;
  v4 = [v9 metadata];
  [v4 elapsedTimeTimestamp];
  if (v5 == a2)
  {
    v6 = [v9 metadata];
    v7 = [v6 hasElapsedTimeTimestamp];

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = [v9 metadata];
  [v8 setElapsedTimeTimestamp:a2];

LABEL_8:
}

void MRContentItemSetElapsedTime(void *a1, double a2)
{
  if (a1)
  {
    MRCreateItemMetadataIfNotPresent(a1);
    v5 = a1;
    v6 = [v5 metadata];
    [v6 elapsedTime];
    if (v7 == a2)
    {
      v8 = [v5 metadata];
      v9 = [v8 hasElapsedTime];

      if (v9)
      {
LABEL_10:

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v13 = v12;
        MRCreateItemMetadataIfNotPresent(v5);
        v19 = v5;
        v14 = [v19 metadata];
        [v14 elapsedTimeTimestamp];
        if (v15 == v13)
        {
          v16 = [v19 metadata];
          v17 = [v16 hasElapsedTimeTimestamp];

          if (v17)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }

        v18 = [v19 metadata];
        [v18 setElapsedTimeTimestamp:v13];

LABEL_15:

        return;
      }
    }

    else
    {
    }

    v11 = [v5 metadata];
    [v11 setElapsedTime:a2];

    goto LABEL_10;
  }

  v10 = MEMORY[0x1E695DF00];

  [v10 timeIntervalSinceReferenceDate];
}

double MRContentItemGetStartTime(void *a1)
{
  v1 = [a1 metadata];
  [v1 startTime];
  v3 = v2;

  return v3;
}

void MRContentItemSetStartTime(void *a1, double a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v9 = a1;
  v4 = [v9 metadata];
  [v4 startTime];
  if (v5 == a2)
  {
    v6 = [v9 metadata];
    v7 = [v6 hasStartTime];

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = [v9 metadata];
  [v8 setStartTime:a2];

LABEL_8:
}

float MRContentItemGetDefaultPlaybackRate(void *a1)
{
  v1 = [a1 metadata];
  [v1 defaultPlaybackRate];
  v3 = v2;

  return v3;
}

void MRContentItemSetDefaultPlaybackRate(void *a1, float a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v10 = a1;
  v4 = [v10 metadata];
  [v4 defaultPlaybackRate];
  if (v5 == a2)
  {
    v6 = [v10 metadata];
    v7 = [v6 hasDefaultPlaybackRate];

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = [v10 metadata];
  *&v9 = a2;
  [v8 setDefaultPlaybackRate:v9];

LABEL_8:
}

float MRContentItemGetPlaybackRate(void *a1)
{
  v1 = [a1 metadata];
  [v1 playbackRate];
  v3 = v2;

  return v3;
}

uint64_t MRContentItemHasPlaybackRate(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 hasPlaybackRate];

  return v2;
}

void MRContentItemSetPlaybackRate(void *a1, float a2)
{
  if (a1)
  {
    MRCreateItemMetadataIfNotPresent(a1);
    v5 = a1;
    v6 = [v5 metadata];
    [v6 playbackRate];
    if (v7 == a2)
    {
      v8 = [v5 metadata];
      v9 = [v8 hasPlaybackRate];

      if (v9)
      {
LABEL_10:

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v14 = v13;
        MRCreateItemMetadataIfNotPresent(v5);
        v20 = v5;
        v15 = [v20 metadata];
        [v15 elapsedTimeTimestamp];
        if (v16 == v14)
        {
          v17 = [v20 metadata];
          v18 = [v17 hasElapsedTimeTimestamp];

          if (v18)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }

        v19 = [v20 metadata];
        [v19 setElapsedTimeTimestamp:v14];

LABEL_15:

        return;
      }
    }

    else
    {
    }

    v11 = [v5 metadata];
    *&v12 = a2;
    [v11 setPlaybackRate:v12];

    goto LABEL_10;
  }

  v10 = MEMORY[0x1E695DF00];

  [v10 timeIntervalSinceReferenceDate];
}

void MRContentItemSetCurrentPlaybackDate(void *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __MRContentItemSetCurrentPlaybackDate_block_invoke;
  v2[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v2[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v2);
}

BOOL __MRContentItemSetCurrentPlaybackDate_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 currentPlaybackDate];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 currentPlaybackDate];
  v12 = [v11 isEqual:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setCurrentPlaybackDate:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetCurrentPlaybackDate(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 currentPlaybackDate];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

CFTypeRef MRContentItemGetGenre(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 genre];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetGenre(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetGenre_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetGenre_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetGenre_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 genre];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 genre];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setGenre:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetLocalizedContentRating(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 localizedContentRating];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetLocalizedContentRating(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetLocalizedContentRating_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetLocalizedContentRating_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetLocalizedContentRating_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 localizedContentRating];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 localizedContentRating];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setLocalizedContentRating:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

void MRContentItemSetMediaType(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 mediaType] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasMediaType];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setMediaType:a2];

LABEL_8:
}

uint64_t MRContentItemGetMediaSubType(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 mediaSubType];

  return v2;
}

void MRContentItemSetMediaSubType(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 mediaSubType] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasMediaSubType];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setMediaSubType:a2];

LABEL_8:
}

uint64_t MRContentItemGetIsContainer(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isContainer];

  return v2;
}

void MRContentItemSetIsContainer(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isContainer] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setContainer:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasContainer];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t MRContentItemGetIsPlayable(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isPlayable];

  return v2;
}

void MRContentItemSetPlayable(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isPlayable] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setPlayable:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasPlayable];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t MRContentItemGetIsStreamingContent(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isStreamingContent];

  return v2;
}

void MRContentItemSetIsStreamingContent(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isStreamingContent] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setStreamingContent:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasStreamingContent];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}