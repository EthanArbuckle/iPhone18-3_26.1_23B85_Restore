id NonEmptyOrNilString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id NonEmptyOrNilArray(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id GetURLParameters(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = [a1 query];
  v2 = [v1 componentsSeparatedByString:@"&"];

  if (v2 && [v2 count])
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v5)
    {
LABEL_15:

      goto LABEL_17;
    }

    v6 = v5;
    v15 = v2;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v10 count] == 2)
        {
          v11 = [v10 objectAtIndexedSubscript:1];
          v12 = [v10 objectAtIndexedSubscript:0];
          [v3 setObject:v11 forKeyedSubscript:v12];
        }

        else
        {
          v7 = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);

    if (v7)
    {
      v4 = v3;
      v3 = 0;
      v2 = v15;
      goto LABEL_15;
    }

    v2 = v15;
  }

  else
  {
    v3 = 0;
  }

LABEL_17:

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}