void *validPathsForPaths(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v14 = 0;
        if (([v2 fileExistsAtPath:v9 isDirectory:&v14] & 1) == 0)
        {
          if (!v6)
          {
            v6 = [v3 mutableCopy];
          }

          [v6 removeObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v3;
  }

  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

id DAAccountDescriptionFromHostname(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"."];
  if ([v2 count] == 1 || objc_msgSend(v2, "count") != 2)
  {
    v4 = v1;
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 capitalizedString];
  }

  return v4;
}