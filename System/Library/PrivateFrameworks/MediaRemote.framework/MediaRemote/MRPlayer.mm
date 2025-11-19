@interface MRPlayer
+ (MRPlayer)anyPlayer;
+ (MRPlayer)defaultPlayer;
- (BOOL)hasAuxiliaryProperties;
- (BOOL)isDefaultPlayer;
- (BOOL)isEqual:(id)a3;
- (MRPlayer)initWithData:(id)a3;
- (MRPlayer)initWithIdentifier:(id)a3 displayName:(id)a4;
- (MRPlayer)skeleton;
- (NSData)data;
- (_MRNowPlayingPlayerProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)initWithProtobuf:(id)a1;
- (unint64_t)hash;
- (void)mergeFrom:(id)a3;
@end

@implementation MRPlayer

+ (MRPlayer)defaultPlayer
{
  if (defaultPlayer_onceToken != -1)
  {
    +[MRPlayer defaultPlayer];
  }

  v3 = defaultPlayer_defaultPlayer;

  return v3;
}

void __25__MRPlayer_defaultPlayer__block_invoke()
{
  v0 = [[MRPlayer alloc] initWithIdentifier:@"MediaRemote-DefaultPlayer" displayName:@"Default Player"];
  v1 = defaultPlayer_defaultPlayer;
  defaultPlayer_defaultPlayer = v0;
}

- (id)description
{
  if ([(MRPlayer *)self isDefaultPlayer])
  {
    v3 = @"􀽍 default";
  }

  else
  {
    v4 = [(MRPlayer *)self identifier];
    v5 = v4;
    v6 = @"null";
    if (v4)
    {
      v6 = v4;
    }

    v7 = v6;

    v3 = [@"􀃪 " stringByAppendingString:v7];
  }

  return v3;
}

- (BOOL)isDefaultPlayer
{
  v3 = +[MRPlayer defaultPlayer];
  LOBYTE(self) = [(MRPlayer *)self isEqual:v3];

  return self;
}

- (unint64_t)hash
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = MSVHasherSharedSeed();
  v4 = v3 ^ 0x736F6D6570736575;
  v53 = v3 ^ 0x736F6D6570736575;
  v6 = v5 ^ 0x646F72616E646F6DLL;
  v7 = v3 ^ 0x6C7967656E657261;
  v54 = v5 ^ 0x646F72616E646F6DLL;
  v55 = v3 ^ 0x6C7967656E657261;
  v8 = v5 ^ 0x7465646279746573;
  v56 = v5 ^ 0x7465646279746573;
  v9 = self->_identifier;
  v10 = [(NSString *)v9 UTF8String];
  v11 = [(NSString *)v9 length];
  if (v11 < 8)
  {
    v12 = 0;
  }

  else
  {
    v12 = ((v11 - 8) & 0xFFFFFFFFFFFFFFF8) + 8;
    do
    {
      v13 = *v10;
      v10 += 8;
      v14 = (v4 + v6) ^ __ROR8__(v6, 51);
      v15 = v7 + (v8 ^ v13);
      v16 = __ROR8__(v8 ^ v13, 48);
      v17 = (v15 ^ v16) + __ROR8__(v4 + v6, 32);
      v8 = v17 ^ __ROR8__(v15 ^ v16, 43);
      v6 = (v15 + v14) ^ __ROR8__(v14, 47);
      v7 = __ROR8__(v15 + v14, 32);
      v55 = v7;
      v56 = v8;
      v4 = v17 ^ v13;
      v53 = v17 ^ v13;
      v54 = v6;
      v11 -= 8;
    }

    while (v11 > 7);
  }

  if (v11)
  {
    v18 = 0;
    v19 = 0;
    v20 = v11;
    do
    {
      v21 = *v10++;
      v19 |= v21 << v18;
      v18 += 8;
      --v20;
    }

    while (v20);
    v22 = v19 | ((v11 + v12) << 56);
  }

  else
  {
    v22 = v12 << 56;
  }

  v57 = v22;

  v23 = (v53 + v54) ^ __ROR8__(v54, 51);
  v24 = v55 + (v56 ^ v57);
  v25 = __ROR8__(v56 ^ v57, 48);
  v26 = (v24 ^ v25) + __ROR8__(v53 + v54, 32);
  v27 = v26 ^ __ROR8__(v24 ^ v25, 43);
  v28 = v24 + v23;
  v29 = v28 ^ __ROR8__(v23, 47);
  v30 = (v26 ^ v57) + v29;
  v31 = v30 ^ __ROR8__(v29, 51);
  v32 = (__ROR8__(v28, 32) ^ 0xFFLL) + v27;
  v33 = __ROR8__(v27, 48);
  v34 = __ROR8__(v30, 32) + (v32 ^ v33);
  v35 = v34 ^ __ROR8__(v32 ^ v33, 43);
  v36 = v31 + v32;
  v37 = v36 ^ __ROR8__(v31, 47);
  v38 = v37 + v34;
  v39 = v38 ^ __ROR8__(v37, 51);
  v40 = __ROR8__(v36, 32) + v35;
  v41 = __ROR8__(v35, 48);
  v42 = __ROR8__(v38, 32) + (v40 ^ v41);
  v43 = v42 ^ __ROR8__(v40 ^ v41, 43);
  v44 = v39 + v40;
  v45 = v44 ^ __ROR8__(v39, 47);
  v46 = v45 + v42;
  v47 = v46 ^ __ROR8__(v45, 51);
  v48 = __ROR8__(v44, 32) + v43;
  v49 = __ROR8__(v43, 48);
  v50 = __ROR8__(v46, 32) + (v48 ^ v49);
  v51 = *MEMORY[0x1E69E9840];
  return (v47 + v48) ^ __ROR8__(v47, 47) ^ v50 ^ __ROR8__(v47 + v48, 32) ^ v50 ^ __ROR8__(v48 ^ v49, 43);
}

