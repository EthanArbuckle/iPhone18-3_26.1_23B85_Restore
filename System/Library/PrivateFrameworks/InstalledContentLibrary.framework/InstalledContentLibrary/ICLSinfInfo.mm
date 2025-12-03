@interface ICLSinfInfo
- (BOOL)isEqual:(id)equal;
- (ICLSinfInfo)initWithCoder:(id)coder;
- (ICLSinfInfo)initWithLegacySinfInfoDictionary:(id)dictionary;
- (NSDictionary)legacySinfInfoDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLSinfInfo

- (ICLSinfInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ICLSinfInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationDSID"];
    applicationDSID = v5->_applicationDSID;
    v5->_applicationDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"familyID"];
    familyID = v5->_familyID;
    v5->_familyID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloaderDSID"];
    downloaderDSID = v5->_downloaderDSID;
    v5->_downloaderDSID = v10;

    v5->_hasMIDBasedSINF = [coderCopy decodeBoolForKey:@"hasMIDBasedSINF"];
    v5->_isMissingRequiredSINF = [coderCopy decodeBoolForKey:@"isMissingRequiredSINF"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  applicationDSID = [(ICLSinfInfo *)self applicationDSID];
  [coderCopy encodeObject:applicationDSID forKey:@"applicationDSID"];

  familyID = [(ICLSinfInfo *)self familyID];
  [coderCopy encodeObject:familyID forKey:@"familyID"];

  downloaderDSID = [(ICLSinfInfo *)self downloaderDSID];
  [coderCopy encodeObject:downloaderDSID forKey:@"downloaderDSID"];

  [coderCopy encodeBool:-[ICLSinfInfo hasMIDBasedSINF](self forKey:{"hasMIDBasedSINF"), @"hasMIDBasedSINF"}];
  [coderCopy encodeBool:-[ICLSinfInfo isMissingRequiredSINF](self forKey:{"isMissingRequiredSINF"), @"isMissingRequiredSINF"}];
}

- (ICLSinfInfo)initWithLegacySinfInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(ICLSinfInfo *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ApplicationDSID"];
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
    v9 = [dictionaryCopy objectForKeyedSubscript:@"FamilyID"];
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
    v12 = [dictionaryCopy objectForKeyedSubscript:@"DownloaderDSID"];
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
    v15 = [dictionaryCopy objectForKeyedSubscript:@"HasMIDBasedSINF"];
    [(ICLSinfInfo *)v5 setHasMIDBasedSINF:MIBooleanValue(v15, 0)];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"MissingSINF"];
    [(ICLSinfInfo *)v5 setIsMissingRequiredSINF:MIBooleanValue(v16, 0)];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  applicationDSID = [(ICLSinfInfo *)self applicationDSID];
  [v4 setApplicationDSID:applicationDSID];

  familyID = [(ICLSinfInfo *)self familyID];
  [v4 setFamilyID:familyID];

  downloaderDSID = [(ICLSinfInfo *)self downloaderDSID];
  [v4 setDownloaderDSID:downloaderDSID];

  [v4 setHasMIDBasedSINF:{-[ICLSinfInfo hasMIDBasedSINF](self, "hasMIDBasedSINF")}];
  [v4 setIsMissingRequiredSINF:{-[ICLSinfInfo isMissingRequiredSINF](self, "isMissingRequiredSINF")}];
  return v4;
}

- (NSDictionary)legacySinfInfoDictionary
{
  v3 = objc_opt_new();
  applicationDSID = [(ICLSinfInfo *)self applicationDSID];
  if (applicationDSID)
  {
    [v3 setObject:applicationDSID forKeyedSubscript:@"ApplicationDSID"];
  }

  familyID = [(ICLSinfInfo *)self familyID];
  if (familyID)
  {
    [v3 setObject:familyID forKeyedSubscript:@"FamilyID"];
  }

  downloaderDSID = [(ICLSinfInfo *)self downloaderDSID];
  if (downloaderDSID)
  {
    [v3 setObject:downloaderDSID forKeyedSubscript:@"DownloaderDSID"];
  }

  hasMIDBasedSINF = [(ICLSinfInfo *)self hasMIDBasedSINF];
  v8 = MEMORY[0x1E695E110];
  v9 = MEMORY[0x1E695E118];
  if (hasMIDBasedSINF)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      applicationDSID = [(ICLSinfInfo *)self applicationDSID];
      applicationDSID2 = [(ICLSinfInfo *)v5 applicationDSID];
      v8 = MICompareObjects(applicationDSID, applicationDSID2);

      if (v8)
      {
        familyID = [(ICLSinfInfo *)self familyID];
        familyID2 = [(ICLSinfInfo *)v5 familyID];
        v11 = MICompareObjects(familyID, familyID2);

        if (v11)
        {
          downloaderDSID = [(ICLSinfInfo *)self downloaderDSID];
          downloaderDSID2 = [(ICLSinfInfo *)v5 downloaderDSID];
          v14 = MICompareObjects(downloaderDSID, downloaderDSID2);

          if (v14)
          {
            hasMIDBasedSINF = [(ICLSinfInfo *)self hasMIDBasedSINF];
            if (hasMIDBasedSINF == [(ICLSinfInfo *)v5 hasMIDBasedSINF])
            {
              isMissingRequiredSINF = [(ICLSinfInfo *)self isMissingRequiredSINF];
              if (isMissingRequiredSINF == [(ICLSinfInfo *)v5 isMissingRequiredSINF])
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
  hasMIDBasedSINF = [(ICLSinfInfo *)self hasMIDBasedSINF];
  isMissingRequiredSINF = [(ICLSinfInfo *)self isMissingRequiredSINF];
  v5 = 2;
  if (!isMissingRequiredSINF)
  {
    v5 = 0;
  }

  v6 = v5 | hasMIDBasedSINF;
  applicationDSID = [(ICLSinfInfo *)self applicationDSID];
  v8 = [applicationDSID hash];

  familyID = [(ICLSinfInfo *)self familyID];
  v10 = v8 ^ [familyID hash];

  downloaderDSID = [(ICLSinfInfo *)self downloaderDSID];
  v12 = v10 ^ [downloaderDSID hash];

  return v12 ^ v6;
}

@end