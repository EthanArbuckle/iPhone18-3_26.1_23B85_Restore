@interface MROrigin
+ (MROrigin)anyOrigin;
+ (MROrigin)localOrigin;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHosted;
- (MROrigin)initWithCoder:(id)coder;
- (MROrigin)initWithData:(id)data;
- (MROrigin)initWithIdentifier:(int)identifier type:(int64_t)type displayName:(id)name;
- (MROrigin)initWithProtobuf:(id)protobuf;
- (MROrigin)skeleton;
- (MRPlayerPath)playerPath;
- (NSData)data;
- (_MROriginProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  block[4] = self;
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
  displayName = [(MROrigin *)self displayName];
  v4 = [displayName length];
  v5 = [MEMORY[0x1E696AD60] stringWithCapacity:v4 + 9];
  identifier = [(MROrigin *)self identifier];
  v12 = bswap32(identifier);
  v13 = 0;
  v7 = [MEMORY[0x1E696AEC0] stringWithCString:&v12 encoding:1];
  if ([(MROrigin *)self isLocal])
  {
    v8 = @"􁊸 ";
  }

  else
  {
    isLocallyHosted = [(MROrigin *)self isLocallyHosted];
    v10 = @"􂅫 ";
    if (identifier == 1463898701)
    {
      v10 = @"􀙬 ";
    }

    if (identifier == 1129140302)
    {
      v10 = @"􁱆 ";
    }

    if (isLocallyHosted)
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
    [v5 appendFormat:@" (%@)", displayName];
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
  displayName = [(MROrigin *)self displayName];
  [(_MROriginProtobuf *)v3 setDisplayName:displayName];

  [(_MROriginProtobuf *)v3 setIdentifier:[(MROrigin *)self identifier]];
  [(_MROriginProtobuf *)v3 setHasIdentifier:[(MROrigin *)self identifier]!= 0];
  [(_MROriginProtobuf *)v3 setIsLocallyHosted:[(MROrigin *)self isLocallyHosted]];
  [(_MROriginProtobuf *)v3 setHasIsLocallyHosted:[(MROrigin *)self isLocallyHosted]];

  return v3;
}

+ (MROrigin)anyOrigin
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (NSData)data
{
  protobuf = [(MROrigin *)self protobuf];
  data = [protobuf data];

  return data;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(MROrigin *)self data];
  [coderCopy encodeObject:data forKey:@"protobufData"];
}

- (MROrigin)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MROrigin *)self initWithData:v5];
  return v6;
}

- (MROrigin)initWithIdentifier:(int)identifier type:(int64_t)type displayName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = MROrigin;
  v9 = [(MROrigin *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_identifier = identifier;
    v9->_type = type;
    v11 = [nameCopy copy];
    displayName = v10->_displayName;
    v10->_displayName = v11;
  }

  return v10;
}

- (MROrigin)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = protobufCopy;
  if (protobufCopy)
  {
    identifier = [protobufCopy identifier];
    type = [v5 type];
    if (type == 2 || identifier != 1280262988)
    {
      v9 = type == 2;
      displayName = [v5 displayName];
      self = [(MROrigin *)self initWithIdentifier:identifier type:v9 displayName:displayName];

      -[MROrigin setLocallyHosted:](self, "setLocallyHosted:", [v5 isLocallyHosted]);
      selfCopy = self;
    }

    else
    {
      selfCopy = [objc_opt_class() localOrigin];
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MROrigin)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MROriginProtobuf alloc] initWithData:dataCopy];

    self = [(MROrigin *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MROrigin)skeleton
{
  v3 = objc_alloc(objc_opt_class());
  identifier = [(MROrigin *)self identifier];
  type = [(MROrigin *)self type];
  displayName = [(MROrigin *)self displayName];
  v7 = [v3 initWithIdentifier:identifier type:type displayName:displayName];

  return v7;
}

- (MRPlayerPath)playerPath
{
  v2 = [[MRPlayerPath alloc] initWithOrigin:self client:0 player:0];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(MROrigin *)v5 identifier];
      if (identifier == [(MROrigin *)self identifier])
      {
        type = [(MROrigin *)v5 type];
        v8 = type == [(MROrigin *)self type];
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
  protobuf = [(MROrigin *)self protobuf];
  dictionaryRepresentation = [protobuf dictionaryRepresentation];
  v4 = [dictionaryRepresentation description];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  localOrigin = [objc_opt_class() localOrigin];

  if (localOrigin == self)
  {

    return self;
  }

  else
  {
    v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
    [v5 setIdentifier:{-[MROrigin identifier](self, "identifier")}];
    [v5 setType:{-[MROrigin type](self, "type")}];
    displayName = [(MROrigin *)self displayName];
    v7 = [displayName copyWithZone:zone];
    [v5 setDisplayName:v7];

    [v5 setLocallyHosted:{-[MROrigin isLocallyHosted](self, "isLocallyHosted")}];
    return v5;
  }
}

@end