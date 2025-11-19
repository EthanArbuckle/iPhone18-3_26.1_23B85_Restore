@interface _HDOntologyManifestItem
+ (id)manifestItemFromLine:(id)a3 error:(id *)a4;
+ (uint64_t)_scanForInteger:(void *)a3 string:(void *)a4 label:(uint64_t)a5 error:;
- (_HDOntologyManifestItem)init;
- (void)initWithIdentifier:(void *)a3 schemaType:(uint64_t)a4 schemaVersion:(uint64_t)a5 version:(void *)a6 region:(void *)a7 locale:(void *)a8 URL:(void *)a9 checksum:(uint64_t)a10 size:;
@end

@implementation _HDOntologyManifestItem

- (_HDOntologyManifestItem)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)manifestItemFromLine:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 componentsSeparatedByString:{@", "}];
  if ([v7 count] == 9)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v26 = 0;
    v9 = [v7 objectAtIndexedSubscript:1];
    v10 = [(_HDOntologyManifestItem *)a1 _scanForInteger:v9 string:@"version" label:a4 error:?];

    v11 = 0;
    if (v10)
    {
      v12 = [v7 objectAtIndexedSubscript:2];
      v25 = 0;
      v13 = [v7 objectAtIndexedSubscript:3];
      v14 = [(_HDOntologyManifestItem *)a1 _scanForInteger:v13 string:@"schemaVersion" label:a4 error:?];

      v11 = 0;
      if (v14)
      {
        v15 = [v7 objectAtIndexedSubscript:4];
        v16 = [v7 objectAtIndexedSubscript:5];
        if ([&stru_28636E7C8 isEqualToString:v16])
        {

          v16 = 0;
        }

        v24 = 0;
        v17 = [v7 objectAtIndexedSubscript:6];
        v18 = [(_HDOntologyManifestItem *)a1 _scanForInteger:v17 string:@"size" label:a4 error:?];

        v11 = 0;
        if (v18)
        {
          v19 = [v7 objectAtIndexedSubscript:7];
          v20 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v19];
          if (v20)
          {
            v22 = [v7 objectAtIndexedSubscript:8];
            v23 = [_HDOntologyManifestItem alloc];
            v11 = [(_HDOntologyManifestItem *)v23 initWithIdentifier:v8 schemaType:v12 schemaVersion:v25 version:v26 region:v15 locale:v16 URL:v20 checksum:v22 size:v24];
          }

          else
          {
            [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"Invalid URL string '%@'", v19}];
            v11 = 0;
          }
        }
      }
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"line '%@' has %ld elements, but expected 9", v6, objc_msgSend(v7, "count")}];
    v11 = 0;
  }

  return v11;
}

+ (uint64_t)_scanForInteger:(void *)a3 string:(void *)a4 label:(uint64_t)a5 error:
{
  v8 = a3;
  v9 = a4;
  objc_opt_self();
  v10 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v8];
  v11 = [v10 scanInteger:a2];
  if ((v11 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:{@"%@ '%@' is not a valid integer", v9, v8}];
  }

  return v11;
}

- (void)initWithIdentifier:(void *)a3 schemaType:(uint64_t)a4 schemaVersion:(uint64_t)a5 version:(void *)a6 region:(void *)a7 locale:(void *)a8 URL:(void *)a9 checksum:(uint64_t)a10 size:
{
  v17 = a2;
  v18 = a3;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (a1)
  {
    v36.receiver = a1;
    v36.super_class = _HDOntologyManifestItem;
    a1 = objc_msgSendSuper2(&v36, sel_init);
    if (a1)
    {
      v23 = [v17 copy];
      v24 = a1[1];
      a1[1] = v23;

      v25 = [v18 copy];
      v26 = a1[2];
      a1[2] = v25;

      a1[3] = a4;
      a1[4] = a5;
      v27 = [v19 copy];
      v28 = a1[5];
      a1[5] = v27;

      v29 = [v20 copy];
      v30 = a1[6];
      a1[6] = v29;

      v31 = [v21 copy];
      v32 = a1[7];
      a1[7] = v31;

      v33 = [v22 copy];
      v34 = a1[8];
      a1[8] = v33;

      a1[9] = a10;
    }
  }

  return a1;
}

@end