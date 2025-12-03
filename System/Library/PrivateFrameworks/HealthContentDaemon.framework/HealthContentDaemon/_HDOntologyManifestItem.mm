@interface _HDOntologyManifestItem
+ (id)manifestItemFromLine:(id)line error:(id *)error;
+ (uint64_t)_scanForInteger:(void *)integer string:(void *)string label:(uint64_t)label error:;
- (_HDOntologyManifestItem)init;
- (void)initWithIdentifier:(void *)identifier schemaType:(uint64_t)type schemaVersion:(uint64_t)version version:(void *)a6 region:(void *)region locale:(void *)locale URL:(void *)l checksum:(uint64_t)self0 size:;
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

+ (id)manifestItemFromLine:(id)line error:(id *)error
{
  lineCopy = line;
  v7 = [lineCopy componentsSeparatedByString:{@", "}];
  if ([v7 count] == 9)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v26 = 0;
    v9 = [v7 objectAtIndexedSubscript:1];
    v10 = [(_HDOntologyManifestItem *)self _scanForInteger:v9 string:@"version" label:error error:?];

    v11 = 0;
    if (v10)
    {
      v12 = [v7 objectAtIndexedSubscript:2];
      v25 = 0;
      v13 = [v7 objectAtIndexedSubscript:3];
      v14 = [(_HDOntologyManifestItem *)self _scanForInteger:v13 string:@"schemaVersion" label:error error:?];

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
        v18 = [(_HDOntologyManifestItem *)self _scanForInteger:v17 string:@"size" label:error error:?];

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
            [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Invalid URL string '%@'", v19}];
            v11 = 0;
          }
        }
      }
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"line '%@' has %ld elements, but expected 9", lineCopy, objc_msgSend(v7, "count")}];
    v11 = 0;
  }

  return v11;
}

+ (uint64_t)_scanForInteger:(void *)integer string:(void *)string label:(uint64_t)label error:
{
  integerCopy = integer;
  stringCopy = string;
  objc_opt_self();
  v10 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:integerCopy];
  v11 = [v10 scanInteger:a2];
  if ((v11 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:label code:3 format:{@"%@ '%@' is not a valid integer", stringCopy, integerCopy}];
  }

  return v11;
}

- (void)initWithIdentifier:(void *)identifier schemaType:(uint64_t)type schemaVersion:(uint64_t)version version:(void *)a6 region:(void *)region locale:(void *)locale URL:(void *)l checksum:(uint64_t)self0 size:
{
  v17 = a2;
  identifierCopy = identifier;
  v19 = a6;
  regionCopy = region;
  localeCopy = locale;
  lCopy = l;
  if (self)
  {
    v36.receiver = self;
    v36.super_class = _HDOntologyManifestItem;
    self = objc_msgSendSuper2(&v36, sel_init);
    if (self)
    {
      v23 = [v17 copy];
      v24 = self[1];
      self[1] = v23;

      v25 = [identifierCopy copy];
      v26 = self[2];
      self[2] = v25;

      self[3] = type;
      self[4] = version;
      v27 = [v19 copy];
      v28 = self[5];
      self[5] = v27;

      v29 = [regionCopy copy];
      v30 = self[6];
      self[6] = v29;

      v31 = [localeCopy copy];
      v32 = self[7];
      self[7] = v31;

      v33 = [lCopy copy];
      v34 = self[8];
      self[8] = v33;

      self[9] = checksum;
    }
  }

  return self;
}

@end