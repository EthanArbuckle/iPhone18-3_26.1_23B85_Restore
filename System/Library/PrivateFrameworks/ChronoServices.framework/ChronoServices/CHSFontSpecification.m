@interface CHSFontSpecification
- (BOOL)isEqual:(id)a3;
- (CHSFontSpecification)init;
- (CHSFontSpecification)initWithBSXPCCoder:(id)a3;
- (NSString)description;
- (id)_initWithFontSpecification:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CHSFontSpecification

- (CHSFontSpecification)init
{
  v9.receiver = self;
  v9.super_class = CHSFontSpecification;
  v2 = [(CHSFontSpecification *)&v9 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = 0;

    size = v3->_size;
    v3->_design = 0;
    v3->_size = 0;

    weight = v3->_weight;
    v3->_weight = 0;

    fontFeatures = v3->_fontFeatures;
    v3->_fontFeatures = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)_initWithFontSpecification:(id)a3
{
  v4 = a3;
  v5 = [(CHSFontSpecification *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_name, v4[1]);
    v6->_design = v4[2];
    objc_storeStrong(&v6->_size, v4[3]);
    objc_storeStrong(&v6->_weight, v4[4]);
    objc_storeStrong(&v6->_fontFeatures, v4[5]);
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __35__CHSFontSpecification_description__block_invoke;
  v11 = &unk_1E7453000;
  v4 = v3;
  v12 = v4;
  v13 = self;
  v5 = [v4 modifyProem:&v8];
  v6 = [v4 build];

  return v6;
}

id __35__CHSFontSpecification_description__block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 8) withName:@"name" skipIfEmpty:1];
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    if ((v3 - 2) > 3)
    {
      v4 = @"monospaced";
    }

    else
    {
      v4 = off_1E7454118[v3 - 2];
    }

    [*(a1 + 32) appendString:v4 withName:@"design"];
    v2 = *(a1 + 40);
  }

  v5 = [*(a1 + 32) appendObject:*(v2 + 24) withName:@"size" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"weight" skipIfNil:1];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self->_design == v5->_design && (size = self->_size, v7 = v5->_size, BSEqualObjects()) && (name = self->_name, v9 = v5->_name, BSEqualObjects()) && (weight = self->_weight, v11 = v5->_weight, BSEqualObjects()))
      {
        fontFeatures = self->_fontFeatures;
        v13 = v5->_fontFeatures;
        v14 = BSEqualArrays();
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendString:self->_name];
  v5 = [v3 appendUnsignedInteger:self->_design];
  [(NSNumber *)self->_size floatValue];
  v6 = [v3 appendFloat:?];
  [(NSNumber *)self->_weight floatValue];
  v7 = [v3 appendFloat:?];
  fontFeatures = self->_fontFeatures;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __28__CHSFontSpecification_hash__block_invoke;
  v12[3] = &unk_1E74540F8;
  v9 = v3;
  v13 = v9;
  [(NSArray *)fontFeatures enumerateObjectsUsingBlock:v12];
  v10 = [v9 hash];

  return v10;
}

void __28__CHSFontSpecification_hash__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) appendInteger:{objc_msgSend(v4, "hash")}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSFontSpecification alloc];

  return [(CHSFontSpecification *)v4 _initWithFontSpecification:self];
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_name forKey:@"name"];
  [v4 encodeUInt64:self->_design forKey:@"design"];
  [v4 encodeObject:self->_size forKey:@"size"];
  [v4 encodeObject:self->_weight forKey:@"weight"];
  [v4 encodeCollection:self->_fontFeatures forKey:@"fontFeatures"];
}

- (CHSFontSpecification)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(CHSFontSpecification *)self init];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_design = [v4 decodeUInt64ForKey:@"design"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    size = v5->_size;
    v5->_size = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weight"];
    weight = v5->_weight;
    v5->_weight = v10;

    v12 = objc_opt_class();
    v13 = [v4 decodeCollectionOfClass:v12 containingClass:objc_opt_class() forKey:@"fontFeatures"];
    fontFeatures = v5->_fontFeatures;
    v5->_fontFeatures = v13;
  }

  return v5;
}

@end