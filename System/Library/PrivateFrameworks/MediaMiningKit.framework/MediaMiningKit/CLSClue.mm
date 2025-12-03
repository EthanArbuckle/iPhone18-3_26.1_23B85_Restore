@interface CLSClue
+ (id)_clueWithValue:(id)value forKey:(id)key;
+ (id)_clueWithValue:(id)value forKey:(id)key confidence:(double)confidence relevance:(double)relevance;
- (BOOL)isEqual:(id)equal;
- (CLSClue)init;
- (NSString)informantIdentifier;
- (NSString)profileIdentifier;
- (double)doubleValue;
- (id)description;
- (id)stringValue;
- (int64_t)compare:(id)compare;
- (int64_t)compareScore:(id)score;
- (int64_t)integerValue;
- (unint64_t)enumValue;
- (unint64_t)hash;
- (unint64_t)valueHash;
- (void)_incrementVersionCount;
@end

@implementation CLSClue

- (int64_t)compareScore:(id)score
{
  scoreCopy = score;
  [(CLSClue *)self score];
  v6 = v5;
  [scoreCopy score];
  v8 = v7;

  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  key = self->_key;
  if (!key || !self->_value)
  {
    __assert_rtn("[CLSClue compare:]", "CLSClue.m", 246, "(_key != nil) && (_value != nil)");
  }

  v6 = [(NSString *)key compare:compareCopy[2]];
  if (!v6)
  {
    v6 = [self->_value compare:compareCopy[3]];
    if (!v6)
    {
      v6 = [(CLSClue *)self compareScore:compareCopy];
    }
  }

  v7 = v6;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    value = [(CLSClue *)self value];
    value2 = [v7 value];
    if ([value isEqual:value2])
    {
      v10 = [(CLSClue *)self key];
      v11 = [v7 key];
      v6 = [v10 isEqual:v11];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  value = [(CLSClue *)self value];
  v4 = [value hash];
  v5 = [(CLSClue *)self key];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (NSString)profileIdentifier
{
  profileIdentifier = self->_profileIdentifier;
  if (!profileIdentifier)
  {
    profileIdentifier = self->_profile;
    if (profileIdentifier)
    {
      identifier = [objc_opt_class() identifier];
      v5 = self->_profileIdentifier;
      self->_profileIdentifier = identifier;

      profileIdentifier = self->_profileIdentifier;
    }
  }

  return profileIdentifier;
}

- (NSString)informantIdentifier
{
  informantIdentifier = self->_informantIdentifier;
  if (!informantIdentifier)
  {
    informantIdentifier = self->_informant;
    if (informantIdentifier)
    {
      identifier = [objc_opt_class() identifier];
      v5 = self->_informantIdentifier;
      self->_informantIdentifier = identifier;

      informantIdentifier = self->_informantIdentifier;
    }
  }

  return informantIdentifier;
}

- (void)_incrementVersionCount
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_versionCount;
  objc_sync_exit(obj);
}

- (double)doubleValue
{
  value = [(CLSClue *)self value];
  [value doubleValue];
  v4 = v3;

  return v4;
}

- (int64_t)integerValue
{
  value = [(CLSClue *)self value];
  integerValue = [value integerValue];

  return integerValue;
}

- (id)stringValue
{
  value = [(CLSClue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  value2 = [(CLSClue *)self value];
  v6 = value2;
  if ((isKindOfClass & 1) == 0)
  {
    stringValue = [value2 stringValue];

    v6 = stringValue;
  }

  return v6;
}

- (unint64_t)enumValue
{
  value = [(CLSClue *)self value];
  unsignedIntegerValue = [value unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)valueHash
{
  value = [(CLSClue *)self value];
  v3 = [value hash];

  return v3;
}

- (id)description
{
  value = [(CLSClue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  value2 = [(CLSClue *)self value];
  v7 = value2;
  if (isKindOfClass)
  {
    [value2 flattenWithSeparator:{@", "}];
  }

  else
  {
    [value2 description];
  }
  v8 = ;

  v9 = MEMORY[0x277CCAB68];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(CLSClue *)self key];
  v13 = [v9 stringWithFormat:@"<%@> key:[%@] value:[%@]", v11, v12, v8];

  [(CLSClue *)self confidence];
  v15 = v14;
  [(CLSClue *)self relevance];
  v17 = v16;
  [(CLSClue *)self score];
  v19 = v18;
  informant = [(CLSClue *)self informant];
  if (informant)
  {
    informant2 = [(CLSClue *)self informant];
    v22 = objc_opt_class();
    informantIdentifier = NSStringFromClass(v22);
  }

  else
  {
    informantIdentifier = [(CLSClue *)self informantIdentifier];
    informant2 = informantIdentifier;
  }

  profile = [(CLSClue *)self profile];
  if (profile)
  {
    profile2 = [(CLSClue *)self profile];
    v25 = objc_opt_class();
    NSStringFromClass(v25);
  }

  else
  {
    [(CLSClue *)self profileIdentifier];
  }
  v26 = ;
  [v13 appendFormat:@"\n\tconfidence:[%.2f] relevance:[%.2f] score:[%.2f] informant:[%@] profile:[%@] version:[%ld]", v15, v17, v19, informantIdentifier, v26, -[CLSClue versionCount](self, "versionCount")];
  if (profile)
  {

    v26 = profile2;
  }

  if (informant)
  {
  }

  return v13;
}

- (CLSClue)init
{
  v16.receiver = self;
  v16.super_class = CLSClue;
  v2 = [(CLSClue *)&v16 init];
  v3 = v2;
  if (v2)
  {
    key = v2->_key;
    v2->_key = 0;

    value = v3->_value;
    v3->_value = 0;

    __asm { FMOV            V0.2D, #1.0 }

    *&v3->_confidence = _Q0;
    informant = v3->_informant;
    v3->_informant = 0;

    profile = v3->_profile;
    v3->_profile = 0;

    informantIdentifier = v3->_informantIdentifier;
    v3->_informantIdentifier = 0;

    profileIdentifier = v3->_profileIdentifier;
    v3->_profileIdentifier = 0;

    v3->_transient = 0;
    v3->_versionCount = 1;
  }

  return v3;
}

+ (id)_clueWithValue:(id)value forKey:(id)key confidence:(double)confidence relevance:(double)relevance
{
  v8 = [self _clueWithValue:value forKey:key];
  [v8 setConfidence:confidence];
  [v8 setRelevance:relevance];

  return v8;
}

+ (id)_clueWithValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v8 = objc_alloc_init(self);
  [v8 setKey:keyCopy];

  [v8 setValue:valueCopy];

  return v8;
}

@end