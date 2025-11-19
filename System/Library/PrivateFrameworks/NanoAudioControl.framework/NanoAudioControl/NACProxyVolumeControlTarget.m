@interface NACProxyVolumeControlTarget
+ (BOOL)_isValidOriginIdentifier:(id)a3;
+ (id)volumeControlTargetWithCategory:(id)a3;
+ (id)volumeControlTargetWithOriginIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NACProxyVolumeControlTarget)initWithCoder:(id)a3;
- (NACProxyVolumeControlTarget)initWithOriginIdentifier:(id)a3 category:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NACProxyVolumeControlTarget

+ (id)volumeControlTargetWithCategory:(id)a3
{
  v3 = a3;
  v4 = [[NACProxyVolumeControlTarget alloc] initWithOriginIdentifier:&unk_286C47B18 category:v3];

  return v4;
}

+ (id)volumeControlTargetWithOriginIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[NACProxyVolumeControlTarget alloc] initWithOriginIdentifier:v3 category:0];

  return v4;
}

+ (BOOL)_isValidOriginIdentifier:(id)a3
{
  v3 = _isValidOriginIdentifier__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NACProxyVolumeControlTarget _isValidOriginIdentifier:];
  }

  v5 = [_isValidOriginIdentifier__invalidOriginIdentifiers containsObject:v4];

  return v5 ^ 1;
}

uint64_t __56__NACProxyVolumeControlTarget__isValidOriginIdentifier___block_invoke()
{
  _isValidOriginIdentifier__invalidOriginIdentifiers = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286C47B18, &unk_286C47B30, 0}];

  return MEMORY[0x2821F96F8]();
}

- (NACProxyVolumeControlTarget)initWithOriginIdentifier:(id)a3 category:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NACProxyVolumeControlTarget;
  v9 = [(NACProxyVolumeControlTarget *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originIdentifier, a3);
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = @"Audio/Video";
    }

    objc_storeStrong(&v10->_category, v11);
  }

  return v10;
}

- (id)description
{
  v3 = [(NACProxyVolumeControlTarget *)self isPairedDevice];
  v4 = 8;
  if (v3)
  {
    v4 = 16;
    v5 = @"<NACVolumeControlTarget-System-(%@)>";
  }

  else
  {
    v5 = @"<NACVolumeControlTarget-Origin-(%@)>";
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v5, *(&self->super.isa + v4)];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = v7;
        originIdentifier = self->_originIdentifier;
        v10 = originIdentifier;
        if (!originIdentifier)
        {
          v3 = [(NACProxyVolumeControlTarget *)v7 originIdentifier];
          if (!v3)
          {
            v12 = 1;
LABEL_12:

LABEL_13:
            category = self->_category;
            v15 = category;
            if (!category)
            {
              v3 = [(NACProxyVolumeControlTarget *)v8 category];
              if (!v3)
              {
                v17 = 1;
                goto LABEL_19;
              }

              v15 = self->_category;
            }

            v16 = [(NACProxyVolumeControlTarget *)v8 category];
            v17 = [(NSString *)v15 isEqual:v16];

            if (category)
            {
LABEL_20:
              v13 = v12 & v17;

              goto LABEL_21;
            }

LABEL_19:

            goto LABEL_20;
          }

          v10 = self->_originIdentifier;
        }

        v11 = [(NACProxyVolumeControlTarget *)v8 originIdentifier];
        v12 = [(NSNumber *)v10 isEqual:v11];

        if (originIdentifier)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    v13 = 0;
  }

LABEL_21:

  return v13;
}

- (unint64_t)hash
{
  if ([(NACProxyVolumeControlTarget *)self isPairedDevice])
  {
    [(NACProxyVolumeControlTarget *)self category];
  }

  else
  {
    [(NACProxyVolumeControlTarget *)self originIdentifier];
  }
  v3 = ;
  v4 = [v3 hash];

  return v4;
}

- (NACProxyVolumeControlTarget)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NACProxyVolumeControlTarget;
  v5 = [(NACProxyVolumeControlTarget *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_originIdentifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(NACProxyVolumeControlTarget *)v5 setOriginIdentifier:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_category);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(NACProxyVolumeControlTarget *)v5 setCategory:v11];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NACProxyVolumeControlTarget *)self originIdentifier];
  v6 = NSStringFromSelector(sel_originIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(NACProxyVolumeControlTarget *)self category];
  v7 = NSStringFromSelector(sel_category);
  [v4 encodeObject:v8 forKey:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 1, self->_originIdentifier);
  objc_storeStrong(v4 + 2, self->_category);
  return v4;
}

@end