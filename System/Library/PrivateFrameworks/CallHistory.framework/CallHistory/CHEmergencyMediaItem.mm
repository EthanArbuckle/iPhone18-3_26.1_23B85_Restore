@interface CHEmergencyMediaItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMediaItem:(id)item;
- (CHEmergencyMediaItem)initWithAssetId:(id)id mediaType:(int64_t)type;
- (CHEmergencyMediaItem)initWithCoder:(id)coder;
- (CHEmergencyMediaItem)initWithDictionary:(id)dictionary;
- (CHEmergencyMediaItem)initWithMediaItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHEmergencyMediaItem

- (CHEmergencyMediaItem)initWithMediaItem:(id)item
{
  itemCopy = item;
  assetId = [itemCopy assetId];
  emergencyMediaType = [itemCopy emergencyMediaType];

  v7 = [(CHEmergencyMediaItem *)self initWithAssetId:assetId mediaType:emergencyMediaType];
  return v7;
}

- (CHEmergencyMediaItem)initWithAssetId:(id)id mediaType:(int64_t)type
{
  idCopy = id;
  v11.receiver = self;
  v11.super_class = CHEmergencyMediaItem;
  v7 = [(CHEmergencyMediaItem *)&v11 init];
  if (v7)
  {
    if (!idCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CHEmergencyMediaItem initWithAssetId:mediaType:]", @"assetId"}];
    }

    v8 = [idCopy copy];
    assetId = v7->_assetId;
    v7->_assetId = v8;

    v7->_emergencyMediaType = type;
  }

  return v7;
}

- (CHEmergencyMediaItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = NSStringFromSelector(sel_assetId);
  v6 = [dictionaryCopy objectForKey:v5];

  v7 = NSStringFromSelector(sel_emergencyMediaType);
  v8 = [dictionaryCopy valueForKey:v7];

  integerValue = [v8 integerValue];
  v10 = [(CHEmergencyMediaItem *)self initWithAssetId:v6 mediaType:integerValue];

  return v10;
}

- (id)getDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  assetId = [(CHEmergencyMediaItem *)self assetId];
  v5 = NSStringFromSelector(sel_assetId);
  [dictionary setObject:assetId forKey:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CHEmergencyMediaItem emergencyMediaType](self, "emergencyMediaType")}];
  v7 = NSStringFromSelector(sel_emergencyMediaType);
  [dictionary setValue:v6 forKey:v7];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHEmergencyMediaItem allocWithZone:zone];

  return [(CHEmergencyMediaItem *)v4 initWithMediaItem:self];
}

- (void)encodeWithCoder:(id)coder
{
  assetId = self->_assetId;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_assetId);
  [coderCopy encodeObject:assetId forKey:v6];

  emergencyMediaType = self->_emergencyMediaType;
  v8 = NSStringFromSelector(sel_emergencyMediaType);
  [coderCopy encodeInteger:emergencyMediaType forKey:v8];
}

- (CHEmergencyMediaItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CHEmergencyMediaItem;
  v5 = [(CHEmergencyMediaItem *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_assetId);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    assetId = v5->_assetId;
    v5->_assetId = v8;

    v10 = NSStringFromSelector(sel_emergencyMediaType);
    v5->_emergencyMediaType = [coderCopy decodeIntegerForKey:v10];
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_assetId);
  assetId = [(CHEmergencyMediaItem *)self assetId];
  [v3 appendFormat:@"%@=%@", v4, assetId];

  v6 = NSStringFromSelector(sel_emergencyMediaType);
  [v3 appendFormat:@"%@=%ld", v6, -[CHEmergencyMediaItem emergencyMediaType](self, "emergencyMediaType")];

  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (unint64_t)hash
{
  assetId = [(CHEmergencyMediaItem *)self assetId];
  v4 = [assetId hash];
  emergencyMediaType = [(CHEmergencyMediaItem *)self emergencyMediaType];
  v13 = CHHash(2uLL, v6, v7, v8, v9, v10, v11, v12, v4, emergencyMediaType);

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CHEmergencyMediaItem *)self isEqualToMediaItem:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToMediaItem:(id)item
{
  itemCopy = item;
  assetId = [(CHEmergencyMediaItem *)self assetId];
  assetId2 = [itemCopy assetId];
  v7 = assetId;
  v8 = assetId2;
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
  emergencyMediaType = [(CHEmergencyMediaItem *)self emergencyMediaType];
  v12 = emergencyMediaType == [itemCopy emergencyMediaType];
LABEL_7:

  return v12;
}

@end