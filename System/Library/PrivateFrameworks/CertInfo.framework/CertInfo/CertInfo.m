__CFString *_stringValueForPropertyDictionary(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 objectForKey:*MEMORY[0x277CDC508]];
  v3 = [v1 objectForKey:*MEMORY[0x277CDC510]];
  if ([v2 isEqualToString:*MEMORY[0x277CDC520]])
  {
    v4 = [MEMORY[0x277CCA968] localizedStringFromDate:v3 dateStyle:1 timeStyle:1];
LABEL_3:
    v5 = v4;
    goto LABEL_17;
  }

  if (![v2 isEqualToString:*MEMORY[0x277CDC518]])
  {
    if ([v2 isEqualToString:*MEMORY[0x277CDC538]])
    {
      v4 = [v3 absoluteString];
    }

    else
    {
      v4 = v3;
    }

    goto LABEL_3;
  }

  v6 = v3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  v9 = v8;
  v10 = (3 * v8);
  if (v10 < 0x801)
  {
    v11 = v17;
    goto LABEL_11;
  }

  v11 = malloc_type_malloc((3 * v8), 0x100004077774924uLL);
  if (v11)
  {
LABEL_11:
    if (v9)
    {
      v12 = 0;
      do
      {
        v13 = &v11[v12];
        *v13 = a0123456789abcd[*v7 >> 4];
        v14 = *v7++;
        v13[1] = a0123456789abcd[v14 & 0xF];
        v12 += 3;
        v13[2] = 32;
      }

      while (v12 < v10);
    }

    v5 = CFStringCreateWithBytes(0, v11, v10, 0x600u, 0);
    if (v11 != v17)
    {
      free(v11);
    }

    goto LABEL_16;
  }

  v5 = 0;
LABEL_16:

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];

  return v5;
}