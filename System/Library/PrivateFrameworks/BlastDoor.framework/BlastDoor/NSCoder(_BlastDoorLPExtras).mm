@interface NSCoder(_BlastDoorLPExtras)
- (_BlastDoorLPPlatformColor)_bd_lp_strictlyDecodeColorForKey:()_BlastDoorLPExtras;
- (id)_bd_lp_strictlyDecodeArrayOfLPARAssetsForKey:()_BlastDoorLPExtras;
- (id)_bd_lp_strictlyDecodeArrayOfLPImagesForKey:()_BlastDoorLPExtras;
- (id)_bd_lp_strictlyDecodeArrayOfObjectsOfClass:()_BlastDoorLPExtras forKey:;
- (id)_bd_lp_strictlyDecodeArrayOfObjectsOfClasses:()_BlastDoorLPExtras forKey:;
- (id)_bd_lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass:()_BlastDoorLPExtras andObjectsOfClass:forKey:;
- (id)_bd_lp_strictlyDecodeLPARAssetForKey:()_BlastDoorLPExtras;
- (id)_bd_lp_strictlyDecodeLPImageForKey:()_BlastDoorLPExtras;
- (id)_bd_lp_strictlyDecodeLPVideoForKey:()_BlastDoorLPExtras;
- (id)_bd_lp_strictlyDecodeNSAttributedStringForKey:()_BlastDoorLPExtras;
- (id)_bd_lp_strictlyDecodeNSDataForKey:()_BlastDoorLPExtras;
- (id)_bd_lp_strictlyDecodeNSStringForKey:()_BlastDoorLPExtras;
- (id)_bd_lp_strictlyDecodeObjectOfClass:()_BlastDoorLPExtras forKey:;
- (id)_bd_lp_strictlyDecodeObjectOfClasses:()_BlastDoorLPExtras forKey:;
- (id)_bd_lp_strictlyDecodeTopLevelObjectOfClass:()_BlastDoorLPExtras forKey:error:;
- (id)_bd_lp_strictlyDecodeTopLevelObjectOfClasses:()_BlastDoorLPExtras forKey:error:;
- (void)_bd_lp_encodeArrayIfNotEmpty:()_BlastDoorLPExtras forKey:;
- (void)_bd_lp_encodeColorIfNotNil:()_BlastDoorLPExtras forKey:;
- (void)_bd_lp_encodeObjectIfNotNil:()_BlastDoorLPExtras forKey:;
- (void)_bd_lp_encodeURLIfNotNilOrLocalFile:()_BlastDoorLPExtras forKey:;
@end

@implementation NSCoder(_BlastDoorLPExtras)

- (id)_bd_lp_strictlyDecodeNSDataForKey:()_BlastDoorLPExtras
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [a1 _bd_lp_strictlyDecodeObjectOfClasses:v7 forKey:v5];

  return v8;
}

- (id)_bd_lp_strictlyDecodeNSStringForKey:()_BlastDoorLPExtras
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [a1 _bd_lp_strictlyDecodeObjectOfClasses:v7 forKey:v5];

  return v8;
}

- (id)_bd_lp_strictlyDecodeNSAttributedStringForKey:()_BlastDoorLPExtras
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [a1 _bd_lp_strictlyDecodeObjectOfClasses:v7 forKey:v5];

  return v8;
}

- (id)_bd_lp_strictlyDecodeLPARAssetForKey:()_BlastDoorLPExtras
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, NSClassFromString(&cfstr_Blastdoorlpara.isa), 0}];
  v8 = [a1 _bd_lp_strictlyDecodeObjectOfClasses:v7 forKey:v5];

  return v8;
}

- (id)_bd_lp_strictlyDecodeArrayOfLPARAssetsForKey:()_BlastDoorLPExtras
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, NSClassFromString(&cfstr_Blastdoorlpara.isa), 0}];
  v8 = [a1 _bd_lp_strictlyDecodeArrayOfObjectsOfClasses:v7 forKey:v5];

  return v8;
}

- (id)_bd_lp_strictlyDecodeLPImageForKey:()_BlastDoorLPExtras
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, NSClassFromString(&cfstr_Blastdoorlpima.isa), 0}];
  v8 = [a1 _bd_lp_strictlyDecodeObjectOfClasses:v7 forKey:v5];

  return v8;
}

- (id)_bd_lp_strictlyDecodeArrayOfLPImagesForKey:()_BlastDoorLPExtras
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, NSClassFromString(&cfstr_Blastdoorlpima.isa), 0}];
  v8 = [a1 _bd_lp_strictlyDecodeArrayOfObjectsOfClasses:v7 forKey:v5];

  return v8;
}

- (id)_bd_lp_strictlyDecodeLPVideoForKey:()_BlastDoorLPExtras
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, NSClassFromString(&cfstr_Blastdoorlpvid.isa), 0}];
  v8 = [a1 _bd_lp_strictlyDecodeObjectOfClasses:v7 forKey:v5];

  return v8;
}

- (id)_bd_lp_strictlyDecodeObjectOfClass:()_BlastDoorLPExtras forKey:
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = [v6 setWithObjects:{a3, objc_opt_class(), 0}];
  v9 = [a1 decodeObjectOfClasses:v8 forKey:v7];

  v10 = 0;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  return v10;
}

