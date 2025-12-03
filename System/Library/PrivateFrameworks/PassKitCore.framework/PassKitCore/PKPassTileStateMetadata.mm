@interface PKPassTileStateMetadata
+ (id)_createForType:(int64_t)type dictionary:(id)dictionary;
+ (id)_createWithType:(int64_t)type;
- (PKPassTileStateMetadata)initWithCoder:(id)coder;
- (PKPassTileStateMetadataVehicleFunction)metadataTypeVehicleFunction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileStateMetadata

+ (id)_createForType:(int64_t)type dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v6 = [PKPassTileStateMetadata _createWithType:type];
    v7 = v6;
    if (v6 && [v6 _setUpWithDictionary:dictionaryCopy])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_createWithType:(int64_t)type
{
  if ((type - 2) >= 3 && type != 0)
  {
    if (type == 1)
    {
      v5 = [PKPassTileStateMetadataVehicleFunction alloc];
      v6 = v5;
      if (v5)
      {
        v9.receiver = v5;
        v9.super_class = PKPassTileStateMetadata;
        v7 = objc_msgSendSuper2(&v9, sel_init);
        v4 = v7;
        if (v7)
        {
          v7[1] = 1;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v6 = 0;
    }

    v4 = 0;
LABEL_13:

    return v4;
  }

  return 0;
}

- (PKPassTileStateMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12 = 0;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = PKPassTileTypeFromString(v5, &v12);

  if (v6)
  {
    if (self)
    {
      v7 = v12;
      v13.receiver = self;
      v13.super_class = PKPassTileStateMetadata;
      v8 = [(PKPassTileStateMetadata *)&v13 init];
      if (v8)
      {
        v8->_type = v7;
      }
    }

    else
    {
      v8 = 0;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPassTileStateMetadata" code:0 userInfo:0];
    [coderCopy failWithError:v10];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  if (type > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E79D94C8[type];
  }

  [coder encodeObject:v5 forKey:@"type"];
}

- (PKPassTileStateMetadataVehicleFunction)metadataTypeVehicleFunction
{
  if (self->_type != 1)
  {
    self = 0;
  }

  return self;
}

@end