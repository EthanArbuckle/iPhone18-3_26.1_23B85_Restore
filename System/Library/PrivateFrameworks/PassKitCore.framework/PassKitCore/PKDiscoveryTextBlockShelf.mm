@interface PKDiscoveryTextBlockShelf
- (BOOL)isEqual:(id)equal;
- (PKDiscoveryTextBlockShelf)initWithCoder:(id)coder;
- (PKDiscoveryTextBlockShelf)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)localizeWithBundle:(id)bundle table:(id)table;
@end

@implementation PKDiscoveryTextBlockShelf

- (PKDiscoveryTextBlockShelf)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PKDiscoveryTextBlockShelf;
  v5 = [(PKDiscoveryTextBlockShelf *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(PKDiscoveryShelf *)v5 setType:1];
    v7 = [dictionaryCopy PKStringForKey:@"bodyKey"];
    bodyKey = v6->_bodyKey;
    v6->_bodyKey = v7;

    v9 = [dictionaryCopy PKStringForKey:@"ledeKey"];
    ledeKey = v6->_ledeKey;
    v6->_ledeKey = v9;

    v11 = [dictionaryCopy PKStringForKey:@"sectionHeadlineKey"];
    sectionHeaderLineKey = v6->_sectionHeaderLineKey;
    v6->_sectionHeaderLineKey = v11;

    v13 = [dictionaryCopy PKStringForKey:@"style"];
    if ([@"standard" isEqualToString:v13])
    {
      v14 = 0;
    }

    else
    {
      v14 = [@"legal" isEqualToString:v13];
    }

    v6->_style = v14;
  }

  return v6;
}

