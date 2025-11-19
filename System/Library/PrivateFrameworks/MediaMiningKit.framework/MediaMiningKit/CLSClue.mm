@interface CLSClue
+ (id)_clueWithValue:(id)a3 forKey:(id)a4;
+ (id)_clueWithValue:(id)a3 forKey:(id)a4 confidence:(double)a5 relevance:(double)a6;
- (BOOL)isEqual:(id)a3;
- (CLSClue)init;
- (NSString)informantIdentifier;
- (NSString)profileIdentifier;
- (double)doubleValue;
- (id)description;
- (id)stringValue;
- (int64_t)compare:(id)a3;
- (int64_t)compareScore:(id)a3;
- (int64_t)integerValue;
- (unint64_t)enumValue;
- (unint64_t)hash;
- (unint64_t)valueHash;
- (void)_incrementVersionCount;
@end

@implementation CLSClue

- (int64_t)compareScore:(id)a3
{
  v4 = a3;
  [(CLSClue *)self score];
  v6 = v5;
  [v4 score];
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  key = self->_key;
  if (!key || !self->_value)
  {
    __assert_rtn("[CLSClue compare:]", "CLSClue.m", 246, "(_key != nil) && (_value != nil)");
  }

  v6 = [(NSString *)key compare:v4[2]];
  if (!v6)
  {
    v6 = [self->_value compare:v4[3]];
    if (!v6)
    {
      v6 = [(CLSClue *)self compareScore:v4];
    }
  }

  v7 = v6;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v8 = [(CLSClue *)self value];
    v9 = [v7 value];
    if ([v8 isEqual:v9])
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
  v3 = [(CLSClue *)self value];
  v4 = [v3 hash];
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
      v4 = [objc_opt_class() identifier];
      v5 = self->_profileIdentifier;
      self->_profileIdentifier = v4;

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
      v4 = [objc_opt_class() identifier];
      v5 = self->_informantIdentifier;
      self->_informantIdentifier = v4;

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
  v2 = [(CLSClue *)self value];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (int64_t)integerValue
{
  v2 = [(CLSClue *)self value];
  v3 = [v2 integerValue];

  return v3;
}

- (id)stringValue
{
  v3 = [(CLSClue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [(CLSClue *)self value];
  v6 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    v7 = [v5 stringValue];

    v6 = v7;
  }

  return v6;
}

- (unint64_t)enumValue
{
  v2 = [(CLSClue *)self value];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)valueHash
{
  v2 = [(CLSClue *)self value];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v4 = [(CLSClue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = [(CLSClue *)self value];
  v7 = v6;
  if (isKindOfClass)
  {
    [v6 flattenWithSeparator:{@", "}];
  }

  else
  {
    [v6 description];
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
  v20 = [(CLSClue *)self informant];
  if (v20)
  {
    v21 = [(CLSClue *)self informant];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
  }

  else
  {
    v23 = [(CLSClue *)self informantIdentifier];
    v21 = v23;
  }

  v24 = [(CLSClue *)self profile];
  if (v24)
  {
    v2 = [(CLSClue *)self profile];
    v25 = objc_opt_class();
    NSStringFromClass(v25);
  }

  else
  {
    [(CLSClue *)self profileIdentifier];
  }
  v26 = ;
  [v13 appendFormat:@"\n\tconfidence:[%.2f] relevance:[%.2f] score:[%.2f] informant:[%@] profile:[%@] version:[%ld]", v15, v17, v19, v23, v26, -[CLSClue versionCount](self, "versionCount")];
  if (v24)
  {

    v26 = v2;
  }

  if (v20)
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

+ (id)_clueWithValue:(id)a3 forKey:(id)a4 confidence:(double)a5 relevance:(double)a6
{
  v8 = [a1 _clueWithValue:a3 forKey:a4];
  [v8 setConfidence:a5];
  [v8 setRelevance:a6];

  return v8;
}

+ (id)_clueWithValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setKey:v6];

  [v8 setValue:v7];

  return v8;
}

@end