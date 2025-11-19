@interface CHEmergencyMediaItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMediaItem:(id)a3;
- (CHEmergencyMediaItem)initWithAssetId:(id)a3 mediaType:(int64_t)a4;
- (CHEmergencyMediaItem)initWithCoder:(id)a3;
- (CHEmergencyMediaItem)initWithDictionary:(id)a3;
- (CHEmergencyMediaItem)initWithMediaItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)getDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHEmergencyMediaItem

- (CHEmergencyMediaItem)initWithMediaItem:(id)a3
{
  v4 = a3;
  v5 = [v4 assetId];
  v6 = [v4 emergencyMediaType];

  v7 = [(CHEmergencyMediaItem *)self initWithAssetId:v5 mediaType:v6];
  return v7;
}

- (CHEmergencyMediaItem)initWithAssetId:(id)a3 mediaType:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CHEmergencyMediaItem;
  v7 = [(CHEmergencyMediaItem *)&v11 init];
  if (v7)
  {
    if (!v6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CHEmergencyMediaItem initWithAssetId:mediaType:]", @"assetId"}];
    }

    v8 = [v6 copy];
    assetId = v7->_assetId;
    v7->_assetId = v8;

    v7->_emergencyMediaType = a4;
  }

  return v7;
}

- (CHEmergencyMediaItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_assetId);
  v6 = [v4 objectForKey:v5];

  v7 = NSStringFromSelector(sel_emergencyMediaType);
  v8 = [v4 valueForKey:v7];

  v9 = [v8 integerValue];
  v10 = [(CHEmergencyMediaItem *)self initWithAssetId:v6 mediaType:v9];

  return v10;
}

- (id)getDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(CHEmergencyMediaItem *)self assetId];
  v5 = NSStringFromSelector(sel_assetId);
  [v3 setObject:v4 forKey:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CHEmergencyMediaItem emergencyMediaType](self, "emergencyMediaType")}];
  v7 = NSStringFromSelector(sel_emergencyMediaType);
  [v3 setValue:v6 forKey:v7];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHEmergencyMediaItem allocWithZone:a3];

  return [(CHEmergencyMediaItem *)v4 initWithMediaItem:self];
}

- (void)encodeWithCoder:(id)a3
{
  assetId = self->_assetId;
  v5 = a3;
  v6 = NSStringFromSelector(sel_assetId);
  [v5 encodeObject:assetId forKey:v6];

  emergencyMediaType = self->_emergencyMediaType;
  v8 = NSStringFromSelector(sel_emergencyMediaType);
  [v5 encodeInteger:emergencyMediaType forKey:v8];
}

- (CHEmergencyMediaItem)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CHEmergencyMediaItem;
  v5 = [(CHEmergencyMediaItem *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_assetId);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    assetId = v5->_assetId;
    v5->_assetId = v8;

    v10 = NSStringFromSelector(sel_emergencyMediaType);
    v5->_emergencyMediaType = [v4 decodeIntegerForKey:v10];
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_assetId);
  v5 = [(CHEmergencyMediaItem *)self assetId];
  [v3 appendFormat:@"%@=%@", v4, v5];

  v6 = NSStringFromSelector(sel_emergencyMediaType);
  [v3 appendFormat:@"%@=%ld", v6, -[CHEmergencyMediaItem emergencyMediaType](self, "emergencyMediaType")];

  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(CHEmergencyMediaItem *)self assetId];
  v4 = [v3 hash];
  v5 = [(CHEmergencyMediaItem *)self emergencyMediaType];
  v13 = CHHash(2uLL, v6, v7, v8, v9, v10, v11, v12, v4, v5);

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CHEmergencyMediaItem *)self isEqualToMediaItem:v4];
  }

  return v5;
}

- (BOOL)isEqualToMediaItem:(id)a3
{
  v4 = a3;
  v5 = [(CHEmergencyMediaItem *)self assetId];
  v6 = [v4 assetId];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (!(v7 | v8))
  {
    goto LABEL_4;
  }

  if (!v8)
  {

    goto LABEL_6;
  }

  v10 = [v7 isEqual:v8];

  if (!v10)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

LABEL_4:
  v11 = [(CHEmergencyMediaItem *)self emergencyMediaType];
  v12 = v11 == [v4 emergencyMediaType];
LABEL_7:

  return v12;
}

@end