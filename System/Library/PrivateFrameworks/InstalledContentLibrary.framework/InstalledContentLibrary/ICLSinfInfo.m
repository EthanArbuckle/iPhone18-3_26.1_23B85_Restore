@interface ICLSinfInfo
- (BOOL)isEqual:(id)a3;
- (ICLSinfInfo)initWithCoder:(id)a3;
- (ICLSinfInfo)initWithLegacySinfInfoDictionary:(id)a3;
- (NSDictionary)legacySinfInfoDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLSinfInfo

- (ICLSinfInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICLSinfInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationDSID"];
    applicationDSID = v5->_applicationDSID;
    v5->_applicationDSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"familyID"];
    familyID = v5->_familyID;
    v5->_familyID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloaderDSID"];
    downloaderDSID = v5->_downloaderDSID;
    v5->_downloaderDSID = v10;

    v5->_hasMIDBasedSINF = [v4 decodeBoolForKey:@"hasMIDBasedSINF"];
    v5->_isMissingRequiredSINF = [v4 decodeBoolForKey:@"isMissingRequiredSINF"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(ICLSinfInfo *)self applicationDSID];
  [v7 encodeObject:v4 forKey:@"applicationDSID"];

  v5 = [(ICLSinfInfo *)self familyID];
  [v7 encodeObject:v5 forKey:@"familyID"];

  v6 = [(ICLSinfInfo *)self downloaderDSID];
  [v7 encodeObject:v6 forKey:@"downloaderDSID"];

  [v7 encodeBool:-[ICLSinfInfo hasMIDBasedSINF](self forKey:{"hasMIDBasedSINF"), @"hasMIDBasedSINF"}];
  [v7 encodeBool:-[ICLSinfInfo isMissingRequiredSINF](self forKey:{"isMissingRequiredSINF"), @"isMissingRequiredSINF"}];
}

- (ICLSinfInfo)initWithLegacySinfInfoDictionary:(id)a3
{
  v4 = a3;
  v5 = [(ICLSinfInfo *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ApplicationDSID"];
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    [(ICLSinfInfo *)v5 setApplicationDSID:v8];
    v9 = [v4 objectForKeyedSubscript:@"FamilyID"];
    objc_opt_class();
    v10 = v9;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    [(ICLSinfInfo *)v5 setFamilyID:v11];
    v12 = [v4 objectForKeyedSubscript:@"DownloaderDSID"];
    objc_opt_class();
    v13 = v12;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    [(ICLSinfInfo *)v5 setDownloaderDSID:v14];
    v15 = [v4 objectForKeyedSubscript:@"HasMIDBasedSINF"];
    [(ICLSinfInfo *)v5 setHasMIDBasedSINF:MIBooleanValue(v15, 0)];

    v16 = [v4 objectForKeyedSubscript:@"MissingSINF"];
    [(ICLSinfInfo *)v5 setIsMissingRequiredSINF:MIBooleanValue(v16, 0)];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(ICLSinfInfo *)self applicationDSID];
  [v4 setApplicationDSID:v5];

  v6 = [(ICLSinfInfo *)self familyID];
  [v4 setFamilyID:v6];

  v7 = [(ICLSinfInfo *)self downloaderDSID];
  [v4 setDownloaderDSID:v7];

  [v4 setHasMIDBasedSINF:{-[ICLSinfInfo hasMIDBasedSINF](self, "hasMIDBasedSINF")}];
  [v4 setIsMissingRequiredSINF:{-[ICLSinfInfo isMissingRequiredSINF](self, "isMissingRequiredSINF")}];
  return v4;
}

- (NSDictionary)legacySinfInfoDictionary
{
  v3 = objc_opt_new();
  v4 = [(ICLSinfInfo *)self applicationDSID];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"ApplicationDSID"];
  }

  v5 = [(ICLSinfInfo *)self familyID];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"FamilyID"];
  }

  v6 = [(ICLSinfInfo *)self downloaderDSID];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"DownloaderDSID"];
  }

  v7 = [(ICLSinfInfo *)self hasMIDBasedSINF];
  v8 = MEMORY[0x1E695E110];
  v9 = MEMORY[0x1E695E118];
  if (v7)
  {
    if ([(ICLSinfInfo *)self hasMIDBasedSINF])
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    [v3 setObject:v10 forKeyedSubscript:@"HasMIDBasedSINF"];
  }

  if ([(ICLSinfInfo *)self isMissingRequiredSINF])
  {
    if ([(ICLSinfInfo *)self isMissingRequiredSINF])
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    [v3 setObject:v11 forKeyedSubscript:@"MissingSINF"];
  }

  v12 = [v3 copy];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ICLSinfInfo *)self applicationDSID];
      v7 = [(ICLSinfInfo *)v5 applicationDSID];
      v8 = MICompareObjects(v6, v7);

      if (v8)
      {
        v9 = [(ICLSinfInfo *)self familyID];
        v10 = [(ICLSinfInfo *)v5 familyID];
        v11 = MICompareObjects(v9, v10);

        if (v11)
        {
          v12 = [(ICLSinfInfo *)self downloaderDSID];
          v13 = [(ICLSinfInfo *)v5 downloaderDSID];
          v14 = MICompareObjects(v12, v13);

          if (v14)
          {
            v15 = [(ICLSinfInfo *)self hasMIDBasedSINF];
            if (v15 == [(ICLSinfInfo *)v5 hasMIDBasedSINF])
            {
              v18 = [(ICLSinfInfo *)self isMissingRequiredSINF];
              if (v18 == [(ICLSinfInfo *)v5 isMissingRequiredSINF])
              {
                v16 = 1;
                goto LABEL_22;
              }

              if (gLogHandle && *(gLogHandle + 44) < 3)
              {
LABEL_21:
                v16 = 0;
LABEL_22:

                goto LABEL_23;
              }
            }

            else if (gLogHandle && *(gLogHandle + 44) < 3)
            {
              goto LABEL_21;
            }
          }

          else if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_21;
          }
        }

        else if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_21;
        }
      }

      else if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_21;
      }

      MOLogWrite();
      goto LABEL_21;
    }

    v16 = 0;
  }

LABEL_23:

  return v16;
}

- (unint64_t)hash
{
  v3 = [(ICLSinfInfo *)self hasMIDBasedSINF];
  v4 = [(ICLSinfInfo *)self isMissingRequiredSINF];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  v7 = [(ICLSinfInfo *)self applicationDSID];
  v8 = [v7 hash];

  v9 = [(ICLSinfInfo *)self familyID];
  v10 = v8 ^ [v9 hash];

  v11 = [(ICLSinfInfo *)self downloaderDSID];
  v12 = v10 ^ [v11 hash];

  return v12 ^ v6;
}

@end