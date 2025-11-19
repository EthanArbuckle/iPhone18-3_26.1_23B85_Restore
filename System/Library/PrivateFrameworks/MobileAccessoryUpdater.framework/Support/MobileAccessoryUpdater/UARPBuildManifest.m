@interface UARPBuildManifest
- (BOOL)isChipEntryKey:(id)a3;
- (BOOL)parseBuildManifest:(id)a3;
- (UARPBuildManifest)initWithPlist:(id)a3;
- (id)chipNameForKey:(id)a3;
- (id)createBundleIdentity:(id)a3;
- (id)createChipEntryFromChipEntryDict:(id)a3 chipName:(id)a4;
- (id)createManifestEntryForKey:(id)a3 dictionary:(id)a4;
- (id)createNumberTupleForKey:(id)a3 object:(id)a4;
- (id)generateChipEntries:(id)a3;
- (id)numberForObject:(id)a3;
@end

@implementation UARPBuildManifest

- (UARPBuildManifest)initWithPlist:(id)a3
{
  v7.receiver = self;
  v7.super_class = UARPBuildManifest;
  v4 = [(UARPBuildManifest *)&v7 init];
  if (!v4 || (v5 = [NSDictionary dictionaryWithContentsOfURL:a3]) == 0 || ![(UARPBuildManifest *)v4 parseBuildManifest:v5])
  {

    return 0;
  }

  return v4;
}

- (BOOL)isChipEntryKey:(id)a3
{
  if ([a3 hasSuffix:@"BoardID"])
  {
    return 1;
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v5 == 3)
    {
      break;
    }

    v7 = [a3 hasSuffix:off_100081CA0[v5 + 1]];
    v5 = v6 + 1;
  }

  while (!v7);
  return v6 < 3;
}

- (id)chipNameForKey:(id)a3
{
  v3 = [a3 componentsSeparatedByCharactersInSet:{+[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @", ")}];
  if ([v3 count] == 1)
  {
    return @"Ap";
  }

  return [v3 firstObject];
}

- (id)numberForObject:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_10004F3DC(a3, &v5);
    return v5;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }
}

- (id)createNumberTupleForKey:(id)a3 object:(id)a4
{
  result = [(UARPBuildManifest *)self numberForObject:a4];
  if (result)
  {
    v6 = result;
    v7 = [UARPPersonalizationNumberTuple32 alloc];
    v8 = [v6 unsignedIntValue];

    return [(UARPPersonalizationNumberTuple32 *)v7 initWithKey:a3 value:v8];
  }

  return result;
}

