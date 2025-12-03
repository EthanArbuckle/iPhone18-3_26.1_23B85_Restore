@interface _NUFlexRangeProperties
+ (id)flexRangePropertiesWithGainMapMetadata:(CGImageMetadata *)metadata;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _NUFlexRangeProperties

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  version = [(_NUFlexRangeProperties *)self version];
  [(_NUFlexRangeProperties *)self baseHeadroom];
  v7 = v6;
  [(_NUFlexRangeProperties *)self baseHeadroom];
  v9 = exp2f(v8);
  [(_NUFlexRangeProperties *)self alternateHeadroom];
  v11 = v10;
  [(_NUFlexRangeProperties *)self alternateHeadroom];
  v13 = exp2f(v12);
  if ([(_NUFlexRangeProperties *)self useBaseColor])
  {
    v14 = @"base";
  }

  else
  {
    v14 = @"alternate";
  }

  alternateColorSpace = [(_NUFlexRangeProperties *)self alternateColorSpace];
  channelInfo = [(_NUFlexRangeProperties *)self channelInfo];
  compatibilityGainMapHeadroom = [(_NUFlexRangeProperties *)self compatibilityGainMapHeadroom];
  v18 = [v3 stringWithFormat:@"<%@:%p version:%ld base:%0.2f(%0.2f) alt:%0.2f(%0.2f)color:%@ space:%@ channels:%@ compatibility:%@>", v4, self, version, *&v7, *&v9, *&v11, *&v13, v14, alternateColorSpace, channelInfo, compatibilityGainMapHeadroom];

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_NUFlexRangeProperties allocWithZone:zone];
  v4->_version = self->_version;
  v4->_baseHeadroom = self->_baseHeadroom;
  v4->_alternateHeadroom = self->_alternateHeadroom;
  v5 = [(NSArray *)self->_channelInfo copy];
  channelInfo = v4->_channelInfo;
  v4->_channelInfo = v5;

  v4->_useBaseColor = self->_useBaseColor;
  objc_storeStrong(&v4->_compatibilityGainMapHeadroom, self->_compatibilityGainMapHeadroom);
  objc_storeStrong(&v4->_alternateColorSpace, self->_alternateColorSpace);
  return v4;
}

+ (id)flexRangePropertiesWithGainMapMetadata:(CGImageMetadata *)metadata
{
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __65___NUFlexRangeProperties_flexRangePropertiesWithGainMapMetadata___block_invoke;
  v31[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v31[4] = metadata;
  v3 = MEMORY[0x1C68D98A0](v31, a2);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __65___NUFlexRangeProperties_flexRangePropertiesWithGainMapMetadata___block_invoke_2;
  v29[3] = &unk_1E8109838;
  v4 = v3;
  v30 = v4;
  v5 = MEMORY[0x1C68D98A0](v29);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __65___NUFlexRangeProperties_flexRangePropertiesWithGainMapMetadata___block_invoke_378;
  v27[3] = &unk_1E8109860;
  v6 = v4;
  v28 = v6;
  v7 = MEMORY[0x1C68D98A0](v27);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __65___NUFlexRangeProperties_flexRangePropertiesWithGainMapMetadata___block_invoke_380;
  v25[3] = &unk_1E8109888;
  v8 = v6;
  v26 = v8;
  v9 = MEMORY[0x1C68D98A0](v25);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __65___NUFlexRangeProperties_flexRangePropertiesWithGainMapMetadata___block_invoke_383;
  v23[3] = &unk_1E81098B0;
  v10 = v5;
  v24 = v10;
  v11 = MEMORY[0x1C68D98A0](v23);
  v12 = (*(v8 + 2))(v8, @"Version");
  integerValue = [v12 integerValue];

  if (integerValue)
  {
    v14 = objc_alloc_init(_NUFlexRangeProperties);
    [(_NUFlexRangeProperties *)v14 setVersion:integerValue];
    (*(v10 + 2))(v10, @"BaseHeadroom");
    [(_NUFlexRangeProperties *)v14 setBaseHeadroom:?];
    v21 = v10;
    (*(v10 + 2))(v10, @"AlternateHeadroom");
    [(_NUFlexRangeProperties *)v14 setAlternateHeadroom:?];
    v22 = v9;
    v15 = (v9)[2](v9, @"ChannelMetadata");
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    if ([v15 count])
    {
      v17 = 0;
      do
      {
        v18 = objc_alloc_init(_NUFlexRangeChannelProperties);
        (v11)[2](v11, @"GainMapMin", v17);
        [(_NUFlexRangeChannelProperties *)v18 setMin:?];
        (v11)[2](v11, @"GainMapMax", v17);
        [(_NUFlexRangeChannelProperties *)v18 setMax:?];
        (v11)[2](v11, @"Gamma", v17);
        [(_NUFlexRangeChannelProperties *)v18 setGamma:?];
        (v11)[2](v11, @"BaseOffset", v17);
        [(_NUFlexRangeChannelProperties *)v18 setBaseOffset:?];
        (v11)[2](v11, @"AlternateOffset", v17);
        [(_NUFlexRangeChannelProperties *)v18 setAlternateOffset:?];
        [v16 addObject:v18];

        ++v17;
      }

      while (v17 < [v15 count]);
    }

    v19 = [v16 copy];
    [(_NUFlexRangeProperties *)v14 setChannelInfo:v19];

    [(_NUFlexRangeProperties *)v14 setUseBaseColor:(v7)[2](v7, @"BaseColorIsWorkingColor", 1)];
    v9 = v22;
    v10 = v21;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end