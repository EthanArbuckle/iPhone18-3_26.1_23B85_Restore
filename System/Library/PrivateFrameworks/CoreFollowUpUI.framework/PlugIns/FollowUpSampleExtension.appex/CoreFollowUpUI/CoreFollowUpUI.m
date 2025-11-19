void sub_100000CAC(uint64_t a1, void *a2)
{
  v3 = a2;
  sleep(1u);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 uniqueIdentifier];
        if ([v10 isEqual:@"test"])
        {
          v11 = [v9 actions];
          v12 = [v11 count];

          if (!v12)
          {
            [v9 setTitle:@"Zero Action After"];
            v13 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT"];
            v14 = [FLFollowUpAction actionWithLabel:@"ADDED LATER" url:v13];
            v20 = v14;
            v15 = [NSArray arrayWithObjects:&v20 count:1];
            [v9 setActions:v15];

            [*(a1 + 32) postFollowUpItem:v9 error:0];
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 40) + 16))();
}