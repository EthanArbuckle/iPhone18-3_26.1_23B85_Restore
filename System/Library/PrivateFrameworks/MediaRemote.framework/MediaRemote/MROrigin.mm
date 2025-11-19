@interface MROrigin
+ (MROrigin)anyOrigin;
+ (MROrigin)localOrigin;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHosted;
- (MROrigin)initWithCoder:(id)a3;
- (MROrigin)initWithData:(id)a3;
- (MROrigin)initWithIdentifier:(int)a3 type:(int64_t)a4 displayName:(id)a5;
- (MROrigin)initWithProtobuf:(id)a3;
- (MROrigin)skeleton;
- (MRPlayerPath)playerPath;
- (NSData)data;
- (_MROriginProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MROrigin

void __23__MROrigin_localOrigin__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithIdentifier:1280262988 type:0 displayName:&stru_1F1513E38];
  v2 = localOrigin_origin;
  localOrigin_origin = v1;

  [localOrigin_origin setLocallyHosted:1];
  v3 = dispatch_get_global_queue(21, 0);
  dispatch_async(v3, &__block_literal_global_23);
}

+ (MROrigin)localOrigin
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MROrigin_localOrigin__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (localOrigin_onceToken != -1)
  {
    dispatch_once(&localOrigin_onceToken, block);
  }

  v2 = localOrigin_origin;

  return v2;
}

void __23__MROrigin_localOrigin__block_invoke_2()
{
  v0 = MSVCopyLocalizedModelName();
  [localOrigin_origin setDisplayName:v0];
}

- (id)description
{
  v3 = [(MROrigin *)self displayName];
  v4 = [v3 length];
  v5 = [MEMORY[0x1E696AD60] stringWithCapacity:v4 + 9];
  v6 = [(MROrigin *)self identifier];
  v12 = bswap32(v6);
  v13 = 0;
  v7 = [MEMORY[0x1E696AEC0] stringWithCString:&v12 encoding:1];
  if ([(MROrigin *)self isLocal])
  {
    v8 = @"􁊸 ";
  }

  else
  {
    v9 = [(MROrigin *)self isLocallyHosted];
    v10 = @"􂅫 ";
    if (v6 == 1463898701)
    {
      v10 = @"􀙬 ";
    }

    if (v6 == 1129140302)
    {
      v10 = @"􁱆 ";
    }

    if (v9)
    {
      v8 = @"􀟢 ";
    }

    else
    {
      v8 = v10;
    }
  }

  [v5 appendString:v8];
  [v5 appendString:v7];
  if (v4 >= 1)
  {
    [v5 appendFormat:@" (%@)", v3];
  }

  return v5;
}

- (BOOL)isHosted
{
  if ([(MROrigin *)self isLocal])
  {
    return 0;
  }

  return [(MROrigin *)self isLocallyHosted];
}

- (_MROriginProtobuf)protobuf
{
  v3 = objc_alloc_init(_MROriginProtobuf);
  if ([(MROrigin *)self type]== 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(_MROriginProtobuf *)v3 setType:v4];
  [(_MROriginProtobuf *)v3 setHasType:[(MROrigin *)self type]!= 0];
  v5 = [(MROrigin *)self displayName];
  [(_MROriginProtobuf *)v3 setDisplayName:v5];

  [(_MROriginProtobuf *)v3 setIdentifier:[(MROrigin *)self identifier]];
  [(_MROriginProtobuf *)v3 setHasIdentifier:[(MROrigin *)self identifier]!= 0];
  [(_MROriginProtobuf *)v3 setIsLocallyHosted:[(MROrigin *)self isLocallyHosted]];
  [(_MROriginProtobuf *)v3 setHasIsLocallyHosted:[(MROrigin *)self isLocallyHosted]];

  return v3;
}

+ (MROrigin)anyOrigin
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (NSData)data
{
  v2 = [(MROrigin *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MROrigin *)self data];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (MROrigin)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MROrigin *)self initWithData:v5];
  return v6;
}

- (MROrigin)initWithIdentifier:(int)a3 type:(int64_t)a4 displayName:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = MROrigin;
  v9 = [(MROrigin *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_identifier = a3;
    v9->_type = a4;
    v11 = [v8 copy];
    displayName = v10->_displayName;
    v10->_displayName = v11;
  }

  return v10;
}

- (MROrigin)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    v7 = [v5 type];
    if (v7 == 2 || v6 != 1280262988)
    {
      v9 = v7 == 2;
      v10 = [v5 displayName];
      self = [(MROrigin *)self initWithIdentifier:v6 type:v9 displayName:v10];

      -[MROrigin setLocallyHosted:](self, "setLocallyHosted:", [v5 isLocallyHosted]);
      v8 = self;
    }

    else
    {
      v8 = [objc_opt_class() localOrigin];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MROrigin)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MROriginProtobuf alloc] initWithData:v4];

    self = [(MROrigin *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MROrigin)skeleton
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(MROrigin *)self identifier];
  v5 = [(MROrigin *)self type];
  v6 = [(MROrigin *)self displayName];
  v7 = [v3 initWithIdentifier:v4 type:v5 displayName:v6];

  return v7;
}

- (MRPlayerPath)playerPath
{
  v2 = [[MRPlayerPath alloc] initWithOrigin:self client:0 player:0];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MROrigin *)v5 identifier];
      if (v6 == [(MROrigin *)self identifier])
      {
        v7 = [(MROrigin *)v5 type];
        v8 = v7 == [(MROrigin *)self type];
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
  }

  return v8;
}

- (id)debugDescription
{
  v2 = [(MROrigin *)self protobuf];
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 description];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() localOrigin];

  if (v4 == self)
  {

    return self;
  }

  else
  {
    v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
    [v5 setIdentifier:{-[MROrigin identifier](self, "identifier")}];
    [v5 setType:{-[MROrigin type](self, "type")}];
    v6 = [(MROrigin *)self displayName];
    v7 = [v6 copyWithZone:a3];
    [v5 setDisplayName:v7];

    [v5 setLocallyHosted:{-[MROrigin isLocallyHosted](self, "isLocallyHosted")}];
    return v5;
  }
}

@end