- (void)localizeWithBundle:(id)bundle table:(id)table
{
  bundleCopy = bundle;
  tableCopy = table;
  bodyKey = self->_bodyKey;
  if (bodyKey)
  {
    v8 = [bundleCopy localizedStringForKey:bodyKey value:&stru_1F227FD28 table:tableCopy];
    localizedBody = self->_localizedBody;
    self->_localizedBody = v8;
  }

  ledeKey = self->_ledeKey;
  if (ledeKey)
  {
    v11 = [bundleCopy localizedStringForKey:ledeKey value:&stru_1F227FD28 table:tableCopy];
    localizedLede = self->_localizedLede;
    self->_localizedLede = v11;
  }

  sectionHeaderLineKey = self->_sectionHeaderLineKey;
  if (sectionHeaderLineKey)
  {
    v14 = [bundleCopy localizedStringForKey:sectionHeaderLineKey value:&stru_1F227FD28 table:tableCopy];
    localizedSectionHeaderLine = self->_localizedSectionHeaderLine;
    self->_localizedSectionHeaderLine = v14;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v21.receiver = self;
  v21.super_class = PKDiscoveryTextBlockShelf;
  if (![(PKDiscoveryShelf *)&v21 isEqual:equalCopy])
  {
    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_style != equalCopy[4])
  {
    goto LABEL_37;
  }

  bodyKey = self->_bodyKey;
  v6 = equalCopy[5];
  if (bodyKey)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (bodyKey != v6)
    {
      goto LABEL_37;
    }
  }

  else if (([(NSString *)bodyKey isEqual:?]& 1) == 0)
  {
    goto LABEL_37;
  }

  ledeKey = self->_ledeKey;
  v9 = equalCopy[6];
  if (ledeKey)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (ledeKey != v9)
    {
      goto LABEL_37;
    }
  }

  else if (([(NSString *)ledeKey isEqual:?]& 1) == 0)
  {
    goto LABEL_37;
  }

  sectionHeaderLineKey = self->_sectionHeaderLineKey;
  v12 = equalCopy[7];
  if (sectionHeaderLineKey && v12)
  {
    if (([(NSString *)sectionHeaderLineKey isEqual:?]& 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (sectionHeaderLineKey != v12)
  {
    goto LABEL_37;
  }

  localizedBody = self->_localizedBody;
  v14 = equalCopy[8];
  if (localizedBody && v14)
  {
    if (([(NSString *)localizedBody isEqual:?]& 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (localizedBody != v14)
  {
    goto LABEL_37;
  }

  localizedLede = self->_localizedLede;
  v16 = equalCopy[9];
  if (!localizedLede || !v16)
  {
    if (localizedLede == v16)
    {
      goto LABEL_33;
    }

LABEL_37:
    v19 = 0;
    goto LABEL_38;
  }

  if (([(NSString *)localizedLede isEqual:?]& 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_33:
  localizedSectionHeaderLine = self->_localizedSectionHeaderLine;
  v18 = equalCopy[10];
  if (localizedSectionHeaderLine && v18)
  {
    v19 = [(NSString *)localizedSectionHeaderLine isEqual:?];
  }

  else
  {
    v19 = localizedSectionHeaderLine == v18;
  }

LABEL_38:

  return v19;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = PKDiscoveryTextBlockShelf;
  v3 = [(PKDiscoveryShelf *)&v8 hash];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v4 safelyAddObject:self->_bodyKey];
  [v4 safelyAddObject:self->_ledeKey];
  [v4 safelyAddObject:self->_sectionHeaderLineKey];
  [v4 safelyAddObject:self->_localizedBody];
  [v4 safelyAddObject:self->_localizedLede];
  [v4 safelyAddObject:self->_sectionHeaderLineKey];
  v5 = PKCombinedHash(v3, v4);
  v6 = self->_style - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  style = self->_style;
  v6 = @"legal";
  if (style != 1)
  {
    v6 = 0;
  }

  if (style)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"standard";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"style", v7];
  [v4 appendFormat:@"%@: '%@'; ", @"bodyKey", self->_bodyKey];
  [v4 appendFormat:@"%@: '%@'; ", @"ledeKey", self->_ledeKey];
  [v4 appendFormat:@"%@: '%@'; ", @"sectionHeadlineKey", self->_sectionHeaderLineKey];
  [v4 appendFormat:@"%@: '%@'; ", @"localizedBody", self->_localizedBody];
  [v4 appendFormat:@"%@: '%@'; ", @"localizedLede", self->_localizedLede];
  [v4 appendFormat:@"%@: '%@'; ", @"localizedSectionHeadline", self->_localizedSectionHeaderLine];
  [v4 appendFormat:@">"];
  v8 = [v4 copy];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKDiscoveryTextBlockShelf;
  coderCopy = coder;
  [(PKDiscoveryShelf *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_style forKey:{@"style", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_bodyKey forKey:@"bodyKey"];
  [coderCopy encodeObject:self->_ledeKey forKey:@"ledeKey"];
  [coderCopy encodeObject:self->_sectionHeaderLineKey forKey:@"sectionHeadlineKey"];
  [coderCopy encodeObject:self->_localizedBody forKey:@"localizedBody"];
  [coderCopy encodeObject:self->_localizedLede forKey:@"localizedLede"];
  [coderCopy encodeObject:self->_localizedSectionHeaderLine forKey:@"localizedSectionHeadline"];
}

- (PKDiscoveryTextBlockShelf)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKDiscoveryTextBlockShelf;
  v5 = [(PKDiscoveryShelf *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bodyKey"];
    bodyKey = v5->_bodyKey;
    v5->_bodyKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ledeKey"];
    ledeKey = v5->_ledeKey;
    v5->_ledeKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionHeadlineKey"];
    sectionHeaderLineKey = v5->_sectionHeaderLineKey;
    v5->_sectionHeaderLineKey = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedBody"];
    localizedBody = v5->_localizedBody;
    v5->_localizedBody = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedLede"];
    localizedLede = v5->_localizedLede;
    v5->_localizedLede = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedSectionHeadline"];
    localizedSectionHeaderLine = v5->_localizedSectionHeaderLine;
    v5->_localizedSectionHeaderLine = v16;
  }

  return v5;
}

@end