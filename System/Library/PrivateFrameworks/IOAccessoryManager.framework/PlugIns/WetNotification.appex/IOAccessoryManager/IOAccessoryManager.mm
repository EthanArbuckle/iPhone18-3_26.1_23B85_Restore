id safeBoolValue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 objectForKeyedSubscript:v4];
    if (v7)
    {
      v8 = [v3 objectForKeyedSubscript:v5];
      v6 = [v8 BOOLValue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id safeLocalizedString(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = [a1 localizedStringForKey:a2 value:v5 table:@"WetNotification"];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}