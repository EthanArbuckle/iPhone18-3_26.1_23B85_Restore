@interface NACProxyVolumeControlTarget
+ (BOOL)_isValidOriginIdentifier:(id)identifier;
+ (id)volumeControlTargetWithCategory:(id)category;
+ (id)volumeControlTargetWithOriginIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NACProxyVolumeControlTarget)initWithCoder:(id)coder;
- (NACProxyVolumeControlTarget)initWithOriginIdentifier:(id)identifier category:(id)category;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NACProxyVolumeControlTarget

+ (id)volumeControlTargetWithCategory:(id)category
{
  categoryCopy = category;
  v4 = [[NACProxyVolumeControlTarget alloc] initWithOriginIdentifier:&unk_286C47B18 category:categoryCopy];

  return v4;
}

+ (id)volumeControlTargetWithOriginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[NACProxyVolumeControlTarget alloc] initWithOriginIdentifier:identifierCopy category:0];

  return v4;
}

+ (BOOL)_isValidOriginIdentifier:(id)identifier
{
  v3 = _isValidOriginIdentifier__onceToken;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    +[NACProxyVolumeControlTarget _isValidOriginIdentifier:];
  }

  v5 = [_isValidOriginIdentifier__invalidOriginIdentifiers containsObject:identifierCopy];

  return v5 ^ 1;
}

uint64_t __56__NACProxyVolumeControlTarget__isValidOriginIdentifier___block_invoke()
{
  _isValidOriginIdentifier__invalidOriginIdentifiers = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286C47B18, &unk_286C47B30, 0}];

  return MEMORY[0x2821F96F8]();
}

- (NACProxyVolumeControlTarget)initWithOriginIdentifier:(id)identifier category:(id)category
{
  identifierCopy = identifier;
  categoryCopy = category;
  v13.receiver = self;
  v13.super_class = NACProxyVolumeControlTarget;
  v9 = [(NACProxyVolumeControlTarget *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originIdentifier, identifier);
    if (categoryCopy)
    {
      v11 = categoryCopy;
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
  isPairedDevice = [(NACProxyVolumeControlTarget *)self isPairedDevice];
  v4 = 8;
  if (isPairedDevice)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    if (equalCopy)
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
          originIdentifier = [(NACProxyVolumeControlTarget *)v7 originIdentifier];
          if (!originIdentifier)
          {
            v12 = 1;
LABEL_12:

LABEL_13:
            category = self->_category;
            v15 = category;
            if (!category)
            {
              originIdentifier = [(NACProxyVolumeControlTarget *)v8 category];
              if (!originIdentifier)
              {
                v17 = 1;
                goto LABEL_19;
              }

              v15 = self->_category;
            }

            category = [(NACProxyVolumeControlTarget *)v8 category];
            v17 = [(NSString *)v15 isEqual:category];

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

        originIdentifier2 = [(NACProxyVolumeControlTarget *)v8 originIdentifier];
        v12 = [(NSNumber *)v10 isEqual:originIdentifier2];

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

- (NACProxyVolumeControlTarget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NACProxyVolumeControlTarget;
  v5 = [(NACProxyVolumeControlTarget *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_originIdentifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(NACProxyVolumeControlTarget *)v5 setOriginIdentifier:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_category);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(NACProxyVolumeControlTarget *)v5 setCategory:v11];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  originIdentifier = [(NACProxyVolumeControlTarget *)self originIdentifier];
  v6 = NSStringFromSelector(sel_originIdentifier);
  [coderCopy encodeObject:originIdentifier forKey:v6];

  category = [(NACProxyVolumeControlTarget *)self category];
  v7 = NSStringFromSelector(sel_category);
  [coderCopy encodeObject:category forKey:v7];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_originIdentifier);
  objc_storeStrong(v4 + 2, self->_category);
  return v4;
}

@end