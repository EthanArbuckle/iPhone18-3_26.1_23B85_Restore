void sub_100001C40(id a1)
{
  qword_100011E80 = os_log_create("com.apple.classroom", "General");

  _objc_release_x1();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  v5 = [v4 makePrimitives];

  if ([v5 enter])
  {
    v6 = objc_opt_new();

    objc_autoreleasePoolPop(v3);
    v7 = [v6 run];

    return v7;
  }

  else
  {

    objc_autoreleasePoolPop(v3);
    return 1;
  }
}

id sub_1000024BC()
{
  v0 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = +[BLLibrary defaultBookLibrary];
  v2 = [v1 allBookItems];

  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = objc_opt_new();
        v9 = [v7 title];
        [v8 setTitle:v9];

        v10 = [v7 author];
        [v8 setAuthor:v10];

        v11 = [v7 path];
        [v8 setPath:v11];

        v12 = [v7 storeIdentifier];
        [v8 setStoreIdentifier:v12];

        v13 = [v7 identifier];
        [v8 setIdentifier:v13];

        v14 = [v7 legacyUniqueIdentifier];
        [v8 setLegacyUniqueIdentifier:v14];

        if ([v7 type])
        {
          if ([v7 type] == 1)
          {
            v15 = 1;
          }

          else if ([v7 type] == 2)
          {
            v15 = 2;
          }

          else
          {
            v15 = 3;
          }
        }

        else
        {
          v15 = 0;
        }

        [v8 setType:v15];
        [v0 addObject:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  return v0;
}

void sub_1000028C8(id a1)
{
  qword_100011E90 = os_log_create("com.apple.classroom", "General");

  _objc_release_x1();
}

void sub_1000041E4(id a1)
{
  qword_100011EA0 = os_log_create("com.apple.classroom", "General");

  _objc_release_x1();
}

void sub_100004340(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) resultObject];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_100004480(uint64_t a1)
{
  v2 = [[CBSFetchBooksOperation alloc] initWithRequest:*(a1 + 32)];
  [*(a1 + 40) performOperation:v2 completion:*(a1 + 48)];
}

void sub_1000045A8(uint64_t a1)
{
  v2 = [[CBSFetchChaptersOperation alloc] initWithRequest:*(a1 + 32)];
  [*(a1 + 40) performOperation:v2 completion:*(a1 + 48)];
}

void sub_100005120(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 title];
  v5 = [a2 tableOfContentsMediaType];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@ has unsupported table of contents format: %{public}@", &v6, 0x16u);
}

void sub_10000522C(void *a1, void *a2)
{
  v3 = a1;
  v4[0] = 67109378;
  v4[1] = [a2 processIdentifier];
  v5 = 2114;
  v6 = @"com.apple.ClassroomKit.BooksService-access";
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Denying connection from (%d) as it lacks a valid entitlement (%{public}@).", v4, 0x12u);
}