- (_MRNowPlayingPlayerProtobuf)protobuf
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(_MRNowPlayingPlayerProtobuf);
    v3 = [a1 identifier];
    [OUTLINED_FUNCTION_0_24() setIdentifier:?];

    v4 = [a1 displayName];
    [OUTLINED_FUNCTION_0_24() setDisplayName:?];

    v5 = [a1 appIcon];
    v6 = [v5 absoluteString];
    [(_MRNowPlayingPlayerProtobuf *)v2 setIconURL:v6];

    v7 = [a1 audioSessionType];
    if (v7 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (v7 == 2);
    }

    [(_MRNowPlayingPlayerProtobuf *)v2 setAudioSessionType:v8];
    -[_MRNowPlayingPlayerProtobuf setHasAudioSessionType:](v2, "setHasAudioSessionType:", [a1 audioSessionType] != 0);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [a1 mxSessionIDs];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          -[_MRNowPlayingPlayerProtobuf addMxSessionID:](v2, "addMxSessionID:", [*(*(&v16 + 1) + 8 * i) integerValue]);
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [(_MRNowPlayingPlayerProtobuf *)v2 setAudioSessionID:a1[2]];
  }

  else
  {
    v2 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (MRPlayer)anyPlayer
{
  v2 = [[a1 alloc] initWithIdentifier:@"any" displayName:@"any"];

  return v2;
}

- (MRPlayer)initWithIdentifier:(id)a3 displayName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRPlayer;
  v8 = [(MRPlayer *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    displayName = v8->_displayName;
    v8->_displayName = v11;
  }

  return v8;
}

- (MRPlayer)initWithData:(id)a3
{
  v3 = self;
  if (a3)
  {
    [(MRPlayer *)a3 initWithData:&v6];
    v3 = v6;
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MRPlayer)skeleton
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(MRPlayer *)self identifier];
  v5 = [(MRPlayer *)self displayName];
  v6 = [v3 initWithIdentifier:v4 displayName:v5];

  return v6;
}

