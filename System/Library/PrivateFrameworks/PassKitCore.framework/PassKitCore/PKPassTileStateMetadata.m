@interface PKPassTileStateMetadata
+ (id)_createForType:(int64_t)a3 dictionary:(id)a4;
+ (id)_createWithType:(int64_t)a3;
- (PKPassTileStateMetadata)initWithCoder:(id)a3;
- (PKPassTileStateMetadataVehicleFunction)metadataTypeVehicleFunction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileStateMetadata

+ (id)_createForType:(int64_t)a3 dictionary:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [PKPassTileStateMetadata _createWithType:a3];
    v7 = v6;
    if (v6 && [v6 _setUpWithDictionary:v5])
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

+ (id)_createWithType:(int64_t)a3
{
  if ((a3 - 2) >= 3 && a3 != 0)
  {
    if (a3 == 1)
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

- (PKPassTileStateMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
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
    v9 = self;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPassTileStateMetadata" code:0 userInfo:0];
    [v4 failWithError:v10];

    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
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

  [a3 encodeObject:v5 forKey:@"type"];
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