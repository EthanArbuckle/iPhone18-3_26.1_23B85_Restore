int64_t sub_1000012C4(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 path];
  v6 = [NSArray arrayWithObject:NSURLCreationDateKey];
  v7 = [v5 resourceValuesForKeys:v6 error:0];
  v8 = [v7 objectForKey:NSURLCreationDateKey];

  v9 = [v4 path];

  v10 = [NSArray arrayWithObject:NSURLCreationDateKey];
  v11 = [v9 resourceValuesForKeys:v10 error:0];
  v12 = [v11 objectForKey:NSURLCreationDateKey];

  v13 = [v12 compare:v8];
  return v13;
}