- (BOOL)hasAuxiliaryProperties
{
  if ([(MRPlayer *)self audioSessionType]|| [(NSSet *)self->_mxSessionIDs count]|| self->_audioSessionID)
  {
    return 1;
  }

  v5 = [(MRPlayer *)self appIcon];
  v3 = v5 != 0;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MRPlayer *)v4 identifier];
      v6 = [(MRPlayer *)self identifier];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MRPlayer *)self identifier];
  v7 = [v6 copyWithZone:a3];
  [v5 setIdentifier:v7];

  v8 = [(MRPlayer *)self displayName];
  v9 = [v8 copyWithZone:a3];
  [v5 setDisplayName:v9];

  v10 = [(MRPlayer *)self appIcon];
  v11 = [v10 copyWithZone:a3];
  [v5 setAppIcon:v11];

  [v5 setAudioSessionType:{-[MRPlayer audioSessionType](self, "audioSessionType")}];
  v12 = [(MRPlayer *)self mxSessionIDs];
  v13 = [v12 copyWithZone:a3];
  [v5 setMxSessionIDs:v13];

  [v5 setAudioSessionID:{-[MRPlayer audioSessionID](self, "audioSessionID")}];
  return v5;
}

- (void)mergeFrom:(id)a3
{
  v12 = a3;
  v4 = [v12 identifier];

  if (v4)
  {
    v5 = [v12 identifier];
    [(MRPlayer *)self setIdentifier:v5];
  }

  v6 = [v12 displayName];

  if (v6)
  {
    v7 = [v12 displayName];
    [(MRPlayer *)self setDisplayName:v7];
  }

  v8 = [v12 appIcon];

  if (v8)
  {
    v9 = [v12 appIcon];
    [(MRPlayer *)self setAppIcon:v9];
  }

  if ([v12 audioSessionType])
  {
    -[MRPlayer setAudioSessionType:](self, "setAudioSessionType:", [v12 audioSessionType]);
  }

  v10 = [v12 mxSessionIDs];

  if (v10)
  {
    v11 = [v12 mxSessionIDs];
    [(MRPlayer *)self setMxSessionIDs:v11];
  }

  if ([v12 audioSessionID])
  {
    -[MRPlayer setAudioSessionID:](self, "setAudioSessionID:", [v12 audioSessionID]);
  }
}

- (id)initWithProtobuf:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = [v3 identifier];
    v6 = [v4 displayName];
    v7 = [a1 initWithIdentifier:v5 displayName:v6];

    if (v7)
    {
      if ([v4 hasIconURL])
      {
        v8 = objc_alloc(MEMORY[0x1E695DFF8]);
        v9 = [v4 iconURL];
        v10 = [v8 initWithString:v9];
        v11 = *(v7 + 32);
        *(v7 + 32) = v10;
      }

      else
      {
        v9 = *(v7 + 32);
        *(v7 + 32) = 0;
      }

      v13 = [v4 audioSessionType];
      v14 = 2 * (v13 == 2);
      if (v13 == 1)
      {
        v14 = 1;
      }

      *(v7 + 40) = v14;
      v15 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "mxSessionIDsCount")}];
      if ([v4 mxSessionIDsCount])
      {
        v16 = 0;
        do
        {
          v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "mxSessionIDAtIndex:", v16)}];
          [v15 addObject:v17];

          ++v16;
        }

        while (v16 < [v4 mxSessionIDsCount]);
      }

      v18 = [v15 copy];
      v19 = *(v7 + 48);
      *(v7 + 48) = v18;

      *(v7 + 8) = [v4 audioSessionID];
    }

    a1 = v7;
    v12 = a1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSData)data
{
  v2 = [(MRPlayer *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (id)debugDescription
{
  v2 = [(MRPlayer *)self protobuf];
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 description];

  return v4;
}

- (void)initWithData:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v8 = [[_MRNowPlayingPlayerProtobuf alloc] initWithData:v5];

  v6 = [(MRPlayer *)a2 initWithProtobuf:v8];
  *a3 = v6;
  v7 = v6;
}

@end