- (id)_bd_lp_strictlyDecodeObjectOfClasses:()_BlastDoorLPExtras forKey:
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 setByAddingObject:objc_opt_class()];
  v9 = [a1 decodeObjectOfClasses:v8 forKey:v7];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v11)
  {
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v11 = v9;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_bd_lp_strictlyDecodeTopLevelObjectOfClass:()_BlastDoorLPExtras forKey:error:
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a4;
  v10 = [v8 setWithObjects:{a3, objc_opt_class(), 0}];
  v11 = [a1 decodeTopLevelObjectOfClasses:v10 forKey:v9 error:a5];

  v12 = 0;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  return v12;
}

- (id)_bd_lp_strictlyDecodeTopLevelObjectOfClasses:()_BlastDoorLPExtras forKey:error:
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 setByAddingObject:objc_opt_class()];
  v11 = [a1 decodeTopLevelObjectOfClasses:v10 forKey:v9 error:a5];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v13)
  {
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v13 = v11;
          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_bd_lp_strictlyDecodeArrayOfObjectsOfClass:()_BlastDoorLPExtras forKey:
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{a3, v8, v9, objc_opt_class(), 0}];
  v11 = [a1 decodeObjectOfClasses:v10 forKey:v6];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v18 = v12;
  }

  else
  {
LABEL_13:
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_bd_lp_strictlyDecodeArrayOfObjectsOfClasses:()_BlastDoorLPExtras forKey:
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v12 = [v11 setByAddingObjectsFromSet:v6];
  v13 = [a1 decodeObjectOfClasses:v12 forKey:v7];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      v28 = v7;
      while (1)
      {
        v17 = 0;
LABEL_6:
        if (*v37 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v36 + 1) + 8 * v17);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v19 = v6;
        v20 = [v19 countByEnumeratingWithState:&v31 objects:v30 count:16];
        if (!v20)
        {
          break;
        }

        v21 = v20;
        v22 = *v32;
LABEL_10:
        v23 = 0;
        while (1)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v31 + 1) + 8 * v23);
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [v19 countByEnumeratingWithState:&v31 objects:v30 count:16];
            if (v21)
            {
              goto LABEL_10;
            }

            goto LABEL_21;
          }
        }

        if (++v17 != v15)
        {
          goto LABEL_6;
        }

        v15 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
        v7 = v28;
        if (!v15)
        {
          goto LABEL_19;
        }
      }

LABEL_21:

      v25 = 0;
      v7 = v28;
    }

    else
    {
LABEL_19:

      v25 = obj;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_bd_lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass:()_BlastDoorLPExtras andObjectsOfClass:forKey:
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{a3, a4, v10, v11, objc_opt_class(), 0}];
  v13 = [a1 decodeObjectOfClasses:v12 forKey:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __112__NSCoder__BlastDoorLPExtras___bd_lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass_andObjectsOfClass_forKey___block_invoke;
    v17[3] = &unk_278176640;
    v17[5] = a3;
    v17[6] = a4;
    v17[4] = &v18;
    [v13 enumerateKeysAndObjectsUsingBlock:v17];
    if (v19[3])
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_bd_lp_encodeObjectIfNotNil:()_BlastDoorLPExtras forKey:
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [NSCoder(_BlastDoorLPExtras) _bd_lp_encodeObjectIfNotNil:forKey:];
    }

    [a1 encodeObject:v7 forKey:v6];
  }
}

- (void)_bd_lp_encodeArrayIfNotEmpty:()_BlastDoorLPExtras forKey:
{
  v7 = a3;
  v6 = a4;
  if ([v7 count])
  {
    [a1 encodeObject:v7 forKey:v6];
  }
}

- (void)_bd_lp_encodeURLIfNotNilOrLocalFile:()_BlastDoorLPExtras forKey:
{
  v7 = a3;
  v6 = a4;
  if (v7 && ([v7 isFileURL] & 1) == 0)
  {
    [a1 encodeObject:v7 forKey:v6];
  }
}

- (void)_bd_lp_encodeColorIfNotNil:()_BlastDoorLPExtras forKey:
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    [a1 encodeBool:1 forKey:v6];
    [v7 r];
    v9 = v8;
    v10 = [v6 stringByAppendingString:@".red"];
    [a1 encodeDouble:v10 forKey:v9];

    [v7 g];
    v12 = v11;
    v13 = [v6 stringByAppendingString:@".green"];
    [a1 encodeDouble:v13 forKey:v12];

    [v7 b];
    v15 = v14;
    v16 = [v6 stringByAppendingString:@".blue"];
    [a1 encodeDouble:v16 forKey:v15];

    [v7 a];
    v18 = v17;

    v19 = [v6 stringByAppendingString:@".alpha"];

    [a1 encodeDouble:v19 forKey:v18];
  }
}

- (_BlastDoorLPPlatformColor)_bd_lp_strictlyDecodeColorForKey:()_BlastDoorLPExtras
{
  v4 = a3;
  if ([a1 decodeBoolForKey:v4])
  {
    v5 = [v4 stringByAppendingString:@".red"];
    [a1 decodeDoubleForKey:v5];
    v7 = v6;

    v8 = [v4 stringByAppendingString:@".green"];
    [a1 decodeDoubleForKey:v8];
    v10 = v9;

    v11 = [v4 stringByAppendingString:@".blue"];
    [a1 decodeDoubleForKey:v11];
    v13 = v12;

    v14 = [v4 stringByAppendingString:@".alpha"];
    [a1 decodeDoubleForKey:v14];
    v16 = v15;

    v17 = objc_alloc_init(_BlastDoorLPPlatformColor);
    [(_BlastDoorLPPlatformColor *)v17 setR:v7];
    [(_BlastDoorLPPlatformColor *)v17 setG:v10];
    [(_BlastDoorLPPlatformColor *)v17 setB:v13];
    [(_BlastDoorLPPlatformColor *)v17 setA:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end