- (BOOL)parseBuildManifest:(id)a3
{
  v5 = +[NSMutableArray array];
  v6 = [a3 objectForKeyedSubscript:@"BuildIdentities"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_10002E130();
    v7 = [v6 countByEnumeratingWithState:0 objects:? count:?];
    if (!v7)
    {
LABEL_11:
      self->_bundleIdentities = [[NSArray alloc] initWithArray:v5];
      LOBYTE(v12) = 1;
      return v12;
    }

    v8 = v7;
    v9 = MEMORY[0];
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (MEMORY[0] != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v12 = [sub_10002E124() createBundleIdentity:?];
      if (!v12)
      {
        return v12;
      }

      v13 = v12;
      [v5 addObject:v12];

      if (v8 == ++v10)
      {
        sub_10002E130();
        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }
  }

  LOBYTE(v12) = 0;
  return v12;
}

- (id)createBundleIdentity:(id)a3
{
  v34 = +[NSMutableDictionary dictionary];
  v5 = [a3 countByEnumeratingWithState:sub_10002E0F4() objects:? count:?];
  v6 = &MGCopyAnswer_ptr;
  if (v5)
  {
    v7 = v5;
    v8 = *v40;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v40 != v8)
      {
        objc_enumerationMutation(a3);
      }

      v10 = *(v39 + 8 * v9);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if ([sub_10002E124() isChipEntryKey:?])
      {
        v11 = [sub_10002E124() chipNameForKey:?];
        v12 = [v34 objectForKeyedSubscript:v11];
        if (!v12)
        {
          v12 = +[NSMutableDictionary dictionary];
          [v34 setObject:v12 forKeyedSubscript:v11];
        }

        [v12 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", v10), v10}];
      }

      if (v7 == ++v9)
      {
        v7 = [a3 countByEnumeratingWithState:v38 objects:v42 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v13 = [a3 objectForKeyedSubscript:@"Manifest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = a3;
      v14 = [v13 countByEnumeratingWithState:sub_10002E10C() objects:? count:?];
      if (v14)
      {
        v15 = v14;
        v16 = *v37;
        v17 = @"Info";
        v33 = self;
LABEL_16:
        v18 = 0;
        while (1)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(v36 + 8 * v18);
          v20 = v6[352];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          result = [objc_msgSend(v13 objectForKeyedSubscript:{v19), "objectForKeyedSubscript:", v17}];
          if (!result)
          {
            return result;
          }

          if ([objc_msgSend(result objectForKeyedSubscript:{@"Personalize", "BOOLValue"}])
          {
            v22 = v6;
            result = [v34 objectForKeyedSubscript:{-[UARPBuildManifest chipNameForKey:](self, "chipNameForKey:", v19)}];
            if (!result)
            {
              return result;
            }

            v23 = result;
            v24 = v17;
            v25 = [result objectForKeyedSubscript:@"Manifest"];
            if (!v25)
            {
              v25 = +[NSMutableDictionary dictionary];
              [v23 setObject:v25 forKeyedSubscript:@"Manifest"];
            }

            [v25 setObject:objc_msgSend(v13 forKeyedSubscript:{"objectForKeyedSubscript:", v19), v19}];
            v6 = v22;
            v17 = v24;
            self = v33;
          }

          if (v15 == ++v18)
          {
            v15 = [v13 countByEnumeratingWithState:v35 objects:v41 count:16];
            if (v15)
            {
              goto LABEL_16;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        v26 = [(UARPBuildManifest *)self generateChipEntries:v34];
        result = [v26 count];
        if (!result)
        {
          return result;
        }

        v27 = [v32 objectForKeyedSubscript:@"Info"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [v27 objectForKeyedSubscript:@"BuildTrain"];
          v29 = v6[352];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = [v27 objectForKeyedSubscript:@"BuildNumber"];
            v31 = v6[352];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              return -[UARPBundleIdentity initWithBuild:chipEntries:]([UARPBundleIdentity alloc], "initWithBuild:chipEntries:", [v6[352] stringWithFormat:@"%@%@", v28, v30], v26);
            }
          }
        }
      }
    }
  }

  return 0;
}

- (id)createManifestEntryForKey:(id)a3 dictionary:(id)a4
{
  result = [a4 objectForKeyedSubscript:@"Digest"];
  if (result)
  {
    v7 = result;
    v8 = [objc_msgSend(a4 objectForKeyedSubscript:{@"Trusted", "BOOLValue"}];
    v9 = [UARPBundleIdentityManifestEntry alloc];

    return [(UARPBundleIdentityManifestEntry *)v9 initWithName:a3 digest:v7 trusted:v8];
  }

  return result;
}

- (id)createChipEntryFromChipEntryDict:(id)a3 chipName:(id)a4
{
  v7 = +[NSMutableArray array];
  v34 = [a3 countByEnumeratingWithState:sub_10002E0F4() objects:? count:?];
  if (!v34)
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_41;
  }

  v29 = a4;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v33 = *v40;
  do
  {
    for (i = 0; i != v34; i = i + 1)
    {
      if (*v40 != v33)
      {
        objc_enumerationMutation(a3);
      }

      v13 = *(v39 + 8 * i);
      v14 = [a3 objectForKeyedSubscript:{v13, v29}];
      if ([v13 hasSuffix:@"BoardID"])
      {
        if (v11)
        {
          goto LABEL_41;
        }

        v11 = sub_10002E0D8();
        if (!v11)
        {
          goto LABEL_41;
        }
      }

      else if ([v13 hasSuffix:@"ChipID"])
      {
        if (v10)
        {
          goto LABEL_41;
        }

        v10 = sub_10002E0D8();
        if (!v10)
        {
          goto LABEL_41;
        }
      }

      else if ([v13 hasSuffix:@"ManifestEpoch"])
      {
        if (v9)
        {
          goto LABEL_41;
        }

        v9 = sub_10002E0D8();
        if (!v9)
        {
          goto LABEL_41;
        }
      }

      else if ([v13 hasSuffix:@"SecurityDomain"])
      {
        if (v8)
        {
          goto LABEL_41;
        }

        v8 = sub_10002E0D8();
        if (!v8)
        {
          goto LABEL_41;
        }
      }

      else if ([v13 isEqual:@"Manifest"])
      {
        sub_10002E10C();
        v19 = sub_10002E13C(v15, v16, v17, v18);
        if (v19)
        {
          v20 = v19;
          v30 = v10;
          v31 = v9;
          v32 = v8;
          v21 = *v37;
          while (2)
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v37 != v21)
              {
                objc_enumerationMutation(v14);
              }

              v23 = -[UARPBuildManifest createManifestEntryForKey:dictionary:](self, "createManifestEntryForKey:dictionary:", *(v36 + 8 * j), [v14 objectForKeyedSubscript:*(v36 + 8 * j)]);
              if (!v23)
              {
                v27 = 0;
                v9 = v31;
                v8 = v32;
                v10 = v30;
                goto LABEL_42;
              }

              v24 = v23;
              [v7 addObject:v23];
            }

            v20 = sub_10002E13C(v25, v26, v35, v41);
            if (v20)
            {
              continue;
            }

            break;
          }

          v9 = v31;
          v8 = v32;
          v10 = v30;
        }
      }
    }

    v34 = [a3 countByEnumeratingWithState:v38 objects:v42 count:16];
  }

  while (v34);
  v27 = 0;
  if (v11 && v10 && v8)
  {
    if ([v7 count])
    {
      v27 = [[UARPBundleIdentityChipEntry alloc] initWithChipName:v29 boardID:v11 chipID:v10 securityDomain:v8 manifest:v7];
      [(UARPBundleIdentityChipEntry *)v27 setManifestEpoch:v9];
      goto LABEL_42;
    }

LABEL_41:
    v27 = 0;
  }

LABEL_42:

  return v27;
}

- (id)generateChipEntries:(id)a3
{
  v5 = +[NSMutableArray array];
  v20 = 0;
  sub_10002E130();
  v10 = sub_10002E13C(v6, v7, v8, v9);
  if (!v10)
  {
    return [NSArray arrayWithArray:v5, v20];
  }

  v11 = v10;
  v12 = MEMORY[0];
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (MEMORY[0] != v12)
    {
      objc_enumerationMutation(a3);
    }

    result = -[UARPBuildManifest createChipEntryFromChipEntryDict:chipName:](self, "createChipEntryFromChipEntryDict:chipName:", [sub_10002E124() objectForKeyedSubscript:v20], *(8 * v13));
    if (!result)
    {
      return result;
    }

    v15 = result;
    [v5 addObject:result];

    if (v11 == ++v13)
    {
      sub_10002E130();
      v11 = sub_10002E13C(v16, v17, v18, v19);
      if (v11)
      {
        goto LABEL_3;
      }

      return [NSArray arrayWithArray:v5, v20];
    }
  }
}

@end